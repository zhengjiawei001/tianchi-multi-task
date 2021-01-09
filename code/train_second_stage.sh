python3 -m mtl.train \
  --data_dir ../user_data/cleaned_nlp_round1_data \
  --data_save_dir ../user_data/nlp_round1_data_processed \
  --output_dir ../user_data/second_stage_ckpt \
  --model_name_or_path ../user_data/best-first-stage-model \
  --tokenizer_dir ../user_data/best-first-stage-model \
  --learning_rate 1e-5 \
  --per_device_train_batch_size 16 \
  --per_device_eval_batch_size 16 \
  --weight_decay 0.0 \
  --warmup_steps 0 \
  --num_train_epochs 2 \
  --evaluate_during_training \
  --logging_dir ../user_data/second_stage_log \
  --logging_first_step \
  --logging_steps 500 \
  --save_steps 0 \
  --seed 2020 \
  --do_predict \
  --do_train \
  --do_eval \
  --freeze
