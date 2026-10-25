# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ZeroTailInputsAudit.Variante0169b4f3e0f1a1c3820302eee911f77ecf6fed447b5bc0e5fef7910eeeb7885

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ce5f8926c1d39e8bd0f7bfe00304f60c2fa9ae25` · SHA-256 `e0169b4f3e0f1a1c3820302eee911f77ecf6fed447b5bc0e5fef7910eeeb7885`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import scratch.common_mean_20261004.FiveModeZeroTailInputs

#print CommonMeanScratch.actualPositiveZeroCount
#print CommonMeanScratch.CorrectedBellottiWongCount
#print CommonMeanScratch.positiveSixthPowerWeight
#print CommonMeanScratch.actualPositiveSixthPowerTail
#print CommonMeanScratch.PositiveSixthPowerStieltjes
#print CommonMeanScratch.positiveSixthPowerCountEnvelope
#print CommonMeanScratch.SourceAbsoluteTailMajorant

#check CommonMeanScratch.positive_count_carrier_eq
#print axioms CommonMeanScratch.positive_count_carrier_eq
#check CommonMeanScratch.positive_count_multiplicity_eq
#print axioms CommonMeanScratch.positive_count_multiplicity_eq
#check CommonMeanScratch.source_absolute_tail_constant_nonnegative
#print axioms CommonMeanScratch.source_absolute_tail_constant_nonnegative
#check CommonMeanScratch.actual_positive_absolute_tail_le
#print axioms CommonMeanScratch.actual_positive_absolute_tail_le
#check CommonMeanScratch.actual_absolute_tail_le_sixth_power
#print axioms CommonMeanScratch.actual_absolute_tail_le_sixth_power
#check CommonMeanScratch.actual_strict_tail_norm_le_of_count_bound
#print axioms CommonMeanScratch.actual_strict_tail_norm_le_of_count_bound

open Lean in
run_meta do
  let env ← getEnv
  for name in env.header.moduleNames do
    logInfo m!"CLOSURE_MODULE {name}"
```
