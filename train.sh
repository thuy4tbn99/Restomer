#!/usr/bin/env bash

CONFIG=$1

python -m torch.distributed.launch --nproc_per_node=8 --master_port=4321 basicsr/train.py -opt $CONFIG --launcher pytorch

# python -m torch.distributed.launch --nproc_per_node=4 --master_port=4321 basicsr/train.py -opt Motion_Deblurring/Options/Deblurring_Restormer.yml --launcher pytorch