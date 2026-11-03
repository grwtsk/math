/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.DirichletModThreeFixedResidualBudget
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.DirichletModThreeAnalyticHurwitz

set_option autoImplicit false
noncomputable section

/-! A proposed analytic parameter retains both real residual coordinates.
SOURCE_PROOF_CANDIDATES / NOT_RUN / NOT_KERNEL_AUDITED. -/
namespace GRWTSK.NumberTheory.Zeta.Riemann.DirichletModThreeCriticalResidualFloor
open DirichletModThreeFixedResidualBudget DirichletModThreeArithmeticResidual

def analyticParameter (s : ℂ) : ℂ := Complex.I*(s-(1/2 : ℂ))

theorem actual_critical_residual_sq (t u v w : ℝ) (s : ℂ) :
    fixedCharacterResidual t u v w (analyticParameter s)^2 =
      2*((w-t+s.im)^2+(s.re-1/2)^2) := by
  have h := actual_arithmetic_modThree_residual_sq t u v w (analyticParameter s)
  change fixedCharacterResidual t u v w (analyticParameter s)^2 = _ at h
  rw [h, ← Complex.normSq_eq_norm_sq, Complex.normSq_apply]
  simp [analyticParameter, Complex.mul_re, Complex.mul_im]
  <;> ring

theorem actual_critical_residual_floor (t u v w : ℝ) (s : ℂ) :
    2*(s.re-1/2)^2 ≤ fixedCharacterResidual t u v w (analyticParameter s)^2 := by
  rw [actual_critical_residual_sq]
  nlinarith [sq_nonneg (w-t+s.im)]

theorem shrinking_budget_forces_critical_line (t u v w : ℝ) (s : ℂ)
    (hbudget : ∀ ε : ℝ, 0<ε →
      fixedCharacterResidual t u v w (analyticParameter s) ≤ ε) :
    s.re=1/2 := by
  have h := fixed_source_shrinking_budget_identifies_parameter t u v w
    (analyticParameter s) hbudget
  have hi := congrArg Complex.im h
  simp [analyticParameter, Complex.mul_im] at hi
  linarith

/- The genuine analytic zero iff equality of the two Hurwitz observations
is available separately. It does NOT supply hbudget. Even on the critical
line the remaining term is 2*(w-t+s.im)^2: a fixed three-site operator
cannot fit every ordinate by changing w. No GRH assertion is made. -/
end GRWTSK.NumberTheory.Zeta.Riemann.DirichletModThreeCriticalResidualFloor
