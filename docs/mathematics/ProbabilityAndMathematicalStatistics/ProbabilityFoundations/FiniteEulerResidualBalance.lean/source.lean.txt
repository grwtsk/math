/- Copyright (c) 2026 grwtsk contributors. MIT.
Finite Euler residual-flow proof drafting assistance: OpenAI. -/
import GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.FiniteCyclicEdgeCertificate
import Mathlib.Tactic

set_option autoImplicit false

/-!
# Residual balance after removing a closed counted-edge subtrail

A bounded ingredient for Hierholzer's algorithm. Edges are actual
counted instances, not a simple directed graph. Removing a balanced
used set from a balanced full set leaves the unused edges balanced.
This does NOT yet construct an Euler circuit or establish connected
edge support. SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
-/

namespace GRWTSK.ProbabilityAndMathematicalStatistics.ChowlaSofic

open scoped BigOperators

/-- Outgoing counted-edge instances at a vertex, restricted to an
arbitrary finite edge set. Parallel edges remain distinct. -/
def countedOutEdges (m : ℕ) (c : BinaryEdgeWord m → ℕ)
    (E : Finset (CountedBinaryEdge m c)) (v : Fin m → Bool) :
    Finset (CountedBinaryEdge m c) :=
  E.filter (fun e => binaryEdgePrefix m (countedEdgeLabel m c e) = v)

/-- Incoming counted-edge instances at a vertex. -/
def countedInEdges (m : ℕ) (c : BinaryEdgeWord m → ℕ)
    (E : Finset (CountedBinaryEdge m c)) (v : Fin m → Bool) :
    Finset (CountedBinaryEdge m c) :=
  E.filter (fun e => binaryEdgeSuffix m (countedEdgeLabel m c e) = v)

/-- Every vertex has the same number of incoming and outgoing edge
instances in the selected edge set. -/
def CountedEdgeBalanced (m : ℕ) (c : BinaryEdgeWord m → ℕ)
    (E : Finset (CountedBinaryEdge m c)) : Prop :=
  ∀ v : Fin m → Bool,
    (countedOutEdges m c E v).card = (countedInEdges m c E v).card

/-- Removing a subset of edge instances subtracts exactly its
outdegree at each vertex. -/
theorem countedOutEdges_sdiff_card (m : ℕ)
    (c : BinaryEdgeWord m → ℕ)
    (E U : Finset (CountedBinaryEdge m c)) (hU : U ⊆ E)
    (v : Fin m → Bool) :
    (countedOutEdges m c (E \ U) v).card +
      (countedOutEdges m c U v).card =
        (countedOutEdges m c E v).card := by
  classical
  simp only [countedOutEdges, Finset.filter_sdiff]
  exact Finset.card_sdiff_add_card_eq_card
    (Finset.filter_subset_filter _ hU)

/-- The same exact removal identity holds for indegrees. -/
theorem countedInEdges_sdiff_card (m : ℕ)
    (c : BinaryEdgeWord m → ℕ)
    (E U : Finset (CountedBinaryEdge m c)) (hU : U ⊆ E)
    (v : Fin m → Bool) :
    (countedInEdges m c (E \ U) v).card +
      (countedInEdges m c U v).card =
        (countedInEdges m c E v).card := by
  classical
  simp only [countedInEdges, Finset.filter_sdiff]
  exact Finset.card_sdiff_add_card_eq_card
    (Finset.filter_subset_filter _ hU)

/-- Hierholzer residual-balance lemma: deleting a balanced collection
of USED counted-edge instances from a balanced full edge set leaves
the UNUSED instances balanced. No connectivity is assumed or inferred. -/
theorem countedEdgeBalanced_sdiff (m : ℕ)
    (c : BinaryEdgeWord m → ℕ)
    (E U : Finset (CountedBinaryEdge m c))
    (hU : U ⊆ E)
    (hE : CountedEdgeBalanced m c E)
    (hUsed : CountedEdgeBalanced m c U) :
    CountedEdgeBalanced m c (E \ U) := by
  intro v
  have hout := countedOutEdges_sdiff_card m c E U hU v
  have hin := countedInEdges_sdiff_card m c E U hU v
  have hfull := hE v
  have hused := hUsed v
  omega

end GRWTSK.ProbabilityAndMathematicalStatistics.ChowlaSofic
