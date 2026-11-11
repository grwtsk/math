/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors
-/
import GRWTSK.FunctionalAnalysis.WeightedConjugatePairingTopology
import GRWTSK.LinearAndMultilinearAlgebraMatrixTheory.BasicLinearAlgebra.NegativeIndex

/-!
# Uniform approximation preserves finite negative frames

RP-OC-02 W3-W4 meets RP-OC-03: reuse the canonical complex-scalar
`HasNegativeFrame` and `negativeIndex`, without defining another index.

A comparison value bounded above by `-eta * r(v)^2`, and a full-form error
bounded by `error * r(v)^2`, imply strict negativity when `error < eta`.
Here `r` is positive away from zero. All coefficient vectors are quantified,
not just the generators of a frame. A kernel vector would have quadratic value
zero and strictly negative value simultaneously, so injectivity is derived.
The index lower bound is consequently a statement about an actual subspace.

For a weighted evaluation model and linear maps G,F with
`norm(G v) <= S r(v)` and `norm(F v-G v) <= epsilon r(v)`, Program 2 gives
`error = M (2 S epsilon + epsilon^2)` for the entire divisor.
Thus one common compactification/approximation can preserve arbitrarily large
finite negative frames, provided its uniform bounds are supplied. Separate
pointwise witnesses do not provide those bounds. No global finite-index or
finite-off-critical-exception hypothesis is imposed.

Consumers: quantitative multi-witness compactification and rigorous lower bounds
on the negative index of the same full source form. Fourier realization, actual
arithmetic multiplicities and the pole-inclusive explicit formula remain open
adapters. This is standard stability reasoning, not a novelty or GRH claim.

Source candidate: elaboration, fresh kernel replay, transitive axiom audit and
independent analytical review NOT_RUN. Coordination: math#1801 and math#1808;
research #51. Basis: math main 5f66eb82a40921253664f53602851091ccd01d94.
-/

set_option autoImplicit false
noncomputable section

namespace GRWTSK.FunctionalAnalysis.NegativeFramePerturbation

open GRWTSK.LinearAlgebra.NegativeIndex
open GRWTSK.FunctionalAnalysis.WeightedConjugatePairing

/-- A strict uniform error budget preserves a whole negative frame and forces
injectivity. `reference` is a comparison value, not assumed to equal the source. -/
theorem hasNegativeFrame_of_uniform_error
    {V : Type*} [AddCommGroup V] [Module ℂ V] {n : ℕ}
    (Q : V → ℝ) (hzero : Q 0 = 0) (F : (Fin n → ℂ) →ₗ[ℂ] V)
    (reference radius : (Fin n → ℂ) → ℝ) (eta error : ℝ)
    (hradius : ∀ v, v ≠ 0 → 0 < radius v)
    (hnegative : ∀ v, reference v ≤ -eta * radius v ^ 2)
    (herror : ∀ v, |Q (F v) - reference v| ≤ error * radius v ^ 2)
    (hgap : error < eta) : HasNegativeFrame (𝕜 := ℂ) Q n := by
  have hneg : ∀ v, v ≠ 0 → Q (F v) < 0 := by
    intro v hv
    have hdiff := (le_abs_self (Q (F v) - reference v)).trans (herror v)
    have hhead := hnegative v
    have hstrict : (error - eta) * radius v ^ 2 < 0 :=
      mul_neg_of_neg_of_pos (sub_neg.mpr hgap) (sq_pos_of_pos (hradius v hv))
    nlinarith
  have hkernel : ∀ v, F v = 0 → v = 0 := by
    intro v hv
    by_contra hne
    have h := hneg v hne
    rw [hv, hzero] at h
    exact (lt_irrefl (0 : ℝ)) h
  refine ⟨F, ?_, hneg⟩
  intro x y hxy
  apply sub_eq_zero.mp
  apply hkernel (x - y)
  rw [map_sub, hxy, sub_self]

/-- The surviving frame gives a lower bound in the existing ENat-valued index. -/
theorem le_negativeIndex_of_uniform_error
    {V : Type*} [AddCommGroup V] [Module ℂ V] {n : ℕ}
    (Q : V → ℝ) (hzero : Q 0 = 0) (F : (Fin n → ℂ) →ₗ[ℂ] V)
    (reference radius : (Fin n → ℂ) → ℝ) (eta error : ℝ)
    (hradius : ∀ v, v ≠ 0 → 0 < radius v)
    (hnegative : ∀ v, reference v ≤ -eta * radius v ^ 2)
    (herror : ∀ v, |Q (F v) - reference v| ≤ error * radius v ^ 2)
    (hgap : error < eta) : (n : ℕ∞) ≤ negativeIndex (𝕜 := ℂ) Q := by
  exact natCast_le_negativeIndex
    (hasNegativeFrame_of_uniform_error Q hzero F reference radius eta error
      hradius hnegative herror hgap)

/-- Whole-divisor error for two approximating families. No sign assumption on
`D.quadratic`, and no injectivity assumption on either family, is needed. -/
theorem weighted_family_error
    {ι E A : Type*} [NormedAddCommGroup E] [NormedSpace ℂ E]
    (D : EvaluationModel ι E) (G F : A → E) (radius : A → ℝ)
    (S epsilon : ℝ) (hS : 0 ≤ S) (hepsilon : 0 ≤ epsilon)
    (hradius : ∀ v, 0 ≤ radius v)
    (hG : ∀ v, ‖G v‖ ≤ S * radius v)
    (happrox : ∀ v, ‖F v - G v‖ ≤ epsilon * radius v) (v : A) :
    |D.quadratic (F v) - D.quadratic (G v)| ≤
      (D.mass * (2 * S * epsilon + epsilon ^ 2)) * radius v ^ 2 := by
  have hmixed : ‖G v‖ * ‖F v - G v‖ ≤
      (S * radius v) * (epsilon * radius v) :=
    mul_le_mul (hG v) (happrox v) (norm_nonneg _) (mul_nonneg hS (hradius v))
  have hsquare : ‖F v - G v‖ ^ 2 ≤ (epsilon * radius v) ^ 2 := by
    have h := mul_le_mul (happrox v) (happrox v) (norm_nonneg _)
      (mul_nonneg hepsilon (hradius v))
    nlinarith
  calc
    _ ≤ D.mass * (2 * ‖G v‖ * ‖F v - G v‖ + ‖F v - G v‖ ^ 2) :=
      D.abs_quadratic_sub_le (G v) (F v)
    _ ≤ D.mass * (2 * ((S * radius v) * (epsilon * radius v)) +
        (epsilon * radius v) ^ 2) :=
      mul_le_mul_of_nonneg_left (by nlinarith) D.mass_nonneg
    _ = (D.mass * (2 * S * epsilon + epsilon ^ 2)) * radius v ^ 2 := by ring

/-- A common approximation preserves the complex dimension of a negative frame.
The radius can be any coefficient norm or positive gauge. All linear combinations
are controlled; neither individual basis values nor a finite sample suffice. -/
theorem hasNegativeFrame_of_weighted_approximation
    {ι E : Type*} [NormedAddCommGroup E] [NormedSpace ℂ E] {n : ℕ}
    (D : EvaluationModel ι E) (G F : (Fin n → ℂ) →ₗ[ℂ] E)
    (radius : (Fin n → ℂ) → ℝ) (S epsilon eta : ℝ)
    (hS : 0 ≤ S) (hepsilon : 0 ≤ epsilon)
    (hradius : ∀ v, 0 ≤ radius v)
    (hfaithful : ∀ v, v ≠ 0 → 0 < radius v)
    (hG : ∀ v, ‖G v‖ ≤ S * radius v)
    (happrox : ∀ v, ‖F v - G v‖ ≤ epsilon * radius v)
    (hnegative : ∀ v, D.quadratic (G v) ≤ -eta * radius v ^ 2)
    (hgap : D.mass * (2 * S * epsilon + epsilon ^ 2) < eta) :
    HasNegativeFrame (𝕜 := ℂ) D.quadratic n := by
  exact hasNegativeFrame_of_uniform_error D.quadratic D.quadratic_zero F
    (fun v => D.quadratic (G v)) radius eta
    (D.mass * (2 * S * epsilon + epsilon ^ 2)) hfaithful hnegative
    (weighted_family_error D G F radius S epsilon hS hepsilon hradius hG happrox) hgap

/-- Program 2's weighted stability estimate returns to Program 3's actual index. -/
theorem le_negativeIndex_of_weighted_approximation
    {ι E : Type*} [NormedAddCommGroup E] [NormedSpace ℂ E] {n : ℕ}
    (D : EvaluationModel ι E) (G F : (Fin n → ℂ) →ₗ[ℂ] E)
    (radius : (Fin n → ℂ) → ℝ) (S epsilon eta : ℝ)
    (hS : 0 ≤ S) (hepsilon : 0 ≤ epsilon)
    (hradius : ∀ v, 0 ≤ radius v)
    (hfaithful : ∀ v, v ≠ 0 → 0 < radius v)
    (hG : ∀ v, ‖G v‖ ≤ S * radius v)
    (happrox : ∀ v, ‖F v - G v‖ ≤ epsilon * radius v)
    (hnegative : ∀ v, D.quadratic (G v) ≤ -eta * radius v ^ 2)
    (hgap : D.mass * (2 * S * epsilon + epsilon ^ 2) < eta) :
    (n : ℕ∞) ≤ negativeIndex (𝕜 := ℂ) D.quadratic := by
  exact natCast_le_negativeIndex
    (hasNegativeFrame_of_weighted_approximation D G F radius S epsilon eta
      hS hepsilon hradius hfaithful hG happrox hnegative hgap)

/-- Synthetic hostile check: two negative generators can have a positive sum.
This polynomial is not an arithmetic form or a counterexample to GRH. -/
theorem negative_generators_can_have_positive_sum :
    let q : ℝ × ℝ → ℝ := fun v => -v.1 ^ 2 - v.2 ^ 2 + 4 * v.1 * v.2
    q (1, 0) = -1 ∧ q (0, 1) = -1 ∧ q (1, 1) = 2 := by
  norm_num

end GRWTSK.FunctionalAnalysis.NegativeFramePerturbation
