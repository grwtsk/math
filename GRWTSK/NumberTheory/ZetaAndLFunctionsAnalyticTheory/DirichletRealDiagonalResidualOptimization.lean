/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.DirichletGenuineCharacterVectorNorm

set_option autoImplicit false
noncomputable section

/-! Scalar square completion for real diagonal residual optimization.
The full-character specialization remains a paper construction and does
not supply an analytic zero eigenvector. NOT_RUN / NOT_KERNEL_AUDITED. -/
namespace GRWTSK.NumberTheory.Zeta.Riemann.DirichletRealDiagonalResidualOptimization

theorem real_shift_norm_sq (z : ℂ) (q : ℝ) :
    ‖z+(q : ℂ)‖^2=(z.re+q)^2+z.im^2 := by
  simp [Complex.sq_norm, Complex.normSq_apply]

theorem imaginary_floor (z : ℂ) (q : ℝ) : z.im^2 ≤ ‖z+(q : ℂ)‖^2 := by
  rw [real_shift_norm_sq]
  nlinarith [sq_nonneg (z.re+q)]

theorem optimal_real_shift (z : ℂ) : ‖z+(-z.re : ℝ)‖^2=z.im^2 := by
  rw [real_shift_norm_sq]
  ring

end GRWTSK.NumberTheory.Zeta.Riemann.DirichletRealDiagonalResidualOptimization
