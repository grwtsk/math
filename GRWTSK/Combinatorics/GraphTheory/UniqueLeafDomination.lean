import Mathlib.Combinatorics.SimpleGraph.Basic

/-!
# Unique leaf domination on a typed computational graph

Local mathematical attribution: grwtsk contributors.
Consumer: https://github.com/grwtsk/sofic/issues/10 (A01).
SOURCE_PROOF_CANDIDATE. Compilation, fresh kernel checking, transitive axiom
audit and independent review: NOT_RUN.
Uses Mathlib SimpleGraph (pinned d13f23b723b8a846827a245b89c10fc7d3f11612).
The proof uses the leaf's own closed neighborhood membership and looplessness.
Containment is independent of adjacency. No claim about all graph mutations,
scheduling, spectra, or implementation refinement follows.
-/

set_option autoImplicit false

namespace GRWTSK.UniqueLeafDomination

universe u v w

variable {L : Type u} {C : Type v}

def closedLeaf (G : SimpleGraph (L ⊕ C)) (v : L ⊕ C) (l : L) : Prop :=
  Sum.inl l = v ∨ G.Adj v (Sum.inl l)

def ClosedDomination (G : SimpleGraph (L ⊕ C)) : Prop :=
  ∀ v, ∃! l, closedLeaf G v l

def NoLeafEdges (G : SimpleGraph (L ⊕ C)) : Prop :=
  ∀ l l' : L, ¬ G.Adj (Sum.inl l) (Sum.inl l')

def UniqueConceptNeighbor (G : SimpleGraph (L ⊕ C)) : Prop :=
  ∀ c : C, ∃! l : L, G.Adj (Sum.inr c) (Sum.inl l)

theorem closedDomination_iff (G : SimpleGraph (L ⊕ C)) :
    ClosedDomination G ↔ NoLeafEdges G ∧ UniqueConceptNeighbor G := by
  constructor
  · intro h
    constructor
    · intro l l' he
      obtain ⟨m, _, hm⟩ := h (Sum.inl l)
      have hl : l = m := hm l (Or.inl rfl)
      have hl' : l' = m := hm l' (Or.inr he)
      have hsame : l' = l := hl'.trans hl.symm
      subst l'
      exact (G.ne_of_adj he) rfl
    · intro c
      simpa [closedLeaf] using h (Sum.inr c)
  · rintro ⟨hn, hc⟩ x
    cases x with
    | inl l =>
      refine ⟨l, Or.inl rfl, ?_⟩
      intro l' h
      rcases h with h | h
      · exact Sum.inl.inj h
      · exact False.elim (hn l l' h)
    | inr c => simpa [closedLeaf] using hc c

/-- The membership maps are independent of the computational graph. -/
structure Hierarchy (L : Type u) (C : Type v) (H : Type w) where
  leafConcept : L → C
  conceptGroup : C → H
  graph : SimpleGraph (L ⊕ C)
  traversal : (L ⊕ C ⊕ H) → (L ⊕ C ⊕ H) → Prop
  valid : ClosedDomination graph

/-- Changing membership while leaving the computational adjacency untouched
preserves the domination invariant, not arbitrary behavioral invariants. -/
def Hierarchy.recontain {H : Type w} (s : Hierarchy L C H)
    (leafConcept : L → C) (conceptGroup : C → H) : Hierarchy L C H :=
  { s with leafConcept := leafConcept, conceptGroup := conceptGroup }

theorem Hierarchy.recontain_graph {H : Type w} (s : Hierarchy L C H)
    (lc : L → C) (cg : C → H) : (s.recontain lc cg).graph = s.graph := rfl

end GRWTSK.UniqueLeafDomination
