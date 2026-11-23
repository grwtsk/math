/-
Copyright (c) 2026 grwtsk contributors. MIT.
Authors: grwtsk contributors.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.XiTranslatedSechTrace
import Mathlib.Analysis.SpecialFunctions.Trigonometric.Bounds
import Mathlib.Analysis.Real.Pi.Bounds

/-! # Error from projecting a complex xi ordinate onto the real axis

These scalar inequalities control the trace norm on the multiplicity-carrying
divisor space. The companion note derives the short-interval estimate using the
zero-density theorem of Karatsuba and Korolev (2006, Chapter I, §3, Theorem 1).
-/
noncomputable section
namespace GRWTSK.NumberTheory.XiSechProjectionTransport
open Real MeasureTheory GRWTSK.NumberTheory.XiTranslatedSechTrace

/-- Exact sign factor for the difference of the two probability densities. -/
theorem density_difference {b : ℝ} (hb : 0 < b) (t : ℝ) :
    density b t - density 1 t =
      (1-b)*(b-sinh (π*t)^2)*cosh (π*t) /
      ((sinh (π*t)^2+b^2)*(sinh (π*t)^2+1)) := by
  have hd : 0 < sinh (π*t)^2 + b^2 := by positivity
  have h1 : 0 < sinh (π*t)^2 + 1 := by positivity
  unfold density
  simp only [one_pow, mul_one]
  field_simp
  ring

/-- Both pointwise comparisons hold uniformly in the translate. -/
theorem density_sandwich {b : ℝ} (hb : 0 < b) (hb1 : b ≤ 1) (t : ℝ) :
    b * density 1 t ≤ density b t ∧ b * density b t ≤ density 1 t := by
  let s := sinh (π*t)^2
  have hs : 0 ≤ s := sq_nonneg _
  have hc := (cosh_pos (π*t)).le
  have hd : 0 < s+b^2 := by positivity
  have h1 : 0 < s+1 := by positivity
  have hsq : b^2 ≤ 1 := by nlinarith [mul_nonneg hb.le (sub_nonneg.mpr hb1)]
  unfold density
  simp only [one_pow, mul_one]
  change b*(cosh (π*t)/(s+1)) ≤ cosh (π*t)*b/(s+b^2) ∧
    b*(cosh (π*t)*b/(s+b^2)) ≤ cosh (π*t)/(s+1)
  constructor
  · rw [← mul_div_assoc, div_le_div_iff₀ h1 hd]
    nlinarith [mul_nonneg (mul_nonneg hc hb.le) (sub_nonneg.mpr hsq)]
  · rw [← mul_div_assoc, div_le_div_iff₀ hd h1]
    nlinarith [mul_nonneg (mul_nonneg hc hs) (sub_nonneg.mpr hsq)]

/-- Relative comparison near the real line and the global mass cap. -/
theorem integral_abs_difference_le {b : ℝ} (hb : 0 < b) (hb1 : b ≤ 1) :
    ∫ t, |density b t - density 1 t| ≤ min 2 ((1-b)/b) := by
  have one : (0:ℝ) < 1 := zero_lt_one
  have ib := density_integrable hb
  have i1 := density_integrable one
  have idiff : Integrable (fun t => |density b t - density 1 t|) := (ib.sub i1).abs
  apply le_min
  · calc
      _ ≤ ∫ t, (density b t + density 1 t) := by
        apply integral_mono idiff (ib.add i1)
        intro t
        change |density b t - density 1 t| ≤ density b t + density 1 t
        apply abs_le.mpr
        constructor <;> linarith [density_pos hb t, density_pos one t]
      _ = 2 := by rw [integral_add ib i1, total_mass hb, total_mass one]; norm_num
  · calc
      _ ≤ ∫ t, ((1-b)/b) * density 1 t := by
        apply integral_mono idiff (i1.const_mul _)
        intro t
        change |density b t - density 1 t| ≤ (1-b)/b * density 1 t
        obtain ⟨hlo,hhi⟩ := density_sandwich hb hb1 t
        apply abs_le.mpr
        constructor
        · have h : (1-b) ≤ (1-b)/b := by
            rw [le_div_iff₀ hb]
            exact mul_le_of_le_one_right (sub_nonneg.mpr hb1) hb1
          linarith [mul_le_mul_of_nonneg_right h (density_pos one t).le]
        · rw [div_mul_eq_mul_div, le_div_iff₀ hb]
          nlinarith
      _ = _ := by rw [integral_const_mul, total_mass one, mul_one]

/-- A single complex ordinate at displacement y incurs at most 32 y²
in integrated trace norm throughout the full open critical strip. -/
theorem integral_abs_projection_le {y : ℝ} (hy : |y| < 1/2) :
    ∫ t, |density (cos (π*y)) t - density 1 t| ≤ 32*y^2 := by
  have harg : |π*y| < π/2 := by rw [abs_mul, abs_of_pos pi_pos]; nlinarith [mul_lt_mul_of_pos_left hy pi_pos]
  have hb := cos_pos_of_mem_Ioo ⟨(abs_lt.mp harg).1, (abs_lt.mp harg).2⟩
  have hi := integral_abs_difference_le hb (cos_le_one _)
  by_cases small : |y| ≤ 1/4
  · have hbc : 1/2 ≤ cos (π*y) := by
      rw [← cos_pi_div_three, ← Real.cos_abs (π*y)]
      apply cos_le_cos_of_nonneg_of_le_pi (abs_nonneg _) (by linarith [pi_pos])
      rw [abs_mul, abs_of_pos pi_pos]
      nlinarith [mul_le_mul_of_nonneg_left small pi_pos.le, pi_pos]
    apply hi.trans ((min_le_right _ _).trans ?_)
    rw [div_le_iff₀ hb]
    have hp : π^2 ≤ 16 := by nlinarith [pi_lt_four, pi_pos, mul_nonneg (sub_nonneg.mpr pi_lt_four.le) (show 0 ≤ π+4 by linarith [pi_pos])]
    nlinarith [one_sub_sq_div_two_le_cos (x := π*y),
      mul_le_mul_of_nonneg_right hp (sq_nonneg y),
      mul_le_mul_of_nonneg_right hbc (show 0 ≤ 32*y^2 by positivity)]
  · apply hi.trans ((min_le_left _ _).trans ?_)
    have hh := sq_le_sq.mpr (show |(1/4:ℝ)| ≤ |y| by rw [abs_of_nonneg (by norm_num)]; linarith)
    nlinarith

/-- Squared ratio between the real-projected determinant factor and the
modulus of the complex factor, with q=y²/x² and r=s²/x². -/
def squaredFactorRatio (q r : ℝ) : ℝ :=
  (1+q)^2*(1+r)^2 / ((1+r-q)^2+4*q)

private theorem factorDen_pos {q r : ℝ} (hq : 0 ≤ q) (hr : 0 ≤ r) :
    0 < (1+r-q)^2+4*q := by
  rcases hq.eq_or_lt with he | hp
  · subst q
    simp only [sub_zero, mul_zero, add_zero]
    positivity
  · positivity

/-- The upper envelope holds for all s and is attained at r=3+q. -/
theorem squaredFactorRatio_bounds {q r : ℝ} (hq : 0 ≤ q) (hr : 0 ≤ r) :
    1 ≤ squaredFactorRatio q r ∧ squaredFactorRatio q r ≤ (1+q)^2*(1+q/4) := by
  unfold squaredFactorRatio
  constructor
  · rw [le_div_iff₀ (factorDen_pos hq hr)]
    have h : 0 ≤ r*q*(6+2*q+(2+q)*r) := by positivity
    linarith only [show (1+q)^2*(1+r)^2 - ((1+r-q)^2+4*q) ≥ 0 by
      convert h using 1; ring]
  · rw [div_le_iff₀ (factorDen_pos hq hr)]
    have h : 0 ≤ (1+q)^2*q*(r-3-q)^2/4 := by positivity
    linarith only [show (1+q)^2*(1+q/4)*((1+r-q)^2+4*q) - (1+q)^2*(1+r)^2 ≥ 0 by
      convert h using 1; ring]

theorem squaredFactorRatio_peak {q : ℝ} (hq : 0 ≤ q) :
    squaredFactorRatio q (3+q) = (1+q)^2*(1+q/4) := by
  unfold squaredFactorRatio
  rw [div_eq_iff (factorDen_pos hq (show 0 ≤ 3+q by positivity)).ne']
  ring

end GRWTSK.NumberTheory.XiSechProjectionTransport
