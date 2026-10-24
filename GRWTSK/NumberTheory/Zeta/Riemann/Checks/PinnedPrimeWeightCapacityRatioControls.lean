/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI ChatGPT. -/
import GRWTSK.NumberTheory.Zeta.Riemann.ClauseIndexedPinnedPrimeWeightCapacityRatio
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section

namespace GRWTSK.RiemannHypothesis.Checks.PinnedPrimeWeightCapacityRatioControls

open GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Satisfiability
open GRWTSK.RiemannHypothesis

/-- Canonical polarity used only to expose numerical clause thresholds. -/
def positivePolarity (k : ℕ) : ClausePolarity k :=
  fun _ => true

/-- Every dyadic stage has the exact covered-target/nonzero-amplitude ratio
dichotomy. -/
theorem concrete_dyadic_amplitude_iff_ratio_dichotomy
    (j : ℕ) {C v E : ℝ} (hC : 0 ≤ C) :
    pinnedPrimeWeightAmplitudeRequirement
        (dyadicScale j) C v E ↔
      pinnedPrimeWeightFiniteCapacityRequirement
        (dyadicScale j) C v E :=
  pinnedPrimeWeightAmplitudeRequirement_iff_finiteCapacityRequirement
    (dyadicScale_pos j) hC

/-- Hostile control: because real division is totalized, the bare ratio becomes
zero when the pinned amplitude is zero. -/
theorem totalized_ratio_zero_of_zero_amplitude
    {X : ℕ} (hA : pinnedPrimeWeightedAmplitude X = 0)
    (v E : ℝ) :
    pinnedPrimeWeightRequiredCapacity X v E = 0 := by
  simp [pinnedPrimeWeightRequiredCapacity, hA]

/-- The zero value above is not a finite-capacity certificate on a nonvacuous
stage: the guarded finite requirement rejects it. -/
theorem zero_amplitude_nonvacuous_stage_has_no_finite_certificate
    {X : ℕ} {C v E : ℝ}
    (hA : pinnedPrimeWeightedAmplitude X = 0)
    (hlt : E < |thetaError v| + 1) :
    ¬ pinnedPrimeWeightFiniteCapacityRequirement X C v E := by
  intro hfinite
  rcases hfinite with hcovered | ⟨hA', _⟩
  · linarith
  · exact hA' hA

/-- On a nonvacuous dyadic stage, the amplitude requirement forces both a
nonzero pinned amplitude and a strictly positive budget. -/
theorem nonvacuous_dyadic_stage_forces_amplitude_and_budget
    (j : ℕ) {C v E : ℝ}
    (hlt : E < |thetaError v| + 1)
    (hrequirement :
      pinnedPrimeWeightAmplitudeRequirement
        (dyadicScale j) C v E) :
    pinnedPrimeWeightedAmplitude (dyadicScale j) ≠ 0 ∧
      0 < C := by
  constructor
  · exact
      pinnedPrimeWeightAmplitudeRequirement_nonvacuous_amplitude_ne_zero
        (dyadicScale_pos j) hlt hrequirement
  · exact
      pinnedPrimeWeightAmplitudeRequirement_nonvacuous_capacity_pos
        (dyadicScale_pos j) hlt hrequirement

/-- Once the amplitude is nonzero, the authored ratio is exactly the least
nonnegative coefficient budget satisfying the stage inequality. -/
theorem concrete_required_capacity_is_minimum
    {X : ℕ} {v E : ℝ}
    (hA : pinnedPrimeWeightedAmplitude X ≠ 0) :
    0 ≤ pinnedPrimeWeightRequiredCapacity X v E ∧
      pinnedPrimeWeightAmplitudeRequirement X
        (pinnedPrimeWeightRequiredCapacity X v E) v E ∧
      ∀ C : ℝ, 0 ≤ C →
        pinnedPrimeWeightAmplitudeRequirement X C v E →
          pinnedPrimeWeightRequiredCapacity X v E ≤ C :=
  pinnedPrimeWeightRequiredCapacity_is_least_nonnegative_budget hA

/-- Arity three retains exactly the fixed ratio criterion at `7/8`. -/
theorem concrete_three_clause_fixed_ratio
    (C : ℝ) :
    ClauseIndexedPinnedPrimeWeightFixedCapacityRatioCriterion
        C (positivePolarity 3) ↔
      PinnedPrimeWeightFixedCapacityRatioCriterionAt
        C ((7 : ℝ) / 8) :=
  threeClauseIndexedPinnedPrimeWeightFixedCapacityRatioCriterion_iff
    C (positivePolarity 3)

/-- Arity two retains exactly the fixed ratio criterion at `3/4`. -/
theorem concrete_two_clause_fixed_ratio
    (C : ℝ) :
    ClauseIndexedPinnedPrimeWeightFixedCapacityRatioCriterion
        C (positivePolarity 2) ↔
      PinnedPrimeWeightFixedCapacityRatioCriterionAt
        C ((3 : ℝ) / 4) :=
  twoClauseIndexedPinnedPrimeWeightFixedCapacityRatioCriterion_iff
    C (positivePolarity 2)

/-- Exact obligations remaining after the residual, coefficient optimization,
and totalized-ratio ambiguities have been removed. -/
def requiredCapacityRatioObligations : List String :=
  ["prove the guarded finite-capacity ratio criterion at threshold 7/8",
   "prove the guarded finite-capacity ratio criterion at threshold 3/4",
   "on each nonvacuous stage prove the pinned weighted amplitude is nonzero",
   "bound the required coefficient ratio uniformly by one budget fixed before eta",
   "derive any interpreted coefficient from an independent arithmetic source law",
   "account for normalization, endpoints, omitted prime powers, and every residual channel"]

/-- Explicit nonimplication boundary. -/
def prohibitedPromotions : List String :=
  ["finite ratio definition -> pinned amplitude estimate",
   "totalized ratio at zero amplitude -> finite-capacity certificate",
   "nonzero pinned amplitude -> ratio bound",
   "ratio bound -> arithmetic coefficient source law",
   "positive remaining target -> amplitude inequality",
   "clause arity -> ratio estimate",
   "MAX-3SAT hardness -> prime or theta estimate",
   "conditional ratio endpoint -> unconditional Riemann Hypothesis"]

end GRWTSK.RiemannHypothesis.Checks.PinnedPrimeWeightCapacityRatioControls
