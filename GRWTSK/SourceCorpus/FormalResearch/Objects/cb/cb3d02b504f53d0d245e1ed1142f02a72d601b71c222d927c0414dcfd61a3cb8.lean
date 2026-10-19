import SourceFourNineSupport
set_option linter.hashCommand false
#check RH16FourNineSupport.mobius_nine_mul_zero
#print axioms RH16FourNineSupport.mobius_nine_mul_zero
#check RH16FourNineSupport.squarefreeWeightSum_subtract_four_nine
#print axioms RH16FourNineSupport.squarefreeWeightSum_subtract_four_nine
#check RH16FourNineSupport.squarefreeWeightSum_four_thirds
#print axioms RH16FourNineSupport.squarefreeWeightSum_four_thirds
open Lean Elab Command
run_cmd do
  let env ← getEnv
  for m in env.allImportedModuleNames do
    logInfo m!"RH16_IMPORT {m}"
