/- Copyright (c) 2026 grwtsk contributors. MIT.
Imported mathematical sources retain upstream attribution and licenses. -/
import GRWTSK.QuantumTheory.QuantumFieldTheoryRelatedClassicalFieldTheories.QuantumFieldTheoryOnLattices.WilsonSpatialBlockCovariance

/-!
# Actual finite Wilson cyclic kernel at zero coupling

At beta = 0 the actual gauge-integrated slice kernel is one, and the
complete periodic cyclic product and its actual partition are one.
Consequently normalized cyclic moments reduce to the actual product-Haar
integral. No ground-state replacement is made.

The separate-coordinate factorization of the zero-coupling covariance and
positive-coupling quantitative decay remain follow-up obligations.
SOURCE_PROOF_CANDIDATE. Compilation, fresh kernel replay, transitive axiom
audit and expected-interface checks NOT_RUN. No mass-gap claim.
-/
set_option autoImplicit false
noncomputable section
open scoped BigOperators
open MeasureTheory

namespace GRWTSK.Geometry.GaugeTheory.WilsonSpatialBlockZero

open GRWTSK.Geometry.GaugeTheory.SU2Wilson
open GRWTSK.Geometry.GaugeTheory.WilsonSliceGeometry
open GRWTSK.Geometry.GaugeTheory.WilsonSliceHaar
open GRWTSK.Geometry.GaugeTheory.WilsonSliceAction
open GRWTSK.Geometry.GaugeTheory.WilsonCyclicPartition
open GRWTSK.Geometry.GaugeTheory.WilsonSpatialBlockCovariance

variable (L : ℕ) [NeZero L]

theorem halfSpatialWeight_zero (a : Slice L SU2) :
    halfSpatialWeight L 0 a = 1 := by
  simp [halfSpatialWeight]

theorem sliceWilsonProduct_zero (a b : Slice L SU2) :
    sliceWilsonProduct L 0 a b = 1 := by
  simp [sliceWilsonProduct]

/-- The actual gauge integration collapses because the integrand is one
and sliceGaugeHaar is the existing Haar probability. -/
theorem sliceKernel_zero (a b : Slice L SU2) :
    sliceKernel L 0 a b = 1 := by
  simp [sliceKernel, halfSpatialWeight_zero, sliceWilsonProduct_zero]

theorem cyclicKernel_zero (a : SpatialHistory L SU2) :
    (∏ r : ZMod L, sliceKernel L 0 (a r) (a (r + 1))) = 1 := by
  simp [sliceKernel_zero]

theorem cyclicPartition_zero : cyclicPartition L 0 = 1 := by
  simp [cyclicPartition, cyclicKernel_zero]

/-- Uses the actual periodic partition and actual spatial product Haar,
not a stationary or principal-vector expectation. -/
theorem cyclicMoment_zero (F : C(SpatialHistory L SU2, ℝ)) :
    cyclicMoment L 0 F =
      ∫ a : SpatialHistory L SU2, F a ∂spatialHistoryHaar L := by
  simp [cyclicMoment, cyclicKernel_zero, cyclicPartition_zero]

end GRWTSK.Geometry.GaugeTheory.WilsonSpatialBlockZero
