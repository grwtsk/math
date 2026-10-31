/- Copyright (c) 2026 grwtsk contributors. MIT.
Imported mathematical sources retain upstream attribution and licenses. -/
import GRWTSK.QuantumTheory.QuantumFieldTheoryRelatedClassicalFieldTheories.QuantumFieldTheoryOnLattices.WilsonSpatialBlockZero

/-!
# Zero-coupling Wilson block covariance: exact product-Haar frontier

This source identifies the exact remaining product-coordinate factorization
premise for distinct periodic times. The implication is deliberately conditional:
the source does not postulate the factorization or claim kernel acceptance.
SOURCE_PROOF_CANDIDATE; compilation, replay, axiom and interface NOT_RUN.
-/
set_option autoImplicit false
noncomputable section
open MeasureTheory

namespace GRWTSK.Geometry.GaugeTheory.WilsonSpatialBlockZeroCovariance
open GRWTSK.Geometry.GaugeTheory.SU2Wilson
open GRWTSK.Geometry.GaugeTheory.WilsonSliceGeometry
open GRWTSK.Geometry.GaugeTheory.WilsonSliceHaar
open GRWTSK.Geometry.GaugeTheory.WilsonSpatialBlockLift
open GRWTSK.Geometry.GaugeTheory.WilsonSpatialBlockCovariance
open GRWTSK.Geometry.GaugeTheory.WilsonSpatialBlockZero
open GRWTSK.Geometry.GaugeTheory.WilsonBlockArithmeticCovariance

variable (L : ℕ) [NeZero L]

/-- The required distinct-coordinate factorization is explicit and uses
the actual spatial-history Haar product. It is not silently assumed true. -/
def DistinctTimeHaarFactorization : Prop :=
  ∀ (r s : ZMod L), r ≠ s →
    ∀ (B C : Finset (SpatialPlaquette L)),
      (∫ a : SpatialHistory L SU2,
          historyBlockEnergy L r B a * historyBlockEnergy L s C a
            ∂spatialHistoryHaar L) =
        (∫ a : SpatialHistory L SU2, historyBlockEnergy L r B a
            ∂spatialHistoryHaar L) *
        (∫ a : SpatialHistory L SU2, historyBlockEnergy L s C a
            ∂spatialHistoryHaar L)

/-- Exact Wilson beta-zero return, conditional only on the stated
product-Haar factorization; no positive-beta mixing claim. -/
theorem covariance_zero_of_haar_factorization
    (h : DistinctTimeHaarFactorization L)
    (r s : ZMod L) (hrs : r ≠ s)
    (B C : Finset (SpatialPlaquette L)) :
    blockCovariance L 0 (liftBlock L r B) (liftBlock L s C) = 0 := by
  rw [lifted_block_covariance L 0 (le_refl 0) r s B C]
  rw [cyclicMoment_zero L, cyclicMoment_zero L, cyclicMoment_zero L]
  change (∫ a : SpatialHistory L SU2,
      historyBlockEnergy L r B a * historyBlockEnergy L s C a
        ∂spatialHistoryHaar L) -
    (∫ a : SpatialHistory L SU2, historyBlockEnergy L r B a
        ∂spatialHistoryHaar L) *
    (∫ a : SpatialHistory L SU2, historyBlockEnergy L s C a
        ∂spatialHistoryHaar L) = 0
  rw [h r s hrs B C]
  ring

end GRWTSK.Geometry.GaugeTheory.WilsonSpatialBlockZeroCovariance
