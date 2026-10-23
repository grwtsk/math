/- Copyright (c) 2026 R.A. Jacob Martone. MIT.
Finite counted Euler progress proof drafting assistance: OpenAI. -/
import GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.FiniteCountedEulerResidualTrail
import GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.FiniteCountedEulerWalkConcat
import Mathlib.Tactic

set_option autoImplicit false

/-!
# A strict Hierholzer progress step at a witnessed vertex

This theorem consumes an actual unused counted edge instance at
a vertex visited by the existing closed fresh trail. Global degree
balance constructs a nonempty residual cycle, and the visited
factorization supplies a genuine splice preserving every edge ID.

Weak support connectivity is needed to produce the splice entry
when unused edges remain; it is not assumed here.
SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
-/

namespace GRWTSK.ProbabilityAndMathematicalStatistics.ChowlaSofic

/-- A visited vertex with a residual outgoing counted edge yields
a new closed fresh trail using strictly more counted instances.
The original used-edge set is preserved by inclusion. -/
theorem FreshCountedTrail.exists_strict_progress_of_visited_unused_edge
    {m : ℕ} {c : BinaryEdgeWord m → ℕ}
    {a b v : Fin m → Bool}
    (T : FreshCountedTrail m c a b)
    (hclosed : a = b)
    (hbalance : CountedDegreeBalanced m c)
    (hvisit : T.walk.Visits v)
    (e : CountedBinaryEdge m c)
    (he : e ∈ Finset.univ \ T.used)
    (hsource : countedEdgeSource m c e = v) :
    ∃ R : FreshCountedTrail m c a b,
      T.used ⊆ R.used ∧
        (Finset.univ \ R.used).card <
          (Finset.univ \ T.used).card := by
  obtain ⟨C, hdisj, hpos⟩ :=
    T.exists_disjoint_residual_cycle hclosed hbalance e he hsource
  obtain ⟨R, hR⟩ := T.exists_splice_of_visit hvisit C hdisj
  refine ⟨R, ?_, ?_⟩
  · rw [hR]
    exact Finset.subset_union_left
  · rw [hR]
    have hsubT : T.used ⊆
        (Finset.univ : Finset (CountedBinaryEdge m c)) :=
      Finset.subset_univ _
    have hsubR : T.used ∪ C.used ⊆
        (Finset.univ : Finset (CountedBinaryEdge m c)) :=
      Finset.subset_univ _
    have hcard := Finset.card_union_of_disjoint hdisj
    have h1 := Finset.card_sdiff_add_card_eq_card hsubT
    have h2 := Finset.card_sdiff_add_card_eq_card hsubR
    omega

end GRWTSK.ProbabilityAndMathematicalStatistics.ChowlaSofic
