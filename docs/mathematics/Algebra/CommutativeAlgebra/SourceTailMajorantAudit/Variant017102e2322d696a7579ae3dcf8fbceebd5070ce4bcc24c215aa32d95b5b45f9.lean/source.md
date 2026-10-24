# Complete source: GRWTSK.Algebra.CommutativeAlgebra.SourceTailMajorantAudit.Variant017102e2322d696a7579ae3dcf8fbceebd5070ce4bcc24c215aa32d95b5b45f9

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a55ceca7afe460cbc4db0894cb36d96da261bab1` · SHA-256 `017102e2322d696a7579ae3dcf8fbceebd5070ce4bcc24c215aa32d95b5b45f9`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
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
```
