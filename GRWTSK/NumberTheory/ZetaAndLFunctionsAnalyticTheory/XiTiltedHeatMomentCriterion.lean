/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import Mathlib.Analysis.SpecialFunctions.Gaussian.GaussianIntegral
import Mathlib.Algebra.Polynomial.Roots
import Mathlib.Tactic

/-! Positivity of the limiting Gaussian Gram form of the centered tilted heat moments. -/
namespace GRWTSK.XiTiltedHeatMomentCriterion
open Real Polynomial MeasureTheory
noncomputable section

theorem polynomial_gaussian_integrable {b : ℝ} (hb : 0 < b) (P : ℝ[X]) :
    Integrable (fun x : ℝ => P.eval x * exp (-b*x^2)) := by
  induction P using Polynomial.induction_on' with
  | add p q hp hq =>
    convert hp.add hq using 1
    ext x
    simp [add_mul]
  | monomial k c =>
    have h := integrable_rpow_mul_exp_neg_mul_sq hb (s := (k:ℝ)) (by have := Nat.cast_nonneg (α := ℝ) k; linarith)
    simpa [eval_monomial,Real.rpow_natCast,mul_assoc] using h.const_mul c

theorem gaussian_gram_pos {b : ℝ} (hb : 0<b) {P : ℝ[X]} (hp : P ≠ 0) :
    0 < ∫ x : ℝ, P.eval x ^ 2 * exp (-b*x^2) := by
  have hnot : ∃ x : ℝ, P.eval x ≠ 0 := by
    by_contra! h
    exact hp (Polynomial.funext (by simpa using h))
  obtain ⟨x,hx⟩ := hnot
  apply integral_pos_of_integrable_nonneg_nonzero (x := x)
  · fun_prop
  · apply (polynomial_gaussian_integrable hb (P*P)).congr
    filter_upwards with y
    simp only [Polynomial.eval_mul, pow_two]
  · intro y; positivity
  · exact mul_ne_zero (pow_ne_zero _ hx) (exp_ne_zero _)

theorem centered_eval (P : ℝ[X]) {s : ℝ} (hs : s ≠ 0) (y : ℝ) :
    (P.comp (C (1/(2*s))*(X-C (s^2)))).eval (s^2+2*s*y) = P.eval y := by
  simp only [eval_comp,eval_mul,eval_C,eval_sub,eval_X]
  congr 1
  field_simp <;> ring

theorem moment_square_nonneg {μ : Measure ℝ} (P : ℝ[X]) :
    0 ≤ ∫ x, P.eval x^2 ∂μ := integral_nonneg fun x => sq_nonneg _

end
end GRWTSK.XiTiltedHeatMomentCriterion
