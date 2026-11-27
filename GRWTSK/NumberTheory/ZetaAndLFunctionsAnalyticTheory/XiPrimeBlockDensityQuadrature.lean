/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.XiPrimeBlockMomentIntegral

/-!
# Rational quadrature for the real ordinary-prime block density

The real density integrates a nonnegative polynomial against a real power.
It decreases in the exponent. Integrating that monotonicity on each rational
mesh interval brackets its integral between the computable rational sums.
-/

namespace GRWTSK.XiPrimeBlockRational

open MeasureTheory

/-- The polynomial factor in the ordinary-prime block density after inversion. -/
noncomputable def densityKernel (N : ℕ) (u : ℝ) : ℝ :=
  ∑ i ∈ Finset.range N, (1+u)*(1-u^2)^(N+i)/((N : ℝ)+(i : ℝ)+1)

/-- The real density as a function of its auxiliary exponent. -/
noncomputable def densityBlock (N : ℕ) (r : ℝ) : ℝ :=
  ∫ u : ℝ in 0..1, u^r * densityKernel N u

theorem continuous_densityKernel (N : ℕ) : Continuous (densityKernel N) := by
  unfold densityKernel
  fun_prop

theorem densityKernel_nonneg (N : ℕ) {u : ℝ} (hu : u ∈ Set.Icc 0 1) :
    0 ≤ densityKernel N u := by
  have hpow : 0 ≤ 1-u^2 := by nlinarith [mul_nonneg hu.1 (sub_nonneg.mpr hu.2)]
  have hpos : 0 ≤ u := hu.1
  apply Finset.sum_nonneg
  intro i hi
  positivity

/-- Every real density is decreasing for nonnegative exponents. -/
theorem densityBlock_antitone (N : ℕ) : AntitoneOn (densityBlock N) (Set.Ici 0) := by
  intro r hr s hs hrs
  apply intervalIntegral.integral_mono_on zero_le_one
    (((Real.continuous_rpow_const hs).mul (continuous_densityKernel N)).intervalIntegrable _ _)
    (((Real.continuous_rpow_const hr).mul (continuous_densityKernel N)).intervalIntegrable _ _)
  intro u hu
  exact mul_le_mul_of_nonneg_right
    (Real.rpow_le_rpow_of_exponent_ge' hu.1 hu.2 hr hrs) (densityKernel_nonneg N hu)

/-- At a nonnegative rational exponent the integrated density is the rational block value. -/
theorem densityBlock_rat (N : ℕ) {r : ℚ} (hr : 0 ≤ r) :
    densityBlock N (r : ℝ) = (block N r : ℝ) := by
  have ha : 0 ≤ (r : ℝ) := by exact_mod_cast hr
  have hb : 0 ≤ (r : ℝ)+1 := by positivity
  let f := fun (i : ℕ) (u : ℝ) =>
    (u^(r : ℝ)*(1-u^2)^(N+i) + u^((r : ℝ)+1)*(1-u^2)^(N+i))/((N : ℝ)+(i : ℝ)+1)
  have hc (i : ℕ) : Continuous (f i) := by
    dsimp [f]
    fun_prop (disch := positivity)
  calc
    densityBlock N (r : ℝ) = ∫ u : ℝ in 0..1, ∑ i ∈ Finset.range N, f i u := by
      apply intervalIntegral.integral_congr
      intro u hu
      rw [Set.uIcc_of_le zero_le_one] at hu
      simp only [densityKernel, Finset.mul_sum]
      apply Finset.sum_congr rfl
      intro i hi
      dsimp [f]
      rw [Real.rpow_add_of_nonneg hu.1 ha zero_le_one, Real.rpow_one]
      ring
    _ = ∑ i ∈ Finset.range N, ∫ u : ℝ in 0..1, f i u :=
      intervalIntegral.integral_finsetSum (fun i _ => (hc i).intervalIntegrable _ _)
    _ = (block N r : ℝ) := by
      unfold block
      push_cast
      apply Finset.sum_congr rfl
      intro i hi
      dsimp [f]
      rw [intervalIntegral.integral_div, intervalIntegral.integral_add]
      · rw [integral_eq_moment _ hr]
        have h := integral_eq_moment (N+i) (r := r+1) (by positivity)
        push_cast at h
        rw [h]
      · apply Continuous.intervalIntegrable
        fun_prop (disch := positivity)
      · apply Continuous.intervalIntegrable
        fun_prop (disch := positivity)

/-- Exact left and right endpoint enclosure of the real density integral. -/
theorem density_integral_bounds (N : ℕ) {Q : ℕ} (hQ : 0 < Q) :
    (lower N Q : ℝ) ≤ (∫ r : ℝ in 0..1, densityBlock N r) ∧
      (∫ r : ℝ in 0..1, densityBlock N r) ≤ (upper N Q : ℝ) := by
  let x := fun i : ℕ => (i : ℝ)/Q
  have hq : 0 < (Q : ℝ) := by exact_mod_cast hQ
  have xpos (i : ℕ) : 0 ≤ x i := by dsimp [x]; positivity
  have xstep (i : ℕ) : x i ≤ x (i+1) := by
    apply div_le_div_of_nonneg_right _ hq.le
    exact_mod_cast Nat.le_succ i
  have xdif (i : ℕ) : x (i+1) - x i = 1 / (Q : ℝ) := by
    simp [x, Nat.cast_succ, add_div]
  have xrat (i : ℕ) : densityBlock N (x i) = (block N ((i : ℚ)/Q) : ℝ) := by
    simpa [x] using densityBlock_rat N (r := (i : ℚ)/Q) (by positivity)
  have hanti := densityBlock_antitone N
  have hi (i : ℕ) : IntervalIntegrable (densityBlock N) volume (x i) (x (i+1)) := by
    apply AntitoneOn.intervalIntegrable
    rw [Set.uIcc_of_le (xstep i)]
    exact hanti.mono (fun y hy => (xpos i).trans hy.1)
  have hs := intervalIntegral.sum_integral_adjacent_intervals (n := Q) (a := x) (fun i _ => hi i)
  have x0 : x 0 = 0 := by simp [x]
  have xQ : x Q = 1 := by simp [x, hq.ne']
  rw [x0, xQ] at hs
  rw [← hs]
  have right (i : ℕ) :
      densityBlock N (x (i+1)) / Q ≤ ∫ r in x i..x (i+1), densityBlock N r := by
    have h := intervalIntegral.integral_mono_on (xstep i)
      (f := fun _ => densityBlock N (x (i+1))) intervalIntegrable_const (hi i)
      (fun y hy => hanti ((xpos i).trans hy.1) (xpos _) hy.2)
    simpa only [intervalIntegral.integral_const, smul_eq_mul, xdif, one_div, div_eq_inv_mul, mul_one] using h
  have left (i : ℕ) :
      (∫ r in x i..x (i+1), densityBlock N r) ≤ densityBlock N (x i) / Q := by
    have h := intervalIntegral.integral_mono_on (xstep i) (hi i)
      (g := fun _ => densityBlock N (x i)) intervalIntegrable_const
      (fun y hy => hanti (xpos _) ((xpos i).trans hy.1) hy.1)
    simpa only [intervalIntegral.integral_const, smul_eq_mul, xdif, one_div, div_eq_inv_mul, mul_one] using h
  constructor
  · unfold lower
    push_cast
    rw [Finset.sum_div]
    apply Finset.sum_le_sum
    intro i hi
    simpa [xrat, Nat.cast_succ] using right i
  · unfold upper
    push_cast
    rw [Finset.sum_div]
    apply Finset.sum_le_sum
    intro i hi
    simpa [xrat] using left i

end GRWTSK.XiPrimeBlockRational
