# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.PlaceInteraction.Variant1e36eb6f19b47d7e544ab6fad0078563117986b499d0c8b14c68d3eddabf8abc

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1a65f90fed2341c078b2ebb9a7f79241b88c0239` · SHA-256 `1e36eb6f19b47d7e544ab6fad0078563117986b499d0c8b14c68d3eddabf8abc`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.SemiLocalDefect.PositiveCapacity

/-!
# Pair interaction

Pair interaction is a second difference of the capacity.  It is symmetric,
but monotonicity alone does not give it a sign.  This object remains separate
from the identically zero exact cochain curvature.
-/

namespace Mathematics.SemiLocalDefect

def pairInteraction
    {Prime : Type u}
    {Coordinate : Type v}
    [DecidableEq Prime]
    (capacity : PositiveCapacity Prime Coordinate)
    (cut : Finset Prime)
    (first second : Prime) :
    DiagonalOperator Coordinate :=
  capacity.value (insert first (insert second cut)) -
    capacity.value (insert first cut) -
    capacity.value (insert second cut) +
    capacity.value cut

theorem pairInteraction_symmetric
    {Prime : Type u}
    {Coordinate : Type v}
    [DecidableEq Prime]
    (capacity : PositiveCapacity Prime Coordinate)
    (cut : Finset Prime)
    (first second : Prime) :
    pairInteraction capacity cut first second =
      pairInteraction capacity cut second first := by
  have terminal_cuts_equal :
      insert first (insert second cut) =
        insert second (insert first cut) := by
    ext prime
    simp [or_left_comm]
  funext coordinate
  simp only [pairInteraction, Pi.add_apply, Pi.sub_apply]
  rw [terminal_cuts_equal]
  ring

end Mathematics.SemiLocalDefect
```
