/-
Copyright (c) 2026 grwtsk contributors. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
-/
import Mathlib.Data.Finset.Powerset
import Mathlib.Algebra.Order.BigOperators.Group.Finset
import Mathlib.Data.Real.Basic

/-!+# Distinct subset sums: the elementary counting obstruction for Erdős Problem #1

Source: Thomas Bloom, https://www.erdosproblems.com/1, consulted 2026-10-28.
This file supplies only the elementary counting bound, not the conjectured
absolute-constant exponential lower bound. Compilation and axiom audit: NOT_RUN.
-/

namespace GRWTSK.NumberTheory.AdditiveNumberTheory.DistinctSubsetSums

/-- Distinct subsets of `A` have different sums, including the empty subset. -/
def SumDistinct (A : Finset ℕ) : Prop :=
  Set.InjOn (fun B : Finset ℕ => ∑ b ∈ B, b) (A.powerset : Set (Finset ℕ))

/-- Imported Problem #1 statement; the constant is independent of `A` and `N`. -/
def Conjecture : Prop :=
  ∃ c : ℝ, 0 < c ∧ ∀ (A : Finset ℕ) (N : ℕ),
    A.Nonempty → (∀ a ∈ A, 1 ≤ a ∧ a ≤ N) → SumDistinct A →
      c * (2 : ℝ) ^ A.card ≤ (N : ℝ)

/-- The `2^|A|` distinct sums all lie between zero and the total sum of `A`. -/
theorem pow_card_le_total_sum_add_one (A : Finset ℕ) (hA : SumDistinct A) :
    2 ^ A.card ≤ (∑ a ∈ A, a) + 1 := by
  have hmap : Set.MapsTo (fun B : Finset ℕ => ∑ b ∈ B, b)
      (A.powerset : Set (Finset ℕ))
      (Finset.range ((∑ a ∈ A, a) + 1) : Set ℕ) := by
    intro B hB
    apply Finset.mem_range.mpr
    exact Nat.lt_succ_of_le (Finset.sum_le_sum_of_subset_of_nonneg
      (Finset.mem_powerset.mp hB) (fun _ _ _ => Nat.zero_le _))
  have h := Finset.card_le_card_of_injOn
    (s := A.powerset) (t := Finset.range ((∑ a ∈ A, a) + 1))
    (fun B : Finset ℕ => ∑ b ∈ B, b) hmap hA
  simpa only [Finset.card_powerset, Finset.card_range] using h

/-- A sum-distinct set bounded by `N` satisfies the explicit counting lower bound.
Positivity of its elements is unnecessary for this weaker conclusion. -/
theorem pow_card_le_card_mul_bound_add_one (A : Finset ℕ) (N : ℕ)
    (hN : ∀ a ∈ A, a ≤ N) (hA : SumDistinct A) :
    2 ^ A.card ≤ A.card * N + 1 := by
  have hsum : (∑ a ∈ A, a) ≤ A.card * N := by
    calc
      (∑ a ∈ A, a) ≤ ∑ _a ∈ A, N := Finset.sum_le_sum hN
      _ = A.card * N := by simp
  exact (pow_card_le_total_sum_add_one A hA).trans (Nat.add_le_add_right hsum 1)

end GRWTSK.NumberTheory.AdditiveNumberTheory.DistinctSubsetSums
