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

end GRWTSK.ProbabilityAndMathematicalStatistics.ChowlaSofic
