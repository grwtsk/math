# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.IndependentHeader.Variant537662252b49b020dc4d44a449c6315744b20763d9f0173a295f4e815e321af1

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f1082e5eaca149b7b889a5b5f8497997aab34fa2` · SHA-256 `537662252b49b020dc4d44a449c6315744b20763d9f0173a295f4e815e321af1`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import SourceActualCriticalHalfPntConsumer
open Lean Elab Command
run_cmd do
  let env ← getEnv
  for mod in env.allImportedModuleNames do
    logInfo m!"RH16_IMPORT {mod}"
```
