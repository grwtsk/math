/- Copyright (c) 2026 grwtsk contributors. MIT.
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

/-- A directed walk with fresh counted-edge instances, indexed by
its initial and terminal vertices. The edge instances remain distinct
even if their underlying binary labels coincide. -/
inductive FreshCountedTrail (m : ℕ) (c : BinaryEdgeWord m → ℕ) :
    (Fin m → Bool) → (Fin m → Bool) → Type where
  | empty (v : Fin m → Bool) : FreshCountedTrail m c v v
  | append {start finish : Fin m → Bool}
      (T : FreshCountedTrail m c start finish)
      (e : CountedBinaryEdge m c)
      (fresh : e ∉ T.used)
      (incident : countedEdgeSource m c e = finish) :
      FreshCountedTrail m c start (countedEdgeTarget m c e)
  deriving DecidableEq

/-- The exact finite set of used edge instances. -/
def FreshCountedTrail.used {m : ℕ} {c : BinaryEdgeWord m → ℕ}
    {start finish : Fin m → Bool}
    (T : FreshCountedTrail m c start finish) :
    Finset (CountedBinaryEdge m c) :=
  match T with
  | .empty _ => ∅
  | .append T e _ _ => insert e T.used

/-- Every constructed trail uses exactly one new instance per append. -/
theorem FreshCountedTrail.append_used
    {m : ℕ} {c : BinaryEdgeWord m → ℕ}
    {start finish : Fin m → Bool}
    (T : FreshCountedTrail m c start finish)
    (e : CountedBinaryEdge m c)
    (fresh : e ∉ T.used)
    (incident : countedEdgeSource m c e = finish) :
    (FreshCountedTrail.append T e fresh incident).used =
      insert e T.used := rfl

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
