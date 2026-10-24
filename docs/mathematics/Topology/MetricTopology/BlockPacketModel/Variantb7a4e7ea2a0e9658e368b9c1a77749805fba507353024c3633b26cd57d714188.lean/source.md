# Complete source: GRWTSK.Topology.MetricTopology.BlockPacketModel.Variantb7a4e7ea2a0e9658e368b9c1a77749805fba507353024c3633b26cd57d714188

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b20fb062bb7fdee26b3b2b3633fb30fe238edfc0` · SHA-256 `b7a4e7ea2a0e9658e368b9c1a77749805fba507353024c3633b26cd57d714188`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
module

public meta import Surface.Core.Classification
public import Surface.Core.ConductorThreeVaughanBlocks
public import Surface.Core.TypeII.DyadicIntervals
public import Surface.Core.TypeII.GeometricResidual
public import Surface.Core.TypeII.SpatialCarrier
public import Surface.Core.TypeII.StructuredProjection
public import Surface.Core.TypeII.WangZahlDiffuse
import Mathlib.Tactic

/-!
# Non-vacuous packet model for one dyadic Type II block

This structure fixes one packet frame for an entire prefix filtration.  Its
residual is the prescribed geometric leakage from
`GeometricResidualSpecification`, not a freely chosen matrix.  The packet
matrix is tied to that fixed geometric kernel entry by entry.  Localization,
concrete shaded tubes, a controlled cubical carrier, and structured cluster
projections are recorded independently of all coefficient estimates.

The structure contains no synthesis norm bound, diffuse correlation bound,
mixed estimate, residual pairing estimate, Wang--Zahl conclusion, Carleson
estimate, maximal estimate, or GRH statement.
-/

public section

namespace Surface.Core.TypeII

noncomputable section

open MeasureTheory
open scoped ENNReal InnerProductSpace InnerProduct
open Surface.Core.ConductorThreeVaughanBlocks
open Surface.Core.PrimeWalkLosslessSpatial
open Surface.Core.PrimeWalkSpatialEncoding
open Surface.Core.PrimeWalkWangZahlGeometry

/-- Prefix-compatible packet geometry for one canonical dyadic rectangle. -/
structure TypeIIBlockPacketModel (N : ℕ) (B : TypeIIDyadicBlock N) where
  LeftSpace : Type
  RightSpace : Type
  leftNormed : NormedAddCommGroup LeftSpace
  rightNormed : NormedAddCommGroup RightSpace
  leftInner : InnerProductSpace ℂ LeftSpace
  rightInner : InnerProductSpace ℂ RightSpace
  leftComplete : CompleteSpace LeftSpace
  rightComplete : CompleteSpace RightSpace

  leftSynthesis : EuclideanSpace ℂ B.Left →L[ℂ] LeftSpace
  rightSynthesis : EuclideanSpace ℂ B.Right →L[ℂ] RightSpace

  prefixIncidence : PrefixCompatibleIncidence RightSpace LeftSpace
  geometricResidual : GeometricResidualSpecification B.Left B.Right
    (fun left ↦ left.1.1) (fun right ↦ right.1.1)

  /-- The same fixed localized kernel is represented by the packet frame at
  every prefix; no model is reconstructed after observing `x`. -/
  packetMatrix_eq_geometricKernel : ∀ x left right,
    ⟪leftSynthesis (EuclideanSpace.single left 1),
      prefixIncidence.incidence x
        (rightSynthesis (EuclideanSpace.single right 1))⟫_ℂ =
      geometricResidual.geometricKernel x left right

  leftSpatialization : LeftSpace →L[ℂ] SpatialL2
  rightSpatialization : RightSpace →L[ℂ] SpatialL2
  leftSpatialization_isometry : Isometry leftSpatialization
  rightSpatialization_isometry : Isometry rightSpatialization

  packetShading : Sum B.Left B.Right → Set
    Surface.Core.PrimeWalkSpatialEncoding.SpatialPoint
  packetShading_measurable : ∀ atom, MeasurableSet (packetShading atom)
  leftPacket_ae_zero_outside_shading : ∀ left,
    ∀ᵐ point : Surface.Core.PrimeWalkSpatialEncoding.SpatialPoint
        ∂(volume : Measure Surface.Core.PrimeWalkSpatialEncoding.SpatialPoint),
      point ∉ packetShading (.inl left) →
        leftSpatialization
          (leftSynthesis (EuclideanSpace.single left 1)) point = 0
  rightPacket_ae_zero_outside_shading : ∀ right,
    ∀ᵐ point : Surface.Core.PrimeWalkSpatialEncoding.SpatialPoint
        ∂(volume : Measure Surface.Core.PrimeWalkSpatialEncoding.SpatialPoint),
      point ∉ packetShading (.inr right) →
        rightSpatialization
          (rightSynthesis (EuclideanSpace.single right 1)) point = 0

  tubeGeometry : EuclideanShadedTubeFamily (Sum B.Left B.Right)
  tubes_eq_univ : tubeGeometry.tubes = Finset.univ
  tube_shading_eq : ∀ atom, tubeGeometry.shading atom = packetShading atom

  spatialCarrier : TypeIISpatialCarrier3 (Sum B.Left B.Right)
  carrierControlsShading :
    spatialCarrier.ControlledShadingRealization packetShading

  rankBudget : ℕ
  localStructure : TypeIILocalStructure B.Left B.Right rankBudget

attribute [instance] TypeIIBlockPacketModel.leftNormed
attribute [instance] TypeIIBlockPacketModel.rightNormed
attribute [instance] TypeIIBlockPacketModel.leftInner
attribute [instance] TypeIIBlockPacketModel.rightInner
attribute [instance] TypeIIBlockPacketModel.leftComplete
attribute [instance] TypeIIBlockPacketModel.rightComplete

/-- Coordinate matrix of the packet incidence in the canonical block bases. -/
@[expose]
def TypeIIBlockPacketModel.packetMatrix
    {N : ℕ} {B : TypeIIDyadicBlock N}
    (model : TypeIIBlockPacketModel N B) (x : ℕ) :
    Matrix B.Left B.Right ℂ :=
  fun left right ↦
    ⟪model.leftSynthesis (EuclideanSpace.single left 1),
      model.prefixIncidence.incidence x
        (model.rightSynthesis (EuclideanSpace.single right 1))⟫_ℂ

/-- Exact non-vacuous factorization derived from the prescribed residual
formula and the packet/kernel identification. -/
@[surface_novel, surface_published]
theorem TypeIIBlockPacketModel.exactFactorization
    {N : ℕ} {B : TypeIIDyadicBlock N}
    (model : TypeIIBlockPacketModel N B) (x : ℕ) :
    productCutoffMatrix (fun left : B.Left ↦ left.1.1)
        (fun right : B.Right ↦ right.1.1) x =
      model.packetMatrix x + model.geometricResidual.residual x := by
  ext left right
  rw [Matrix.add_apply, TypeIIBlockPacketModel.packetMatrix,
    model.packetMatrix_eq_geometricKernel]
  simp [GeometricResidualSpecification.residual]

/-- The packet factorization targets the literal dyadic block cutoff matrix
used by the Vaughan decomposition. -/
@[surface_novel, surface_published]
theorem TypeIIBlockPacketModel.exactBlockFactorization
    {N : ℕ} {B : TypeIIDyadicBlock N}
    (model : TypeIIBlockPacketModel N B) (x : ℕ) :
    typeIIBlockCutoffMatrix B x =
      model.packetMatrix x + model.geometricResidual.residual x := by
  ext left right
  simpa [typeIIBlockCutoffMatrix, typeIICutoffMatrix,
    productCutoffMatrix] using
      congrFun (congrFun (model.exactFactorization x) left) right

end

end Surface.Core.TypeII

end
```
