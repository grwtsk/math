/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors. Development provenance: AI-assisted.
-/
import Mathlib.Analysis.Calculus.Deriv.Polynomial
import Mathlib.Analysis.Calculus.MeanValue
import Mathlib.Topology.ContinuousMap.Weierstrass

/-! # Simultaneous polynomial approximation of a function and its derivative -/

set_option autoImplicit false

open Set Polynomial
open scoped BigOperators Polynomial

namespace GRWTSK.ApproximationsAndExpansions

private theorem exists_polynomial_primitive (q : ℝ[X]) :
    ∃ Q : ℝ[X], Q.derivative = q := by
  refine ⟨∑ n ∈ q.support, monomial (n + 1) (q.coeff n / ((n : ℝ) + 1)), ?_⟩
  rw [derivative_sum]
  conv_rhs => rw [← q.sum_monomial_eq]
  apply Finset.sum_congr rfl
  intro n _
  rw [derivative_monomial_succ, div_mul_cancel₀ _ (by positivity)]

/-- Approximate the derivative on the closed interval, then integrate the
approximating polynomial and match the value at the left endpoint. -/
theorem exists_polynomial_near_with_derivative
    {a b : ℝ} (hab : a ≤ b) {f d : ℝ → ℝ}
    (hd : ∀ x ∈ Icc a b, HasDerivWithinAt f (d x) (Icc a b) x)
    (hc : ContinuousOn d (Icc a b)) {ε : ℝ} (hε : 0 < ε) :
    ∃ p : ℝ[X], p.eval a = f a ∧
      ∀ x ∈ Icc a b, |p.eval x - f x| < ε ∧ |p.derivative.eval x - d x| < ε := by
  let δ : ℝ := ε / (1 + (b - a))
  have hlen : 0 ≤ b - a := sub_nonneg.mpr hab
  have hden : 0 < 1 + (b - a) := by positivity
  have hδ : 0 < δ := div_pos hε hden
  have hδeq : δ * (1 + (b - a)) = ε := div_mul_cancel₀ _ hden.ne'
  have hδε : δ ≤ ε := by nlinarith [mul_nonneg hδ.le hlen]
  have herr : δ * (b - a) < ε := by linarith
  obtain ⟨q, hq⟩ := exists_polynomial_near_of_continuousOn a b d hc δ hδ
  obtain ⟨Q, hQ⟩ := exists_polynomial_primitive q
  let p := Q + C (f a - Q.eval a)
  have hp : p.eval a = f a := by simp [p]
  have hp' : p.derivative = q := by simp [p, hQ]
  refine ⟨p, hp, fun x hx => ⟨?_, ?_⟩⟩
  · have hdiff (t : ℝ) (ht : t ∈ Icc a b) :
        HasDerivWithinAt (fun y => p.eval y - f y) (q.eval t - d t) (Icc a b) t := by
      rw [← hp']
      exact (p.hasDerivAt t).hasDerivWithinAt.sub (hd t ht)
    have hbound (t : ℝ) (ht : t ∈ Icc a b) : ‖q.eval t - d t‖ ≤ δ := by
      rw [Real.norm_eq_abs]
      exact (hq t ht).le
    have hm := (convex_Icc a b).norm_image_sub_le_of_norm_hasDerivWithin_le
      hdiff hbound (left_mem_Icc.mpr hab) hx
    rw [Real.norm_eq_abs, hp, sub_self, sub_zero, Real.norm_eq_abs,
      abs_of_nonneg (sub_nonneg.mpr hx.1)] at hm
    exact hm.trans_lt ((mul_le_mul_of_nonneg_left (sub_le_sub_right hx.2 a) hδ.le).trans_lt herr)
  · rw [hp']
    exact (hq x hx).trans_le hδε

end GRWTSK.ApproximationsAndExpansions
