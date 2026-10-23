/- Copyright (c) 2026 grwtsk contributors. MIT.
Finite counted Euler degree arithmetic drafting assistance: OpenAI. -/
import GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.FiniteCountedEulerFreshTrail
import Mathlib.Tactic

set_option autoImplicit false

/-!
# Counted edge-instance degree balance

Degrees are counts of individual Sigma edge instances, including
parallel edges. These finite identities prepare the maximal-trail
closure argument. They do not assert Euler existence or connectivity.
SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
-/

namespace GRWTSK.ProbabilityAndMathematicalStatistics.ChowlaSofic

/-- Total outgoing counted edge instances at vertex v. -/
def countedOutDegree (m : ℕ) (c : BinaryEdgeWord m → ℕ)
    (v : Fin m → Bool) : ℕ :=
  (Finset.univ.filter
    (fun e : CountedBinaryEdge m c => countedEdgeSource m c e = v)).card

/-- Total incoming counted edge instances at vertex v. -/
def countedInDegree (m : ℕ) (c : BinaryEdgeWord m → ℕ)
    (v : Fin m → Bool) : ℕ :=
  (Finset.univ.filter
    (fun e : CountedBinaryEdge m c => countedEdgeTarget m c e = v)).card

/-- Exact degree balance, including all parallel-edge instances. -/
def CountedDegreeBalanced (m : ℕ) (c : BinaryEdgeWord m → ℕ) : Prop :=
  ∀ v : Fin m → Bool, countedOutDegree m c v = countedInDegree m c v

/-- A used edge count at vertex v, defined on an arbitrary finite
set of counted instances. -/
def countedUsedOutDegree (m : ℕ) (c : BinaryEdgeWord m → ℕ)
    (used : Finset (CountedBinaryEdge m c)) (v : Fin m → Bool) : ℕ :=
  (used.filter (fun e => countedEdgeSource m c e = v)).card

def countedUsedInDegree (m : ℕ) (c : BinaryEdgeWord m → ℕ)
    (used : Finset (CountedBinaryEdge m c)) (v : Fin m → Bool) : ℕ :=
  (used.filter (fun e => countedEdgeTarget m c e = v)).card

/-- The outgoing degree splits exactly into used and unused counted
edge instances; no quotient by binary labels occurs. -/
theorem countedOutDegree_used_unused
    (m : ℕ) (c : BinaryEdgeWord m → ℕ)
    (used : Finset (CountedBinaryEdge m c))
    (v : Fin m → Bool) :
    countedOutDegree m c v =
      countedUsedOutDegree m c used v +
        countedUsedOutDegree m c (Finset.univ \ used) v := by
  classical
  unfold countedOutDegree countedUsedOutDegree
  have hsub : used ⊆ (Finset.univ : Finset (CountedBinaryEdge m c)) :=
    Finset.subset_univ _
  rw [← Finset.card_union_of_disjoint]
  · congr 1
    ext e
    simp
  · exact Finset.disjoint_filter_filter_of_disjoint
      (Finset.disjoint_sdiff_self_left) 

/-- The incoming degree has the same exact used/unused partition. -/
theorem countedInDegree_used_unused
    (m : ℕ) (c : BinaryEdgeWord m → ℕ)
    (used : Finset (CountedBinaryEdge m c))
    (v : Fin m → Bool) :
    countedInDegree m c v =
      countedUsedInDegree m c used v +
        countedUsedInDegree m c (Finset.univ \ used) v := by
  classical
  unfold countedInDegree countedUsedInDegree
  have hsub : used ⊆ (Finset.univ : Finset (CountedBinaryEdge m c)) :=
    Finset.subset_univ _
  rw [← Finset.card_union_of_disjoint]
  · congr 1
    ext e
    simp
  · exact Finset.disjoint_filter_filter_of_disjoint
      (Finset.disjoint_sdiff_self_left)

end GRWTSK.ProbabilityAndMathematicalStatistics.ChowlaSofic
