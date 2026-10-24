import FormalResearch.RiemannHypothesis.Conversation.RationalChamberSelector
import FormalResearch.RiemannHypothesis.Conversation.NativeSuperlevelConsumer

/-!
# Rational chamber selection preserves actual weighted native superlevels

The least-index rational selector is consumed by the existing atomic measure
and the unchanged finite native prime panel. In a gap containing none of
that panel's normalized storage heights, it recovers the exact superlevel
mass and the exact native Q curve. No source sample, height, weight, panel
or critical-level convention is changed. This is finite chamber recovery,
not an arithmetic bound or an all-real moving-seam completion theorem.

Source: audited RH conversation HC08. Human direction: grwtsk contributors.
Local formalization: OpenAI Codex. Mathlib measure and rational-density
infrastructure retain their qualified upstream identities.
-/

set_option autoImplicit false

namespace GRWTSK.RiemannHypothesis.Conversation.RationalSuperlevelConsumer

open AtomicSuperlevels RationalChamberSelector
open scoped ENNReal
noncomputable section

theorem chamber_preserves_superlevel_mass {ι : Type*} (s : Finset ι)
    (weights : ι → ℝ≥0∞) (heights : ι → ℝ) {a b alpha beta : ℝ}
    (ha : a < alpha ∧ alpha < b) (hb : a < beta ∧ beta < b)
    (hgap : ∀ i ∈ s, heights i ≤ a ∨ b ≤ heights i) :
    superlevelMass s weights heights alpha = superlevelMass s weights heights beta := by
  classical
  unfold superlevelMass
  apply Finset.sum_congr rfl
  intro i hi
  rcases hgap i hi with hlow | hhigh
  · have hA : ¬ alpha ≤ heights i := by linarith
    have hB : ¬ beta ≤ heights i := by linarith
    simp [hA, hB]
  · have hA : alpha ≤ heights i := by linarith
    have hB : beta ≤ heights i := by linarith
    simp [hA, hB]

theorem selected_rational_recovers_atomic_mass {ι : Type*} (s : Finset ι)
    (weights : ι → ℝ≥0∞) (heights : ι → ℝ)
    (enumeration : ℕ → ℚ) (hsurj : Function.Surjective enumeration)
    {a b theta : ℝ} (hab : a < b) (htheta : a < theta ∧ theta < b)
    (hgap : ∀ i ∈ s, heights i ≤ a ∨ b ≤ heights i) :
    superlevelMass s weights heights (selectedLevel enumeration hsurj a b hab) =
      superlevelMass s weights heights theta :=
  chamber_preserves_superlevel_mass s weights heights
    (selected_level_in_chamber enumeration hsurj hab) htheta hgap

theorem selected_rational_recovers_actual_native_Q (N : ℕ) (s : Finset ℕ) (H : ℝ)
    (enumeration : ℕ → ℚ) (hsurj : Function.Surjective enumeration)
    {a b theta : ℝ} (hab : a < b) (htheta : a < theta ∧ theta < b)
    (hgap : ∀ j ∈ s, NativeSuperlevelConsumer.profile N s H j ≤ a ∨
      b ≤ NativeSuperlevelConsumer.profile N s H j) :
    NativeSuperlevelConsumer.Q N s H (selectedLevel enumeration hsurj a b hab) =
      NativeSuperlevelConsumer.Q N s H theta :=
  selected_rational_recovers_atomic_mass s (NativeSuperlevelConsumer.probability N s)
    (NativeSuperlevelConsumer.profile N s H) enumeration hsurj hab htheta hgap

end
end GRWTSK.RiemannHypothesis.Conversation.RationalSuperlevelConsumer
