# Complete source: GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.FiniteCountedEulerConnectedProgress

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `63225b5daf030a150a29c5f427753155f9274d44` · SHA-256 `cbfa52c511819b6f1cd5f535e8146a7552bfb72374f8b3a044a7dc84226095cd`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Finite counted Euler connectivity-progress drafting assistance: OpenAI. -/
import GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.FiniteCountedEulerStrictProgress
import GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.FiniteCountedEulerSupportCut
import GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.FiniteCountedEulerVisitedSupport
import Mathlib.Tactic

set_option autoImplicit false

/-!
# Strict Euler progress from connected edge support

The circuit must be nonempty: an empty trail at an isolated vertex
need not intersect the edge-supported graph. Edge instances include
parallel IDs. This theorem does not yet perform finite iteration
or convert a full trail to the cyclic Euler order equivalence.

SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
-/

namespace GRWTSK.ProbabilityAndMathematicalStatistics.ChowlaSofic

/-- A nonempty closed fresh trail in a balanced, weakly connected
edge-supported graph either uses all counted edge instances or
has a strict-progress splice retaining every previously used edge. -/
theorem FreshCountedTrail.complete_or_strict_connected_progress
    {m : ℕ} {c : BinaryEdgeWord m → ℕ}
    {a b : Fin m → Bool}
    (T : FreshCountedTrail m c a b)
    (hclosed : a = b)
    (hbalance : CountedDegreeBalanced m c)
    (hconn : CountedEdgeSupportCutConnected m c)
    (hnonempty : T.used.Nonempty) :
    T.used = Finset.univ ∨
      ∃ R : FreshCountedTrail m c a b,
        T.used ⊆ R.used ∧
          (Finset.univ \ R.used).card <
            (Finset.univ \ T.used).card := by
  classical
  rcases T.complete_or_unused_edge with hcomplete | ⟨e, he⟩
  · exact Or.inl hcomplete
  · right
    let S := T.walk.vertexSupport
    have hused : ∀ f ∈ T.used,
        countedEdgeSource m c f ∈ S ∧
          countedEdgeTarget m c f ∈ S :=
      T.used_internal_vertexSupport
    have hinside : ∃ f : CountedBinaryEdge m c,
        CountedEdgeMeets m c S f := by
      obtain ⟨f, hf⟩ := T.exists_edge_meeting_vertexSupport hnonempty
      exact ⟨f, hf⟩
    obtain ⟨v, hvS, f, hf, hsource⟩ :=
      T.unused_outgoing_of_nonempty_residual
        hclosed hbalance hconn S hused hinside e he
    have hvisit : T.walk.Visits v :=
      T.walk.visits_of_mem_vertexSupport hvS
    exact T.exists_strict_progress_of_visited_unused_edge
      hclosed hbalance hvisit f hf hsource


/-- Finite Hierholzer termination: a nonempty closed fresh trail
extends to a complete counted closed trail in a balanced,
weakly edge-support-connected multigraph. No edge labels or
parallel-edge instances are identified. -/
theorem FreshCountedTrail.exists_complete_connected_extension
    {m : ℕ} {c : BinaryEdgeWord m → ℕ}
    {a b : Fin m → Bool}
    (T : FreshCountedTrail m c a b)
    (hclosed : a = b)
    (hbalance : CountedDegreeBalanced m c)
    (hconn : CountedEdgeSupportCutConnected m c)
    (hnonempty : T.used.Nonempty) :
    ∃ R : FreshCountedTrail m c a b,
      R.used = Finset.univ ∧ T.used ⊆ R.used := by
  classical
  suffices hmain :
      ∀ (n : ℕ) (T : FreshCountedTrail m c a b),
        (Finset.univ \ T.used).card = n →
        T.used.Nonempty →
        ∃ R : FreshCountedTrail m c a b,
          R.used = Finset.univ ∧ T.used ⊆ R.used by
    exact hmain _ T rfl hnonempty
  intro n
  induction n using Nat.strong_induction_on with
  | h n ih =>
      intro T hn hne
      rcases T.complete_or_strict_connected_progress
          hclosed hbalance hconn hne with hdone | ⟨S, hTS, hlt⟩
      · exact ⟨T, hdone, Finset.Subset.rfl⟩
      · have hS : S.used.Nonempty := by
          obtain ⟨e, he⟩ := hne
          exact ⟨e, hTS he⟩
        obtain ⟨R, hR, hSR⟩ := ih _ (by omega) S rfl hS
        exact ⟨R, hR, hTS.trans hSR⟩



/-- A balanced, weakly edge-support-connected counted graph with
at least one individual edge instance admits a complete closed
fresh trail. This begins from the actual one-edge trail, then
uses residual maximality and finite cycle splicing. -/
theorem exists_complete_counted_closed_trail
    (m : ℕ) (c : BinaryEdgeWord m → ℕ)
    (hbalance : CountedDegreeBalanced m c)
    (hconn : CountedEdgeSupportCutConnected m c)
    (e : CountedBinaryEdge m c) :
    ∃ v : Fin m → Bool,
      ∃ R : FreshCountedTrail m c v v,
        R.used = Finset.univ := by
  let U : Finset (CountedBinaryEdge m c) := Finset.univ
  have hU : ResidualDegreeBalanced m c U := by
    intro v
    simpa [U, countedOutDegree, countedInDegree,
      countedUsedOutDegree, countedUsedInDegree] using hbalance v
  obtain ⟨Q, _, hnonempty⟩ :=
    ResidualFreshTrail.exists_nonempty_closed_of_edge
      U hU e (Finset.mem_univ e)
  have hQ : Q.trail.used.Nonempty :=
    Finset.card_pos.mp hnonempty
  obtain ⟨R, hcomplete, _⟩ :=
    Q.trail.exists_complete_connected_extension
      rfl hbalance hconn hQ
  exact ⟨countedEdgeSource m c e, R, hcomplete⟩


end GRWTSK.ProbabilityAndMathematicalStatistics.ChowlaSofic
```
