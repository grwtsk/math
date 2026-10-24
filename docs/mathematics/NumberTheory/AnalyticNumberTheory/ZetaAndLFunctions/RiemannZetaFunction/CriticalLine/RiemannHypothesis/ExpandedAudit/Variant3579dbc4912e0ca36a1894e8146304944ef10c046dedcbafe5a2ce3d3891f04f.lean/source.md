# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ExpandedAudit.Variant3579dbc4912e0ca36a1894e8146304944ef10c046dedcbafe5a2ce3d3891f04f

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3d0a056408b9fa04a83aaf5a3c1a27cc1e79a0da` · SHA-256 `3579dbc4912e0ca36a1894e8146304944ef10c046dedcbafe5a2ce3d3891f04f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import SourceSquarefreeDirectEstimate
set_option linter.hashCommand false
#check RH16SquarefreeDirectEstimate.all_real_lower_of_readout_squarefree
#print axioms RH16SquarefreeDirectEstimate.all_real_lower_of_readout_squarefree
#check RH16SquarefreeDirectEstimate.actual_negative_defect_cap_squarefree
#print axioms RH16SquarefreeDirectEstimate.actual_negative_defect_cap_squarefree
#check RH16SquarefreeDirectEstimate.estimate_of_readout_squarefree_direct
#print axioms RH16SquarefreeDirectEstimate.estimate_of_readout_squarefree_direct
open Lean Elab Command
run_cmd do
  let env ← getEnv
  for m in env.allImportedModuleNames do
    logInfo m!"RH16_IMPORT {m}"
```
