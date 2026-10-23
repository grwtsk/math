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



/-- Exact cardinality gain when two edge-disjoint counted trails are
concatenated. Every parallel edge instance contributes separately. -/
theorem FreshCountedTrail.concat_used_card
    {m : ℕ} {c : BinaryEdgeWord m → ℕ}
    {a b d : Fin m → Bool}
    (P : FreshCountedTrail m c a b)
    (Q : FreshCountedTrail m c b d)
    (hdisj : Disjoint P.used Q.used) :
    (P.concat Q hdisj).used.card = P.used.card + Q.used.card := by
  rw [FreshCountedTrail.concat_used]
  exact Finset.card_union_of_disjoint hdisj

/-- The unused counted edge instances decrease by precisely the
number of edges in the appended, disjoint trail. -/
theorem FreshCountedTrail.concat_unused_card
    {m : ℕ} {c : BinaryEdgeWord m → ℕ}
    {a b d : Fin m → Bool}
    (P : FreshCountedTrail m c a b)
    (Q : FreshCountedTrail m c b d)
    (hdisj : Disjoint P.used Q.used) :
    (Finset.univ \ (P.concat Q hdisj).used).card + Q.used.card =
      (Finset.univ \ P.used).card := by
  classical
  have hP : P.used ⊆ (Finset.univ : Finset (CountedBinaryEdge m c)) :=
    Finset.subset_univ _
  have hPQ :
      (P.concat Q hdisj).used ⊆
        (Finset.univ : Finset (CountedBinaryEdge m c)) :=
    Finset.subset_univ _
  have hp := Finset.card_sdiff_add_card_eq_card hP
  have hpq := Finset.card_sdiff_add_card_eq_card hPQ
  rw [FreshCountedTrail.concat_used_card P Q hdisj] at hpq
  omega



/-- A nonempty closed residual trail based at the endpoint of an
existing fresh trail can be spliced by constructive concatenation.
The result retains the original endpoints and all counted edge IDs. -/
def FreshCountedTrail.spliceClosedAtFinish
    {m : ℕ} {c : BinaryEdgeWord m → ℕ}
    {a b : Fin m → Bool}
    (P : FreshCountedTrail m c a b)
    (C : FreshCountedTrail m c b b)
    (hdisj : Disjoint P.used C.used) :
    FreshCountedTrail m c a b :=
  P.concat C hdisj

/-- Splicing a closed residual trail has the exact edge-instance
union, without any identification of parallel edges. -/
theorem FreshCountedTrail.spliceClosedAtFinish_used
    {m : ℕ} {c : BinaryEdgeWord m → ℕ}
    {a b : Fin m → Bool}
    (P : FreshCountedTrail m c a b)
    (C : FreshCountedTrail m c b b)
    (hdisj : Disjoint P.used C.used) :
    (P.spliceClosedAtFinish C hdisj).used = P.used ∪ C.used := by
  exact P.concat_used C hdisj

/-- Any nonempty residual closed trail strictly decreases the unused
edge count when spliced at the current terminal vertex. -/
theorem FreshCountedTrail.spliceClosedAtFinish_strict
    {m : ℕ} {c : BinaryEdgeWord m → ℕ}
    {a b : Fin m → Bool}
    (P : FreshCountedTrail m c a b)
    (C : FreshCountedTrail m c b b)
    (hdisj : Disjoint P.used C.used)
    (hC : 0 < C.used.card) :
    (Finset.univ \ (P.spliceClosedAtFinish C hdisj).used).card <
      (Finset.univ \ P.used).card := by
  have h := P.concat_unused_card C hdisj
  unfold FreshCountedTrail.spliceClosedAtFinish
  omega



/-- General interior splicing, given an ACTUAL factorization of the
original fresh trail into endpoint-compatible prefix and suffix
trails at the chosen vertex. This avoids assuming a rotation
exists without constructing the relevant vertex occurrence. -/
def FreshCountedTrail.spliceAtFactorization
    {m : ℕ} {c : BinaryEdgeWord m → ℕ}
    {a v b : Fin m → Bool}
    (P : FreshCountedTrail m c a v)
    (Q : FreshCountedTrail m c v b)
    (C : FreshCountedTrail m c v v)
    (hPQ : Disjoint P.used Q.used)
    (hPC : Disjoint P.used C.used)
    (hQC : Disjoint Q.used C.used) :
    FreshCountedTrail m c a b := by
  have hCQ : Disjoint C.used Q.used := hQC.symm
  have hPQC : Disjoint P.used (C.used ∪ Q.used) :=
    Finset.disjoint_union_right.mpr ⟨hPC, hPQ⟩
  exact P.concat (C.concat Q hCQ) (by
    simpa [FreshCountedTrail.concat_used] using hPQC)

/-- The interior splice uses precisely the original two trail
segments and the inserted residual closed cycle. -/
theorem FreshCountedTrail.spliceAtFactorization_used
    {m : ℕ} {c : BinaryEdgeWord m → ℕ}
    {a v b : Fin m → Bool}
    (P : FreshCountedTrail m c a v)
    (Q : FreshCountedTrail m c v b)
    (C : FreshCountedTrail m c v v)
    (hPQ : Disjoint P.used Q.used)
    (hPC : Disjoint P.used C.used)
    (hQC : Disjoint Q.used C.used) :
    (FreshCountedTrail.spliceAtFactorization P Q C
      hPQ hPC hQC).used = (P.used ∪ Q.used) ∪ C.used := by
  simp [FreshCountedTrail.spliceAtFactorization,
    FreshCountedTrail.concat_used, Finset.union_assoc,
    Finset.union_comm, Finset.union_left_comm]



/-- Splicing a nonempty residual cycle at an explicit interior
factorization strictly decreases the number of unused counted
edge instances, with no assumptions on simple-graph labels. -/
theorem FreshCountedTrail.spliceAtFactorization_strict
    {m : ℕ} {c : BinaryEdgeWord m → ℕ}
    {a v b : Fin m → Bool}
    (P : FreshCountedTrail m c a v)
    (Q : FreshCountedTrail m c v b)
    (C : FreshCountedTrail m c v v)
    (hPQ : Disjoint P.used Q.used)
    (hPC : Disjoint P.used C.used)
    (hQC : Disjoint Q.used C.used)
    (hC : 0 < C.used.card) :
    (Finset.univ \
      (FreshCountedTrail.spliceAtFactorization P Q C
        hPQ hPC hQC).used).card <
      (Finset.univ \ (P.used ∪ Q.used)).card := by
  classical
  rw [FreshCountedTrail.spliceAtFactorization_used]
  have hdisj : Disjoint (P.used ∪ Q.used) C.used :=
    Finset.disjoint_union_left.mpr ⟨hPC, hQC⟩
  have hcard :
      ((P.used ∪ Q.used) ∪ C.used).card =
        (P.used ∪ Q.used).card + C.used.card :=
    Finset.card_union_of_disjoint hdisj
  have hsub1 : P.used ∪ Q.used ⊆
      (Finset.univ : Finset (CountedBinaryEdge m c)) :=
    Finset.subset_univ _
  have hsub2 : (P.used ∪ Q.used) ∪ C.used ⊆
      (Finset.univ : Finset (CountedBinaryEdge m c)) :=
    Finset.subset_univ _
  have ha := Finset.card_sdiff_add_card_eq_card hsub1
  have hb := Finset.card_sdiff_add_card_eq_card hsub2
  omega



/-- A splice performed at an explicit factorization preserves the
start and finish vertices of the original concatenated trail. -/
theorem FreshCountedTrail.spliceAtFactorization_endpoint
    {m : ℕ} {c : BinaryEdgeWord m → ℕ}
    {a v b : Fin m → Bool}
    (P : FreshCountedTrail m c a v)
    (Q : FreshCountedTrail m c v b)
    (C : FreshCountedTrail m c v v)
    (hPQ : Disjoint P.used Q.used)
    (hPC : Disjoint P.used C.used)
    (hQC : Disjoint Q.used C.used) :
    Nonempty (FreshCountedTrail m c a b) := by
  exact ⟨FreshCountedTrail.spliceAtFactorization
    P Q C hPQ hPC hQC⟩

/-- A closed original trail remains closed after inserting a
disjoint residual cycle at an explicitly factored vertex. -/
theorem FreshCountedTrail.spliceAtFactorization_closed
    {m : ℕ} {c : BinaryEdgeWord m → ℕ}
    {a v : Fin m → Bool}
    (P : FreshCountedTrail m c a v)
    (Q : FreshCountedTrail m c v a)
    (C : FreshCountedTrail m c v v)
    (hPQ : Disjoint P.used Q.used)
    (hPC : Disjoint P.used C.used)
    (hQC : Disjoint Q.used C.used) :
    Nonempty (FreshCountedTrail m c a a) := by
  exact ⟨FreshCountedTrail.spliceAtFactorization
    P Q C hPQ hPC hQC⟩



/-- A fresh trail is factorable at its initial vertex, using an
empty prefix and the entire trail as suffix. This is the first
constructive case of the general visited-vertex factorization. -/
def FreshCountedTrail.factorAtStart
    {m : ℕ} {c : BinaryEdgeWord m → ℕ}
    {a b : Fin m → Bool}
    (T : FreshCountedTrail m c a b) :
    FreshCountedTrail m c a a × FreshCountedTrail m c a b :=
  ({ walk := CountedWalk.empty a
     nodup := by simp [CountedWalk.edges] }, T)

/-- Factorization at the initial vertex preserves all counted
edge instances, and the two factors are disjoint. -/
theorem FreshCountedTrail.factorAtStart_used
    {m : ℕ} {c : BinaryEdgeWord m → ℕ}
    {a b : Fin m → Bool}
    (T : FreshCountedTrail m c a b) :
    (T.factorAtStart).1.used ∪ (T.factorAtStart).2.used = T.used ∧
      Disjoint (T.factorAtStart).1.used (T.factorAtStart).2.used := by
  constructor
  · simp [FreshCountedTrail.factorAtStart,
      FreshCountedTrail.used, CountedWalk.edges]
  · simp [FreshCountedTrail.factorAtStart,
      FreshCountedTrail.used, CountedWalk.edges]

/-- A fresh trail is also factorable at its terminal vertex,
using the entire trail as prefix and an empty suffix. -/
def FreshCountedTrail.factorAtFinish
    {m : ℕ} {c : BinaryEdgeWord m → ℕ}
    {a b : Fin m → Bool}
    (T : FreshCountedTrail m c a b) :
    FreshCountedTrail m c a b × FreshCountedTrail m c b b :=
  (T, { walk := CountedWalk.empty b
        nodup := by simp [CountedWalk.edges] })

/-- Terminal factorization likewise preserves every counted
edge instance and satisfies exact disjointness. -/
theorem FreshCountedTrail.factorAtFinish_used
    {m : ℕ} {c : BinaryEdgeWord m → ℕ}
    {a b : Fin m → Bool}
    (T : FreshCountedTrail m c a b) :
    (T.factorAtFinish).1.used ∪ (T.factorAtFinish).2.used = T.used ∧
      Disjoint (T.factorAtFinish).1.used (T.factorAtFinish).2.used := by
  constructor
  · simp [FreshCountedTrail.factorAtFinish,
      FreshCountedTrail.used, CountedWalk.edges]
  · simp [FreshCountedTrail.factorAtFinish,
      FreshCountedTrail.used, CountedWalk.edges]


end GRWTSK.ProbabilityAndMathematicalStatistics.ChowlaSofic
