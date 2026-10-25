# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.FiniteSequences.Checks.Negative.BatchCertificateMissingEvidence

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c486f04f13f431afdf6c8a8f0d26e65b432311f3` · SHA-256 `bd7386670f5203b6a837d1f9769810aaefc9484f95d9c279692b5ee1c3e59f5d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.FiniteSequences.BatchCertificate

open GRWTSK.Logic.FiniteSequences.DecisionCertificate
open GRWTSK.Logic.FiniteSequences.BatchCertificate

-- Expected type mismatch: old evidence proves length zero of [], not of the full appended history.
example : Certificate Nat Nat :=
  { entries := [(11, 7)]
    predicate := emptyHistoryCertificate.predicate
    evidence := emptyHistoryCertificate.evidence }
```
