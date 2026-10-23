/- Copyright (c) 2026 grwtsk contributors. MIT.
Residual counted-edge trail proof drafting assistance: OpenAI. -/
import GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.FiniteCountedEulerFreshTrail
import Mathlib.Tactic

set_option autoImplicit false

/-!
# Residual-universe counted directed trails

The ambient U is a finite set of individual counted edge instances.
A residual trail uses only U, so no existing circuit edge is reused.
All claims are finite and arithmetic-independent.
SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
-/

namespace GRWTSK.ProbabilityAndMathematicalStatistics.ChowlaSofic

/-- A fresh counted trail whose used edge instances are all in U. -/
structure ResidualFreshTrail
    (m : ℕ) (c : BinaryEdgeWord m → ℕ)
    (U : Finset (CountedBinaryEdge m c))
    (a b : Fin m → Bool) where
  trail : FreshCountedTrail m c a b
  supported : trail.used ⊆ U

/-- Maximality among residual edges, not all counted edges. -/
def ResidualFreshTrail.Maximal
    {m : ℕ} {c : BinaryEdgeWord m → ℕ}
    {U : Finset (CountedBinaryEdge m c)}
    {a b : Fin m → Bool}
    (R : ResidualFreshTrail m c U a b) : Prop :=
  ∀ e ∈ U, countedEdgeSource m c e = b → e ∈ R.trail.used

/-- Extend by a fresh edge instance from U. Endpoint compatibility,
distinctness, and residual support are preserved by construction. -/
def ResidualFreshTrail.append
    {m : ℕ} {c : BinaryEdgeWord m → ℕ}
    {U : Finset (CountedBinaryEdge m c)}
    {a b : Fin m → Bool}
    (R : ResidualFreshTrail m c U a b)
    (e : CountedBinaryEdge m c)
    (heU : e ∈ U)
    (fresh : e ∉ R.trail.used)
    (incident : countedEdgeSource m c e = b) :
    ResidualFreshTrail m c U a (countedEdgeTarget m c e) where
  trail := R.trail.append e fresh incident
  supported := by
    rw [FreshCountedTrail.append_used]
    exact Finset.insert_subset heU R.supported

/-- The unused residual edge count drops by exactly one. -/
theorem ResidualFreshTrail.append_unused_card
    {m : ℕ} {c : BinaryEdgeWord m → ℕ}
    {U : Finset (CountedBinaryEdge m c)}
    {a b : Fin m → Bool}
    (R : ResidualFreshTrail m c U a b)
    (e : CountedBinaryEdge m c)
    (heU : e ∈ U)
    (fresh : e ∉ R.trail.used)
    (incident : countedEdgeSource m c e = b) :
    (U \ (R.append e heU fresh incident).trail.used).card + 1 =
      (U \ R.trail.used).card := by
  classical
  change (U \ (R.trail.append e fresh incident).used).card + 1 =
    (U \ R.trail.used).card
  rw [FreshCountedTrail.append_used, Finset.sdiff_insert]
  exact Finset.card_erase_of_mem
    (Finset.mem_sdiff.mpr ⟨heU, fresh⟩)

/-- Failure of residual terminal maximality produces an actual
fresh outgoing edge instance belonging to U. -/
theorem ResidualFreshTrail.exists_extension_of_not_maximal
    {m : ℕ} {c : BinaryEdgeWord m → ℕ}
    {U : Finset (CountedBinaryEdge m c)}
    {a b : Fin m → Bool}
    (R : ResidualFreshTrail m c U a b)
    (h : ¬ R.Maximal) :
    ∃ e : CountedBinaryEdge m c,
      ∃ heU : e ∈ U,
      ∃ fresh : e ∉ R.trail.used,
        countedEdgeSource m c e = b := by
  classical
  unfold ResidualFreshTrail.Maximal at h
  push_neg at h
  obtain ⟨e, heU, hs, fresh⟩ := h
  exact ⟨e, heU, fresh, hs⟩

end GRWTSK.ProbabilityAndMathematicalStatistics.ChowlaSofic
