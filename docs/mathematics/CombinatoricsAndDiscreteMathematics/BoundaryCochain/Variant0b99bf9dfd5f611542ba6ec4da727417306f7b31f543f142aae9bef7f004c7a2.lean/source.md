# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.BoundaryCochain.Variant0b99bf9dfd5f611542ba6ec4da727417306f7b31f543f142aae9bef7f004c7a2

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `724caadee0714acf22b86826bdb499c4b541bebd` · SHA-256 `0b99bf9dfd5f611542ba6ec4da727417306f7b31f543f142aae9bef7f004c7a2`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.SemiLocalDefect.PositiveCapacity

/-!
# Exact boundary cochain

Capacity increments telescope around every finite insertion square.  The
result is an algebraic identity of the capacity potential; it does not assert
that the two conditional increments are equal.
-/

namespace Mathematics.SemiLocalDefect

theorem capacity_increment_square_closed
    {Prime : Type u}
    {Coordinate : Type v}
    [DecidableEq Prime]
    (capacity : PositiveCapacity Prime Coordinate)
    (cut : Finset Prime)
    (first second : Prime) :
    capacity.increment cut first +
        capacity.increment (insert first cut) second =
      capacity.increment cut second +
        capacity.increment (insert second cut) first := by
  funext coordinate
  have terminal_cuts_equal :
      insert second (insert first cut) =
        insert first (insert second cut) := by
    ext prime
    simp [or_left_comm]
  simp only [PositiveCapacity.increment, Pi.add_apply, Pi.sub_apply]
  rw [terminal_cuts_equal]
  ring

theorem capacity_increment_two_step_telescope
    {Prime : Type u}
    {Coordinate : Type v}
    [DecidableEq Prime]
    (capacity : PositiveCapacity Prime Coordinate)
    (cut : Finset Prime)
    (first second : Prime) :
    capacity.increment cut first +
        capacity.increment (insert first cut) second =
      capacity.value (insert second (insert first cut)) -
        capacity.value cut := by
  funext coordinate
  simp only [PositiveCapacity.increment, Pi.add_apply, Pi.sub_apply]
  ring

end Mathematics.SemiLocalDefect
```
