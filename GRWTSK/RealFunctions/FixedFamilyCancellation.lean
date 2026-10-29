/- Copyright (c) 2026 grwtsk. MIT.
Mathlib retains its upstream attribution and license. -/
import Mathlib

/-!
# Fixed finite families versus growing arithmetic parameters

Motivated by the quantifier order in openai/math family 007, inspected at
7ef5c0cc5ca4b0e072b7a050fca09ab24bc6fa3a. These are independently proved finite
transfer lemmas, not an import of the analytic Elliott or Chowla theorem.
A common cutoff exists for a FIXED finite family. The explicit moving-family
example prevents promoting that statement to the growing Abel shift range.
SOURCE_PROOF_CANDIDATE / NOT_RUN / NOT_KERNEL_AUDITED.
-/

set_option autoImplicit false
noncomputable section
open scoped BigOperators
namespace GRWTSK.Analysis.FiniteSums.FixedFamilyCancellation

/-- The family is fixed before its common cutoff is chosen. -/
theorem common_cutoff {ι : Type*} (S : Finset ι) (P : ι → ℕ → Prop)
    (h : ∀ i ∈ S, ∃ K : ℕ, ∀ N : ℕ, K ≤ N → P i N) :
    ∃ K : ℕ, ∀ i ∈ S, ∀ N : ℕ, K ≤ N → P i N := by
  classical
  revert h
  induction S using Finset.induction_on with
  | empty =>
      intro _
      exact ⟨0, by simp⟩
  | @insert i S hi ih =>
      intro h
      obtain ⟨Ki, hKi⟩ := h i (Finset.mem_insert_self i S)
      obtain ⟨KS, hKS⟩ := ih (fun k hk => h k (Finset.mem_insert_of_mem hk))
      refine ⟨max Ki KS, ?_⟩
      intro k hk N hN
      rcases Finset.mem_insert.mp hk with he | hk
      · subst k
        exact hKi N ((le_max_left Ki KS).trans hN)
      · exact hKS k hk N ((le_max_right Ki KS).trans hN)

/-- A finite prefix allowance pays the initial interval of an eventual estimate. -/
theorem envelope_with_initial_allowance (F : ℕ → ℝ) (K : ℕ) {η : ℝ}
    (hη : 0 ≤ η) (htriv : ∀ N, |F N| ≤ (N : ℝ))
    (htail : ∀ N, K ≤ N → |F N| ≤ η * (N : ℝ)) (N : ℕ) :
    |F N| ≤ (K : ℝ) + η * (N : ℝ) := by
  have hprod : 0 ≤ η * (N : ℝ) := mul_nonneg hη (Nat.cast_nonneg N)
  by_cases hKN : K ≤ N
  · exact (htail N hKN).trans (le_add_of_nonneg_left (Nat.cast_nonneg K))
  · have hNK : (N : ℝ) ≤ (K : ℝ) := by exact_mod_cast (Nat.le_of_lt (Nat.lt_of_not_ge hKN))
    exact (htriv N).trans (hNK.trans (le_add_of_nonneg_right hprod))

/-- Fixed-family normalized cancellation gives a common all-prefix envelope.
No rate or bound on this cutoff as the family changes is inferred. -/
theorem fixed_family_envelope {ι : Type*} (S : Finset ι) (F : ι → ℕ → ℝ)
    {η : ℝ} (hη : 0 ≤ η)
    (htriv : ∀ i ∈ S, ∀ N, |F i N| ≤ (N : ℝ))
    (htail : ∀ i ∈ S, ∃ K : ℕ, ∀ N, K ≤ N → |F i N| ≤ η * (N : ℝ)) :
    ∃ K : ℕ, ∀ i ∈ S, ∀ N, |F i N| ≤ (K : ℝ) + η * (N : ℝ) := by
  obtain ⟨K, hK⟩ := common_cutoff S (fun i N => |F i N| ≤ η * (N : ℝ)) htail
  exact ⟨K, fun i hi N => envelope_with_initial_allowance (F i) K hη
    (htriv i hi) (hK i hi) N⟩

/-- Variable signed weights are paid by their actual total absolute mass. -/
theorem weighted_family_bound {ι : Type*} (S : Finset ι) (w F : ι → ℝ)
    (B : ℝ) (hF : ∀ i ∈ S, |F i| ≤ B) :
    |∑ i ∈ S, w i * F i| ≤ B * ∑ i ∈ S, |w i| := by
  calc
    _ ≤ ∑ i ∈ S, |w i * F i| := Finset.abs_sum_le_sum_abs _ _
    _ ≤ ∑ i ∈ S, |w i| * B := by
      apply Finset.sum_le_sum
      intro i hi
      rw [abs_mul]
      exact mul_le_mul_of_nonneg_left (hF i hi) (abs_nonneg _)
    _ = _ := by rw [← Finset.sum_mul]; ring

/-- A generic normalized family, NOT an arithmetic counterexample for Mobius. -/
def movingFamily (i N : ℕ) : ℝ := if N ≤ i then 1 else 0

theorem movingFamily_eventually_zero (i : ℕ) :
    ∀ N : ℕ, i + 1 ≤ N → movingFamily i N = 0 := by
  intro N hN
  simp [movingFamily, show ¬ N ≤ i by omega]

/-- Even diffuse averaging over a growing family need not tend to zero. -/
theorem movingFamily_block_average (N : ℕ) (hN : 0 < N) :
    (∑ i ∈ Finset.Ico N (2 * N), movingFamily i N) / (N : ℝ) = 1 := by
  have hs : (∑ i ∈ Finset.Ico N (2 * N), movingFamily i N) = (N : ℝ) := by
    calc
      _ = ∑ _i ∈ Finset.Ico N (2 * N), (1 : ℝ) := by
        apply Finset.sum_congr rfl
        intro i hi
        simp [movingFamily, (Finset.mem_Ico.mp hi).1]
      _ = (N : ℝ) := by
        have hc : (Finset.Ico N (2 * N)).card = N := by rw [Nat.card_Ico]; omega
        simp [hc]
  rw [hs, div_self (by exact_mod_cast (ne_of_gt hN))]

end GRWTSK.Analysis.FiniteSums.FixedFamilyCancellation
