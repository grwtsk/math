# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CountOccurrencesAudit.Variante4e4e61d9c71f001aac1c66f022d846adab167bb0097a5e49068d24985cc8f9c

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c91c121c9c2dc59baa056d7d1c737cbdf0e2d014` · SHA-256 `e4e4e61d9c71f001aac1c66f022d846adab167bb0097a5e49068d24985cc8f9c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import scratch.common_mean_stieltjes_20261004.CountOccurrences
#print CommonMeanStieltjes.PositiveOccurrenceWindow
#print CommonMeanStieltjes.PositiveCountFibres
#check CommonMeanStieltjes.positiveOccurrenceWindowEquiv
#print axioms CommonMeanStieltjes.positiveOccurrenceWindowEquiv
#check CommonMeanStieltjes.positive_occurrence_window_finite
#print axioms CommonMeanStieltjes.positive_occurrence_window_finite
#check CommonMeanStieltjes.positive_occurrence_window_card_eq_count
#print axioms CommonMeanStieltjes.positive_occurrence_window_card_eq_count
open Lean in
run_meta do
  let env ← getEnv
  for name in env.header.moduleNames do
    logInfo m!"CLOSURE_MODULE {name}"
```
