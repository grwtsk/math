# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.MajorityCrossing.Variant045c34f68f501e405ddf9ad6769e1409d6c65621f2a5cb73030f3040817536c5

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `55a9ca1de9e52d26e7ceab704670e138cee42494` · SHA-256 `045c34f68f501e405ddf9ad6769e1409d6c65621f2a5cb73030f3040817536c5`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathlib.Data.Fintype.Card

/-!
# Optional majority-crossing frontier

This profile models only explicitly threshold-based finite carriers.
-/

namespace Mathematics.StratifiedBoundary

def majorityThreshold (carrierSize : Nat) : Nat :=
  carrierSize / 2 + 1

structure MajorityCrossingProfile
    (Carrier : Type u)
    [Fintype Carrier] where
  profileId : String
  primitiveCrossing : Finset Carrier → Prop
  crossing_exact :
    ∀ support,
      primitiveCrossing support ↔
        support.card = majorityThreshold (Fintype.card Carrier)
  createsTheoremAuthority : Bool := false
  createsTheoremAuthority_exact :
    createsTheoremAuthority = false

end Mathematics.StratifiedBoundary
```
