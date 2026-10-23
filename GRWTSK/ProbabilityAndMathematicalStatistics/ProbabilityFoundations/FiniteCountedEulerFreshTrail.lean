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

end GRWTSK.ProbabilityAndMathematicalStatistics.ChowlaSofic
