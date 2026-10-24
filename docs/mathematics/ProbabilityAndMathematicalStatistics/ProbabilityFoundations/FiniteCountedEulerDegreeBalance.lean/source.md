# Complete source: GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.FiniteCountedEulerDegreeBalance

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `348c0913ceb094c6e774cab53e6dfe8f5213162f` · SHA-256 `54c4bf0fae79fd24aafd0e21b73d97fc9195b90e60827d118e21dde8473849ba`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
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


/-- The number of used outgoing edges changes by one precisely when
the appended edge originates at the queried vertex. -/
theorem countedUsedOutDegree_insert
    (m : ℕ) (c : BinaryEdgeWord m → ℕ)
    (used : Finset (CountedBinaryEdge m c))
    (e : CountedBinaryEdge m c) (fresh : e ∉ used)
    (v : Fin m → Bool) :
    countedUsedOutDegree m c (insert e used) v =
      countedUsedOutDegree m c used v +
        (if countedEdgeSource m c e = v then 1 else 0) := by
  classical
  unfold countedUsedOutDegree
  by_cases hv : countedEdgeSource m c e = v
  · simp [Finset.filter_insert, hv, Finset.card_insert_of_not_mem,
      fresh]
  · simp [Finset.filter_insert, hv]

/-- The corresponding exact incoming-edge increment. -/
theorem countedUsedInDegree_insert
    (m : ℕ) (c : BinaryEdgeWord m → ℕ)
    (used : Finset (CountedBinaryEdge m c))
    (e : CountedBinaryEdge m c) (fresh : e ∉ used)
    (v : Fin m → Bool) :
    countedUsedInDegree m c (insert e used) v =
      countedUsedInDegree m c used v +
        (if countedEdgeTarget m c e = v then 1 else 0) := by
  classical
  unfold countedUsedInDegree
  by_cases hv : countedEdgeTarget m c e = v
  · simp [Finset.filter_insert, hv, Finset.card_insert_of_not_mem,
      fresh]
  · simp [Finset.filter_insert, hv]

/-- The finite used-edge imbalance of an actual fresh counted trail
is exactly its starting indicator minus its terminal indicator.
This is the endpoint conservation identity needed by Hierholzer. -/
theorem FreshCountedTrail.used_degree_imbalance
    {m : ℕ} {c : BinaryEdgeWord m → ℕ}
    {start finish : Fin m → Bool}
    (T : FreshCountedTrail m c start finish)
    (v : Fin m → Bool) :
    (countedUsedOutDegree m c T.used v : ℤ) -
        (countedUsedInDegree m c T.used v : ℤ) =
      (if start = v then (1 : ℤ) else 0) -
        (if finish = v then (1 : ℤ) else 0) := by
  cases T with
  | mk walk nodup =>
      induction walk with
      | empty vertex =>
          simp [FreshCountedTrail.used, CountedWalk.edges,
            countedUsedOutDegree, countedUsedInDegree]
      | @append start' finish' walk e incident ih =>
          have hnot : e ∉ walk.edges.toFinset := by
            have hn : (e :: walk.edges).Nodup := nodup
            exact (List.nodup_cons.mp hn).1
          have hout := countedUsedOutDegree_insert m c
            walk.edges.toFinset e hnot v
          have hin := countedUsedInDegree_insert m c
            walk.edges.toFinset e hnot v
          simp only [FreshCountedTrail.used, CountedWalk.edges] at *
          rw [hout, hin]
          rw [incident]
          split_ifs <;> omega



/-- At a terminal-maximal fresh trail, the UNUSED outgoing degree
at the finish vertex is exactly zero. -/
theorem FreshCountedTrail.unused_out_zero_of_maximal
    {m : ℕ} {c : BinaryEdgeWord m → ℕ}
    {start finish : Fin m → Bool}
    (T : FreshCountedTrail m c start finish)
    (hmax : T.MaximalAtFinish) :
    countedUsedOutDegree m c (Finset.univ \ T.used) finish = 0 := by
  classical
  unfold countedUsedOutDegree
  apply Finset.card_eq_zero.mpr
  apply Finset.eq_empty_iff_forall_not_mem.mpr
  intro e he
  have he' := Finset.mem_filter.mp he
  have hused := hmax e he'.2
  exact (Finset.mem_sdiff.mp he'.1).2 hused

/-- If the full counted graph is balanced, then a terminal-maximal
trail has zero or negative unused incoming degree at its finish
according to the endpoint imbalance. This is the exact algebraic
closure obstruction. -/
theorem FreshCountedTrail.maximal_finish_imbalance
    {m : ℕ} {c : BinaryEdgeWord m → ℕ}
    {start finish : Fin m → Bool}
    (T : FreshCountedTrail m c start finish)
    (hbalance : CountedDegreeBalanced m c)
    (hmax : T.MaximalAtFinish) :
    (countedUsedInDegree m c (Finset.univ \ T.used) finish : ℤ) =
      (if start = finish then (0 : ℤ) else -1) := by
  have htotal := hbalance finish
  have hout := countedOutDegree_used_unused m c T.used finish
  have hin := countedInDegree_used_unused m c T.used finish
  have hzero := T.unused_out_zero_of_maximal hmax
  have htrail := T.used_degree_imbalance finish
  rw [hzero] at hout
  by_cases heq : start = finish
  · simp [heq] at htrail ⊢
    omega
  · have hneq : finish = finish := rfl
    simp [heq, hneq] at htrail
    omega



/-- Degree balance forces a terminal-maximal fresh counted trail
to return to its starting vertex. Otherwise the unused incoming
degree at its finish would equal -1, contradicting its cardinality. -/
theorem FreshCountedTrail.closed_of_balanced_maximal
    {m : ℕ} {c : BinaryEdgeWord m → ℕ}
    {start finish : Fin m → Bool}
    (T : FreshCountedTrail m c start finish)
    (hbalance : CountedDegreeBalanced m c)
    (hmax : T.MaximalAtFinish) :
    start = finish := by
  by_contra hne
  have h := T.maximal_finish_imbalance hbalance hmax
  simp [hne] at h
  have hnonneg :
      (0 : ℤ) ≤
        (countedUsedInDegree m c (Finset.univ \ T.used) finish : ℤ) := by
    positivity
  omega



/-- A closed fresh counted trail uses equally many incoming and
outgoing individual edge instances at every vertex. -/
theorem FreshCountedTrail.closed_used_balanced
    {m : ℕ} {c : BinaryEdgeWord m → ℕ}
    {start finish : Fin m → Bool}
    (T : FreshCountedTrail m c start finish)
    (hclosed : start = finish) (v : Fin m → Bool) :
    countedUsedOutDegree m c T.used v =
      countedUsedInDegree m c T.used v := by
  have h := T.used_degree_imbalance v
  subst finish
  simp only [sub_self] at h
  omega

/-- Removing a closed trail from a balanced counted multigraph
leaves another balanced counted multigraph on the UNUSED edge
instances. Parallel-edge identifiers remain distinct. -/
theorem FreshCountedTrail.closed_unused_balanced
    {m : ℕ} {c : BinaryEdgeWord m → ℕ}
    {start finish : Fin m → Bool}
    (T : FreshCountedTrail m c start finish)
    (hclosed : start = finish)
    (hbalance : CountedDegreeBalanced m c)
    (v : Fin m → Bool) :
    countedUsedOutDegree m c (Finset.univ \ T.used) v =
      countedUsedInDegree m c (Finset.univ \ T.used) v := by
  have hall := hbalance v
  have hout := countedOutDegree_used_unused m c T.used v
  have hin := countedInDegree_used_unused m c T.used v
  have hused := T.closed_used_balanced hclosed v
  omega



/-- At every vertex of the residual graph, unused incoming edge
incidence is equivalent to unused outgoing edge incidence.
The result retains parallel counted edge instances. -/
theorem FreshCountedTrail.unused_in_pos_iff_out_pos
    {m : ℕ} {c : BinaryEdgeWord m → ℕ}
    {start finish : Fin m → Bool}
    (T : FreshCountedTrail m c start finish)
    (hclosed : start = finish)
    (hbalance : CountedDegreeBalanced m c)
    (v : Fin m → Bool) :
    0 < countedUsedInDegree m c (Finset.univ \ T.used) v ↔
      0 < countedUsedOutDegree m c (Finset.univ \ T.used) v := by
  rw [T.closed_unused_balanced hclosed hbalance v]

/-- An unused incoming counted edge at a vertex on a closed trail
supplies an actual unused outgoing edge instance at that vertex.
This is a local splice supplier, not weak-connectivity existence. -/
theorem FreshCountedTrail.unused_out_edge_of_unused_in_edge
    {m : ℕ} {c : BinaryEdgeWord m → ℕ}
    {start finish : Fin m → Bool}
    (T : FreshCountedTrail m c start finish)
    (hclosed : start = finish)
    (hbalance : CountedDegreeBalanced m c)
    (v : Fin m → Bool)
    (e : CountedBinaryEdge m c)
    (he : e ∈ Finset.univ \ T.used)
    (htarget : countedEdgeTarget m c e = v) :
    ∃ f : CountedBinaryEdge m c,
      f ∈ Finset.univ \ T.used ∧ countedEdgeSource m c f = v := by
  classical
  have hin : 0 < countedUsedInDegree m c
      (Finset.univ \ T.used) v := by
    unfold countedUsedInDegree
    apply Finset.card_pos.mpr
    exact ⟨e, Finset.mem_filter.mpr ⟨he, htarget⟩⟩
  have hout := (T.unused_in_pos_iff_out_pos hclosed hbalance v).mp hin
  unfold countedUsedOutDegree at hout
  obtain ⟨f, hf⟩ := Finset.card_pos.mp hout
  exact ⟨f, (Finset.mem_filter.mp hf).1, (Finset.mem_filter.mp hf).2⟩



/-- A residual edge incident to a vertex, in EITHER orientation,
supplies a residual outgoing counted edge at that vertex.
This is the precise local input needed after a weak-support
connectivity argument finds an incident residual edge. -/
theorem FreshCountedTrail.unused_out_edge_of_incident
    {m : ℕ} {c : BinaryEdgeWord m → ℕ}
    {start finish : Fin m → Bool}
    (T : FreshCountedTrail m c start finish)
    (hclosed : start = finish)
    (hbalance : CountedDegreeBalanced m c)
    (v : Fin m → Bool)
    (e : CountedBinaryEdge m c)
    (he : e ∈ Finset.univ \ T.used)
    (hincident : countedEdgeSource m c e = v ∨
      countedEdgeTarget m c e = v) :
    ∃ f : CountedBinaryEdge m c,
      f ∈ Finset.univ \ T.used ∧ countedEdgeSource m c f = v := by
  rcases hincident with hs | ht
  · exact ⟨e, he, hs⟩
  · exact T.unused_out_edge_of_unused_in_edge
      hclosed hbalance v e he ht


end GRWTSK.ProbabilityAndMathematicalStatistics.ChowlaSofic
```
