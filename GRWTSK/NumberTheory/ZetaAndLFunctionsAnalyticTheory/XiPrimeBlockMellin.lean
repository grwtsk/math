import Mathlib.Analysis.SpecialFunctions.Gamma.Beta
import Mathlib.Analysis.SpecialFunctions.Integrals.Basic
import Mathlib.Tactic.Linarith
import Mathlib.Tactic.Ring

/-!
# Zero-free Mellin multiplier for the harmonic doubling block

The continuum scaling of the ordinary-prime block has multiplier
$\frac12\Gamma(1-s/2)\int_1^2 v^{s/2-2}\,dv$.
The interval integral and its nonvanishing are established on the
whole half-plane $\Re s<2$.
-/

open Complex
open scoped Interval

noncomputable section

namespace GRWTSK.XiPrimeBlockMellin

/-- Gamma factor times the scale average over one doubling block. -/
def multiplier (s : ℂ) : ℂ :=
  (1/2 : ℂ) * Gamma (1-s/2) * ∫ v : ℝ in (1 : ℝ)..2, (v : ℂ)^(s/2-2)

private theorem exponent_re_neg {s : ℂ} (hs : s.re < 2) : (s/2-1).re < 0 := by
  simp only [sub_re, div_ofNat_re, one_re]
  linarith

/-- Exact closed form of the doubling scale average. -/
theorem scale_integral {s : ℂ} (hs : s.re < 2) :
    (∫ v : ℝ in (1 : ℝ)..2, (v : ℂ)^(s/2-2)) =
      ((2 : ℂ)^(s/2-1)-1)/(s/2-1) := by
  have hr : s/2-2 ≠ -1 := by
    intro h
    have : s/2-1 = 0 := by linear_combination h
    have := exponent_re_neg hs
    simp_all
  rw [integral_cpow (Or.inr ⟨hr, by norm_num [Set.uIcc_of_le]⟩)]
  norm_num [show s/2-2+1 = s/2-1 by ring]

theorem multiplier_closedForm {s : ℂ} (hs : s.re < 2) :
    multiplier s = (1/2 : ℂ) * Gamma (1-s/2) * (((2 : ℂ)^(s/2-1)-1)/(s/2-1)) := by
  rw [multiplier, scale_integral hs]

/-- In particular, this multiplier cannot hide an off-line zero in the critical strip. -/
theorem multiplier_ne_zero {s : ℂ} (hs : s.re < 2) : multiplier s ≠ 0 := by
  have hr := exponent_re_neg hs
  have hd : s/2-1 ≠ 0 := by intro h; simp [h] at hr
  have hn : ‖(2 : ℂ)^(s/2-1)‖ < 1 := by
    have h := Complex.norm_cpow_eq_rpow_re_of_pos (by norm_num : (0 : ℝ) < 2) (s/2-1)
    norm_num only [ofReal_ofNat] at h
    rw [h]
    exact Real.rpow_lt_one_of_one_lt_of_neg (by norm_num) hr
  have hnum : (2 : ℂ)^(s/2-1)-1 ≠ 0 := by
    intro h
    simp [sub_eq_zero.mp h] at hn
  have hgamma : Gamma (1-s/2) ≠ 0 := Gamma_ne_zero_of_re_pos (by
    simp only [sub_re, one_re, div_ofNat_re]; linarith)
  rw [multiplier_closedForm hs]
  exact mul_ne_zero (mul_ne_zero (by norm_num) hgamma) (div_ne_zero hnum hd)

end GRWTSK.XiPrimeBlockMellin
