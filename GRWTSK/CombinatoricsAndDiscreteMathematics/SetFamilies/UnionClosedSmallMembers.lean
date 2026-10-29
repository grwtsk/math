/-
Copyright (c) 2026 grwtsk contributors. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
-/
import Mathlib.Data.Finset.Card
import Lean.Elab.Tactic.Omega

/-!
# Small members of union-closed families

Known singleton and doubleton cases of Frankl's conjecture, as discussed in
Henning Bruhn and Oliver Schaudt, *The journey of the union-closed sets
conjecture*, arXiv:1309.3297v2 (2013), Sections 4 and 5. The survey attributes
these observations to Sarvate and Renaud; no novelty or full solution is claimed.

A family is a finite set of finite sets, so repeated members do not affect counts.
The half-frequency bound is stated without division as `F.card ≤ 2 * frequency`.
All declarations below are source proof candidates until exact-source replay.
-/

namespace GRWTSK.CombinatoricsAndDiscreteMathematics.SetFamilies.UnionClosedSmallMembers

variable {α : Type*} [DecidableEq α]

/-- Closure under binary unions, without an assumption about the empty set. -/
def UnionClosed (F : Finset (Finset α)) : Prop :=
  ∀ A ∈ F, ∀ B ∈ F, A ∪ B ∈ F

/-- Number of distinct members containing the specified element. -/
def frequency (F : Finset (Finset α)) (x : α) : ℕ :=
  (F.filter fun A => x ∈ A).card

/-- An element is abundant when it occurs in at least half of all members. -/
def Abundant (F : Finset (Finset α)) (x : α) : Prop :=
  F.card ≤ 2 * frequency F x

/-- The full conjecture is a proposition, not an asserted theorem or an axiom. -/
def Conjecture (α : Type*) [DecidableEq α] : Prop :=
  ∀ F : Finset (Finset α), UnionClosed F →
    (∃ A ∈ F, A.Nonempty) → ∃ x, Abundant F x

/-- Union with a fixed set is injective on sets avoiding every element of it. -/
theorem union_injective_on_avoiding (S A B : Finset α)
    (hA : ∀ z ∈ S, z ∉ A) (hB : ∀ z ∈ S, z ∉ B)
    (h : A ∪ S = B ∪ S) : A = B := by
  apply Finset.ext
  intro z
  by_cases hz : z ∈ S
  · simp only [hA z hz, hB z hz]
  · have he := congrArg (fun C : Finset α => z ∈ C) h
    simp only [Finset.mem_union, hz, or_false] at he
    exact iff_of_eq he

/-- A singleton member supplies an injection from the avoiding to the containing
subfamily, and hence an abundant element. -/
theorem abundant_of_singleton_mem (F : Finset (Finset α))
    (hF : UnionClosed F) (x : α) (hx : {x} ∈ F) : Abundant F x := by
  classical
  have hinj : (F.filter fun A => x ∉ A).card ≤
      (F.filter fun A => x ∈ A).card := by
    apply Finset.card_le_card_of_injOn (fun A => A ∪ {x})
    · intro A hA
      obtain ⟨hAF, _⟩ := Finset.mem_filter.mp hA
      exact Finset.mem_filter.mpr ⟨hF A hAF {x} hx, by simp⟩
    · intro A hA B hB he
      apply union_injective_on_avoiding {x} A B
      · intro z hz
        have hz' : z = x := Finset.mem_singleton.mp hz
        subst z
        exact (Finset.mem_filter.mp hA).2
      · intro z hz
        have hz' : z = x := Finset.mem_singleton.mp hz
        subst z
        exact (Finset.mem_filter.mp hB).2
      · exact he
  have hp := Finset.card_filter_add_card_filter_not (s := F) (fun A => x ∈ A)
  unfold Abundant frequency
  omega

/-- Among the two elements of a doubleton member at least one is abundant.
The formulation also permits `x = y`, covering the singleton degeneration. -/
theorem abundant_of_pair_mem (F : Finset (Finset α))
    (hF : UnionClosed F) (x y : α) (hxy : {x, y} ∈ F) :
    Abundant F x ∨ Abundant F y := by
  classical
  let both := F.filter fun A => x ∈ A ∧ y ∈ A
  let onlyX := F.filter fun A => x ∈ A ∧ y ∉ A
  let onlyY := F.filter fun A => x ∉ A ∧ y ∈ A
  let neither := F.filter fun A => x ∉ A ∧ y ∉ A
  have hinj : neither.card ≤ both.card := by
    apply Finset.card_le_card_of_injOn (fun A => A ∪ {x, y})
    · intro A hA
      have hAF := (Finset.mem_filter.mp hA).1
      exact Finset.mem_filter.mpr ⟨hF A hAF {x, y} hxy, by simp⟩
    · intro A hA B hB he
      have ha := (Finset.mem_filter.mp hA).2
      have hb := (Finset.mem_filter.mp hB).2
      apply union_injective_on_avoiding {x, y} A B
      · intro z hz
        have hz' : z = x ∨ z = y := by simpa only [Finset.mem_insert,
          Finset.mem_singleton] using hz
        rcases hz' with rfl | rfl
        · exact ha.1
        · exact ha.2
      · intro z hz
        have hz' : z = x ∨ z = y := by simpa only [Finset.mem_insert,
          Finset.mem_singleton] using hz
        rcases hz' with rfl | rfl
        · exact hb.1
        · exact hb.2
      · exact he
  have hx : both.card + onlyX.card = frequency F x := by
    simpa only [both, onlyX, frequency, Finset.filter_filter] using
      (Finset.card_filter_add_card_filter_not (s := F.filter fun A => x ∈ A)
        (fun A => y ∈ A))
  have hy : both.card + onlyY.card = frequency F y := by
    simpa only [both, onlyY, frequency, Finset.filter_filter, and_comm] using
      (Finset.card_filter_add_card_filter_not (s := F.filter fun A => y ∈ A)
        (fun A => x ∈ A))
  have hn : onlyY.card + neither.card = (F.filter fun A => x ∉ A).card := by
    simpa only [onlyY, neither, Finset.filter_filter] using
      (Finset.card_filter_add_card_filter_not (s := F.filter fun A => x ∉ A)
        (fun A => y ∈ A))
  have hp := Finset.card_filter_add_card_filter_not (s := F) (fun A => x ∈ A)
  unfold frequency at hx hy
  unfold Abundant frequency
  omega

/-- A counterexample cannot contain a singleton or doubleton member. -/
theorem no_small_member_of_no_abundant (F : Finset (Finset α))
    (hF : UnionClosed F) (h : ∀ x, ¬ Abundant F x) :
    (∀ x, {x} ∉ F) ∧ (∀ x y, {x, y} ∉ F) := by
  constructor
  · intro x hx
    exact h x (abundant_of_singleton_mem F hF x hx)
  · intro x y hxy
    rcases abundant_of_pair_mem F hF x y hxy with hx | hy
    · exact h x hx
    · exact h y hy

end GRWTSK.CombinatoricsAndDiscreteMathematics.SetFamilies.UnionClosedSmallMembers
