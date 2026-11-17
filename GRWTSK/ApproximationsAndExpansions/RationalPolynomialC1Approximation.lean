/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors. Development provenance: AI-assisted.
-/
import GRWTSK.ApproximationsAndExpansions.EvenPolynomialC1Approximation

/-! # Rational coefficients for simultaneous approximation in a squared coordinate -/

set_option autoImplicit false

open Set Polynomial
open scoped Polynomial

namespace GRWTSK.ApproximationsAndExpansions

private theorem exists_rat_near (a : ℝ) {δ : ℝ} (hδ : 0 < δ) :
    ∃ c : ℚ, |(c : ℝ) - a| < δ := by
  obtain ⟨c, ha, hb⟩ := exists_rat_btwn (show a - δ < a + δ by linarith)
  exact ⟨c, abs_lt.mpr ⟨by linarith, by linarith⟩⟩

private theorem abs_add_lt_of_abs_lt {u v a b : ℝ} (hu : |u| < a) (hv : |v| < b) :
    |u + v| < a + b :=
  (abs_add_le u v).trans_lt (add_lt_add hu hv)

private theorem monomial_comp_sq (a : ℝ) (n : ℕ) :
    (monomial n a).comp (X ^ 2) = monomial (2 * n) a := by
  rw [monomial_comp, ← pow_mul, C_mul_X_pow_eq_monomial]

/-- On the fixed window, simultaneously approximate the evaluated even
polynomial and its x-derivative by a rational polynomial in the same coordinate. -/
theorem exists_rat_polynomial_in_sq_near_real
    (p : ℝ[X]) {T : ℝ} {ε : ℝ} (hε : 0 < ε) :
    ∃ r : ℚ[X], ∀ x ∈ Icc (-T) T,
      |(r.map (algebraMap ℚ ℝ)).eval (x ^ 2) - p.eval (x ^ 2)| < ε ∧
      |((r.map (algebraMap ℚ ℝ)).comp (X ^ 2)).derivative.eval x -
        (p.comp (X ^ 2)).derivative.eval x| < ε := by
  induction p using Polynomial.induction_on' generalizing ε with
  | add p q hp hq =>
    have hh : 0 < ε / 2 := by positivity
    obtain ⟨r, hr⟩ := hp hh
    obtain ⟨s, hs⟩ := hq hh
    refine ⟨r + s, fun x hx => ?_⟩
    have h := hr x hx
    have k := hs x hx
    simp only [Polynomial.map_add, eval_add, add_comp, derivative_add]
    rw [add_sub_add_comm, add_sub_add_comm]
    constructor
    · simpa only [add_halves] using abs_add_lt_of_abs_lt h.1 k.1
    · simpa only [add_halves] using abs_add_lt_of_abs_lt h.2 k.2
  | monomial n a =>
    let B : ℝ := max 1 T
    let K : ℝ := B ^ (2*n) + (2*n : ℕ) * B ^ (2*n-1) + 1
    have hB : 0 ≤ B := le_trans zero_le_one (le_max_left _ _)
    have hK : 0 < K := by dsimp [K]; positivity
    obtain ⟨c, hc⟩ := exists_rat_near a (div_pos hε hK)
    refine ⟨monomial n c, fun x hx => ?_⟩
    have hxB : |x| ≤ B := (abs_le.mpr hx).trans (le_max_right _ _)
    have hpow (j : ℕ) : |x| ^ j ≤ B ^ j := pow_le_pow_left₀ (abs_nonneg _) hxB _
    have hsmall {z : ℝ} (hz : |z| ≤ K) : |((c : ℝ) - a) * z| < ε := by
      rw [abs_mul]
      calc
        _ ≤ |(c : ℝ) - a| * K := mul_le_mul_of_nonneg_left hz (abs_nonneg _)
        _ < (ε / K) * K := mul_lt_mul_of_pos_right hc hK
        _ = ε := div_mul_cancel₀ _ hK.ne'
    have hcast : algebraMap ℚ ℝ c = (c : ℝ) := rfl
    simp only [map_monomial, hcast, eval_monomial, monomial_comp_sq,
      derivative_monomial]
    constructor
    · rw [← sub_mul]
      apply hsmall
      rw [← pow_mul, abs_pow]
      apply (hpow (2*n)).trans
      have hn : 0 ≤ ((2*n : ℕ) : ℝ) * B ^ (2*n-1) := by positivity
      dsimp [K]
      linarith
    · rw [← sub_mul, ← sub_mul, mul_assoc]
      apply hsmall
      rw [abs_mul, abs_pow, abs_of_nonneg (Nat.cast_nonneg _)]
      apply (mul_le_mul_of_nonneg_left (hpow (2*n-1)) (Nat.cast_nonneg _)).trans
      have hn : 0 ≤ B ^ (2*n) := by positivity
      dsimp [K]
      linarith

/-- A single rational polynomial in the squared coordinate approximates an
even target and its odd derivative witness on the original symmetric window. -/
theorem exists_rat_polynomial_in_sq_near_even_with_derivative
    {T : ℝ} (hT : 0 ≤ T) {f d : ℝ → ℝ}
    (hfe : Function.Even f) (hdo : Function.Odd d)
    (hd : ∀ x ∈ Icc (-T) T, HasDerivWithinAt f (d x) (Icc (-T) T) x)
    (hc : ContinuousOn d (Icc (-T) T)) {ε : ℝ} (hε : 0 < ε) :
    ∃ r : ℚ[X], ∀ x ∈ Icc (-T) T,
      |(r.map (algebraMap ℚ ℝ)).eval (x ^ 2) - f x| < ε ∧
      |((r.map (algebraMap ℚ ℝ)).comp (X ^ 2)).derivative.eval x - d x| < ε := by
  have hh : 0 < ε / 2 := by positivity
  obtain ⟨p, hp⟩ := exists_polynomial_in_sq_near_even_with_derivative hT hfe hdo hd hc hh
  obtain ⟨r, hr⟩ := exists_rat_polynomial_in_sq_near_real p (T := T) hh
  refine ⟨r, fun x hx => ⟨?_, ?_⟩⟩
  · rw [← sub_add_sub_cancel _ (p.eval (x ^ 2))]
    simpa only [add_halves] using abs_add_lt_of_abs_lt (hr x hx).1 (hp x hx).1
  · rw [← sub_add_sub_cancel _ ((p.comp (X ^ 2)).derivative.eval x)]
    simpa only [add_halves] using abs_add_lt_of_abs_lt (hr x hx).2 (hp x hx).2

end GRWTSK.ApproximationsAndExpansions
