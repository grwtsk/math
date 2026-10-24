# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ExpandedAudit.Variantda79c3eb14c7495a0a8330b82875f7d7b92682d4fa333f3833ffb37814337162

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `18b0da75ffc4e431e3e167a34f8908592be9f5ae` · SHA-256 `da79c3eb14c7495a0a8330b82875f7d7b92682d4fa333f3833ffb37814337162`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import SourceSquarefreeSamplingConsumer
set_option linter.hashCommand false
#check RH16SquarefreeSamplingConsumer.shortLog_error_le_of_sampling_error_squarefree
#print axioms RH16SquarefreeSamplingConsumer.shortLog_error_le_of_sampling_error_squarefree
#check RH16SquarefreeSamplingConsumer.shortPlain_error_uniform_le_of_sampling_error_squarefree
#print axioms RH16SquarefreeSamplingConsumer.shortPlain_error_uniform_le_of_sampling_error_squarefree
#check RH16SquarefreeSamplingConsumer.actual_shortLog_error_tail_squarefree
#print axioms RH16SquarefreeSamplingConsumer.actual_shortLog_error_tail_squarefree
#check RH16SquarefreeSamplingConsumer.actual_shortPlain_error_tail_squarefree
#print axioms RH16SquarefreeSamplingConsumer.actual_shortPlain_error_tail_squarefree
open Lean Elab Command
run_cmd do
  let env ← getEnv
  for m in env.allImportedModuleNames do
    logInfo m!"RH16_IMPORT {m}"
```
