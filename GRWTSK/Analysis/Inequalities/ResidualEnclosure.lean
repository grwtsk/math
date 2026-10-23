/-
Copyright (c) 2026 R.A. Jacob Martone. Released under the MIT license.
Research direction: R.A. Jacob Martone. Formalization assistance: ChatGPT.
Mathlib and Lean retain their original attribution and licenses.

Status: authored proof source; not yet elaborated in the pinned environment.
No claim of an all-scale arithmetic estimate is made by this module.
-/
import Mathlib

/-! # Scalar bounds used by positive-height residual certification -/
set_option autoImplicit false
noncomputable section
namespace GRWTSK.Analysis.Inequalities.ResidualEnclosure

/-- Coercivity and Cauchy--Schwarz bound the *complete* quadratic error. -/
theorem coercive_error_bound {s t R q : ℝ} (hs : 0 < s)
    (ht : 0 ≤ t) (hR : 0 ≤ R) (hcoerc : s*t^2 ≤ q)
    (hcauchy : q ≤ t*R) : q ≤ R^2/s := by
  have hst : s*t ≤ R := by
    rcases eq_or_lt_of_le ht with hzero | hpos
    · simpa [← hzero] using hR
    · nlinarith [hcoerc, hcauchy]
  have htb : t ≤ R/s := by
    apply (le_div_iff₀ hs).2
    nlinarith [hst]
  calc
    q ≤ t*R := hcauchy
    _ ≤ (R/s)*R := mul_le_mul_of_nonneg_right htb hR
    _ = R^2/s := by ring

/-- The final enclosure is robust to both source and form errors. -/
theorem perturb_enclosure {f ell ellh s R eta rho : ℝ}
    (hs : 0 < s) (hR : 0 ≤ R) (hrho : 0 ≤ rho)
    (hlo : ell ≤ f) (hhi : f ≤ ell + rho^2/s)
    (he : |ell-ellh| ≤ eta) (hr : rho ≤ R) :
    ellh-eta ≤ f ∧ f ≤ ellh+eta+R^2/s := by
  have he' := abs_le.mp he
  have hsq : rho^2 ≤ R^2 := by nlinarith
  constructor
  · linarith
  · have hdiv := div_le_div_of_nonneg_right hsq hs.le
    linarith

/-- Positive denominators are required before using the two-height quotient. -/
theorem two_height_enclosure {f₁ f₂ L₁ U₁ L₂ U₂ e : ℝ}
    (he : 0 < e) (h₁ : L₁ ≤ f₁ ∧ f₁ ≤ U₁)
    (h₂ : L₂ ≤ f₂ ∧ f₂ ≤ U₂) :
    (L₁-U₂)/e ≤ (f₁-f₂)/e ∧ (f₁-f₂)/e ≤ (U₁-L₂)/e := by
  constructor <;> apply (div_le_div_iff_of_pos_right he).2 <;> linarith

/-- Composition with a proved regularization defect; the defect is not inferred. -/
theorem inverse_moment_upper_of_two_height
    {invMoment f₁ f₂ U₁ L₂ e defect : ℝ}
    (he : 0 < e) (hf₁ : f₁ ≤ U₁) (hf₂ : L₂ ≤ f₂)
    (hreturn : invMoment ≤ (f₁-f₂)/e + defect) :
    invMoment ≤ (U₁-L₂)/e + defect := by
  have hquot : (f₁-f₂)/e ≤ (U₁-L₂)/e := by
    apply (div_le_div_iff_of_pos_right he).2
    linarith
  linarith

/-- The complete solve-error amplification is 3*rho²/(2*e²). -/
theorem two_height_solve_error {e rho u v : ℝ}
    (he : 0 < e) (hu : 0 ≤ u ∧ u ≤ rho^2/e)
    (hv : 0 ≤ v ∧ v ≤ rho^2/(2*e)) :
    0 ≤ (u+v)/e ∧ (u+v)/e ≤ 3*rho^2/(2*e^2) := by
  constructor
  · exact div_nonneg (add_nonneg hu.1 hv.1) he.le
  · calc
      (u+v)/e ≤ (rho^2/e + rho^2/(2*e))/e :=
        div_le_div_of_nonneg_right (add_le_add hu.2 hv.2) he.le
      _ = 3*rho^2/(2*e^2) := by field_simp; ring

/-- Three-channel Cauchy--Schwarz, with no omitted boundary channel. -/
theorem three_channel_lagrange (a b c u v w : ℝ) :
    (a^2+b^2+c^2)*(u^2+v^2+w^2)-(a*u+b*v+c*w)^2 =
      (a*v-b*u)^2+(a*w-c*u)^2+(b*w-c*v)^2 := by ring

theorem three_channel_sq_le (a b c u v w : ℝ) :
    (a*u+b*v+c*w)^2 ≤ (a^2+b^2+c^2)*(u^2+v^2+w^2) := by
  have h := three_channel_lagrange a b c u v w
  nlinarith [sq_nonneg (a*v-b*u), sq_nonneg (a*w-c*u), sq_nonneg (b*w-c*v)]

end GRWTSK.Analysis.Inequalities.ResidualEnclosure
