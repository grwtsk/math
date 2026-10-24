/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI ChatGPT.
Mathlib results retain upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Zeta.Riemann.PinnedPrimeWeightAmplitudeEnvelope
import GRWTSK.NumberTheory.Zeta.Riemann.ClauseIndexedPinnedPrimeWeightCapacity
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section

/-!
# Clause-indexed pinned prime-weight amplitude envelopes

Clause arity contributes only the numerical threshold.  This module rewrites
the exact bounded-capacity obligation as its equivalent stagewise amplitude
inequality and transports independently supplied fixed-amplitude criteria
through the existing recurrence endpoint.

No clause-counting statement supplies an amplitude estimate, coefficient
source law, prime-density theorem, or threshold criterion.

SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED /
EQUALITY_ONLY_CLAUSE_INDEXED_AMPLITUDE /
PINNED_AMPLITUDE_ESTIMATE_OPEN /
NO_COMPLEXITY_TO_ZETA_TRANSFER / NO_RH_CLAIM.
-/

namespace GRWTSK.RiemannHypothesis

open GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Satisfiability

/-- Clause-arity index for the variable-budget amplitude-envelope criterion. -/
abbrev ClauseIndexedPinnedPrimeWeightAmplitudeCriterion
    {k : ℕ} (polarity : ClausePolarity k) : Prop :=
  PinnedPrimeWeightAmplitudeCriterionAt
    (countedSuccessFraction polarity)

/-- Clause-arity index for one fixed coefficient budget and its exact
amplitude-envelope criterion. -/
abbrev ClauseIndexedPinnedPrimeWeightFixedCapacityAmplitudeCriterion
    (C : ℝ) {k : ℕ} (polarity : ClausePolarity k) : Prop :=
  PinnedPrimeWeightFixedCapacityAmplitudeCriterionAt C
    (countedSuccessFraction polarity)

/-- At every clause arity, the variable-budget capacity predicate is exactly
its amplitude-envelope form. -/
theorem clauseIndexedPinnedPrimeWeightCapacityCriterion_iff_amplitudeCriterion
    {k : ℕ} (polarity : ClausePolarity k) :
    ClauseIndexedPinnedPrimeWeightCapacityCriterion polarity ↔
      ClauseIndexedPinnedPrimeWeightAmplitudeCriterion polarity :=
  pinnedPrimeWeightCapacityCriterion_iff_amplitudeCriterion
    (countedSuccessFraction polarity)

/-- At every clause arity, the fixed-capacity predicate is exactly its
amplitude-envelope form. -/
theorem clauseIndexedPinnedPrimeWeightFixedCapacityCriterion_iff_amplitudeCriterion
    (C : ℝ) {k : ℕ} (polarity : ClausePolarity k) :
    ClauseIndexedPinnedPrimeWeightFixedCapacityCriterion C polarity ↔
      ClauseIndexedPinnedPrimeWeightFixedCapacityAmplitudeCriterion
        C polarity :=
  pinnedPrimeWeightFixedCapacityCriterion_iff_amplitudeCriterion
    C (countedSuccessFraction polarity)

/-- Every immutable rule-deficit criterion satisfies the clause-indexed
source-independent amplitude requirement. -/
theorem clauseIndexedPinnedPrimeWeightDeficit_to_amplitude
    {rule : PinnedPrimeWeightCoefficientRule}
    {k : ℕ} {polarity : ClausePolarity k}
    (hcriterion :
      ClauseIndexedPinnedPrimeWeightDeficitCriterion rule polarity) :
    ClauseIndexedPinnedPrimeWeightAmplitudeCriterion polarity :=
  pinnedPrimeWeightRuleDeficitCriterion_to_amplitudeCriterion hcriterion

/-- A fixed amplitude-envelope criterion supplies the clause-indexed nonlinear
recurrence. -/
theorem clauseIndexedPinnedPrimeWeightFixedAmplitude_to_recurrence
    {C : ℝ} {k : ℕ} {polarity : ClausePolarity k}
    (hcriterion :
      ClauseIndexedPinnedPrimeWeightFixedCapacityAmplitudeCriterion
        C polarity) :
    ClauseIndexedThetaRecurrence polarity :=
  pinnedPrimeWeightFixedCapacityAmplitudeCriterion_to_recurrence
    hcriterion

/-- Equality-only one-step transport from a fixed amplitude criterion at arity
`k+1` to the theta threshold indexed by arity `k`. -/
theorem clauseIndexedPinnedPrimeWeightFixedAmplitude_to_previous
    {k : ℕ} (C : ℝ)
    (nextPolarity : ClausePolarity (k + 1))
    (currentPolarity : ClausePolarity k)
    (hlower :
      (3 : ℝ) / 4 ≤ countedSuccessFraction nextPolarity)
    (hcriterion :
      ClauseIndexedPinnedPrimeWeightFixedCapacityAmplitudeCriterion
        C nextPolarity)
    (htheta :
      AllDyadicThetaAtThreshold
        (countedSuccessFraction nextPolarity)) :
    AllDyadicThetaAtThreshold
      (countedSuccessFraction currentPolarity) :=
  clauseIndexedRecurrence_to_previous
    nextPolarity currentPolarity hlower
    (clauseIndexedPinnedPrimeWeightFixedAmplitude_to_recurrence
      hcriterion)
    htheta

/-- Arity three names exactly the variable-budget amplitude criterion at
`7/8`. -/
theorem threeClauseIndexedPinnedPrimeWeightAmplitudeCriterion_iff
    (polarity : ClausePolarity 3) :
    ClauseIndexedPinnedPrimeWeightAmplitudeCriterion polarity ↔
      PinnedPrimeWeightAmplitudeCriterionAt ((7 : ℝ) / 8) := by
  unfold ClauseIndexedPinnedPrimeWeightAmplitudeCriterion
  rw [threeLiteralClauseThreshold]

/-- Arity two names exactly the variable-budget amplitude criterion at
`3/4`. -/
theorem twoClauseIndexedPinnedPrimeWeightAmplitudeCriterion_iff
    (polarity : ClausePolarity 2) :
    ClauseIndexedPinnedPrimeWeightAmplitudeCriterion polarity ↔
      PinnedPrimeWeightAmplitudeCriterionAt ((3 : ℝ) / 4) := by
  unfold ClauseIndexedPinnedPrimeWeightAmplitudeCriterion
  rw [twoLiteralClauseThreshold]

/-- Arity three names exactly the fixed-capacity amplitude criterion at
`7/8`. -/
theorem threeClauseIndexedPinnedPrimeWeightFixedCapacityAmplitudeCriterion_iff
    (C : ℝ) (polarity : ClausePolarity 3) :
    ClauseIndexedPinnedPrimeWeightFixedCapacityAmplitudeCriterion
        C polarity ↔
      PinnedPrimeWeightFixedCapacityAmplitudeCriterionAt
        C ((7 : ℝ) / 8) := by
  unfold ClauseIndexedPinnedPrimeWeightFixedCapacityAmplitudeCriterion
  rw [threeLiteralClauseThreshold]

/-- Arity two names exactly the fixed-capacity amplitude criterion at
`3/4`. -/
theorem twoClauseIndexedPinnedPrimeWeightFixedCapacityAmplitudeCriterion_iff
    (C : ℝ) (polarity : ClausePolarity 2) :
    ClauseIndexedPinnedPrimeWeightFixedCapacityAmplitudeCriterion
        C polarity ↔
      PinnedPrimeWeightFixedCapacityAmplitudeCriterionAt
        C ((3 : ℝ) / 4) := by
  unfold ClauseIndexedPinnedPrimeWeightFixedCapacityAmplitudeCriterion
  rw [twoLiteralClauseThreshold]

/-- Conditional two-step endpoint through independently supplied fixed
amplitude-envelope criteria at arities three and two.  Both analytic amplitude
estimates remain explicit theorem arguments. -/
theorem clauseIndexedPinnedPrimeWeightFixedAmplitudeCriteria_to_rh
    (C3 C2 : ℝ)
    (polarity3 : ClausePolarity 3)
    (polarity2 : ClausePolarity 2)
    (htheta :
      AllDyadicThetaAtThreshold
        (countedSuccessFraction polarity3))
    (hcriterion3 :
      ClauseIndexedPinnedPrimeWeightFixedCapacityAmplitudeCriterion
        C3 polarity3)
    (hcriterion2 :
      ClauseIndexedPinnedPrimeWeightFixedCapacityAmplitudeCriterion
        C2 polarity2) :
    _root_.RiemannHypothesis := by
  apply clauseIndexedThreeTwoRecurrences_to_rh
    polarity3 polarity2 htheta
  · exact
      clauseIndexedPinnedPrimeWeightFixedAmplitude_to_recurrence
        hcriterion3
  · exact
      clauseIndexedPinnedPrimeWeightFixedAmplitude_to_recurrence
        hcriterion2

end GRWTSK.RiemannHypothesis
