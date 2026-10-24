# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Request.Variant1a38bc3d06cfe8166eebdf29408e552ed7141ed6b80d60124af815512be8191a

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `63d7ffe0b51f7f77148bbd5f31656f9ed80b09fd` · SHA-256 `1a38bc3d06cfe8166eebdf29408e552ed7141ed6b80d60124af815512be8191a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.Surgery.Boundary

/-! # Explicit surgery requests -/

namespace Mathematics.Surgery

/-- A surgery request is always a candidate; acceptance is a different sealed type. -/
inductive RequestAuthority
  | candidateOnly
  deriving DecidableEq, Repr

structure Request where
  id : SurgeryRequestId
  boundary : BoundaryObservation
  preservedInvariants : List StableId
  changedInvariants : List StableId
  lostInvariants : List StableId
  authority : RequestAuthority := .candidateOnly
  deriving DecidableEq, Repr

@[simp]
theorem request_authority_is_candidate
    (request : Request) :
    request.authority = .candidateOnly := by
  cases request
  rfl

end Mathematics.Surgery
```
