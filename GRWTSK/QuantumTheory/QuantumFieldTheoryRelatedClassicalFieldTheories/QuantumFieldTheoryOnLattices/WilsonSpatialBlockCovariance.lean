/- Copyright (c) 2026 grwtsk contributors. MIT.
Imported mathematical sources retain upstream attribution and licenses. -/
import GRWTSK.QuantumTheory.QuantumFieldTheoryRelatedClassicalFieldTheories.QuantumFieldTheoryOnLattices.WilsonSpatialBlockLift
import GRWTSK.QuantumTheory.QuantumFieldTheoryRelatedClassicalFieldTheories.QuantumFieldTheoryOnLattices.WilsonSpatialMarginal

/-!
# Actual lifted Wilson block covariance in the periodic kernel marginal

The actual lifted block energies become continuous spatial-history insertions.
Their first and joint moments under the actual Wilson law have the same cyclic
partition denominator; covariance is their difference of moments. This retains
all finite periodic layers and applies also to empty blocks and equal times.
It is not a principal-vector, trace or decay formula. SOURCE_PROOF_CANDIDATE;
compile, fresh replay, axioms and interface NOT_RUN. No physical gap is supplied.
-/
set_option autoImplicit false
noncomputable section
open scoped BigOperators
open MeasureTheory
namespace GRWTSK.Geometry.GaugeTheory.WilsonSpatialBlockCovariance
open GRWTSK.Geometry.GaugeTheory.SU2Wilson
open GRWTSK.Geometry.GaugeTheory.FinitePeriodicLattice
open GRWTSK.Geometry.GaugeTheory.FiniteSU2Wilson
open GRWTSK.Geometry.GaugeTheory.WilsonSliceGeometry
open GRWTSK.Geometry.GaugeTheory.WilsonSliceHaar
open GRWTSK.Geometry.GaugeTheory.WilsonSliceAction
open GRWTSK.Geometry.GaugeTheory.WilsonCyclicPartition
open GRWTSK.Geometry.GaugeTheory.WilsonSpatialMarginal
open GRWTSK.Geometry.GaugeTheory.WilsonSpatialBlockLift
open GRWTSK.Geometry.GaugeTheory.WilsonBlockArithmeticCovariance
variable (L : ℕ) [NeZero L]

def blockObservable (r : ZMod L) (B : Finset (SpatialPlaquette L)) :
    C(SpatialHistory L SU2, ℝ) :=
  ⟨historyBlockEnergy L r B, continuous_historyBlockEnergy L r B⟩

def cyclicMoment (β : ℝ) (F : C(SpatialHistory L SU2, ℝ)) : ℝ :=
  (∫ a : SpatialHistory L SU2, F a *
    (∏ r : ZMod L, sliceKernel L β (a r) (a (r + 1))) ∂spatialHistoryHaar L) /
      cyclicPartition L β

theorem lifted_block_mean (β : ℝ) (hβ : 0 ≤ β)
    (r : ZMod L) (B : Finset (SpatialPlaquette L)) :
    (∫ U, blockEnergy L (liftBlock L r B) U ∂wilsonMeasure L β) =
      cyclicMoment L β (blockObservable L r B) := by
  simp_rw [blockEnergy_lift]
  exact normalized_spatial_insertion L β hβ (blockObservable L r B)

theorem lifted_block_product_mean (β : ℝ) (hβ : 0 ≤ β)
    (r s : ZMod L) (B C : Finset (SpatialPlaquette L)) :
    (∫ U, blockEnergy L (liftBlock L r B) U * blockEnergy L (liftBlock L s C) U
      ∂wilsonMeasure L β) =
      cyclicMoment L β (blockObservable L r B * blockObservable L s C) := by
  simp_rw [blockEnergy_lift]
  exact normalized_spatial_insertion L β hβ (blockObservable L r B * blockObservable L s C)

/-- Actual finite-periodic covariance: no separation or independence premise is assumed. -/
theorem lifted_block_covariance (β : ℝ) (hβ : 0 ≤ β)
    (r s : ZMod L) (B C : Finset (SpatialPlaquette L)) :
    blockCovariance L β (liftBlock L r B) (liftBlock L s C) =
      cyclicMoment L β (blockObservable L r B * blockObservable L s C) -
        cyclicMoment L β (blockObservable L r B) * cyclicMoment L β (blockObservable L s C) := by
  rw [blockCovariance_eq_moments L β hβ,
    lifted_block_product_mean L β hβ r s B C,
    lifted_block_mean L β hβ r B, lifted_block_mean L β hβ s C]

end GRWTSK.Geometry.GaugeTheory.WilsonSpatialBlockCovariance
