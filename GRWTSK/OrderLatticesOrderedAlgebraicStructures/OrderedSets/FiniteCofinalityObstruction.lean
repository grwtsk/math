/-
Copyright (c) 2026 grwtsk contributors. MIT.
SOURCE_PROOF_CANDIDATE / LEAN_ELABORATION_NOT_RUN /
FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import Mathlib

/-!
# Finite cofinality in upward-directed preorders

Consumer: spectral finite-support truncations and coherent refinement systems.
A nonempty upward-directed preorder with a finite cofinal set has an element
above every element. For partial orders this is a greatest element. This
prevents a fixed finite globally cofinal witness when no top element exists.
Finite local witnesses remain possible. The canonical Mathlib IsCofinal
predicate is reused; no ad hoc cofinality semantics are introduced.
-/
set_option autoImplicit false
namespace GRWTSK.OrderTheory.FiniteCofinality

/-- A finite set in a nonempty directed preorder has a common upper bound. -/
theorem finite_upper_bound {P : Type*} [Preorder P] [Nonempty P]
    (directed : ∀ p q : P, ∃ r : P, p ≤ r ∧ q ≤ r)
    (F : Finset P) : ∃ u : P, ∀ p ∈ F, p ≤ u := by
  classical
  induction F using Finset.induction_on with
  | empty =>
      exact ⟨Classical.choice inferInstance, by simp⟩
  | @insert x F hx ih =>
      obtain ⟨u, hu⟩ := ih
      obtain ⟨v, hxv, huv⟩ := directed x u
      refine ⟨v, ?_⟩
      intro p hp
      rcases Finset.mem_insert.mp hp with hpx | hpF
      · subst p
        exact hxv
      · exact (hu p hpF).trans huv

/-- A finite cofinal subset supplies a greatest element (up to preorder). -/
theorem finite_cofinal_has_greatest {P : Type*} [Preorder P] [Nonempty P]
    (directed : ∀ p q : P, ∃ r : P, p ≤ r ∧ q ≤ r)
    (F : Finset P)
    (cofinal : IsCofinal (F : Set P)) :
    ∃ u : P, ∀ p : P, p ≤ u := by
  obtain ⟨u, hu⟩ := finite_upper_bound directed F
  refine ⟨u, ?_⟩
  intro p
  obtain ⟨q, hqF, hpq⟩ := cofinal p
  exact hpq.trans (hu q hqF)

/-- A top-free directed preorder admits no finite cofinal subset. -/
theorem no_finite_cofinal {P : Type*} [Preorder P] [Nonempty P]
    (directed : ∀ p q : P, ∃ r : P, p ≤ r ∧ q ≤ r)
    (noGreatest : ¬∃ u : P, ∀ p : P, p ≤ u)
    (F : Finset P) :
    ¬ IsCofinal (F : Set P) := by
  intro h
  exact noGreatest (finite_cofinal_has_greatest directed F h)

end GRWTSK.OrderTheory.FiniteCofinality
