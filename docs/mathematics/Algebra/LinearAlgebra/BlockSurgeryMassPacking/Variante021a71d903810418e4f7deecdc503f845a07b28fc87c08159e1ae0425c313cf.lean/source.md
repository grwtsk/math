# Complete source: GRWTSK.Algebra.LinearAlgebra.BlockSurgeryMassPacking.Variante021a71d903810418e4f7deecdc503f845a07b28fc87c08159e1ae0425c313cf

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9b0e8fb886051c6568b3208a09e4f767dab02760` · SHA-256 `e021a71d903810418e4f7deecdc503f845a07b28fc87c08159e1ae0425c313cf`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
module

public meta import Surface.Core.Classification
public import Surface.Core.TypeII.MassPacking
public import Surface.Core.TypeII.SpatialCarrier

/-!
# Mass packing for exact block surgery

This adapter applies the generic matched-partition Cauchy--Schwarz theorem to
the literal `leftBlock` and `rightBlock` maps of `TypeIIBlockSurgery`.
No cross-matrix or terminal estimate is used.
-/

public section

namespace Surface.Core.TypeII

noncomputable section

/-- The coefficient partition induced by one exact block surgery. -/
@[expose]
def TypeIIBlockSurgery.coefficientPartition
    {N : ℕ} {Left Right : Type*}
    [Fintype Left] [DecidableEq Left]
    [Fintype Right] [DecidableEq Right]
    {cutoffMatrix : ℕ → Matrix Left Right ℂ}
    {spatialCarrier : TypeIISpatialCarrier3 (Sum Left Right)}
    (surgery : TypeIIBlockSurgery N cutoffMatrix spatialCarrier) :
    MatchedCoefficientPartition surgery.Child Left Right where
  leftBlock := surgery.leftBlock
  rightBlock := surgery.rightBlock

/-- Sum of child coefficient masses is bounded by the parent mass. -/
@[surface_novel, surface_published]
theorem TypeIIBlockSurgery.child_mass_sum_le_parent_mass
    {N : ℕ} {Left Right : Type*}
    [Fintype Left] [DecidableEq Left]
    [Fintype Right] [DecidableEq Right]
    {cutoffMatrix : ℕ → Matrix Left Right ℂ}
    {spatialCarrier : TypeIISpatialCarrier3 (Sum Left Right)}
    (surgery : TypeIIBlockSurgery N cutoffMatrix spatialCarrier)
    (left : EuclideanSpace ℂ Left) (right : EuclideanSpace ℂ Right) :
    (∑ child : surgery.Child,
      (surgery.coefficientPartition.childMass left right child)) ≤
        ‖left‖ * ‖right‖ :=
  surgery.coefficientPartition.sum_childMass_le_parent left right

end

end Surface.Core.TypeII

end
```
