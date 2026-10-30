import GRWTSK.ApproximationsAndExpansions.SeriesExpansionsEGTaylorLidstoneSeriesButNotFourierSeries.TaylorShiftExponential
import Mathlib.Analysis.SpecialFunctions.Log.Deriv
import Mathlib.Analysis.Calculus.Deriv.ZPow
import Mathlib.Tactic.FunProp
import Mathlib.Tactic.Positivity

/-!
# Actual logarithm Taylor coefficients, finite observations and interior convergence

Local attribution: grwtsk contributors.
Grant Sanderson, Taylor series (2017-05-07), text adaptation Kurt Bruns,
https://www.3blue1brown.com/lessons/taylor-series/ .
All proof bodies and inherited suppliers: NOT_RUN_USER_DEFERRED.

Actual log derivatives at1 determine the constructed centered polynomial. The
source exercise -log(1-x) has its own actual derivative transport and finite
Taylor construction. Only after these finite identities are established does the
imported analytic series return a limit to the constructed polynomials. The
positive-domain interval0<x<2 is explicit. Neither endpoint, exterior divergence,
radius equality nor arbitrary smooth-function analyticity is inferred here.
-/

namespace GRWTSK.Approximation.TaylorLogarithmInterior

open Filter Polynomial
open GRWTSK.Approximation.TaylorPolynomialCoefficients
open GRWTSK.Approximation.TaylorShiftExponential
open scoped BigOperators Topology

/-- The global total derivative rule is used at the actual positive center1. -/
theorem logarithm_derivative_one (n : ℕ) :
    iteratedDeriv (n+1) Real.log 1 = (-1 : ℝ)^n*(n.factorial : ℝ) := by
  rw [iteratedDeriv_succ', Real.deriv_log', iteratedDeriv_eq_iterate]
  simpa using iter_deriv_inv n (1 : ℝ)

theorem logarithm_coefficient_succ (n : ℕ) :
    iteratedDeriv (n+1) Real.log 1/((n+1).factorial : ℝ) =
      (-1 : ℝ)^n/((n : ℝ)+1) := by
  have hf : (n.factorial : ℝ) ≠ 0 := Nat.cast_ne_zero.mpr (Nat.factorial_ne_zero n)
  have hn : (n : ℝ)+1 ≠ 0 := ne_of_gt (by positivity)
  rw [logarithm_derivative_one, Nat.factorial_succ, Nat.cast_mul, Nat.cast_add, Nat.cast_one]
  field_simp [hf, hn] <;> ring

/-- DegreeN means N nonconstant terms, with indices n+1, not N+1 such terms. -/
theorem logarithm_polynomial_sum (N : ℕ) (x : ℝ) :
    shiftedEval Real.log 1 N x =
      ∑ n ∈ Finset.range N, (-1 : ℝ)^n*(x-1)^(n+1)/((n : ℝ)+1) := by
  unfold shiftedEval shiftedPolynomial finitePolynomial
  rw [Polynomial.eval_finsetSum, Finset.sum_range_succ']
  simp only [Polynomial.eval_mul, Polynomial.eval_C, Polynomial.eval_pow, Polynomial.eval_X,
    iteratedDeriv_zero, Real.log_one, zero_div, zero_mul, add_zero]
  apply Finset.sum_congr rfl
  intro n _
  rw [logarithm_coefficient_succ]
  ring

theorem logarithm_polynomial_matches (N k : ℕ) (hk : k ≤ N) :
    iteratedDeriv k (shiftedEval Real.log 1 N) 1 = iteratedDeriv k Real.log 1 :=
  shifted_matches Real.log 1 N (Real.contDiffAt_log.mpr (by norm_num)) k hk

noncomputable def negativeLogOneSub (x : ℝ) : ℝ := -Real.log (1-x)

theorem negative_log_zero : negativeLogOneSub 0 = 0 := by
  simp [negativeLogOneSub]

/-- Actual negative/composition transport supplies the exercise's derivative coefficients. -/
theorem negative_log_derivative_zero (n : ℕ) :
    iteratedDeriv (n+1) negativeLogOneSub 0 = (n.factorial : ℝ) := by
  unfold negativeLogOneSub
  rw [iteratedDeriv_fun_neg, iteratedDeriv_comp_const_sub]
  simp only [sub_zero, smul_eq_mul]
  rw [logarithm_derivative_one, pow_succ]
  have hs : ((-1 : ℝ)^n)^2 = 1 := by
    rw [← pow_mul, Nat.mul_comm n 2, pow_mul]
    norm_num
  calc _ = ((-1 : ℝ)^n)^2*(n.factorial : ℝ) := by ring
       _ = (n.factorial : ℝ) := by rw [hs, one_mul]

theorem negative_log_coefficient_succ (n : ℕ) :
    iteratedDeriv (n+1) negativeLogOneSub 0/((n+1).factorial : ℝ) =
      1/((n : ℝ)+1) := by
  have hf : (n.factorial : ℝ) ≠ 0 := Nat.cast_ne_zero.mpr (Nat.factorial_ne_zero n)
  have hn : (n : ℝ)+1 ≠ 0 := ne_of_gt (by positivity)
  rw [negative_log_derivative_zero, Nat.factorial_succ, Nat.cast_mul, Nat.cast_add, Nat.cast_one]
  field_simp [hf, hn] <;> ring

theorem negative_log_smooth (N : ℕ) : ContDiffAt ℝ N negativeLogOneSub 0 := by
  have hc : ContDiffAt ℝ N (fun x : ℝ => 1-x) 0 := by fun_prop
  have hl := hc.log (by norm_num : (1 : ℝ)-0 ≠ 0)
  simpa [negativeLogOneSub] using hl.neg

/-- Literal positive-power sum is identified with the actual constructed Taylor polynomial. -/
theorem negative_log_polynomial_sum (N : ℕ) (x : ℝ) :
    (finiteTaylor negativeLogOneSub N).eval x =
      ∑ n ∈ Finset.range N, x^(n+1)/((n : ℝ)+1) := by
  unfold finiteTaylor finitePolynomial
  rw [Polynomial.eval_finsetSum, Finset.sum_range_succ']
  simp only [Polynomial.eval_mul, Polynomial.eval_C, Polynomial.eval_pow, Polynomial.eval_X,
    iteratedDeriv_zero, negative_log_zero, zero_div, zero_mul, add_zero]
  apply Finset.sum_congr rfl
  intro n _
  rw [negative_log_coefficient_succ]
  ring

theorem negative_log_polynomial_matches (N k : ℕ) (hk : k ≤ N) :
    iteratedDeriv k (fun x : ℝ => (finiteTaylor negativeLogOneSub N).eval x) 0 =
      iteratedDeriv k negativeLogOneSub 0 :=
  finite_taylor_matches negativeLogOneSub N (negative_log_smooth N) k hk

/-- Analytic convergence has its own strict interior hypothesis. -/
theorem negative_log_polynomials_tendsto (x : ℝ) (hx : |x| < 1) :
    Tendsto (fun N : ℕ => (finiteTaylor negativeLogOneSub N).eval x) atTop
      (𝓝 (negativeLogOneSub x)) := by
  simpa only [negative_log_polynomial_sum, negativeLogOneSub] using
    (Real.hasSum_pow_div_log_of_abs_lt_one hx).tendsto_sum_nat

/-- Actual sign/recentering algebra binds the imported series to log on0<x<2. -/
theorem logarithm_signed_series (x : ℝ) (hx0 : 0 < x) (hx2 : x < 2) :
    HasSum (fun n : ℕ => (-1 : ℝ)^n*(x-1)^(n+1)/((n : ℝ)+1)) (Real.log x) := by
  have hu : |1-x| < 1 := abs_lt.mpr ⟨by linarith, by linarith⟩
  have h := (Real.hasSum_pow_div_log_of_abs_lt_one hu).neg
  have he : (1 : ℝ)-(1-x) = x := by ring
  have h1 : HasSum (fun n : ℕ => -((1-x)^(n+1)/((n : ℝ)+1))) (Real.log x) := by
    simpa only [he, neg_neg] using h
  apply h1.congr
  intro n
  have hs : (1 : ℝ)-x = -(x-1) := by ring
  rw [hs, neg_pow, pow_succ]
  ring

theorem logarithm_polynomials_tendsto (x : ℝ) (hx0 : 0 < x) (hx2 : x < 2) :
    Tendsto (fun N : ℕ => shiftedEval Real.log 1 N x) atTop (𝓝 (Real.log x)) := by
  simpa only [logarithm_polynomial_sum] using
    (logarithm_signed_series x hx0 hx2).tendsto_sum_nat

/-- A quantitative return to the constructed exercise polynomial, separate from finite matching. -/
theorem negative_log_polynomial_error (N : ℕ) (x : ℝ) (hx : |x| < 1) :
    |(finiteTaylor negativeLogOneSub N).eval x-negativeLogOneSub x| ≤
      |x|^(N+1)/(1-|x|) := by
  rw [negative_log_polynomial_sum]
  simpa only [negativeLogOneSub, sub_neg_eq_add] using
    Real.abs_log_sub_add_sum_range_le hx N

theorem negative_log_at_half : negativeLogOneSub (1/2 : ℝ) = Real.log 2 := by
  unfold negativeLogOneSub
  have he : (1 : ℝ)-1/2 = (2 : ℝ)⁻¹ := by norm_num
  rw [he, Real.log_inv, neg_neg]

/-- Local exact finite consumer of the exercise, with an actual analytic error and limit. -/
theorem half_input_consumer :
    (finiteTaylor negativeLogOneSub 3).eval (1/2 : ℝ) = 2/3 ∧
    |(finiteTaylor negativeLogOneSub 3).eval (1/2 : ℝ)-Real.log 2| ≤ 1/8 ∧
    Tendsto (fun N : ℕ => (finiteTaylor negativeLogOneSub N).eval (1/2 : ℝ)) atTop
      (𝓝 (Real.log 2)) := by
  refine ⟨?_, ?_, ?_⟩
  · rw [negative_log_polynomial_sum]
    norm_num [Finset.sum_range_succ]
  · have he := negative_log_polynomial_error 3 (1/2 : ℝ) (by norm_num)
    rw [negative_log_at_half] at he
    norm_num at he ⊢
    exact he
  · simpa only [negative_log_at_half] using
      negative_log_polynomials_tendsto (1/2 : ℝ) (by norm_num)

end GRWTSK.Approximation.TaylorLogarithmInterior
