/- Copyright (c) 2026 R.A. Jacob Martone. MIT.
Finite counted Euler trail construction drafting assistance: OpenAI. -/
import GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.FiniteCountedEulerTrail
import Mathlib.Tactic

set_option autoImplicit false

/-!
# Constructive append of distinct counted directed edges

A proof-relevant inductive trail gives an actual append constructor.
Every append records a fresh counted edge instance and equality of
its source with the current terminal vertex. It does not assume
Euler existence, degree balance, or support connectivity.
SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
-/

namespace GRWTSK.ProbabilityAndMathematicalStatistics.ChowlaSofic

/-- A directed walk with endpoint compatibility enforced by its
constructor. Its list stores individual counted edge instances. -/
inductive CountedWalk (m : ℕ) (c : BinaryEdgeWord m → ℕ) :
    (Fin m → Bool) → (Fin m → Bool) → Type where
  | empty (v : Fin m → Bool) : CountedWalk m c v v
  | append {start finish : Fin m → Bool}
      (T : CountedWalk m c start finish)
      (e : CountedBinaryEdge m c)
      (incident : countedEdgeSource m c e = finish) :
      CountedWalk m c start (countedEdgeTarget m c e)

/-- The reversed list of edge instances in a directed walk. -/
def CountedWalk.edges {m : ℕ} {c : BinaryEdgeWord m → ℕ}
    {start finish : Fin m → Bool}
    (T : CountedWalk m c start finish) :
    List (CountedBinaryEdge m c) :=
  match T with
  | .empty _ => []
  | .append T e _ => e :: T.edges

/-- A proof-carrying directed trail: the counted instances in its
underlying directed walk are pairwise distinct. -/
structure FreshCountedTrail (m : ℕ) (c : BinaryEdgeWord m → ℕ)
    (start finish : Fin m → Bool) where
  walk : CountedWalk m c start finish
  nodup : walk.edges.Nodup

/-- The exact set of used counted edge instances. -/
def FreshCountedTrail.used {m : ℕ} {c : BinaryEdgeWord m → ℕ}
    {start finish : Fin m → Bool}
    (T : FreshCountedTrail m c start finish) :
    Finset (CountedBinaryEdge m c) :=
  T.walk.edges.toFinset

/-- Construct an actual append, preserving endpoint compatibility and
the no-repeated-instance invariant. -/
def FreshCountedTrail.append
    {m : ℕ} {c : BinaryEdgeWord m → ℕ}
    {start finish : Fin m → Bool}
    (T : FreshCountedTrail m c start finish)
    (e : CountedBinaryEdge m c)
    (fresh : e ∉ T.used)
    (incident : countedEdgeSource m c e = finish) :
    FreshCountedTrail m c start (countedEdgeTarget m c e) where
  walk := CountedWalk.append T.walk e incident
  nodup := by
    change (e :: T.walk.edges).Nodup
    exact List.nodup_cons.mpr
      ⟨by simpa [FreshCountedTrail.used] using fresh, T.nodup⟩

/-- Exact used-set identity for a fresh append. -/
theorem FreshCountedTrail.append_used
    {m : ℕ} {c : BinaryEdgeWord m → ℕ}
    {start finish : Fin m → Bool}
    (T : FreshCountedTrail m c start finish)
    (e : CountedBinaryEdge m c)
    (fresh : e ∉ T.used)
    (incident : countedEdgeSource m c e = finish) :
    (T.append e fresh incident).used = insert e T.used := by
  rfl

/-- The unused-edge count decreases strictly under an actual append.
No quotient by edge labels is taken. -/
theorem FreshCountedTrail.append_unused_card
    {m : ℕ} {c : BinaryEdgeWord m → ℕ}
    {start finish : Fin m → Bool}
    (T : FreshCountedTrail m c start finish)
    (e : CountedBinaryEdge m c)
    (fresh : e ∉ T.used)
    (incident : countedEdgeSource m c e = finish) :
    (Finset.univ \
      (FreshCountedTrail.append T e fresh incident).used).card + 1 =
      (Finset.univ \ T.used).card := by
  classical
  rw [FreshCountedTrail.append_used]
  rw [Finset.sdiff_insert]
  have he : e ∈ (Finset.univ \ T.used :
      Finset (CountedBinaryEdge m c)) :=
    Finset.mem_sdiff.mpr ⟨Finset.mem_univ _, fresh⟩
  exact Finset.card_erase_of_mem he


/-- Every finite counted walk starts at a source-compatible vertex
and ends at the target of its last edge, by construction. A fresh
trail with no unused outgoing edge is maximal at its terminal
vertex, without claiming it is already a closed Euler circuit. -/
def FreshCountedTrail.MaximalAtFinish
    {m : ℕ} {c : BinaryEdgeWord m → ℕ}
    {start finish : Fin m → Bool}
    (T : FreshCountedTrail m c start finish) : Prop :=
  ∀ e : CountedBinaryEdge m c,
    countedEdgeSource m c e = finish → e ∈ T.used

/-- The negation of terminal maximality supplies an ACTUAL fresh
counted edge with the correct incidence, not just an edge label. -/
theorem FreshCountedTrail.exists_append_of_not_maximal
    {m : ℕ} {c : BinaryEdgeWord m → ℕ}
    {start finish : Fin m → Bool}
    (T : FreshCountedTrail m c start finish)
    (h : ¬ T.MaximalAtFinish) :
    ∃ e : CountedBinaryEdge m c,
      ∃ fresh : e ∉ T.used,
        countedEdgeSource m c e = finish := by
  classical
  unfold FreshCountedTrail.MaximalAtFinish at h
  push_neg at h
  obtain ⟨e, hsource, hnot⟩ := h
  exact ⟨e, hnot, hsource⟩

/-- Every nonmaximal finite counted trail has a genuine strict
extension with exactly one fewer unused edge instance. -/
theorem FreshCountedTrail.exists_strict_extension
    {m : ℕ} {c : BinaryEdgeWord m → ℕ}
    {start finish : Fin m → Bool}
    (T : FreshCountedTrail m c start finish)
    (h : ¬ T.MaximalAtFinish) :
    ∃ e : CountedBinaryEdge m c,
      ∃ fresh : e ∉ T.used,
        ∃ incident : countedEdgeSource m c e = finish,
          (Finset.univ \
            (T.append e fresh incident).used).card + 1 =
              (Finset.univ \ T.used).card := by
  obtain ⟨e, fresh, incident⟩ := T.exists_append_of_not_maximal h
  exact ⟨e, fresh, incident,
    T.append_unused_card e fresh incident⟩



/-- The empty directed counted trail at a specified vertex.
Its used-edge set is empty, so every edge instance is initially
available. -/
def FreshCountedTrail.empty
    (m : ℕ) (c : BinaryEdgeWord m → ℕ)
    (v : Fin m → Bool) :
    FreshCountedTrail m c v v where
  walk := CountedWalk.empty v
  nodup := by simp [CountedWalk.edges]

@[simp] theorem FreshCountedTrail.empty_used
    (m : ℕ) (c : BinaryEdgeWord m → ℕ)
    (v : Fin m → Bool) :
    (FreshCountedTrail.empty m c v).used = ∅ := by
  rfl

/-- Any counted edge instance gives a genuine nonempty one-edge
fresh trail from its source to its target. No balance or
connectivity hypothesis is required. -/
def FreshCountedTrail.single
    (m : ℕ) (c : BinaryEdgeWord m → ℕ)
    (e : CountedBinaryEdge m c) :
    FreshCountedTrail m c
      (countedEdgeSource m c e) (countedEdgeTarget m c e) :=
  (FreshCountedTrail.empty m c (countedEdgeSource m c e)).append
    e (by simp [FreshCountedTrail.empty_used]) rfl

/-- The one-edge trail uses exactly the chosen counted edge
instance, even if other instances have the same binary label. -/
theorem FreshCountedTrail.single_used
    (m : ℕ) (c : BinaryEdgeWord m → ℕ)
    (e : CountedBinaryEdge m c) :
    (FreshCountedTrail.single m c e).used = {e} := by
  simp [FreshCountedTrail.single, FreshCountedTrail.append_used,
    FreshCountedTrail.empty_used]



/-- Every fresh counted trail admits a terminal-maximal extension.
The construction is a finite well-founded descent on the exact
number of unused counted edge instances. -/
theorem FreshCountedTrail.exists_maximal_extension
    {m : ℕ} {c : BinaryEdgeWord m → ℕ}
    {a b : Fin m → Bool}
    (T : FreshCountedTrail m c a b) :
    ∃ (z : Fin m → Bool) (R : FreshCountedTrail m c a z),
      R.MaximalAtFinish ∧ T.used ⊆ R.used := by
  classical
  induction h : (Finset.univ \ T.used).card using Nat.strong_induction_on
    generalizing b T with
  | h n ih =>
      by_cases hmax : T.MaximalAtFinish
      · exact ⟨b, T, hmax, Finset.Subset.rfl⟩
      · obtain ⟨e, fresh, incident, hcard⟩ :=
          T.exists_strict_extension hmax
        let R := T.append e fresh incident
        have hlt : (Finset.univ \ R.used).card < n := by
          dsimp [R]
          omega
        obtain ⟨z, Q, hQmax, hRQ⟩ := ih _ hlt R rfl
        refine ⟨z, Q, hQmax, ?_⟩
        have hTR : T.used ⊆ R.used := by
          rw [FreshCountedTrail.append_used]
          exact Finset.subset_insert _ _
        exact hTR.trans hRQ


end GRWTSK.ProbabilityAndMathematicalStatistics.ChowlaSofic
