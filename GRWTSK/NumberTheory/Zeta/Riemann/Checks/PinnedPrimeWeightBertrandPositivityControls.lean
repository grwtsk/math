/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI ChatGPT. -/
import GRWTSK.NumberTheory.Zeta.Riemann.ClauseIndexedPinnedPrimeWeightBertrandRatio
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section

namespace GRWTSK.RiemannHypothesis.Checks.PinnedPrimeWeightBertrandPositivityControls

open GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Satisfiability
open GRWTSK.RiemannHypothesis

/-- Canonical polarity used only to expose the numerical clause thresholds. -/
def positivePolarity (k : ℕ) : ClausePolarity k :=
  fun _ => true

/-- Every dyadic prime window is nonempty by the pinned Bertrand theorem. -/
theorem concrete_dyadic_prime_window_nonempty
    (j : ℕ) :
    (thetaPrimeWindow (dyadicScale j)).Nonempty :=
  thetaPrimeWindow_nonempty_of_ne_zero
    (dyadicScale j) (Nat.ne_of_gt (dyadicScale_pos j))

/-- The actual pinned amplitude is strictly positive on every dyadic stage. -/
theorem concrete_dyadic_amplitude_positive
    (j : ℕ) :
    0 < pinnedPrimeWeightedAmplitude (dyadicScale j) :=
  pinnedPrimeWeightedAmplitude_dyadic_pos j

/-- Hence the required-capacity denominator never vanishes on a dyadic stage. -/
theorem concrete_dyadic_amplitude_ne_zero
    (j : ℕ) :
    pinnedPrimeWeightedAmplitude (dyadicScale j) ≠ 0 :=
  pinnedPrimeWeightedAmplitude_dyadic_ne_zero j

/-- The guarded finite-capacity predicate is exactly its guard-free form on
every dyadic stage. -/
theorem concrete_dyadic_finiteCapacity_iff_bertrandRatio
    (j : ℕ) {C v E : ℝ} :
    pinnedPrimeWeightFiniteCapacityRequirement
        (dyadicScale j) C v E ↔
      pinnedPrimeWeightBertrandRatioRequirement
        (dyadicScale j) C v E :=
  pinnedPrimeWeightFiniteCapacityRequirement_iff_bertrandRatioRequirement
    (Nat.ne_of_gt (dyadicScale_pos j))

/-- On a nonvacuous stage, the finite-capacity predicate is exactly the ratio
bound. -/
theorem concrete_dyadic_nonvacuous_finiteCapacity_iff_ratio_le
    (j : ℕ) {C v E : ℝ}
    (hlt : E < |thetaError v| + 1) :
    pinnedPrimeWeightFiniteCapacityRequirement
        (dyadicScale j) C v E ↔
      pinnedPrimeWeightRequiredCapacity
        (dyadicScale j) v E ≤ C := by
  rw [concrete_dyadic_finiteCapacity_iff_bertrandRatio j]
  unfold pinnedPrimeWeightBertrandRatioRequirement
  constructor
  · rintro (hcovered | hratio)
    · linarith
    · exact hratio
  · intro hratio
    exact Or.inr hratio

/-- With a nonnegative budget, the original amplitude inequality also reduces
exactly to the ratio bound on every nonvacuous dyadic stage. -/
theorem concrete_dyadic_nonvacuous_amplitude_iff_ratio_le
    (j : ℕ) {C v E : ℝ}
    (hC : 0 ≤ C)
    (hlt : E < |thetaError v| + 1) :
    pinnedPrimeWeightAmplitudeRequirement
        (dyadicScale j) C v E ↔
      pinnedPrimeWeightRequiredCapacity
        (dyadicScale j) v E ≤ C := by
  rw [
    pinnedPrimeWeightAmplitudeRequirement_iff_bertrandRatioRequirement
      (dyadicScale_pos j) hC]
  unfold pinnedPrimeWeightBertrandRatioRequirement
  constructor
  · rintro (hcovered | hratio)
    · linarith
    · exact hratio
  · intro hratio
    exact Or.inr hratio

/-- Arity three retains exactly the fixed Bertrand ratio criterion at `7/8`. -/
theorem concrete_three_clause_fixed_bertrand_ratio
    (C : ℝ) :
    ClauseIndexedPinnedPrimeWeightFixedBertrandRatioCriterion
        C (positivePolarity 3) ↔
      PinnedPrimeWeightFixedBertrandRatioCriterionAt
        C ((7 : ℝ) / 8) :=
  threeClauseIndexedPinnedPrimeWeightFixedBertrandRatioCriterion_iff
    C (positivePolarity 3)

/-- Arity two retains exactly the fixed Bertrand ratio criterion at `3/4`. -/
theorem concrete_two_clause_fixed_bertrand_ratio
    (C : ℝ) :
    ClauseIndexedPinnedPrimeWeightFixedBertrandRatioCriterion
        C (positivePolarity 2) ↔
      PinnedPrimeWeightFixedBertrandRatioCriterionAt
        C ((3 : ℝ) / 4) :=
  twoClauseIndexedPinnedPrimeWeightFixedBertrandRatioCriterion_iff
    C (positivePolarity 2)

/-- The exact obligations remaining after denominator nonvanishing is proved. -/
def requiredBertrandRatioObligations : List String :=
  ["prove one uniform required-capacity ratio bound at threshold 7/8",
   "prove one uniform required-capacity ratio bound at threshold 3/4",
   "control the positive remaining target on every nonvacuous next-octave point",
   "derive any interpreted coefficient from an independent arithmetic source law",
   "account for normalization, endpoints, omitted prime powers, and every residual channel"]

/-- Explicit nonimplication boundary. -/
def prohibitedPromotions : List String :=
  ["Bertrand prime-window occupancy -> uniform ratio bound",
   "strictly positive amplitude -> quantitatively sufficient amplitude",
   "nonzero denominator -> bounded quotient",
   "prime existence -> explicit-formula coefficient law",
   "clause arity -> ratio estimate",
   "MAX-3SAT hardness -> prime or theta estimate",
   "conditional Bertrand-ratio endpoint -> unconditional Riemann Hypothesis"]

end GRWTSK.RiemannHypothesis.Checks.PinnedPrimeWeightBertrandPositivityControls
