import scratch.common_mean_20261004.FiveModeSourceTailMajorant

#check CommonMeanScratch.transform_polynomial_sharp_budget
#print axioms CommonMeanScratch.transform_polynomial_sharp_budget
#check CommonMeanScratch.actual_bilateral_sharp_tail_bound
#print axioms CommonMeanScratch.actual_bilateral_sharp_tail_bound
#check CommonMeanScratch.actual_source_absolute_tail_majorant
#print axioms CommonMeanScratch.actual_source_absolute_tail_majorant

open Lean in
run_meta do
  let env ← getEnv
  for name in env.header.moduleNames do
    logInfo m!"CLOSURE_MODULE {name}"
