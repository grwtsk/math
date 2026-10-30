import Mathlib.Analysis.Calculus.Deriv.Polynomial
import Mathlib.Analysis.Calculus.IteratedDeriv.Defs
import Mathlib.Algebra.Polynomial.Eval.Coeff
import Mathlib.Algebra.BigOperators.Group.Finset.Piecewise
import Mathlib.Analysis.Complex.Trigonometric
import Mathlib.Analysis.SpecialFunctions.Trigonometric.Deriv
import Mathlib.Tactic.FieldSimp
import Mathlib.Tactic.NormNum
import Mathlib.Tactic.Ring

/-!
# Actual polynomial evaluation, factorial coefficients and source Taylor examples

Local attribution: grwtsk contributors.
Grant Sanderson, Taylor series (2017-05-07), text adaptation Kurt Bruns,
https://www.3blue1brown.com/lessons/taylor-series/ .
All proof bodies and imported suppliers: NOT_RUN_USER_DEFERRED.

Finite polynomials are constructed from literal coefficients. An induction
connects their actual analytic iterated derivatives to evaluation of algebraic
iterated derivatives before extracting coefficients at zero. Nonzero real casts
of factorials justify division. Local smoothness is retained for the source's
finite Taylor interpretation. Finite matching and bounded-degree uniqueness are
not infinite-series convergence or analyticity. Sine error is a separate analytic
supplier returned to an actual finite polynomial, not inferred from jet matching.
-/

namespace GRWTSK.Approximation.TaylorPolynomialCoefficients

open Polynomial
open scoped BigOperators

/-- Analytic evaluation bridge, preceding use of algebraic coefficient formulas. -/
theorem iterated_eval_derivative (p : ℝ[X]) (k : ℕ) :
    iteratedDeriv k (fun x : ℝ => p.eval x) =
      fun x => ((Polynomial.derivative^[k]) p).eval x := by
  induction k with
  | zero => simp only [iteratedDeriv_zero, Function.iterate_zero, id_eq]
  | succ k ih =>
    rw [iteratedDeriv_succ, ih]
    funext x
    rw [Polynomial.deriv, Function.iterate_succ_apply']

/-- Actual analytic derivatives at zero extract real factorial times coefficients. -/
theorem polynomial_derivative_zero (p : ℝ[X]) (k : ℕ) :
    iteratedDeriv k (fun x : ℝ => p.eval x) 0 = (k.factorial : ℝ)*p.coeff k := by
  rw [iterated_eval_derivative, ← Polynomial.coeff_zero_eq_eval_zero]
  simp [Polynomial.coeff_iterate_derivative, Nat.descFactorial_self, nsmul_eq_mul]

theorem coefficient_from_derivative (p : ℝ[X]) (k : ℕ) :
    p.coeff k = iteratedDeriv k (fun x : ℝ => p.eval x) 0/(k.factorial : ℝ) := by
  have hf : (k.factorial : ℝ) ≠ 0 := Nat.cast_ne_zero.mpr (Nat.factorial_ne_zero k)
  rw [polynomial_derivative_zero]
  field_simp [hf] <;> ring

noncomputable def finitePolynomial (c : ℕ → ℝ) (N : ℕ) : ℝ[X] :=
  ∑ k ∈ Finset.range (N+1), C (c k)*X^k

/-- The truncation domain is explicit; terms above N have zero coefficients. -/
theorem finite_polynomial_coeff (c : ℕ → ℝ) (N k : ℕ) :
    (finitePolynomial c N).coeff k = if k ≤ N then c k else 0 := by
  classical
  simp [finitePolynomial, Polynomial.coeff_C_mul_X_pow, Nat.lt_succ_iff]

theorem finite_derivative_zero (c : ℕ → ℝ) (N k : ℕ) (hk : k ≤ N) :
    iteratedDeriv k (fun x : ℝ => (finitePolynomial c N).eval x) 0 =
      (k.factorial : ℝ)*c k := by
  rw [polynomial_derivative_zero, finite_polynomial_coeff, if_pos hk]

theorem finite_derivative_above (c : ℕ → ℝ) (N k : ℕ) (hk : N < k) :
    iteratedDeriv k (fun x : ℝ => (finitePolynomial c N).eval x) 0 = 0 := by
  rw [polynomial_derivative_zero, finite_polynomial_coeff, if_neg (Nat.not_le_of_gt hk), mul_zero]

noncomputable def finiteTaylor (f : ℝ → ℝ) (N : ℕ) : ℝ[X] :=
  finitePolynomial (fun k => iteratedDeriv k f 0/(k.factorial : ℝ)) N

/-- Smoothness is retained for the ordinary finite Taylor interpretation of the total operator. -/
theorem finite_taylor_matches (f : ℝ → ℝ) (N : ℕ) (hf : ContDiffAt ℝ N f 0)
    (k : ℕ) (hk : k ≤ N) :
    iteratedDeriv k (fun x : ℝ => (finiteTaylor f N).eval x) 0 = iteratedDeriv k f 0 := by
  have hfn : (k.factorial : ℝ) ≠ 0 := Nat.cast_ne_zero.mpr (Nat.factorial_ne_zero k)
  unfold finiteTaylor
  rw [finite_derivative_zero _ N k hk]
  field_simp [hfn] <;> ring

/-- No larger-degree terms are silently admitted when claiming uniqueness. -/
theorem finite_taylor_unique (f : ℝ → ℝ) (N : ℕ) (hf : ContDiffAt ℝ N f 0)
    (p : ℝ[X]) (hp : p.natDegree ≤ N)
    (hm : ∀ k ≤ N, iteratedDeriv k (fun x : ℝ => p.eval x) 0 = iteratedDeriv k f 0) :
    p = finiteTaylor f N := by
  ext k
  by_cases hk : k ≤ N
  · rw [coefficient_from_derivative p k, hm k hk]
    simp [finiteTaylor, finite_polynomial_coeff, hk]
  · have hpk : p.natDegree < k := lt_of_le_of_lt hp (Nat.lt_of_not_ge hk)
    rw [Polynomial.coeff_eq_zero_of_natDegree_lt hpk]
    simp [finiteTaylor, finite_polynomial_coeff, hk]

/-- The exact source sine cubic is obtained from actual derivative coefficients. -/
theorem sine_cubic_formula (x : ℝ) : (finiteTaylor Real.sin 3).eval x = x-x^3/6 := by
  norm_num [finiteTaylor, finitePolynomial, Polynomial.eval_finsetSum, Finset.sum_range_succ,
    Real.iteratedDeriv_add_one_sin, Real.iteratedDeriv_add_one_cos, iteratedDeriv_zero]
  <;> ring

theorem sine_cubic_matches (k : ℕ) (hk : k ≤ 3) :
    iteratedDeriv k (fun x : ℝ => (finiteTaylor Real.sin 3).eval x) 0 =
      iteratedDeriv k Real.sin 0 :=
  finite_taylor_matches Real.sin 3 Real.contDiff_sin.contDiffAt k hk

theorem sine_cubic_unique (p : ℝ[X]) (hp : p.natDegree ≤ 3)
    (hm : ∀ k ≤ 3, iteratedDeriv k (fun x : ℝ => p.eval x) 0 = iteratedDeriv k Real.sin 0) :
    p = finiteTaylor Real.sin 3 :=
  finite_taylor_unique Real.sin 3 Real.contDiff_sin.contDiffAt p hp hm

/-- In particular, the quartic cosine coefficient is the actual fourth derivative divided by24. -/
theorem cosine_quartic_formula (x : ℝ) :
    (finiteTaylor Real.cos 4).eval x = 1-x^2/2+x^4/24 := by
  norm_num [finiteTaylor, finitePolynomial, Polynomial.eval_finsetSum, Finset.sum_range_succ,
    Real.iteratedDeriv_add_one_sin, Real.iteratedDeriv_add_one_cos, iteratedDeriv_zero]
  <;> ring

theorem cosine_quartic_matches (k : ℕ) (hk : k ≤ 4) :
    iteratedDeriv k (fun x : ℝ => (finiteTaylor Real.cos 4).eval x) 0 =
      iteratedDeriv k Real.cos 0 :=
  finite_taylor_matches Real.cos 4 Real.contDiff_cos.contDiffAt k hk

theorem cosine_quartic_unique (p : ℝ[X]) (hp : p.natDegree ≤ 4)
    (hm : ∀ k ≤ 4, iteratedDeriv k (fun x : ℝ => p.eval x) 0 = iteratedDeriv k Real.cos 0) :
    p = finiteTaylor Real.cos 4 :=
  finite_taylor_unique Real.cos 4 Real.contDiff_cos.contDiffAt p hp hm

/-- Analytic error is separate from coefficient matching; its actual domain is retained. -/
theorem sine_cubic_error (x : ℝ) (hx : |x| ≤ 1) :
    |Real.sin x-(finiteTaylor Real.sin 3).eval x| ≤ |x|^5/100 := by
  rw [sine_cubic_formula]
  exact Real.sin_bound hx

/-- A local rational consumer of the exercise polynomial, not a claimed source quiz response. -/
theorem sine_tenth_example :
    (finiteTaylor Real.sin 3).eval (1/10 : ℝ) = 599/6000 ∧
    |Real.sin (1/10 : ℝ)-(599/6000 : ℝ)| ≤ 1/10000000 := by
  have hv : (finiteTaylor Real.sin 3).eval (1/10 : ℝ) = 599/6000 := by
    rw [sine_cubic_formula]
    norm_num
  refine ⟨hv, ?_⟩
  have he := sine_cubic_error (1/10 : ℝ) (by norm_num)
  rw [hv] at he
  norm_num at he ⊢
  exact he

end GRWTSK.Approximation.TaylorPolynomialCoefficients
