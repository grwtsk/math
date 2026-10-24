import FormalResearch.RiemannHypothesis.Conversation.FirstCrossingConsumer

/-!
# Least forbidden rise selects a positive prime suffix

The selector is constructed from the actual ordinary-prime primitive, with
the same entrance and every integer horizon. Batch 13's positive suffix is
proved from leastness, rather than supplied as an independent test function.
No crossing or arithmetic Green cap is asserted to exist.

Human direction: grwtsk contributors. Formal selector and Lean proof:
OpenAI Codex. Mathlib supplies natural least-witness selection.
-/

set_option autoImplicit false

namespace GRWTSK.RiemannHypothesis.Conversation.FirstCrossingSelection

open OpenArithmeticSuppliers FirstCrossingGreen
noncomputable section

theorem least_forbidden_rise_selects_positive_suffix (N : ℕ) {R : ℝ} (hR : 0 ≤ R)
    (hex : ∃ K : ℕ, R < ordinaryPrimePrimitive (N + K : ℕ) - ordinaryPrimePrimitive N) :
    ∃ K : ℕ, 0 < K ∧ R < actualSuffix N K 0 ∧
      (∀ j : ℕ, j < K → 0 < actualSuffix N K j) ∧ actualSuffix N K K = 0 := by
  let K := Nat.find hex
  have hfinal : R < ordinaryPrimePrimitive (N + K : ℕ) - ordinaryPrimePrimitive N :=
    Nat.find_spec hex
  have hK : 0 < K := by
    by_contra h
    have hz : K = 0 := by omega
    rw [hz, Nat.add_zero, sub_self] at hfinal
    linarith
  refine ⟨K, hK, ?_, ?_, actualSuffix_terminal N K⟩
  · simpa only [actualSuffix, Nat.add_zero] using hfinal
  · intro j hj
    have hprior : ordinaryPrimePrimitive (N + j : ℕ) - ordinaryPrimePrimitive N ≤ R :=
      le_of_not_gt (Nat.find_min hex hj)
    unfold actualSuffix
    linarith

end
end GRWTSK.RiemannHypothesis.Conversation.FirstCrossingSelection
