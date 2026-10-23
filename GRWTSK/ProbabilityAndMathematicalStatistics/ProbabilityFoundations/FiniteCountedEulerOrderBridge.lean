/- Copyright (c) 2026 grwtsk contributors. MIT.
Counted Euler edge-order bridge drafting assistance: OpenAI. -/
import GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.FiniteCountedEulerConnectedProgress
import GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.FiniteCyclicEdgeCertificate
import Mathlib.Tactic

set_option autoImplicit false

/-!
# Complete fresh trails and finite edge-instance order

The stored CountedWalk.edges list is REVERSED: each append prepends
its edge. A chronological Euler order therefore uses edges.reverse,
not edges itself. This module isolates the exact finite cardinality
and uniqueness obligations before final-to-first compatibility.

SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
-/

namespace GRWTSK.ProbabilityAndMathematicalStatistics.ChowlaSofic

/-- Chronological edge order of a counted directed walk. -/
def CountedWalk.chronologicalEdges
    {m : ℕ} {c : BinaryEdgeWord m → ℕ}
    {a b : Fin m → Bool}
    (T : CountedWalk m c a b) : List (CountedBinaryEdge m c) :=
  T.edges.reverse

/-- Reversal preserves the exact used counted-edge instance set. -/
theorem CountedWalk.chronologicalEdges_toFinset
    {m : ℕ} {c : BinaryEdgeWord m → ℕ}
    {a b : Fin m → Bool}
    (T : CountedWalk m c a b) :
    T.chronologicalEdges.toFinset = T.edges.toFinset := by
  simp [CountedWalk.chronologicalEdges]

/-- Reversal preserves no-duplicate counted-edge instances. -/
theorem FreshCountedTrail.chronologicalEdges_nodup
    {m : ℕ} {c : BinaryEdgeWord m → ℕ}
    {a b : Fin m → Bool}
    (T : FreshCountedTrail m c a b) :
    T.walk.chronologicalEdges.Nodup := by
  simpa [CountedWalk.chronologicalEdges] using T.nodup.reverse

/-- A complete fresh trail's chronological edge list contains
every individual counted edge instance exactly once. -/
theorem FreshCountedTrail.complete_chronologicalEdges
    {m : ℕ} {c : BinaryEdgeWord m → ℕ}
    {a b : Fin m → Bool}
    (T : FreshCountedTrail m c a b)
    (hcomplete : T.used = Finset.univ) :
    T.walk.chronologicalEdges.toFinset = Finset.univ := by
  rw [CountedWalk.chronologicalEdges_toFinset]
  exact hcomplete

/-- The chronological list has the exact total edge-instance
cardinality, including all parallel instances. -/
theorem FreshCountedTrail.complete_chronological_card
    {m : ℕ} {c : BinaryEdgeWord m → ℕ}
    {a b : Fin m → Bool}
    (T : FreshCountedTrail m c a b)
    (hcomplete : T.used = Finset.univ) :
    T.walk.chronologicalEdges.length =
      Fintype.card (CountedBinaryEdge m c) := by
  have hnodup := T.chronologicalEdges_nodup
  have hcard := T.complete_chronologicalEdges hcomplete
  have hlen := List.toFinset_card_of_nodup hnodup
  rw [hcard] at hlen
  simpa using hlen


/-- Chronological edge lists compose in the same order as the
underlying directed walks, unlike the reversed storage lists. -/
theorem CountedWalk.concat_chronologicalEdges
    {m : ℕ} {c : BinaryEdgeWord m → ℕ}
    {a b d : Fin m → Bool}
    (P : CountedWalk m c a b)
    (Q : CountedWalk m c b d) :
    (P.concat Q).chronologicalEdges =
      P.chronologicalEdges ++ Q.chronologicalEdges := by
  unfold CountedWalk.chronologicalEdges
  rw [CountedWalk.concat_edges, List.reverse_append]

/-- Appending an edge puts it at the end of the chronological list.
This is the fundamental orientation needed for the cyclic
successor proof and the final-to-first seam. -/
theorem CountedWalk.append_chronologicalEdges
    {m : ℕ} {c : BinaryEdgeWord m → ℕ}
    {a b : Fin m → Bool}
    (T : CountedWalk m c a b)
    (e : CountedBinaryEdge m c)
    (he : countedEdgeSource m c e = b) :
    (CountedWalk.append T e he).chronologicalEdges =
      T.chronologicalEdges ++ [e] := by
  simp [CountedWalk.chronologicalEdges, CountedWalk.edges]



/-- Every chronological edge of a counted directed walk starts at
the current vertex and ends at the next one, witnessed by a
matching vertex list of length edges.length+1. -/
def CountedWalk.chronologicalVertices
    {m : ℕ} {c : BinaryEdgeWord m → ℕ}
    {a b : Fin m → Bool}
    (T : CountedWalk m c a b) : List (Fin m → Bool) :=
  match T with
  | .empty v => [v]
  | .append T e _ =>
      T.chronologicalVertices ++ [countedEdgeTarget m c e]

/-- Appending an edge extends the chronological vertex list by its
target, without changing the preceding vertex order. -/
theorem CountedWalk.append_chronologicalVertices
    {m : ℕ} {c : BinaryEdgeWord m → ℕ}
    {a b : Fin m → Bool}
    (T : CountedWalk m c a b)
    (e : CountedBinaryEdge m c)
    (he : countedEdgeSource m c e = b) :
    (CountedWalk.append T e he).chronologicalVertices =
      T.chronologicalVertices ++ [countedEdgeTarget m c e] := rfl

/-- The chronological vertex list contains exactly one more
vertex than the chronological edge list, including empty walks. -/
theorem CountedWalk.chronologicalVertices_length
    {m : ℕ} {c : BinaryEdgeWord m → ℕ}
    {a b : Fin m → Bool}
    (T : CountedWalk m c a b) :
    T.chronologicalVertices.length =
      T.chronologicalEdges.length + 1 := by
  induction T with
  | empty v => rfl
  | append T e he ih =>
      rw [CountedWalk.append_chronologicalVertices,
        CountedWalk.append_chronologicalEdges]
      simp only [List.length_append, List.length_singleton]
      omega



/-- The chronological vertex trace begins at the actual initial
vertex of the directed walk, even when the edge list is empty. -/
theorem CountedWalk.chronologicalVertices_head
    {m : ℕ} {c : BinaryEdgeWord m → ℕ}
    {a b : Fin m → Bool}
    (T : CountedWalk m c a b) :
    T.chronologicalVertices.head? = some a := by
  induction T with
  | empty v => rfl
  | append T e he ih =>
      rw [CountedWalk.append_chronologicalVertices]
      have hne : T.chronologicalVertices ≠ [] := by
        intro h
        have hlen := T.chronologicalVertices_length
        rw [h] at hlen
        simp at hlen
      simpa [List.head?_append, hne] using ih

/-- The chronological vertex trace ends at the actual terminal
vertex. The final seam of a closed trail is obtained by combining
this with the initial-vertex theorem. -/
theorem CountedWalk.chronologicalVertices_last
    {m : ℕ} {c : BinaryEdgeWord m → ℕ}
    {a b : Fin m → Bool}
    (T : CountedWalk m c a b) :
    T.chronologicalVertices.getLast? = some b := by
  cases T with
  | empty v => rfl
  | append T e he =>
      rw [CountedWalk.append_chronologicalVertices]
      simp


end GRWTSK.ProbabilityAndMathematicalStatistics.ChowlaSofic
