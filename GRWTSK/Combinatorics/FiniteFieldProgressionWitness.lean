/-
Local attribution: grwtsk contributors.
Source proof candidates; native compilation, fresh kernel replay and axiom audit NOT_RUN.
The imported APAP sources retain their upstream authorship and Apache-2.0 license.
-/
import APAP.FiniteField
import Mathlib.Tactic.Push

/-!
# Quantitative finite-field progression witnesses

The local Roth family consumes the failure of `ThreeAPFree`; finite searches
and progression constructions instead need the actual three points. The
finite-field APAP endpoint provides a quantitative rank obstruction to
`ThreeAPFree`. This file extracts the witness and lets an independently supplied
positive lower bound for the set's density discharge the same threshold.

This uses `APAP/FiniteField.lean` only. The headline integer theorem in
`APAP/Integer.lean` is a `sorry` placeholder at the pinned upstream revision and
is deliberately not used. No integer Roth bound or prime-two result is asserted.
-/

namespace GRWTSK.Combinatorics.FiniteFieldProgressionWitness

open Finset

/-- Above the exact finite-field rank threshold, the set contains a nontrivial
three-term progression. The witness uses the same `a ≠ b` convention as
`ThreeAPFree`; it does not silently strengthen that definition. -/
theorem progression_of_rank_gt {G : Type*} [AddCommGroup G] [Fintype G]
    {q : ℕ} [Module (ZMod q) G] {A : Finset G}
    (hq₃ : 3 ≤ q) (hq : q.Prime) (hA₀ : A.Nonempty)
    (hrank : 2 ^ 148 * (1 + Real.log ((A.dens : ℝ)⁻¹)) ^ 9 <
      (Module.finrank (ZMod q) G : ℝ)) :
    ∃ a ∈ A, ∃ b ∈ A, ∃ c ∈ A, a + c = b + b ∧ a ≠ b := by
  classical
  have hnot : ¬ ThreeAPFree (A : Set G) := by
    intro hfree
    exact (not_le_of_gt hrank) (_root_.ff hq₃ hq hA₀ hfree)
  unfold ThreeAPFree at hnot
  push_neg at hnot
  simpa only [Finset.mem_coe] using hnot

/-- A positive external density budget can feed the progression witness. The
threshold uses that lower density, so the actual density need not be computed
symbolically before applying the theorem. -/
theorem progression_of_density_lower_bound {G : Type*} [AddCommGroup G] [Fintype G]
    {q : ℕ} [Module (ZMod q) G] {A : Finset G} {δ : ℝ}
    (hq₃ : 3 ≤ q) (hq : q.Prime) (hA₀ : A.Nonempty)
    (hδ : 0 < δ) (hδA : δ ≤ (A.dens : ℝ))
    (hrank : 2 ^ 148 * (1 + Real.log δ⁻¹) ^ 9 <
      (Module.finrank (ZMod q) G : ℝ)) :
    ∃ a ∈ A, ∃ b ∈ A, ∃ c ∈ A, a + c = b + b ∧ a ≠ b := by
  have hα₀ : 0 < (A.dens : ℝ) := hδ.trans_le hδA
  have hα₁ : (A.dens : ℝ) ≤ 1 := by exact_mod_cast A.dens_le_one
  have hlog : Real.log ((A.dens : ℝ)⁻¹) ≤ Real.log δ⁻¹ :=
    Real.log_le_log (by positivity) ((inv_le_inv₀ hα₀ hδ).2 hδA)
  have hcurlog₀ : 0 ≤ 1 + Real.log ((A.dens : ℝ)⁻¹) := by
    have hnonneg : 0 ≤ Real.log ((A.dens : ℝ)⁻¹) :=
      Real.log_nonneg ((one_le_inv₀ hα₀).2 hα₁)
    linarith
  have hbound : 2 ^ 148 * (1 + Real.log ((A.dens : ℝ)⁻¹)) ^ 9 ≤
      2 ^ 148 * (1 + Real.log δ⁻¹) ^ 9 :=
    mul_le_mul_of_nonneg_left
      (pow_le_pow_left₀ hcurlog₀ (add_le_add_left hlog 1) 9) (by positivity)
  exact progression_of_rank_gt hq₃ hq hA₀ (hbound.trans_lt hrank)

end GRWTSK.Combinatorics.FiniteFieldProgressionWitness
