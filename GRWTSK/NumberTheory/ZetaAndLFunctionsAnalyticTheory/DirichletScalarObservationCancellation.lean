/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.DirichletMeanRowBaseIndependence

set_option autoImplicit false
noncomputable section
open scoped BigOperators

/-! Scalar row cancellation does not construct a spectral eigenvector.
The corrected vector need not be a genuine multiplicative character.
SOURCE_PROOF_CANDIDATES / NOT_RUN / NOT_KERNEL_AUDITED. -/
namespace GRWTSK.NumberTheory.Zeta.Riemann.DirichletScalarObservationCancellation
variable (N : ℕ) [NeZero N]

def cancelRow (u x : EuclideanSpace ℂ (ZMod N)) : EuclideanSpace ℂ (ZMod N) :=
  x - (inner ℂ u x / inner ℂ u u) • u

theorem cancelRow_inner_zero (u x : EuclideanSpace ℂ (ZMod N))
    (hu : inner ℂ u u ≠ 0) : inner ℂ u (cancelRow N u x) = 0 := by
  unfold cancelRow
  rw [inner_sub_right, inner_smul_right, div_mul_cancel₀ _ hu, sub_self]

theorem cancelRow_sum_zero (u x : EuclideanSpace ℂ (ZMod N))
    (hu : (∑ j, u j) = 0) (hx : (∑ j, x j) = 0) :
    (∑ j : ZMod N, cancelRow N u x j) = 0 := by
  change (∑ j : ZMod N, (x j-(inner ℂ u x / inner ℂ u u)*u j)) = 0
  rw [Finset.sum_sub_distrib, ← Finset.mul_sum, hu, hx, mul_zero, sub_zero]

theorem cancelRow_correction (u x : EuclideanSpace ℂ (ZMod N)) :
    x-cancelRow N u x = (inner ℂ u x / inner ℂ u u) • u := by
  unfold cancelRow
  abel

end GRWTSK.NumberTheory.Zeta.Riemann.DirichletScalarObservationCancellation
