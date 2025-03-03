#!/bin/bash

source install_isolated/setup.bash

map_dir="${HOME}/carto_ws/map"
map_name="3d-1"


# finish slam
rosservice call /finish_trajectory 0

# make pbstream
rosservice call /write_state "{filename: '$map_dir/$map_name.pbstream'}"
