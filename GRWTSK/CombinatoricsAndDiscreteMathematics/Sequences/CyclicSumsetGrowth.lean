/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors; Lean implementation: OpenAI Codex.
Mathlib authorship and licensing retained. -/
import Mathlib.Combinatorics.Additive.CauchyDavenport
import Mathlib.Tactic

/-!
# Iterated sumsets in a prime cyclic group

The generic iterated sumset is exactly the set of sums of lists of the specified
length with every entry in the given set. Iterating the pinned Mathlib
Cauchy--Davenport theorem gives the growth estimate used in
Pham--Sauermann, arXiv:2602.15797v1, Fact 2.4. Repetitions in a sum are allowed.
-/

namespace GRWTSK.CombinatoricsAndDiscreteMathematics.Sequences.CyclicSumsetGrowth
open scoped Pointwise

variable {A : Type*} [AddMonoid A] [DecidableEq A]

/-- The set of sums of exactly `k` elements, allowing repetitions. This explicit
recursion avoids the ambiguity between scaling and repeated pointwise addition. -/
noncomputable def iteratedSumset (S : Finset A) : ℕ → Finset A
  | 0 => {0}
  | k + 1 => S + iteratedSumset S k

@[simp] theorem iteratedSumset_zero (S : Finset A) : iteratedSumset S 0 = {0} := rfl

@[simp] theorem iteratedSumset_succ (S : Finset A) (k : ℕ) :
    iteratedSumset S (k + 1) = S + iteratedSumset S k := rfl

theorem iteratedSumset_nonempty (S : Finset A) (hS : S.Nonempty) (k : ℕ) :
    (iteratedSumset S k).Nonempty := by
  induction k with
  | zero => exact Finset.singleton_nonempty _
  | succ k ih =>
    obtain ⟨a, ha⟩ := hS
    obtain ⟨b, hb⟩ := ih
    exact ⟨a + b, Finset.add_mem_add ha hb⟩

/-- Exact representation by a retained list, including the zero-fold case. -/
theorem mem_iteratedSumset_iff (S : Finset A) (k : ℕ) (z : A) :
    z ∈ iteratedSumset S k ↔
      ∃ xs : List A, xs.length = k ∧ (∀ a ∈ xs, a ∈ S) ∧ xs.sum = z := by
  induction k generalizing z with
  | zero =>
    constructor
    · intro hz
      have hz' : z = 0 := Finset.mem_singleton.mp hz
      exact ⟨[], rfl, by simp, hz'.symm⟩
    · rintro ⟨xs, hlen, _, hsum⟩
      have hx : xs = [] := List.length_eq_zero_iff.mp hlen
      simp [hx] at hsum
      exact Finset.mem_singleton.mpr hsum.symm
  | succ k ih =>
    constructor
    · intro hz
      obtain ⟨a, ha, b, hb, hab⟩ := Finset.mem_add.mp hz
      obtain ⟨xs, hlen, hmem, hsum⟩ := (ih b).mp hb
      refine ⟨a :: xs, by simp [hlen], ?_, ?_⟩
      · intro x hx
        rcases List.mem_cons.mp hx with h | h
        · simpa [h] using ha
        · exact hmem x h
      · simpa [hsum] using hab
    · rintro ⟨xs, hlen, hmem, hsum⟩
      cases xs with
      | nil => simp at hlen
      | cons a xs =>
        have hlen' : xs.length = k := by simpa using hlen
        have ha : a ∈ S := hmem a (by simp)
        have hxs : ∀ b ∈ xs, b ∈ S := fun b hb => hmem b (by simp [hb])
        have hb : xs.sum ∈ iteratedSumset S k := (ih _).mpr ⟨xs, hlen', hxs, rfl⟩
        have hz := Finset.add_mem_add ha hb
        simpa only [List.sum_cons] using hsum ▸ hz

/-- The full Cauchy--Davenport iteration, including possible saturation. -/
theorem prime_card_lower_bound {p : ℕ} (hp : p.Prime)
    (S : Finset (ZMod p)) (hS : S.Nonempty) (k : ℕ) :
    min p (1 + k * (S.card - 1)) ≤ (iteratedSumset S k).card := by
  have hSpos : 0 < S.card := hS.card_pos
  induction k with
  | zero => simp [iteratedSumset]
  | succ k ih =>
    have hCD := ZMod.cauchy_davenport hp hS (iteratedSumset_nonempty S hS k)
    change min p (1 + (k + 1) * (S.card - 1)) ≤
      (S + iteratedSumset S k).card
    by_cases hk : 1 + k * (S.card - 1) ≤ p
    · rw [min_eq_right hk] at ih
      apply le_trans _ hCD
      apply min_le_min_left
      rw [Nat.add_mul]
      omega
    · rw [min_eq_left (by omega)] at ih
      have hbig : p ≤ S.card + (iteratedSumset S k).card - 1 := by omega
      rw [min_eq_left hbig] at hCD
      exact (min_le_left _ _).trans hCD

/-- Fact 2.4: if the iterated sumset has not saturated the prime cyclic group,
its cardinality is at least `1 + k (|S|-1)`. Nonemptiness is necessary: the
statement for a positive number of summands fails for the empty set. -/
theorem prime_card_lower_bound_of_ne_univ {p : ℕ} [NeZero p] (hp : p.Prime)
    (S : Finset (ZMod p)) (hS : S.Nonempty) (k : ℕ)
    (hne : iteratedSumset S k ≠ Finset.univ) :
    1 + k * (S.card - 1) ≤ (iteratedSumset S k).card := by
  have hlt : (iteratedSumset S k).card < p := by
    have hss : iteratedSumset S k ⊂ Finset.univ :=
      Finset.ssubset_iff_subset_ne.mpr ⟨Finset.subset_univ _, hne⟩
    simpa using Finset.card_lt_card hss
  have h := prime_card_lower_bound hp S hS k
  omega

end GRWTSK.CombinatoricsAndDiscreteMathematics.Sequences.CyclicSumsetGrowth
