
set -ex

# Download
wget https://github.com/Kitware/CMake/releases/download/v3.31.6/cmake-3.31.6-linux-x86_64.tar.gz
wget https://github.com/Kitware/CMake/releases/download/v4.0.0/cmake-4.0.0-linux-x86_64.tar.gz

# Extract
tar -xvzf cmake-3.31.6-linux-x86_64.tar.gz
tar -xvzf cmake-4.0.0-linux-x86_64.tar.gz

# Run on cmake 3.31.6
time ./cmake-3.31.6-linux-x86_64/bin/cmake -Bbuild3 -S. --profiling-format=google-trace --profiling-output=config-cmake3.json

# Run on cmake 4.0.0
time ./cmake-4.0.0-linux-x86_64/bin/cmake -Bbuild4 -S. --profiling-format=google-trace --profiling-output=config-cmake4.json
