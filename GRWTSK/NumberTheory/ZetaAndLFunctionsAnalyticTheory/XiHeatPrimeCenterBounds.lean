/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import Mathlib.Analysis.SpecialFunctions.Log.Basic
import Mathlib.Analysis.SpecialFunctions.Trigonometric.Bounds
import Mathlib.Tactic

/-! Exposed Gaussian branches, rational center sampling, and finite prime cutoffs. -/
namespace GRWTSK.XiHeatPrimeCenterBounds
open Real

/-- Differences of two translated Gaussian exponents are affine in the center. -/
theorem branch_difference (g d h e a : ℝ) :
    (d^2-(g-a)^2)-(e^2-(h-a)^2) = d^2-e^2-g^2+h^2+2*(g-h)*a := by ring

/-- A nearest grid point retains the sign of an extremal phase of an off-line pair. -/
theorem phase_near_grid {n d a b : ℝ} (hn : 0<n) (hd : |d| ≤ 1/2)
    (hab : |a-b| ≤ 1/(2*n)) : |2*n*d*(a-b)| ≤ 1/2 := by
  rw [abs_mul, abs_mul, abs_mul, abs_of_pos hn, abs_of_pos (by norm_num : (0:ℝ)<2)]
  have h := mul_le_mul hd hab (abs_nonneg _) (by norm_num : (0:ℝ)≤1/2)
  have h' := mul_le_mul_of_nonneg_left h (by positivity : 0≤2*n)
  have hn1 : 2*n*((1/2)*(1/(2*n)))=1/2 := by field_simp
  linarith only [h',hn1]

/-- The quadratic envelope is controlled at and beyond the chosen logarithmic cutoff. -/
theorem tail_tangent {n : ℝ} (hn : 0<n) (l v : ℝ) :
    (l+v)/2-(l+v)^2/(4*n) ≤ l/2-l^2/(4*n) - (l/(2*n)-1/2)*v := by
  have h : 0 ≤ v^2/(4*n) := by positivity
  field_simp at h ⊢
  nlinarith

/-- At log cutoff 2n minus a shift, one spends half the shift up to a quadratic saving. -/
theorem cutoff_cost {n : ℝ} (hn : n ≠ 0) (s : ℝ) :
    (2*n-s)/2 - (2*n-s)^2/(4*n) = s/2-s^2/(4*n) := by
  field_simp
  ring

/-- The translated Gaussian convolution that gives the exact signed center average. -/
theorem weighted_square (n v a g : ℝ) :
    (n+v)*(n*(a-g)^2+v*a^2)=((n+v)*a-n*g)^2+n*v*g^2 := by ring

/-- Positive and negative masses determine the total variation and its signed mean. -/
theorem variation_identity (v : ℝ) : |v| = v+2*max (-v) 0 := by
  by_cases h : 0≤v
  · rw [abs_of_nonneg h, max_eq_right (by linarith)]
    ring
  · rw [abs_of_neg (lt_of_not_ge h), max_eq_left (by linarith)]
    ring

/-- The absolute omitted prime mass is below seventeen square-root units
once the logarithmic tail slope is at least five sixteenths. -/
theorem cutoff_constant {k : ℝ} (hk : 5/16 ≤ k) : 4*(1+1/k) < 17 := by
  have hp : 0 < k := by linarith
  have hi : 1/k < 13/4 := (div_lt_iff₀ hp).2 (by linarith)
  linarith

/-- Bookkeeping for the uniform one-sided finite-prime bound. The inputs
are the normalized true Gaussian head, pole, gamma and omitted-prime costs. -/
theorem sample_budget {p l x : ℝ} (hp : p ≤ 9/5) (hl : 1 ≤ l)
    (hx : x ≤ 2*p*(1+11*l)+7/2+17) : x < 64*l := by
  have h := mul_nonneg (sub_nonneg.mpr hp) (by linarith : 0 ≤ 1+11*l)
  nlinarith

/-- At distance 2.02 a reflected pair exceeds the two recorded exterior
residuals, uniformly down to arbitrarily small transverse displacement. -/
theorem remote_pair {d : ℝ} (hd : 0 ≤ d) (hu : d ≤ 1/2) :
    44/125 < (1-d)/((1-d)^2+(101/50)^2) +
      (1+d)/((1+d)^2+(101/50)^2) := by
  have h2 : d^2 ≤ (1/2:ℝ)^2 := (sq_le_sq₀ hd (by norm_num)).2 hu
  have h4 : (d^2)^2 ≤ ((1/2:ℝ)^2)^2 :=
    (sq_le_sq₀ (sq_nonneg _) (sq_nonneg _)).2 h2
  have ha : 0 < (1-d)^2+(101/50:ℝ)^2 := by positivity
  have hb : 0 < (1+d)^2+(101/50:ℝ)^2 := by positivity
  rw [div_add_div _ _ ha.ne' hb.ne', lt_div_iff₀ (mul_pos ha hb)]
  nlinarith only [h2,h4]

end GRWTSK.XiHeatPrimeCenterBounds
