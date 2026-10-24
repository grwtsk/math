# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.CochainCurvature.Variantdc98bb368128e6630e31e9e2406423bea65e47c86a84187e23506b70424da870

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7d735aa82d1478e844f720572313507f58df5145` · SHA-256 `dc98bb368128e6630e31e9e2406423bea65e47c86a84187e23506b70424da870`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.SemiLocalDefect.BoundaryCochain

/-!
# Exact cochain curvature

The exact capacity-derived cochain has zero square curvature.  Approximate
connector curvature is intentionally outside this exact proposition.
-/

namespace Mathematics.SemiLocalDefect

def cochainCurvature
    {Prime : Type u}
    {Coordinate : Type v}
    [DecidableEq Prime]
    (capacity : PositiveCapacity Prime Coordinate)
    (cut : Finset Prime)
    (first second : Prime) :
    DiagonalOperator Coordinate :=
  capacity.increment cut first +
      capacity.increment (insert first cut) second -
    (capacity.increment cut second +
      capacity.increment (insert second cut) first)

theorem exact_capacity_cochain_curvature_zero
    {Prime : Type u}
    {Coordinate : Type v}
    [DecidableEq Prime]
    (capacity : PositiveCapacity Prime Coordinate)
    (cut : Finset Prime)
    (first second : Prime) :
    cochainCurvature capacity cut first second = 0 := by
  rw [cochainCurvature]
  rw [capacity_increment_square_closed]
  exact sub_self _

end Mathematics.SemiLocalDefect
```
