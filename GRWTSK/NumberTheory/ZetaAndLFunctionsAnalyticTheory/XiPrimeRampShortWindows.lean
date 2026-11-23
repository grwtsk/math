/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import Mathlib.Analysis.Convex.Function
import Mathlib.Analysis.SpecialFunctions.Log.NegMulLog
import Mathlib.Analysis.SpecialFunctions.Trigonometric.Basic
import Mathlib.Tactic

/-! Positive averaging and upper interpolation for the one-sided prime ramp. -/
namespace GRWTSK.XiPrimeRampShortWindows

/-- The positive measure with masses proportional to 1 and exp(bπ/a)
at 0 and π/a kills the mode of complex frequency a+ib. -/
theorem half_period_kills (a b : ℝ) (ha : a ≠ 0) :
    1 + (Real.exp (b * (Real.pi/a)) : ℂ) *
      Complex.exp (Complex.I * ((a : ℂ) + (b : ℂ) * Complex.I) *
        ((Real.pi/a : ℝ) : ℂ)) = 0 := by
  rw [Complex.ofReal_exp, ← Complex.exp_add]
  push_cast
  have h : (b : ℂ) * (Real.pi / (a : ℂ)) +
      Complex.I * ((a : ℂ) + (b : ℂ) * Complex.I) * (Real.pi / (a : ℂ)) =
      Real.pi * Complex.I := by
    field_simp [ha]
    linear_combination (b : ℂ) * Complex.I_sq
  rw [h, Complex.exp_pi_mul_I]
  ring

/-- The curvature majorant for x log x on a ray bounded away from zero. -/
theorem quadratic_sub_mul_log_convex {a : ℝ} (ha : 0 < a) :
    ConvexOn ℝ (Set.Ici a) (fun x : ℝ => x^2/(2*a) - x*Real.log x) := by
  have hpos : ∀ x ∈ interior (Set.Ici a), 0 < x := fun x hx =>
    lt_of_lt_of_le ha (interior_subset hx)
  apply convexOn_of_hasDerivWithinAt2_nonneg (convex_Ici a)
      (f' := fun x => 2*x/(2*a) - (Real.log x + 1))
      (f'' := fun x => 2/(2*a) - x⁻¹)
  · exact ((continuous_id.pow 2).div_const _).continuousOn.sub Real.continuous_mul_log.continuousOn
  · intro x hx
    have h := (((hasDerivAt_id x).pow 2).div_const (2*a)).sub
      (Real.hasDerivAt_mul_log (hpos x hx).ne')
    simpa [Pi.sub_def] using h.hasDerivWithinAt
  · intro x hx
    have h := (((hasDerivAt_id x).const_mul 2).div_const (2*a)).sub
      ((Real.hasDerivAt_log (hpos x hx).ne').add_const 1)
    simpa [Pi.sub_def] using h.hasDerivWithinAt
  · intro x hx
    have hax : a ≤ x := interior_subset hx
    have := (one_div_le_one_div_of_le ha hax)
    rw [← one_div]
    convert sub_nonneg.mpr this using 1
    field_simp

/-- Upper interpolation error for the entropy term in the von Mangoldt ramp. -/
theorem mul_log_chord {a b u v : ℝ} (ha : 0 < a) (hab : a ≤ b)
    (hu : 0 ≤ u) (hv : 0 ≤ v) (hs : u+v=1) :
    u*(a*Real.log a) + v*(b*Real.log b) -
      (u*a+v*b)*Real.log (u*a+v*b) ≤ (b-a)^2/(8*a) := by
  have hc := (quadratic_sub_mul_log_convex ha).2 (show a ∈ Set.Ici a by simp)
    (show b ∈ Set.Ici a from hab) hu hv hs
  simp only [smul_eq_mul] at hc
  have hvar : u*a^2 + v*b^2 - (u*a+v*b)^2 = u*v*(b-a)^2 := by
    rw [show u=1-v by linarith]; ring
  have huv : 4*(u*v) ≤ 1 := by nlinarith only [sq_nonneg (u-v), congrArg (· ^ 2) hs]
  have hquad := mul_le_mul_of_nonneg_right huv (sq_nonneg (b-a))
  field_simp [ha.ne'] at hc ⊢
  linarith only [hc, hvar, hquad]

/-- A positive atom at a measured peak forces a compensating value
when the average is small. The weights of the other atoms sum to at most one. -/
theorem opposite_value {ι : Type*} (s : Finset ι) (w v : ι → ℝ)
    {p peak error threshold : ℝ} (hw : ∀ i ∈ s, 0 ≤ w i)
    (hmass : ∑ i ∈ s, w i ≤ 1) (ht : 0 ≤ threshold)
    (hpeak : error + threshold < p * peak)
    (hmean : p * peak + ∑ i ∈ s, w i * v i ≤ error) :
    ∃ i ∈ s, v i < -threshold := by
  by_contra! hall
  have hsum : (∑ i ∈ s, w i) * (-threshold) ≤ ∑ i ∈ s, w i * v i := by
    rw [Finset.sum_mul]
    exact Finset.sum_le_sum (fun i hi => mul_le_mul_of_nonneg_left (hall i hi) (hw i hi))
  have hmass' := mul_le_mul_of_nonpos_right hmass (neg_nonpos.mpr ht)
  linarith

/-- A nonnegative combination of positive parts of affine prime ramps
is below its chord. This works for arbitrary nonnegative finite weights. -/
theorem weighted_ramp_chord {ι : Type*} (s : Finset ι) (w d : ι → ℝ)
    (hw : ∀ i ∈ s, 0 ≤ w i) (a b u v : ℝ) (hu : 0 ≤ u) (hv : 0 ≤ v)
    (huv : u + v = 1) :
    (∑ i ∈ s, w i * max (((u*a + v*b) * d i) - 1) 0) ≤
      u * (∑ i ∈ s, w i * max (a * d i - 1) 0) +
      v * (∑ i ∈ s, w i * max (b * d i - 1) 0) := by
  rw [Finset.mul_sum, Finset.mul_sum, ← Finset.sum_add_distrib]
  apply Finset.sum_le_sum
  intro i hi
  have h : max ((u*a+v*b)*d i-1) 0 ≤
      u * max (a*d i-1) 0 + v * max (b*d i-1) 0 := by
    apply max_le
    · calc
        _ = u*(a*d i-1) + v*(b*d i-1) := by nlinarith only [huv]
        _ ≤ _ := add_le_add (mul_le_mul_of_nonneg_left (le_max_left _ _) hu)
          (mul_le_mul_of_nonneg_left (le_max_left _ _) hv)
    · exact add_nonneg (mul_nonneg hu (le_max_right _ _)) (mul_nonneg hv (le_max_right _ _))
  calc
    _ ≤ _ := mul_le_mul_of_nonneg_left h (hw i hi)
    _ = _ := by ring

/-- Exact loss from sampling an upper chord on consecutive fourth powers,
under the curvature bound 1/a on the interval starting at a. -/
theorem fourth_power_chord_loss {n : ℝ} (hn : 1 ≤ n) :
    ((n+1)^4 - n^4)^2 / (8*n^4) ≤ (225/8 : ℝ)*n^2 := by
  have hn0 : 0 < n := by linarith
  have h2 : 0 ≤ n^2 * (n-1) := mul_nonneg (sq_nonneg _) (by linarith)
  have h1 : 0 ≤ n * (n-1) := mul_nonneg hn0.le (by linarith)
  have hg : (n+1)^4 - n^4 ≤ 15*n^3 := by nlinarith
  have hg0 : 0 ≤ (n+1)^4 - n^4 := by nlinarith [pow_nonneg hn0.le 3]
  apply (div_le_iff₀ (by positivity : 0 < 8*n^4)).mpr
  nlinarith only [mul_self_le_mul_self hg0 hg]

end GRWTSK.XiPrimeRampShortWindows
