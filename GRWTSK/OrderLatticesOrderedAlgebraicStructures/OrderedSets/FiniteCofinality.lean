/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors
-/
import Mathlib.Order.Cofinal
import Mathlib.Data.Set.Finite.Basic
import Mathlib.Tactic

/-!
# Finite cofinality in a directed preorder

A nonempty directed preorder has a finite cofinal subset exactly when it
has an element above every element. Antisymmetry is not needed for this
existence statement. Finite generation of a different infinite family is
not finite cofinality.

Primary proof: inductively take an upper bound of a finite list. If that
list is cofinal, its upper bound is above every element. Conversely a greatest
element gives a singleton cofinal family. This standard order argument is
consumed by the neighborhood-refinement module. It reuses `IsCofinal`, not
a replacement definition. No theorem-level novelty or independent review is
claimed. Elaboration, compilation, kernel replay and axiom audit: NOT_RUN.
-/

set_option autoImplicit false

namespace GRWTSK.Order
variable {α : Type*} [Preorder α]

/-- Explicit directedness and a seed retain the nonempty-carrier hypothesis. -/
theorem finset_common_upper_bound (seed : α)
    (hdir : ∀ a b : α, ∃ c : α, a ≤ c ∧ b ≤ c) (s : Finset α) :
    ∃ c : α, ∀ a ∈ s, a ≤ c := by
  classical
  induction s using Finset.induction_on with
  | empty => exact ⟨seed, by simp⟩
  | @insert a s ha ih =>
    obtain ⟨b, hb⟩ := ih
    obtain ⟨c, hac, hbc⟩ := hdir a b
    refine ⟨c, ?_⟩
    intro x hx
    rcases Finset.mem_insert.mp hx with rfl | hx
    · exact hac
    · exact (hb x hx).trans hbc

theorem finite_common_upper_bound (seed : α)
    (hdir : ∀ a b : α, ∃ c : α, a ≤ c ∧ b ≤ c)
    {S : Set α} (hS : S.Finite) : ∃ c : α, ∀ a ∈ S, a ≤ c := by
  classical
  obtain ⟨c, hc⟩ := finset_common_upper_bound seed hdir hS.toFinset
  exact ⟨c, fun a ha => hc a (hS.mem_toFinset.mpr ha)⟩

theorem finite_cofinal_iff_exists_greatest [Nonempty α]
    (hdir : ∀ a b : α, ∃ c : α, a ≤ c ∧ b ≤ c) :
    (∃ S : Set α, S.Finite ∧ IsCofinal S) ↔ ∃ c : α, ∀ a : α, a ≤ c := by
  classical
  constructor
  · rintro ⟨S, hS, hc⟩
    obtain ⟨c, hbound⟩ := finite_common_upper_bound (Classical.choice ‹Nonempty α›) hdir hS
    refine ⟨c, ?_⟩
    intro a
    obtain ⟨b, hb, hab⟩ := hc a
    exact hab.trans (hbound b hb)
  · rintro ⟨c, hc⟩
    exact ⟨{c}, Set.finite_singleton c, fun a => ⟨c, Set.mem_singleton c, hc a⟩⟩

end GRWTSK.Order
