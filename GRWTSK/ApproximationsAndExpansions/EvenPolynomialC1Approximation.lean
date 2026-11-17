/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors. Development provenance: AI-assisted.
-/
import GRWTSK.ApproximationsAndExpansions.PolynomialC1Approximation

/-! # Polynomial approximation of even functions in the squared coordinate -/

set_option autoImplicit false

open Set Polynomial
open scoped BigOperators Polynomial

namespace GRWTSK.ApproximationsAndExpansions

private theorem exists_polynomial_eval_sq_eq_even_average (p : ℝ[X]) :
    ∃ q : ℝ[X], ∀ x : ℝ, q.eval (x ^ 2) = (p.eval x + p.eval (-x)) / 2 := by
  refine ⟨∑ n ∈ p.support, if Even n then monomial (n / 2) (p.coeff n) else 0, fun x => ?_⟩
  have hp (y : ℝ) : p.eval y = ∑ n ∈ p.support, p.coeff n * y ^ n := p.eval_eq_sum
  rw [hp x, hp (-x), ← Finset.sum_add_distrib, Finset.sum_div, eval_finsetSum]
  apply Finset.sum_congr rfl
  intro n _
  rcases Nat.even_or_odd n with he | ho
  · rw [ite_eq_left he, eval_monomial, he.neg_pow, ← pow_mul]
    have hn : 2 * (n / 2) = n := by
      obtain ⟨k, hk⟩ := he
      omega
    rw [hn]
    ring
  · have hne : ¬ Even n := by
      rintro ⟨i, hi⟩
      obtain ⟨j, hj⟩ := ho
      omega
    simp [ite_eq_right hne, ho.neg_pow]

/-- Reflect and average an approximating polynomial. For an even target and
odd derivative witness, the value and derivative errors stay below the same
tolerance, and the resulting polynomial is in the squared coordinate. -/
theorem exists_polynomial_in_sq_near_even_with_derivative
    {T : ℝ} (hT : 0 ≤ T) {f d : ℝ → ℝ}
    (hfe : Function.Even f) (hdo : Function.Odd d)
    (hd : ∀ x ∈ Icc (-T) T, HasDerivWithinAt f (d x) (Icc (-T) T) x)
    (hc : ContinuousOn d (Icc (-T) T)) {ε : ℝ} (hε : 0 < ε) :
    ∃ q : ℝ[X], ∀ x ∈ Icc (-T) T,
      |q.eval (x ^ 2) - f x| < ε ∧ |(q.comp (X ^ 2)).derivative.eval x - d x| < ε := by
  obtain ⟨p, _, hp⟩ := exists_polynomial_near_with_derivative (by linarith) hd hc hε
  obtain ⟨q, hq⟩ := exists_polynomial_eval_sq_eq_even_average p
  have hval : (fun x => (q.comp (X ^ 2)).eval x) =
      fun x => (p.eval x + p.eval (-x)) / 2 := by
    funext x
    simpa only [eval_comp, eval_pow, eval_X] using hq x
  have hderiv (x : ℝ) :
      (q.comp (X ^ 2)).derivative.eval x =
        (p.derivative.eval x - p.derivative.eval (-x)) / 2 := by
    have hn := (p.hasDerivAt (-x)).comp x (hasDerivAt_neg x)
    have ha := ((p.hasDerivAt x).add hn).div_const 2
    change HasDerivAt (fun y => (p.eval y + p.eval (-y)) / 2) _ x at ha
    rw [← hval] at ha
    simpa only [Function.comp_apply, mul_neg, mul_one, sub_eq_add_neg] using
      ((q.comp (X ^ 2)).hasDerivAt x).unique ha
  refine ⟨q, fun x hx => ?_⟩
  have hnx : -x ∈ Icc (-T) T := ⟨by linarith [hx.2], by linarith [hx.1]⟩
  have ha := hp x hx
  have hb := hp (-x) hnx
  rw [hfe x, hdo x] at hb
  constructor
  · rw [hq, abs_lt]
    have h1 := abs_lt.mp ha.1
    have h2 := abs_lt.mp hb.1
    constructor <;> linarith
  · rw [hderiv, abs_lt]
    have h1 := abs_lt.mp ha.2
    have h2 := abs_lt.mp hb.2
    constructor <;> linarith

end GRWTSK.ApproximationsAndExpansions
