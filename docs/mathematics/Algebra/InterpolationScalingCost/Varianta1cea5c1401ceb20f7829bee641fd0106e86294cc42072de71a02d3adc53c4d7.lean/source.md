# Complete source: GRWTSK.Algebra.InterpolationScalingCost.Varianta1cea5c1401ceb20f7829bee641fd0106e86294cc42072de71a02d3adc53c4d7

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c8be5f68763401acd31bb06277211e249ad2fb77` · SHA-256 `a1cea5c1401ceb20f7829bee641fd0106e86294cc42072de71a02d3adc53c4d7`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.RiemannHypothesis.Conversation.PrimeLogInterpolationMap
import Mathlib.Algebra.MvPolynomial.Eval
import Mathlib.Analysis.Complex.Exponential

/-!
# Polynomial surjectivity does not pay coefficient mass

Written scaling example 2026-10-09: grwtsk contributors. Local multivariate
coefficient proof: OpenAI Codex. This cost concerns an auxiliary polynomial
coefficient norm, not the original source Gram or prescribed Möbius vector.
The scaled quotient preserves its kernel and surjectivity in the imported
local map theorem; interpolation itself remains an external replay input.
-/
set_option autoImplicit false
namespace GRWTSK.RiemannHypothesis.Conversation.InterpolationScalingCost
open scoped BigOperators
noncomputable section

def coefficientMass (P : MvPolynomial (Fin 3) ℂ) : ℝ :=
  ∑ d ∈ P.support, ‖P.coeff d‖

theorem nonconstant_monomial_small (x : Fin 3 → ℂ) {ε : ℝ}
    (_hε : 0 ≤ ε) (hε1 : ε ≤ 1) (hx : ∀ i, ‖x i‖ ≤ ε)
    (d : Fin 3 →₀ ℕ) (hd : d ≠ 0) :
    ‖∏ i ∈ d.support, x i ^ d i‖ ≤ ε := by
  obtain ⟨i, hi⟩ : ∃ i, d i ≠ 0 := by
    by_contra h
    push Not at h
    apply hd
    ext j
    exact h j
  have hmem : i ∈ d.support := Finsupp.mem_support_iff.mpr hi
  rw [norm_prod]
  calc
    _ ≤ ∏ j ∈ d.support, (if j = i then ε else 1) := by
      apply Finset.prod_le_prod
      · intro j _; exact norm_nonneg _
      · intro j _
        rw [norm_pow]
        by_cases hj : j = i
        · subst j
          rw [if_pos rfl]
          exact (pow_le_pow_of_le_one (norm_nonneg _) ((hx i).trans hε1)
            (Nat.one_le_iff_ne_zero.mpr hi)).trans (by simpa using hx i)
        · rw [if_neg hj]
          exact pow_le_one₀ (norm_nonneg _) ((hx j).trans hε1)
    _ = ε := by simp [hmem]

theorem evaluation_paid_by_coefficients (P : MvPolynomial (Fin 3) ℂ)
    (x : Fin 3 → ℂ) {ε : ℝ} (hε : 0 ≤ ε) (hε1 : ε ≤ 1)
    (hx : ∀ i, ‖x i‖ ≤ ε) (hzero : P.coeff 0 = 0) :
    ‖MvPolynomial.eval x P‖ ≤ ε * coefficientMass P := by
  rw [MvPolynomial.eval_eq]
  calc
    _ ≤ ∑ d ∈ P.support, ‖P.coeff d * ∏ i ∈ d.support, x i ^ d i‖ := norm_sum_le _ _
    _ ≤ ∑ d ∈ P.support, ε * ‖P.coeff d‖ := by
      apply Finset.sum_le_sum
      intro d _
      by_cases hd : d = 0
      · subst d; simp [hzero]
      · rw [norm_mul]
        simpa [mul_comm] using mul_le_mul_of_nonneg_left
          (nonconstant_monomial_small x hε hε1 hx d hd) (norm_nonneg _)
    _ = _ := by rw [← Finset.mul_sum]; rfl

theorem coefficient_mass_exponential_return {A : ℝ} (hA : 0 ≤ A)
    (P : MvPolynomial (Fin 3) ℂ) (hzero : P.coeff 0 = 0)
    (hunit : MvPolynomial.eval ![(Real.exp (-A) : ℂ), 0, 0] P = 1) :
    Real.exp A ≤ coefficientMass P := by
  have hε1 : Real.exp (-A) ≤ 1 := Real.exp_le_one_iff.mpr (by linarith)
  have hx : ∀ i : Fin 3, ‖![(Real.exp (-A) : ℂ), 0, 0] i‖ ≤ Real.exp (-A) := by
    intro i
    fin_cases i
    · change ‖(Real.exp (-A) : ℂ)‖ ≤ Real.exp (-A)
      rw [Complex.norm_real, Real.norm_eq_abs, abs_of_pos (Real.exp_pos _)]
    · change ‖(0 : ℂ)‖ ≤ Real.exp (-A)
      simpa using (Real.exp_pos (-A)).le
    · change ‖(0 : ℂ)‖ ≤ Real.exp (-A)
      simpa using (Real.exp_pos (-A)).le
  have hb := evaluation_paid_by_coefficients P _ (Real.exp_pos _).le hε1 hx hzero
  rw [hunit, norm_one] at hb
  have h := mul_le_mul_of_nonneg_left hb (Real.exp_pos A).le
  have he : Real.exp A * Real.exp (-A) = 1 := by rw [← Real.exp_add]; simp
  simpa [← mul_assoc, he] using h

end
end GRWTSK.RiemannHypothesis.Conversation.InterpolationScalingCost
```
