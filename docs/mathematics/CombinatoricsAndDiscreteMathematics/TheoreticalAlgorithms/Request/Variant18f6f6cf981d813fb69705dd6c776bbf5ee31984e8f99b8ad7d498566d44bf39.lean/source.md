# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Request.Variant18f6f6cf981d813fb69705dd6c776bbf5ee31984e8f99b8ad7d498566d44bf39

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ee265b896042dc398a4d7b13d7b157de78578f25` · SHA-256 `18f6f6cf981d813fb69705dd6c776bbf5ee31984e8f99b8ad7d498566d44bf39`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.Surgery.Boundary

/-! # Explicit surgery requests -/

namespace Mathematics.Surgery

structure Request where
  id : SurgeryRequestId
  boundary : BoundaryObservation
  preservedInvariants : List String
  changedInvariants : List String
  lostInvariants : List String
  authority : String := "candidate"
  deriving DecidableEq, Repr

end Mathematics.Surgery
```
