import GRWTSK.ApproximationsAndExpansions.SeriesExpansionsEGTaylorLidstoneSeriesButNotFourierSeries.TaylorLogarithmInterior
import Mathlib.Analysis.SpecialFunctions.Integrals.Basic
import Mathlib.Analysis.PSeries
import Mathlib.Analysis.SpecificLimits.Normed
import Mathlib.Algebra.Ring.GeomSum

/-!
# Ordered logarithm Taylor boundaries and exterior obstruction

Local attribution: grwtsk contributors.
Grant Sanderson, Taylor series (2017-05-07), text adaptation Kurt Bruns,
https://www.3blue1brown.com/lessons/taylor-series/ .
All bodies and inherited suppliers: NOT_RUN_USER_DEFERRED.

These are statements about the actual constructed polynomial sequence, ordered
by degree. In particular the endpoint2 statement is NOT an unconditional HasSum.
Its integral remainder is bounded at every degree. Exterior failure is proved
from actual consecutive differences, independently of unconditional summability.
-/

namespace GRWTSK.Approximation.TaylorLogarithmBoundaries

open Filter MeasureTheory
open GRWTSK.Approximation.TaylorShiftExponential
open GRWTSK.Approximation.TaylorLogarithmInterior
open scoped BigOperators Topology Interval

noncomputable def geometricPolynomial (N : ℕ) (t : ℝ) : ℝ :=
  ∑ k ∈ Finset.range N, (-t)^k

noncomputable def logarithmTerm (x : ℝ) (n : ℕ) : ℝ :=
  (-1 : ℝ)^n*(x-1)^(n+1)/((n : ℝ)+1)

theorem geometric_polynomial_continuous (N : ℕ) : Continuous (geometricPolynomial N) := by
  unfold geometricPolynomial
  fun_prop

theorem geometric_remainder (N : ℕ) (t : ℝ) (ht : t ≠ -1) :
    geometricPolynomial N t - (1+t)⁻¹ = -((-t)^N/(1+t)) := by
  have hg := geom_sum_mul_neg (-t) N
  have hd : 1+t ≠ 0 := by linarith
  dsimp [geometricPolynomial]
  field_simp [hd]
  nlinarith [hg]

theorem geometric_remainder_bound (N : ℕ) {t : ℝ} (ht : t ∈ Set.Icc 0 1) :
    |geometricPolynomial N t-(1+t)⁻¹| ≤ t^N := by
  rw [geometric_remainder N t (by linarith [ht.1]), abs_neg, abs_div,
    abs_pow, abs_neg, abs_of_nonneg ht.1, abs_of_pos (by linarith [ht.1] : 0 < 1+t)]
  exact (div_le_iff₀ (by linarith [ht.1] : 0 < 1+t)).2
    (by nlinarith [pow_nonneg ht.1 N])

theorem geometric_integral (N : ℕ) :
    (∫ t in (0 : ℝ)..1, geometricPolynomial N t) = shiftedEval Real.log 1 N 2 := by
  rw [logarithm_polynomial_sum]
  unfold geometricPolynomial
  rw [intervalIntegral.integral_finsetSum (fun k _ =>
    ((continuous_id.neg).pow k).intervalIntegrable 0 1)]
  apply Finset.sum_congr rfl
  intro k hk
  simp_rw [neg_pow]
  rw [intervalIntegral.integral_const_mul, integral_pow]
  simp

theorem reciprocal_integral : (∫ t in (0 : ℝ)..1, (1+t)⁻¹) = Real.log 2 := by
  rw [intervalIntegral.integral_comp_add_left (fun t : ℝ => t⁻¹) 1]
  norm_num only [add_zero, one_add_one]
  simpa using integral_inv_of_pos (by norm_num : (0 : ℝ) < 1)
    (by norm_num : (0 : ℝ) < 2)

/-- A bound on every ordered degree, not an unconditional summation assertion. -/
theorem endpoint_two_error (N : ℕ) :
    |shiftedEval Real.log 1 N 2-Real.log 2| ≤ 1/((N : ℝ)+1) := by
  have hc : ContinuousOn (fun t : ℝ => (1+t)⁻¹) (Set.Icc 0 1) :=
    (continuous_const.add continuous_id).continuousOn.inv₀
      (fun t ht => by linarith [ht.1])
  have hi : IntervalIntegrable (fun t : ℝ => (1+t)⁻¹) volume 0 1 := by
    exact ContinuousOn.intervalIntegrable_of_Icc (by norm_num) hc
  have hp := (geometric_polynomial_continuous N).intervalIntegrable (0 : ℝ) 1
  have hd := hp.sub hi
  calc
    |shiftedEval Real.log 1 N 2-Real.log 2| =
        |∫ t in (0 : ℝ)..1, geometricPolynomial N t-(1+t)⁻¹| := by
      rw [intervalIntegral.integral_sub hp hi, geometric_integral, reciprocal_integral]
    _ ≤ ∫ t in (0 : ℝ)..1, |geometricPolynomial N t-(1+t)⁻¹| :=
      intervalIntegral.abs_integral_le_integral_abs (by norm_num)
    _ ≤ ∫ t in (0 : ℝ)..1, t^N :=
      intervalIntegral.integral_mono_on (by norm_num) hd.abs
        ((continuous_id.pow N).intervalIntegrable 0 1)
        (fun t ht => geometric_remainder_bound N ht)
    _ = 1/((N : ℝ)+1) := by rw [integral_pow]; simp

theorem endpoint_two_tendsto :
    Tendsto (fun N => shiftedEval Real.log 1 N 2) atTop (𝓝 (Real.log 2)) := by
  have hz : Tendsto (fun N : ℕ => 1/((N : ℝ)+1)) atTop (𝓝 (0 : ℝ)) := by
    simpa only [Nat.cast_add, Nat.cast_one] using
      tendsto_one_div_atTop_nhds_zero_nat.comp (tendsto_add_atTop_nat 1)
  apply tendsto_iff_norm_sub_tendsto_zero.mpr
  exact squeeze_zero (fun _ => norm_nonneg _) (fun N => by
    simpa only [Real.norm_eq_abs] using endpoint_two_error N) hz

theorem endpoint_zero_polynomial (N : ℕ) :
    shiftedEval Real.log 1 N 0 = -(∑ n ∈ Finset.range N, 1/((n : ℝ)+1)) := by
  rw [logarithm_polynomial_sum, ← Finset.sum_neg_distrib]
  apply Finset.sum_congr rfl
  intro n hn
  have hs : ((-1 : ℝ)^n)^2 = 1 := by
    rw [← pow_mul, Nat.mul_comm n 2, pow_mul]
    norm_num
  have hsign : (-1 : ℝ)^n*(-1)^(n+1) = -1 := by
    rw [pow_succ]
    nlinarith [hs]
  norm_num only [zero_sub] at *
  rw [hsign]
  ring

/-- The total value Real.log 0 is unrelated to this divergence at the domain boundary. -/
theorem endpoint_zero_atBot :
    Tendsto (fun N => shiftedEval Real.log 1 N 0) atTop atBot := by
  simp_rw [endpoint_zero_polynomial]
  exact tendsto_neg_atTop_atBot.comp Real.tendsto_sum_range_one_div_nat_succ_atTop

theorem endpoint_zero_no_finite_limit (L : ℝ) :
    ¬Tendsto (fun N => shiftedEval Real.log 1 N 0) atTop (𝓝 L) :=
  not_tendsto_nhds_of_tendsto_atBot endpoint_zero_atBot L

theorem polynomial_successor_difference (x : ℝ) (N : ℕ) :
    shiftedEval Real.log 1 (N+1) x-shiftedEval Real.log 1 N x = logarithmTerm x N := by
  simp only [logarithm_polynomial_sum, Finset.sum_range_succ, logarithmTerm]
  ring

theorem logarithm_term_norm (x : ℝ) (n : ℕ) :
    ‖logarithmTerm x n‖ = |x-1|^(n+1)/((n : ℝ)+1) := by
  simp [logarithmTerm, norm_div, norm_mul, norm_pow, Real.norm_eq_abs,
    abs_of_pos (by positivity : (0 : ℝ) < (n : ℝ)+1)]

/-- The reciprocal magnitudes tend to zero strictly outside the unit neighborhood. -/
theorem exterior_reciprocal_terms {x : ℝ} (hx : 1 < |x-1|) :
    Tendsto (fun n : ℕ => ((n : ℝ)+1)/|x-1|^(n+1)) atTop (𝓝 (0 : ℝ)) := by
  have h := (tendsto_pow_const_div_const_pow_of_one_lt 1 hx).comp
    (tendsto_add_atTop_nat 1)
  simpa only [pow_one, Nat.cast_add, Nat.cast_one] using h

theorem exterior_terms_not_zero {x : ℝ} (hx : 1 < |x-1|) :
    ¬Tendsto (logarithmTerm x) atTop (𝓝 0) := by
  intro ht
  have hp := ht.norm.mul (exterior_reciprocal_terms hx)
  have he : (fun n : ℕ => ‖logarithmTerm x n‖*(((n : ℝ)+1)/|x-1|^(n+1))) =
      (fun _ => (1 : ℝ)) := by
    funext n
    rw [logarithm_term_norm]
    have hr : |x-1| ≠ 0 := ne_of_gt (lt_trans zero_lt_one hx)
    have hn : (n : ℝ)+1 ≠ 0 := by positivity
    field_simp
  have hp' : Tendsto (fun _ : ℕ => (1 : ℝ)) atTop (𝓝 (0 : ℝ)) := by
    rw [he] at hp
    simpa using hp
  have : (1 : ℝ) = 0 := tendsto_nhds_unique tendsto_const_nhds hp'
  norm_num at this

/-- Ordered partial-sum failure follows from the actual successor difference. -/
theorem exterior_no_finite_limit {x : ℝ} (hx : 1 < |x-1|) (L : ℝ) :
    ¬Tendsto (fun N => shiftedEval Real.log 1 N x) atTop (𝓝 L) := by
  intro hs
  apply exterior_terms_not_zero hx
  have hd := (hs.comp (tendsto_add_atTop_nat 1)).sub hs
  simpa only [polynomial_successor_difference, sub_self] using hd

theorem right_exterior_no_finite_limit {x : ℝ} (hx : 2 < x) (L : ℝ) :
    ¬Tendsto (fun N => shiftedEval Real.log 1 N x) atTop (𝓝 L) := by
  apply exterior_no_finite_limit
  rw [abs_of_pos (by linarith : 0 < x-1)]
  linarith

/-- Maximal symmetric open convergence neighborhood, stated for actual observations. -/
theorem maximal_symmetric_neighborhood (r : ℝ) (hr : 0 < r) :
    (∀ x : ℝ, |x-1| < r → ∃ L : ℝ,
      Tendsto (fun N => shiftedEval Real.log 1 N x) atTop (𝓝 L)) ↔ r ≤ 1 := by
  constructor
  · intro h
    by_contra hn
    have h1 : 1 < r := lt_of_not_ge hn
    let x : ℝ := 1+(r+1)/2
    have hx : 1 < |x-1| := by dsimp [x]; rw [abs_of_pos (by linarith)]; linarith
    have hxr : |x-1| < r := by dsimp [x]; rw [abs_of_pos (by linarith)]; linarith
    obtain ⟨L, hL⟩ := h x hxr
    exact exterior_no_finite_limit hx L hL
  · intro hr1 x hx
    have h := abs_lt.mp (lt_of_lt_of_le hx hr1)
    exact ⟨Real.log x, logarithm_polynomials_tendsto x (by linarith) (by linarith)⟩

end GRWTSK.Approximation.TaylorLogarithmBoundaries
