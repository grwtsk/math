# Complete source: GRWTSK.Logic.FiniteSequences.Checks.Negative.DecisionCertificateStalePremise

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2ea7d6f8e64f51a4ba78df4e16cfe5a92b13d4fe` · SHA-256 `8b9bbaf344a61a854d91ff31ad4c1bde38f0df7c880c266d644605cf0cffd69d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.Logic.FiniteSequences.DecisionCertificate

open GRWTSK.Logic.FiniteSequences.DictionaryRevision
open GRWTSK.Logic.FiniteSequences.DecisionCertificate

private def boundedPremise : Certificate Nat Nat :=
  ⟨[(11, 7)], (fun entries => ∀ entry ∈ entries, entry.2 ≤ 7), by simp⟩

-- Expected type mismatch: the actual revised payload eight violates the old bound seven.
-- Identical keys, dictionary lengths, occurrence counts and valid bounds do not repair it.
example : DecodesSatisfying (replaceDictionary boundedPremise.packed [8])
    boundedPremise.predicate :=
  boundedPremise.decodesSatisfying
```
