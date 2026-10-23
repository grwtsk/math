/- Copyright (c) 2026 R.A. Jacob Martone. MIT.
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



/-- The first and last vertices of the chronological trace agree
for every closed counted directed walk. This is the exact endpoint
seam needed for cyclic Euler order compatibility. -/
theorem CountedWalk.closed_chronological_seam
    {m : ℕ} {c : BinaryEdgeWord m → ℕ}
    {a b : Fin m → Bool}
    (T : CountedWalk m c a b)
    (hclosed : a = b) :
    T.chronologicalVertices.head? =
      T.chronologicalVertices.getLast? := by
  rw [T.chronologicalVertices_head,
    T.chronologicalVertices_last, hclosed]

/-- The chronological edge trace is nonempty whenever the used
edge-instance set is nonempty. This ensures a genuine final edge
exists when extracting a cyclic Euler certificate. -/
theorem FreshCountedTrail.chronologicalEdges_nonempty
    {m : ℕ} {c : BinaryEdgeWord m → ℕ}
    {a b : Fin m → Bool}
    (T : FreshCountedTrail m c a b)
    (hused : T.used.Nonempty) :
    T.walk.chronologicalEdges ≠ [] := by
  intro hnil
  have hfin := T.walk.chronologicalEdges_toFinset
  rw [hnil] at hfin
  have hzero : T.used = ∅ := by
    simpa [FreshCountedTrail.used] using hfin.symm
  exact (Finset.nonempty_iff_ne_empty.mp hused) hzero



/-- Chronological edge list is the exact reversal of the internal
edge storage list. In particular, the first chronological edge is
the last internally stored edge, and vice versa. -/
theorem CountedWalk.chronologicalEdges_reverse
    {m : ℕ} {c : BinaryEdgeWord m → ℕ}
    {a b : Fin m → Bool}
    (T : CountedWalk m c a b) :
    T.chronologicalEdges.reverse = T.edges := by
  simp [CountedWalk.chronologicalEdges]

/-- The chronological vertex trace of an appended edge has the
old terminal vertex immediately before the new terminal vertex.
This is an endpoint-level incidence identity, independent of
list-index casts or the total edge count. -/
theorem CountedWalk.append_last_two_vertices
    {m : ℕ} {c : BinaryEdgeWord m → ℕ}
    {a b : Fin m → Bool}
    (T : CountedWalk m c a b)
    (e : CountedBinaryEdge m c)
    (he : countedEdgeSource m c e = b) :
    (CountedWalk.append T e he).chronologicalVertices.getLast? =
      some (countedEdgeTarget m c e) ∧
    T.chronologicalVertices.getLast? =
      some (countedEdgeSource m c e) := by
  constructor
  · exact (CountedWalk.append T e he).chronologicalVertices_last
  · rw [T.chronologicalVertices_last, he]


end GRWTSK.ProbabilityAndMathematicalStatistics.ChowlaSofic
