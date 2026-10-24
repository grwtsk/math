# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.PrerequisiteHeaderProbe.Variant48725c9170ec4675c565d0a5b39c15862b8de125b9b6edb123728f04ecea0fc7

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `12399579d4e7468093ca2c46a0cf2646eb0e5cc8` · SHA-256 `48725c9170ec4675c565d0a5b39c15862b8de125b9b6edb123728f04ecea0fc7`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import SourceSquarefreeSampling
import SourceExactSamplingTail
open Lean Elab Command
run_cmd do
  let env ← getEnv
  for m in env.allImportedModuleNames do
    logInfo m!"RH16_IMPORT {m}"
```
