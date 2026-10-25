# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.FinalTypeAudit.Variant849ef24b0b521d849e27f120e9dc97127bf89fc94c76976328f170a28d72cf7e

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a80dd9715fda2bac0249a0f35f9cdc3423fe5f91` · SHA-256 `849ef24b0b521d849e27f120e9dc97127bf89fc94c76976328f170a28d72cf7e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import scratch.common_mean_stieltjes_20261004.FiniteExternalInputs

#check CommonMeanStieltjes.actual_finite_bounds_with_external_literature_inputs
#print axioms CommonMeanStieltjes.actual_finite_bounds_with_external_literature_inputs
#print CommonMeanScratch.CompletePositiveVerifiedHeight
#print CommonMeanScratch.CorrectedBellottiWongCount
#print CommonMeanScratch.zeroCountMain
#print CommonMeanScratch.correctedBellottiWongError

open Lean in
run_meta do
  let env ← getEnv
  for name in env.header.moduleNames do
    logInfo m!"CLOSURE_MODULE {name}"
```
