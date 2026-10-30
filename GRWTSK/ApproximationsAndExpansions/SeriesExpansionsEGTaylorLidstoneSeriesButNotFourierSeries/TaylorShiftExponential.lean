import GRWTSK.ApproximationsAndExpansions.SeriesExpansionsEGTaylorLidstoneSeriesButNotFourierSeries.TaylorPolynomialCoefficients
import Mathlib.Analysis.Calculus.IteratedDeriv.Lemmas
import Mathlib.Analysis.SpecialFunctions.ExpDeriv
import Mathlib.Analysis.SpecialFunctions.Exponential

/-!
# Actual shifted Taylor polynomials and exponential partial sums

Local attribution: grwtsk contributors.
Grant Sanderson, Taylor series (2017-05-07), text adaptation Kurt Bruns,
https://www.3blue1brown.com/lessons/taylor-series/ .
All proof bodies and inherited suppliers: NOT_RUN_USER_DEFERRED.

Coefficients use derivatives at the actual center a; observations evaluate the
constructed polynomial at x-a. Translation and the previous analytic evaluation
bridge supply actual derivative matching and centered-degree uniqueness. The
exponential consumer identifies the actual constructed polynomial with its
literal range(N+1) sum before returning the imported analytic series theorem to
that sequence. Finite matching is not itself a convergence premise or result.
-/

namespace GRWTSK.Approximation.TaylorShiftExponential

open Polynomial Filter
open GRWTSK.Approximation.TaylorPolynomialCoefficients
open scoped BigOperators Topology

noncomputable def shiftedPolynomial (f : ℝ → ℝ) (a : ℝ) (N : ℕ) : ℝ[X] :=
  finitePolynomial (fun k => iteratedDeriv k f a/(k.factorial : ℝ)) N

noncomputable def shiftedEval (f : ℝ → ℝ) (a : ℝ) (N : ℕ) (x : ℝ) : ℝ :=
  (shiftedPolynomial f a N).eval (x-a)

/-- Actual translation, not a desired jet-transport field. -/
theorem translated_eval_derivative (p : ℝ[X]) (a : ℝ) (k : ℕ) :
    iteratedDeriv k (fun x : ℝ => p.eval (x-a)) a = (k.factorial : ℝ)*p.coeff k := by
  rw [iteratedDeriv_comp_sub_const]
  simp only [sub_self]
  exact polynomial_derivative_zero p k

theorem shifted_coefficient (f : ℝ → ℝ) (a : ℝ) (N k : ℕ) :
    (shiftedPolynomial f a N).coeff k =
      if k ≤ N then iteratedDeriv k f a/(k.factorial : ℝ) else 0 := by
  exact finite_polynomial_coeff _ N k

/-- The ordinary source interpretation retains local smoothness at the actual center. -/
theorem shifted_matches (f : ℝ → ℝ) (a : ℝ) (N : ℕ) (hf : ContDiffAt ℝ N f a)
    (k : ℕ) (hk : k ≤ N) :
    iteratedDeriv k (shiftedEval f a N) a = iteratedDeriv k f a := by
  have hn : (k.factorial : ℝ) ≠ 0 := Nat.cast_ne_zero.mpr (Nat.factorial_ne_zero k)
  unfold shiftedEval
  rw [translated_eval_derivative, shifted_coefficient, if_pos hk]
  field_simp [hn] <;> ring

theorem shifted_value_at_center (f : ℝ → ℝ) (a : ℝ) (N : ℕ)
    (hf : ContDiffAt ℝ N f a) : shiftedEval f a N a = f a := by
  simpa using shifted_matches f a N hf 0 (Nat.zero_le N)

/-- Degree refers to the actual polynomial in the centered variable. -/
theorem shifted_unique (f : ℝ → ℝ) (a : ℝ) (N : ℕ) (hf : ContDiffAt ℝ N f a)
    (p : ℝ[X]) (hp : p.natDegree ≤ N)
    (hm : ∀ k ≤ N, iteratedDeriv k (fun x : ℝ => p.eval (x-a)) a = iteratedDeriv k f a) :
    p = shiftedPolynomial f a N := by
  ext k
  by_cases hk : k ≤ N
  · have hn : (k.factorial : ℝ) ≠ 0 := Nat.cast_ne_zero.mpr (Nat.factorial_ne_zero k)
    have he := hm k hk
    rw [translated_eval_derivative] at he
    rw [shifted_coefficient, if_pos hk]
    apply (eq_div_iff hn).mpr
    calc p.coeff k*(k.factorial : ℝ) = (k.factorial : ℝ)*p.coeff k := mul_comm _ _
         _ = iteratedDeriv k f a := he
  · have hpk : p.natDegree < k := lt_of_le_of_lt hp (Nat.lt_of_not_ge hk)
    rw [Polynomial.coeff_eq_zero_of_natDegree_lt hpk, shifted_coefficient, if_neg hk]

theorem zero_center_polynomial (f : ℝ → ℝ) (N : ℕ) :
    shiftedPolynomial f 0 N = finiteTaylor f N := rfl

/-- Exact source cosine quadratic at center pi, obtained from the actual derivative coefficients. -/
theorem cosine_pi_quadratic (x : ℝ) :
    shiftedEval Real.cos Real.pi 2 x = -1+(x-Real.pi)^2/2 := by
  norm_num [shiftedEval, shiftedPolynomial, finitePolynomial, Polynomial.eval_finsetSum,
    Finset.sum_range_succ, Real.iteratedDeriv_add_one_cos,
    Real.iteratedDeriv_add_one_sin, iteratedDeriv_zero]
  <;> ring

theorem cosine_pi_matches (k : ℕ) (hk : k ≤ 2) :
    iteratedDeriv k (shiftedEval Real.cos Real.pi 2) Real.pi =
      iteratedDeriv k Real.cos Real.pi :=
  shifted_matches Real.cos Real.pi 2 Real.contDiff_cos.contDiffAt k hk

/-- The actual analytic exponential supplies every derivative coefficient. -/
theorem exponential_iterated_derivative (k : ℕ) : iteratedDeriv k Real.exp = Real.exp := by
  simpa using iteratedDeriv_exp_const_mul k (1 : ℝ)

/-- The constructed Taylor polynomial is identified with the literal finite source sum. -/
theorem exponential_polynomial_sum (N : ℕ) (x : ℝ) :
    (finiteTaylor Real.exp N).eval x =
      ∑ k ∈ Finset.range (N+1), x^k/(k.factorial : ℝ) := by
  unfold finiteTaylor finitePolynomial
  rw [Polynomial.eval_finsetSum]
  simp only [Polynomial.eval_mul, Polynomial.eval_C, Polynomial.eval_pow, Polynomial.eval_X]
  simp_rw [exponential_iterated_derivative, Real.exp_zero]
  apply Finset.sum_congr rfl
  intro k _
  ring

theorem exponential_polynomial_matches (N k : ℕ) (hk : k ≤ N) :
    iteratedDeriv k (fun x : ℝ => (finiteTaylor Real.exp N).eval x) 0 = 1 := by
  rw [finite_taylor_matches Real.exp N Real.contDiff_exp.contDiffAt k hk,
    exponential_iterated_derivative, Real.exp_zero]

/-- The imported normed-algebra series is bound to the actual Real.exp, not a guessed API. -/
theorem real_exponential_series (x : ℝ) :
    HasSum (fun k : ℕ => x^k/(k.factorial : ℝ)) (Real.exp x) := by
  rw [Real.exp_eq_exp_ℝ]
  exact NormedSpace.expSeries_div_hasSum_exp x

/-- N+1 terms return the actual finiteTaylor evaluations to the actual analytic exponential. -/
theorem exponential_polynomials_tendsto (x : ℝ) :
    Tendsto (fun N : ℕ => (finiteTaylor Real.exp N).eval x) atTop (𝓝 (Real.exp x)) := by
  have he := (real_exponential_series x).tendsto_sum_nat
  simpa only [Function.comp_apply, exponential_polynomial_sum] using
    he.comp (tendsto_add_atTop_nat 1)

theorem source_exponential_inputs :
    Tendsto (fun N : ℕ => (finiteTaylor Real.exp N).eval 1) atTop (𝓝 (Real.exp 1)) ∧
    Tendsto (fun N : ℕ => (finiteTaylor Real.exp N).eval 2) atTop (𝓝 (Real.exp 2)) :=
  ⟨exponential_polynomials_tendsto 1, exponential_polynomials_tendsto 2⟩

/-- Local exact finite values, distinct from a decimal certificate for either infinite limit. -/
theorem degree_four_exponential_values :
    (finiteTaylor Real.exp 4).eval 1 = (65/24 : ℝ) ∧
    (finiteTaylor Real.exp 4).eval 2 = 7 := by
  rw [exponential_polynomial_sum, exponential_polynomial_sum]
  norm_num [Finset.sum_range_succ]

/-- An actual joint consumer of shifted coefficients and the exponential series. -/
theorem shifted_exponential_sum (a x : ℝ) (N : ℕ) :
    shiftedEval Real.exp a N x =
      Real.exp a*∑ k ∈ Finset.range (N+1), (x-a)^k/(k.factorial : ℝ) := by
  unfold shiftedEval shiftedPolynomial finitePolynomial
  rw [Polynomial.eval_finsetSum, Finset.mul_sum]
  simp only [Polynomial.eval_mul, Polynomial.eval_C, Polynomial.eval_pow, Polynomial.eval_X]
  simp_rw [exponential_iterated_derivative]
  apply Finset.sum_congr rfl
  intro k _
  ring

theorem shifted_exponential_polynomials_tendsto (a x : ℝ) :
    Tendsto (fun N : ℕ => shiftedEval Real.exp a N x) atTop (𝓝 (Real.exp x)) := by
  have he := ((real_exponential_series (x-a)).tendsto_sum_nat.comp
    (tendsto_add_atTop_nat 1)).const_mul (Real.exp a)
  have hc : Real.exp a*Real.exp (x-a) = Real.exp x := by
    rw [← Real.exp_add]
    congr 1
    ring
  simpa only [Function.comp_apply, shifted_exponential_sum, hc] using he

end GRWTSK.Approximation.TaylorShiftExponential
