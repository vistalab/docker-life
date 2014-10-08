FROM arokem/dipy
MAINTAINER Ariel Rokem <arokem@gmail.com>
RUN sudo apt-get install -y git
RUN git clone https://github.com/cython/cython.git
RUN cd cython && python setup.py install && cd ..
RUN git clone https://github.com/arokem/dipy.git --branch life dipy
RUN cd dipy && python setup.py install && cd ..
RUN git clone https://gist.github.com/arokem/9d79aa126055e0197aad run_life
RUN chmod 777 run_life/run_life.py
RUN mv run_life/run_life.py ./life
