# Complete source: GRWTSK.NumberTheory.Zeta.Riemann.Checks.PinnedPrimeWeightAmplitudeEnvelopeControls

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ed1e6e3713b5aa5aee75e9474173337ad8e6de17` · SHA-256 `808f93e329bd0d2e21d89e3828745fd6b97a426e49d7ba5bf72ec15466f06388`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI ChatGPT. -/
import GRWTSK.NumberTheory.Zeta.Riemann.ClauseIndexedPinnedPrimeWeightAmplitude
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section

namespace GRWTSK.RiemannHypothesis.Checks.PinnedPrimeWeightAmplitudeEnvelopeControls

open GRWTSK.Logic.Satisfiability
open GRWTSK.RiemannHypothesis

/-- Canonical polarity used only to expose the numerical arity labels. -/
def positivePolarity (k : ℕ) : ClausePolarity k :=
  fun _ => true

/-- At every dyadic scale, a nonnegative bounded-deficit allowance is exactly
the denominator-free amplitude requirement. -/
theorem concrete_dyadic_deficit_iff_amplitude
    (j : ℕ) {C v E : ℝ} (hE : 0 ≤ E) :
    pinnedPrimeWeightBoundedDeficit
        (dyadicScale j) C v ≤ E ↔
      pinnedPrimeWeightAmplitudeRequirement
        (dyadicScale j) C v E :=
  pinnedPrimeWeightBoundedDeficit_le_iff_amplitudeRequirement
    (dyadicScale_pos j) hE

/-- Zero optimized deficit is exactly complete amplitude coverage at a dyadic
scale. -/
theorem concrete_dyadic_zero_deficit_iff_full_capacity
    (j : ℕ) {C v : ℝ} :
    pinnedPrimeWeightBoundedDeficit
        (dyadicScale j) C v = 0 ↔
      pinnedPrimeWeightAmplitudeRequirement
        (dyadicScale j) C v 0 :=
  pinnedPrimeWeightBoundedDeficit_eq_zero_iff_amplitudeRequirement
    (dyadicScale_pos j)

/-- Hostile control: an allowance already exceeding the target makes the
amplitude inequality vacuous rather than proving a positive lower bound. -/
theorem admitted_error_can_make_requirement_vacuous
    (j : ℕ) {C v E : ℝ}
    (hC : 0 ≤ C)
    (htarget : |thetaError v| + 1 ≤ E) :
    pinnedPrimeWeightAmplitudeRequirement
      (dyadicScale j) C v E :=
  pinnedPrimeWeightAmplitudeRequirement_of_target_le_error
    (dyadicScale j) hC htarget

/-- Every immutable coefficient-rule deficit criterion passes the exact
source-independent amplitude-envelope test. -/
theorem immutable_rule_requires_amplitude_envelope
    {rule : PinnedPrimeWeightCoefficientRule} {ρ : ℝ}
    (hcriterion :
      PinnedPrimeWeightRuleDeficitCriterionAt rule ρ) :
    PinnedPrimeWeightAmplitudeCriterionAt ρ :=
  pinnedPrimeWeightRuleDeficitCriterion_to_amplitudeCriterion
    hcriterion

/-- The fixed-amplitude arity-three condition retains exactly the `7/8`
threshold. -/
theorem concrete_three_clause_fixed_amplitude
    (C : ℝ) :
    ClauseIndexedPinnedPrimeWeightFixedCapacityAmplitudeCriterion
        C (positivePolarity 3) ↔
      PinnedPrimeWeightFixedCapacityAmplitudeCriterionAt
        C ((7 : ℝ) / 8) :=
  threeClauseIndexedPinnedPrimeWeightFixedCapacityAmplitudeCriterion_iff
    C (positivePolarity 3)

/-- The fixed-amplitude arity-two condition retains exactly the `3/4`
threshold. -/
theorem concrete_two_clause_fixed_amplitude
    (C : ℝ) :
    ClauseIndexedPinnedPrimeWeightFixedCapacityAmplitudeCriterion
        C (positivePolarity 2) ↔
      PinnedPrimeWeightFixedCapacityAmplitudeCriterionAt
        C ((3 : ℝ) / 4) :=
  twoClauseIndexedPinnedPrimeWeightFixedCapacityAmplitudeCriterion_iff
    C (positivePolarity 2)

/-- The exact remaining analytic obligations after eliminating the residual
and bounded-coefficient optimization variables. -/
def requiredAmplitudeEnvelopeObligations : List String :=
  ["prove the pinned current-octave amplitude requirement at threshold 7/8",
   "prove the pinned current-octave amplitude requirement at threshold 3/4",
   "keep the target-after-error positive where a genuine amplitude lower bound is claimed",
   "supply one fixed nonnegative capacity budget for each fixed-capacity route",
   "derive any interpreted coefficient from an independent arithmetic source law",
   "account for normalization, endpoints, omitted prime powers, and every residual channel"]

/-- Explicit nonimplication boundary. -/
def prohibitedPromotions : List String :=
  ["amplitude requirement definition -> amplitude estimate",
   "capacity/amplitude equivalence -> seven-eighths criterion",
   "capacity/amplitude equivalence -> three-quarters criterion",
   "nonnegative error envelope -> positive target-after-error",
   "nonzero pinned amplitude -> sufficient pinned amplitude size",
   "constant analytic optimizer -> arithmetic coefficient source law",
   "clause arity -> pinned amplitude lower bound",
   "MAX-3SAT hardness -> theta or prime estimate",
   "conditional amplitude endpoint -> unconditional Riemann Hypothesis"]

end GRWTSK.RiemannHypothesis.Checks.PinnedPrimeWeightAmplitudeEnvelopeControls
```
