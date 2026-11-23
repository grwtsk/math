/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import Mathlib.Analysis.SpecialFunctions.Trigonometric.Chebyshev.Basic
import Mathlib.Analysis.SpecialFunctions.Trigonometric.Bounds
import Mathlib.Tactic

/-! A confocal ellipse bound on the complex Gaussian used in heat sampling. -/
namespace GRWTSK.XiHeatChebyshevEllipse
open Real Polynomial
noncomputable section

theorem phase_product (a b : ℝ) :
    sin (a*b)^2 ≤ (exp (a^2)-1)*(exp (b^2)-1) := by
  have ha := add_one_le_exp (a^2)
  have hb := add_one_le_exp (b^2)
  calc
    _ ≤ (a*b)^2 := sin_sq_le_sq
    _ = a^2*b^2 := by ring
    _ ≤ _ := mul_le_mul (by linarith) (by linarith) (sq_nonneg _) (by linarith [sq_nonneg a])

theorem ellipse_budget (a b : ℝ) (hb : b ≠ 0) :
    exp (-(a^2))*(1+sin (a*b)^2/(exp (b^2)-1)) ≤ 1 := by
  have hpos : 0 < exp (b^2)-1 := sub_pos.mpr (one_lt_exp_iff.mpr (sq_pos_of_ne_zero hb))
  have h := (div_le_iff₀ hpos).mpr (phase_product a b)
  rw [exp_neg, inv_mul_eq_div, div_le_one (exp_pos _)]
  linarith

theorem ellipse_axes (θ b : ℝ) (hb : b ≠ 0) :
    cos θ^2 + exp (b^2)/(exp (b^2)-1)*sin θ^2 =
    1+sin θ^2/(exp (b^2)-1) := by
  have hn : exp (b^2)-1 ≠ 0 := (sub_pos.mpr (one_lt_exp_iff.mpr (sq_pos_of_ne_zero hb))).ne'
  have h := Real.sin_sq_add_cos_sq θ
  field_simp
  nlinarith [congrArg (fun x : ℝ => x*exp (b^2)) h]

theorem sampled_angle (n : ℤ) (θ : ℂ) :
    (Polynomial.Chebyshev.T ℂ n).eval (2*Complex.cos θ^2-1) =
    Complex.cos ((n:ℂ)*(2*θ)) := by
  rw [← Complex.cos_two_mul,Polynomial.Chebyshev.T_complex_cos]

end
end GRWTSK.XiHeatChebyshevEllipse
