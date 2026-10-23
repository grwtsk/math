/- Copyright (c) 2026 R.A. Jacob Martone. MIT.
Finite counted support-cut proof drafting assistance: OpenAI. -/
import GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.FiniteCountedEulerDegreeBalance
import Mathlib.Tactic

set_option autoImplicit false

/-!
# Finite support-cut obstruction for counted Euler circuits

The graph is the undirected incidence graph of *individual counted
edge instances*, not the graph of distinct positive-count labels.
The following exact cut lemmas are arithmetic-free. They do not
assume degree balance or infer Euler existence.

SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
-/

namespace GRWTSK.ProbabilityAndMathematicalStatistics.ChowlaSofic

/-- An edge instance has at least one endpoint in the vertex set. -/
def CountedEdgeMeets
    (m : ℕ) (c : BinaryEdgeWord m → ℕ)
    (S : Finset (Fin m → Bool))
    (e : CountedBinaryEdge m c) : Prop :=
  countedEdgeSource m c e ∈ S ∨ countedEdgeTarget m c e ∈ S

/-- An edge crosses the boundary of a finite vertex set. -/
def CountedEdgeCrosses
    (m : ℕ) (c : BinaryEdgeWord m → ℕ)
    (S : Finset (Fin m → Bool))
    (e : CountedBinaryEdge m c) : Prop :=
  (countedEdgeSource m c e ∈ S ∧ countedEdgeTarget m c e ∉ S) ∨
  (countedEdgeSource m c e ∉ S ∧ countedEdgeTarget m c e ∈ S)

/-- Every used edge has both endpoints in S; every unused edge
avoids S. Then no counted edge instance crosses the cut. -/
theorem no_crossing_of_used_internal_unused_disjoint
    (m : ℕ) (c : BinaryEdgeWord m → ℕ)
    (used : Finset (CountedBinaryEdge m c))
    (S : Finset (Fin m → Bool))
    (hused : ∀ e ∈ used,
      countedEdgeSource m c e ∈ S ∧ countedEdgeTarget m c e ∈ S)
    (hunused : ∀ e ∈ (Finset.univ \ used :
        Finset (CountedBinaryEdge m c)), ¬ CountedEdgeMeets m c S e) :
    ∀ e : CountedBinaryEdge m c, ¬ CountedEdgeCrosses m c S e := by
  classical
  intro e hc
  by_cases he : e ∈ used
  · obtain ⟨hs, ht⟩ := hused e he
    rcases hc with ⟨_, hnot⟩ | ⟨hnot, _⟩
    · exact hnot ht
    · exact hnot hs
  · have hu : e ∈ (Finset.univ \ used :
        Finset (CountedBinaryEdge m c)) :=
      Finset.mem_sdiff.mpr ⟨Finset.mem_univ _, he⟩
    have havoid := hunused e hu
    rcases hc with ⟨hs, _⟩ | ⟨_, ht⟩
    · exact havoid (Or.inl hs)
    · exact havoid (Or.inr ht)

/-- A proof-relevant cut formulation of weak connectivity on the
edge-supported graph. The premises insist on supported vertices on
both sides; isolated vertices do not affect this property. -/
def CountedEdgeSupportCutConnected
    (m : ℕ) (c : BinaryEdgeWord m → ℕ) : Prop :=
  ∀ S : Finset (Fin m → Bool),
    (∃ e : CountedBinaryEdge m c, CountedEdgeMeets m c S e) →
    (∃ e : CountedBinaryEdge m c,
      countedEdgeSource m c e ∉ S ∨ countedEdgeTarget m c e ∉ S) →
    ∃ e : CountedBinaryEdge m c, CountedEdgeCrosses m c S e

/-- Finite support crossing: if every used edge is internal to S,
and there is a supported edge on each side, a remaining edge must
meet S. In particular the edge can be used for a splice after
the local orientation-independent residual-incidence theorem. -/
theorem unused_edge_meets_of_support_cut_connected
    (m : ℕ) (c : BinaryEdgeWord m → ℕ)
    (hconn : CountedEdgeSupportCutConnected m c)
    (used : Finset (CountedBinaryEdge m c))
    (S : Finset (Fin m → Bool))
    (hused : ∀ e ∈ used,
      countedEdgeSource m c e ∈ S ∧ countedEdgeTarget m c e ∈ S)
    (hinside : ∃ e : CountedBinaryEdge m c, CountedEdgeMeets m c S e)
    (houtside : ∃ e : CountedBinaryEdge m c,
      countedEdgeSource m c e ∉ S ∨ countedEdgeTarget m c e ∉ S) :
    ∃ e ∈ (Finset.univ \ used :
        Finset (CountedBinaryEdge m c)), CountedEdgeMeets m c S e := by
  classical
  obtain ⟨e, hc⟩ := hconn S hinside houtside
  have hnot : e ∉ used := by
    intro he
    obtain ⟨hs, ht⟩ := hused e he
    rcases hc with ⟨_, hn⟩ | ⟨hn, _⟩
    · exact hn ht
    · exact hn hs
  refine ⟨e, Finset.mem_sdiff.mpr ⟨Finset.mem_univ _, hnot⟩, ?_⟩
  rcases hc with ⟨hs, _⟩ | ⟨_, ht⟩
  · exact Or.inl hs
  · exact Or.inr ht

end GRWTSK.ProbabilityAndMathematicalStatistics.ChowlaSofic
