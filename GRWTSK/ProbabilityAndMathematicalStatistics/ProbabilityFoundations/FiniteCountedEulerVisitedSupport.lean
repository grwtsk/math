/- Copyright (c) 2026 grwtsk contributors. MIT.
Finite counted directed-walk support drafting assistance: OpenAI. -/
import GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.FiniteCountedEulerWalkConcat
import Mathlib.Tactic

set_option autoImplicit false

/-!
# Canonical visited-vertex support of a counted directed walk

The support is computed from the actual walk constructors. Each
append inserts the new target vertex; the source was already
visited because the appended edge starts at the previous finish.
The target theorem is membership-to-factorization, not an
unproved assumption about an arbitrary vertex set.

SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
-/

namespace GRWTSK.ProbabilityAndMathematicalStatistics.ChowlaSofic

/-- Exact finite set of vertices visited by a counted walk. -/
def CountedWalk.vertexSupport
    {m : ℕ} {c : BinaryEdgeWord m → ℕ}
    {a b : Fin m → Bool}
    (T : CountedWalk m c a b) : Finset (Fin m → Bool) :=
  match T with
  | .empty v => {v}
  | .append T e _ => insert (countedEdgeTarget m c e) T.vertexSupport

/-- The terminal vertex belongs to the canonical visited support. -/
theorem CountedWalk.finish_mem_vertexSupport
    {m : ℕ} {c : BinaryEdgeWord m → ℕ}
    {a b : Fin m → Bool}
    (T : CountedWalk m c a b) :
    b ∈ T.vertexSupport := by
  induction T with
  | empty v => simp [CountedWalk.vertexSupport]
  | append T e he ih =>
      simp [CountedWalk.vertexSupport]

/-- The starting vertex belongs to the canonical visited support. -/
theorem CountedWalk.start_mem_vertexSupport
    {m : ℕ} {c : BinaryEdgeWord m → ℕ}
    {a b : Fin m → Bool}
    (T : CountedWalk m c a b) :
    a ∈ T.vertexSupport := by
  induction T with
  | empty v => simp [CountedWalk.vertexSupport]
  | append T e he ih =>
      exact Finset.mem_insert_of_mem ih

/-- Every vertex in the canonical finite support has a genuine
directed prefix/suffix occurrence witness. -/
theorem CountedWalk.visits_of_mem_vertexSupport
    {m : ℕ} {c : BinaryEdgeWord m → ℕ}
    {a b v : Fin m → Bool}
    (T : CountedWalk m c a b)
    (hv : v ∈ T.vertexSupport) :
    T.Visits v := by
  induction T with
  | empty u =>
      simp only [CountedWalk.vertexSupport, Finset.mem_singleton] at hv
      subst v
      exact (CountedWalk.empty u).visits_finish
  | @append a' b' T e he ih =>
      have hv' : v = countedEdgeTarget m c e ∨
          v ∈ T.vertexSupport := by
        simpa only [CountedWalk.vertexSupport, Finset.mem_insert] using hv
      rcases hv' with rfl | hv'
      · exact (CountedWalk.append T e he).visits_finish
      · exact T.visits_append_of_visits e he (ih hv')

/-- Every used edge instance has both endpoints in the canonical
vertex support, including loops and parallel edge instances. -/
theorem CountedWalk.used_edge_internal
    {m : ℕ} {c : BinaryEdgeWord m → ℕ}
    {a b : Fin m → Bool}
    (T : CountedWalk m c a b)
    (e : CountedBinaryEdge m c)
    (he : e ∈ T.edges.toFinset) :
    countedEdgeSource m c e ∈ T.vertexSupport ∧
      countedEdgeTarget m c e ∈ T.vertexSupport := by
  induction T with
  | empty v =>
      simp [CountedWalk.edges] at he
  | @append a' b' T f hf ih =>
      have hcases : e = f ∨ e ∈ T.edges.toFinset := by
        simpa [CountedWalk.edges] using he
      rcases hcases with rfl | he'
      · constructor
        · rw [hf]
          exact Finset.mem_insert_of_mem T.finish_mem_vertexSupport
        · exact Finset.mem_insert_self _ _
      · obtain ⟨hs, ht⟩ := ih he'
        exact ⟨Finset.mem_insert_of_mem hs,
          Finset.mem_insert_of_mem ht⟩


/-- A nonempty fresh counted trail has an actual used edge incident
to its canonical visited-vertex support. This supplies the
inside-supported-edge hypothesis of the weak connectivity cut. -/
theorem FreshCountedTrail.exists_edge_meeting_vertexSupport
    {m : ℕ} {c : BinaryEdgeWord m → ℕ}
    {a b : Fin m → Bool}
    (T : FreshCountedTrail m c a b)
    (hused : T.used.Nonempty) :
    ∃ e : CountedBinaryEdge m c,
      countedEdgeSource m c e ∈ T.walk.vertexSupport ∨
        countedEdgeTarget m c e ∈ T.walk.vertexSupport := by
  obtain ⟨e, he⟩ := hused
  have hinternal := T.walk.used_edge_internal e he
  exact ⟨e, Or.inl hinternal.1⟩

/-- Every counted edge instance used by a fresh trail has both
endpoints in its canonical vertex support. -/
theorem FreshCountedTrail.used_internal_vertexSupport
    {m : ℕ} {c : BinaryEdgeWord m → ℕ}
    {a b : Fin m → Bool}
    (T : FreshCountedTrail m c a b) :
    ∀ e ∈ T.used,
      countedEdgeSource m c e ∈ T.walk.vertexSupport ∧
        countedEdgeTarget m c e ∈ T.walk.vertexSupport := by
  intro e he
  exact T.walk.used_edge_internal e he


end GRWTSK.ProbabilityAndMathematicalStatistics.ChowlaSofic
