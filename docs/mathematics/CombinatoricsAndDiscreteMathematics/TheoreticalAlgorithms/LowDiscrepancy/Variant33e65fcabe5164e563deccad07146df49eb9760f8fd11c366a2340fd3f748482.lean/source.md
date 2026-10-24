# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.LowDiscrepancy.Variant33e65fcabe5164e563deccad07146df49eb9760f8fd11c366a2340fd3f748482

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8b24d50c306a4012a2405692e2047b8e24ab3f59` · SHA-256 `33e65fcabe5164e563deccad07146df49eb9760f8fd11c366a2340fd3f748482`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.GraphAccess.Sampling.InvariantLaw

/-!
# Discrepancy-bounded sampling certificate
-/

namespace Mathematics.GraphAccess

structure LowDiscrepancyCertificate (State Observable : Type u) where
  invariantLaw : InvariantLaw State Observable
  observable : Observable
  samples : List State
  estimatedTrace : Int
  errorMagnitude : Nat
  errorBound : Nat
  discrepancyCertified : Prop
  discrepancyEvidence : discrepancyCertified
  errorWithinBound : errorMagnitude ≤ errorBound

end Mathematics.GraphAccess
```
