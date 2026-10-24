/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI ChatGPT. -/
import GRWTSK.NumberTheory.Zeta.Riemann.ClauseIndexedPinnedPrimeWeightCapacity
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section

namespace GRWTSK.RiemannHypothesis.Checks.PinnedPrimeWeightBoundedCapacityControls

open GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Satisfiability
open GRWTSK.RiemannHypothesis

/-- Canonical polarity used only to expose the numerical arity labels. -/
def positivePolarity (k : ℕ) : ClausePolarity k :=
  fun _ => true

/-- The fixed-capacity arity-three condition retains exactly the `7/8`
threshold. -/
theorem concrete_three_clause_fixed_capacity
    (C : ℝ) :
    ClauseIndexedPinnedPrimeWeightFixedCapacityCriterion
        C (positivePolarity 3) ↔
      PinnedPrimeWeightFixedCapacityCriterionAt
        C ((7 : ℝ) / 8) :=
  threeClauseIndexedPinnedPrimeWeightFixedCapacityCriterion_iff
    C (positivePolarity 3)

/-- The fixed-capacity arity-two condition retains exactly the `3/4`
threshold. -/
theorem concrete_two_clause_fixed_capacity
    (C : ℝ) :
    ClauseIndexedPinnedPrimeWeightFixedCapacityCriterion
        C (positivePolarity 2) ↔
      PinnedPrimeWeightFixedCapacityCriterionAt
        C ((3 : ℝ) / 4) :=
  twoClauseIndexedPinnedPrimeWeightFixedCapacityCriterion_iff
    C (positivePolarity 2)

/-- Pointwise hostile control: no coefficient inside a declared absolute
budget can beat the optimized bounded deficit. -/
theorem coefficient_inside_budget_cannot_beat_capacity
    {X : ℕ} {C c v : ℝ} (hc : |c| ≤ C) :
    pinnedPrimeWeightBoundedDeficit X C v ≤
      pinnedPrimeWeightCanonicalDeficit X c v :=
  pinnedPrimeWeightBoundedDeficit_le_canonicalDeficit hc

/-- A small bounded deficit at a dyadic stage forces the precise
coefficient-weighted amplitude inequality. -/
theorem dyadic_capacity_deficit_forces_amplitude
    (j : ℕ) {C v E : ℝ}
    (hE :
      pinnedPrimeWeightBoundedDeficit
          (dyadicScale j) C v ≤ E) :
    (dyadicScale j : ℝ) *
        ((|thetaError v| + 1) - E) ≤
      C * (pinnedPrimeWeightedAmplitude (dyadicScale j))^2 :=
  pinnedPrimeWeight_amplitude_sq_necessary
    (dyadicScale_pos j) hE

/-- A zero coefficient budget leaves the full positive target amplitude as the
unavoidable deficit. -/
theorem zero_budget_is_complete_deficit
    (X : ℕ) (v : ℝ) :
    pinnedPrimeWeightBoundedDeficit X 0 v =
      |thetaError v| + 1 :=
  pinnedPrimeWeightBoundedDeficit_zero_budget X v

/-- A vanishing pinned amplitude leaves the same complete deficit for every
coefficient budget. -/
theorem zero_amplitude_is_complete_deficit
    {X : ℕ} (hA : pinnedPrimeWeightedAmplitude X = 0)
    (C v : ℝ) :
    pinnedPrimeWeightBoundedDeficit X C v =
      |thetaError v| + 1 :=
  pinnedPrimeWeightBoundedDeficit_of_amplitude_eq_zero hA C v

/-- The constant optimizer is an analytic extremizer and explicitly not a
source-derived coefficient rule. -/
theorem constant_optimizer_source_label
    (C : ℝ) :
    (pinnedPrimeWeightConstantCapacityRule C).sourceIdentity =
      "ANALYTIC OPTIMIZER ONLY: constant coefficient; no source identity" := by
  rfl

/-- Mathematical obligations still needed to inhabit either live threshold
criterion. -/
def requiredCapacityObligations : List String :=
  ["a lower bound for the pinned weighted amplitude strong enough to meet the capacity inequality",
   "decay of the bounded optimal deficit at exponent Q(rho)+eta/2",
   "one fixed nonnegative coefficient budget for the fixed-capacity route",
   "an independent arithmetic source law if the optimizer is to be interpreted as an explicit-formula coefficient",
   "complete normalization, endpoint, and omitted-channel accounting"]

/-- Explicit nonimplication boundary. -/
def prohibitedPromotions : List String :=
  ["coefficient optimization -> arithmetic source identity",
   "capacity attainment -> explicit-formula coefficient law",
   "bounded deficit definition -> bounded-deficit decay theorem",
   "nonzero pinned amplitude -> sufficient pinned amplitude size",
   "fixed coefficient budget -> threshold contraction",
   "clause arity -> capacity estimate",
   "MAX-3SAT hardness -> pinned amplitude lower bound",
   "conditional capacity endpoint -> unconditional Riemann Hypothesis"]

end GRWTSK.RiemannHypothesis.Checks.PinnedPrimeWeightBoundedCapacityControls
