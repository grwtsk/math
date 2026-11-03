/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.DirichletScalarObservationCancellation
import GRWTSK.LinearAndMultilinearAlgebraMatrixTheory.BasicLinearAlgebra.ArithmeticCyclicHoppingBounds

set_option autoImplicit false
noncomputable section

/-! Full residual cost of changing a scalar analytic observation.
No small residual of the original or corrected source is supplied.
SOURCE_PROOF_CANDIDATES / NOT_RUN / NOT_KERNEL_AUDITED. -/
namespace GRWTSK.NumberTheory.Zeta.Riemann.DirichletScalarCorrectionResidualBudget
open DirichletScalarObservationCancellation
open GRWTSK.Algebra.LinearAlgebra.MatrixTheory
open ArithmeticCyclicOperatorStability ArithmeticCyclicHoppingBounds
variable (N : ℕ) [NeZero N]

theorem residual_change_bound
    (T : EuclideanSpace ℂ (ZMod N) →L[ℂ] EuclideanSpace ℂ (ZMod N))
    (λ : ℂ) (x r : EuclideanSpace ℂ (ZMod N)) :
    ‖T x-λ • x‖ ≤ ‖T r-λ • r‖+(‖T‖+‖λ‖)*‖x-r‖ := by
  have he : T x-λ • x = (T r-λ • r)+(T (x-r)-λ • (x-r)) := by
    rw [map_sub, smul_sub]
    abel
  have hb : ‖T (x-r)-λ • (x-r)‖ ≤ (‖T‖+‖λ‖)*‖x-r‖ := by
    have h := norm_sub_le (T (x-r)) (λ • (x-r))
    rw [norm_smul] at h
    have ht := T.le_opNorm (x-r)
    nlinarith
  rw [he]
  exact (norm_add_le _ _).trans (add_le_add_left hb _)

theorem actual_scalar_correction_residual (t : ℝ) (q : ZMod N → ℝ) (λ : ℂ)
    (u x : EuclideanSpace ℂ (ZMod N)) :
    ‖hamiltonianOperator N t q x-λ • x‖ ≤
      ‖hamiltonianOperator N t q (cancelRow N u x)-λ • cancelRow N u x‖+
        (2*|t|+‖q‖+‖λ‖)*‖inner ℂ u x / inner ℂ u u‖*‖u‖ := by
  have h := residual_change_bound N (hamiltonianOperator N t q) λ x (cancelRow N u x)
  rw [cancelRow_correction, norm_smul] at h
  have hc := mul_le_mul_of_nonneg_right
    (add_le_add_right (operator_norm_bound N t q) ‖λ‖)
    (mul_nonneg (norm_nonneg (inner ℂ u x / inner ℂ u u)) (norm_nonneg u))
  nlinarith

end GRWTSK.NumberTheory.Zeta.Riemann.DirichletScalarCorrectionResidualBudget
