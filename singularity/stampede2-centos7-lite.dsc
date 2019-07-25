Bootstrap: yum
MirrorURL: http://mirror.centos.org/centos/7.6.1810/os/x86_64/
Include: yum

%post
  mkdir /home1 /work /scratch /gpfs /corral-repl /corral-tacc /data
  yum -y install centos-release-scl epel-release \
                 hostname bc vi wget curl tar file cpp \
                 devtoolset-6 \
                 lua-posix lua-filesystem lua-devel tcl tcl-devel \
                 rdma-core-devel libpsm2
  yum -y install http://taccbot.tacc.utexas.edu/repo/centos/7/tacc/stampede2/x86_64/Packages/tacc-release-1.0-1.el7.x86_64.rpm
  yum -y install tacc-bash tacc-login-scripts-compute tacc-lmod
%environment
  source /opt/rh/devtoolset-6/enable
  source /etc/tacc/profile
  source /etc/tacc/bashrc
  source /etc/tacc/tacc_functions 
  source /etc/profile.d/*.sh
  ml xalt

