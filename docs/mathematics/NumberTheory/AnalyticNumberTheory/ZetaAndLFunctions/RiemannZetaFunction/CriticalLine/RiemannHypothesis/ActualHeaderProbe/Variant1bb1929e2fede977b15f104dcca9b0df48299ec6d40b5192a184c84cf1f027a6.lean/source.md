# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ActualHeaderProbe.Variant1bb1929e2fede977b15f104dcca9b0df48299ec6d40b5192a184c84cf1f027a6

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `4bcc30d8d4c77906fdf4452af149e61eba6a9f68` · SHA-256 `1bb1929e2fede977b15f104dcca9b0df48299ec6d40b5192a184c84cf1f027a6`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import SourceBalancedAdaptiveTailBudget
open Lean Elab Command
run_cmd do
  let env ← getEnv
  for mod in env.allImportedModuleNames do
    logInfo m!"RH16_IMPORT {mod}"
```
