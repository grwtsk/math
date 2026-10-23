/- Copyright (c) 2026 grwtsk contributors. MIT.
Finite directed walk concatenation proof drafting assistance: OpenAI. -/
import GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.FiniteCountedEulerFreshTrail
import Mathlib.Tactic

set_option autoImplicit false

/-!
# Concatenation of counted directed walks

This is the algebraic splicing supplier. A closed walk at a shared
vertex can be inserted into another directed walk without changing
its endpoints. The constructor preserves edge-instance identities;
freshness is a separate hypothesis for trail splicing.

SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
-/

namespace GRWTSK.ProbabilityAndMathematicalStatistics.ChowlaSofic

/-- Concatenate two endpoint-matching directed walks. -/
def CountedWalk.concat
    {m : ℕ} {c : BinaryEdgeWord m → ℕ}
    {a b d : Fin m → Bool}
    (P : CountedWalk m c a b)
    (Q : CountedWalk m c b d) :
    CountedWalk m c a d := by
  induction Q with
  | empty _ => exact P
  | @append _ _ Q e he ih =>
      exact CountedWalk.append ih e he

/-- Concatenation preserves the exact multiset of individual counted
edge instances, expressed as the reversed edge lists. -/
theorem CountedWalk.concat_edges
    {m : ℕ} {c : BinaryEdgeWord m → ℕ}
    {a b d : Fin m → Bool}
    (P : CountedWalk m c a b)
    (Q : CountedWalk m c b d) :
    (P.concat Q).edges = Q.edges ++ P.edges := by
  induction Q with
  | empty _ => simp [CountedWalk.concat, CountedWalk.edges]
  | @append _ _ Q e he ih =>
      simp [CountedWalk.concat, CountedWalk.edges, ih]

/-- Concatenation with a closed walk retains the original endpoints.
This is a local algebraic ingredient of Hierholzer cycle splicing,
not yet the rotation-to-shared-vertex construction. -/
def CountedWalk.insertClosedAtEnd
    {m : ℕ} {c : BinaryEdgeWord m → ℕ}
    {a b : Fin m → Bool}
    (P : CountedWalk m c a b)
    (C : CountedWalk m c b b) :
    CountedWalk m c a b :=
  P.concat C

/-- The exact used-instance set of concatenation is the union of
the two used-instance sets. -/
theorem CountedWalk.concat_used
    {m : ℕ} {c : BinaryEdgeWord m → ℕ}
    {a b d : Fin m → Bool}
    (P : CountedWalk m c a b)
    (Q : CountedWalk m c b d) :
    (P.concat Q).edges.toFinset =
      P.edges.toFinset ∪ Q.edges.toFinset := by
  rw [CountedWalk.concat_edges, List.toFinset_append]
  exact Finset.union_comm _ _


/-- A directed walk concatenation has no repeated counted edge
instances when both constituent lists are duplicate-free and
their exact used-edge sets are disjoint. -/
theorem CountedWalk.concat_nodup
    {m : ℕ} {c : BinaryEdgeWord m → ℕ}
    {a b d : Fin m → Bool}
    (P : CountedWalk m c a b)
    (Q : CountedWalk m c b d)
    (hP : P.edges.Nodup)
    (hQ : Q.edges.Nodup)
    (hdisj : Disjoint P.edges.toFinset Q.edges.toFinset) :
    (P.concat Q).edges.Nodup := by
  rw [CountedWalk.concat_edges]
  apply List.nodup_append.mpr
  refine ⟨hQ, hP, ?_⟩
  intro e heQ heP
  have h1 : e ∈ Q.edges.toFinset := by simpa using heQ
  have h2 : e ∈ P.edges.toFinset := by simpa using heP
  exact (Finset.disjoint_left.mp hdisj.symm) h1 h2

/-- The proof-carrying concatenation of two fresh counted trails
with disjoint used-edge instance sets. -/
def FreshCountedTrail.concat
    {m : ℕ} {c : BinaryEdgeWord m → ℕ}
    {a b d : Fin m → Bool}
    (P : FreshCountedTrail m c a b)
    (Q : FreshCountedTrail m c b d)
    (hdisj : Disjoint P.used Q.used) :
    FreshCountedTrail m c a d where
  walk := P.walk.concat Q.walk
  nodup := CountedWalk.concat_nodup P.walk Q.walk
    P.nodup Q.nodup hdisj

/-- The combined fresh trail uses precisely the union of the
original edge-instance sets, including all parallel-edge IDs. -/
theorem FreshCountedTrail.concat_used
    {m : ℕ} {c : BinaryEdgeWord m → ℕ}
    {a b d : Fin m → Bool}
    (P : FreshCountedTrail m c a b)
    (Q : FreshCountedTrail m c b d)
    (hdisj : Disjoint P.used Q.used) :
    (P.concat Q hdisj).used = P.used ∪ Q.used := by
  exact CountedWalk.concat_used P.walk Q.walk


end GRWTSK.ProbabilityAndMathematicalStatistics.ChowlaSofic
