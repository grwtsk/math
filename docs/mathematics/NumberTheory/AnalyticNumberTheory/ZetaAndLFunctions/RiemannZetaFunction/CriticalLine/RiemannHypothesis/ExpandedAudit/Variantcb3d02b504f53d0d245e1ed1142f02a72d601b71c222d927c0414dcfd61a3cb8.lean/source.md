# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ExpandedAudit.Variantcb3d02b504f53d0d245e1ed1142f02a72d601b71c222d927c0414dcfd61a3cb8

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a6aae8b79986613a46dece12c4c040883e11c354` · SHA-256 `cb3d02b504f53d0d245e1ed1142f02a72d601b71c222d927c0414dcfd61a3cb8`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
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
```
