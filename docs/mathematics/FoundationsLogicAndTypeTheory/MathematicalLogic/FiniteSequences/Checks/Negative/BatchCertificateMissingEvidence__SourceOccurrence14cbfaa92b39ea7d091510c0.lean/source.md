# Complete source: GRWTSK.Logic.FiniteSequences.Checks.Negative.BatchCertificateMissingEvidence

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `4a02ba1e0733cc53ce5e2546168e13eedf188b69` · SHA-256 `f0d8510a0db792a2669e899a89284bc1f4a50bb3254e89fbb2bd50506140263a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.Logic.FiniteSequences.BatchCertificate

open GRWTSK.Logic.FiniteSequences.DecisionCertificate
open GRWTSK.Logic.FiniteSequences.BatchCertificate

-- Expected type mismatch: old evidence proves length zero of [], not of the full appended history.
example : Certificate Nat Nat :=
  { entries := [(11, 7)]
    predicate := emptyHistoryCertificate.predicate
    evidence := emptyHistoryCertificate.evidence }
```
