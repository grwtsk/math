/- Copyright (c) 2026 R.A. Jacob Martone. MIT.
Human mathematical direction: R.A. Jacob Martone. Formalization assistance: OpenAI ChatGPT.
Mathlib results retain upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Zeta.Riemann.PinnedPrimeWeightBoundedCapacity
import GRWTSK.NumberTheory.Zeta.Riemann.ClauseIndexedPinnedPrimeWeightDeficit
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section

/-!
# Clause-indexed pinned prime-weight capacity criteria

Clause arity supplies only the numerical threshold.  The bounded-capacity
criteria solve the coefficient optimization problem but do not supply an
arithmetic source law or the required bounded-deficit decay theorem.

SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED /
EQUALITY_ONLY_CLAUSE_INDEXED_CAPACITY /
PINNED_AMPLITUDE_LOWER_BOUND_OPEN /
NO_COMPLEXITY_TO_ZETA_TRANSFER / NO_RH_CLAIM.
-/

namespace GRWTSK.RiemannHypothesis

open GRWTSK.Logic.Satisfiability

/-- Clause-arity index for the necessary variable-budget capacity condition. -/
abbrev ClauseIndexedPinnedPrimeWeightCapacityCriterion
    {k : ℕ} (polarity : ClausePolarity k) : Prop :=
  PinnedPrimeWeightCapacityCriterionAt
    (countedSuccessFraction polarity)

/-- Clause-arity index for one coefficient budget fixed before `eta`. -/
abbrev ClauseIndexedPinnedPrimeWeightFixedCapacityCriterion
    (C : ℝ) {k : ℕ} (polarity : ClausePolarity k) : Prop :=
  PinnedPrimeWeightFixedCapacityCriterionAt C
    (countedSuccessFraction polarity)

/-- Every clause-indexed immutable-rule criterion satisfies the corresponding
source-independent capacity obstruction. -/
theorem clauseIndexedPinnedPrimeWeightDeficit_to_capacity
    {rule : PinnedPrimeWeightCoefficientRule}
    {k : ℕ} {polarity : ClausePolarity k}
    (hcriterion :
      ClauseIndexedPinnedPrimeWeightDeficitCriterion rule polarity) :
    ClauseIndexedPinnedPrimeWeightCapacityCriterion polarity :=
  pinnedPrimeWeightRuleDeficitCriterion_to_capacityCriterion hcriterion

/-- A fixed-capacity criterion supplies the clause-indexed nonlinear
recurrence through its constant optimizer. -/
theorem clauseIndexedPinnedPrimeWeightFixedCapacity_to_recurrence
    {C : ℝ} {k : ℕ} {polarity : ClausePolarity k}
    (hcriterion :
      ClauseIndexedPinnedPrimeWeightFixedCapacityCriterion C polarity) :
    ClauseIndexedThetaRecurrence polarity :=
  pinnedPrimeWeightFixedCapacityCriterion_to_recurrence hcriterion

/-- Equality-only one-step transport from a fixed-capacity criterion at arity
`k+1` to the threshold indexed by arity `k`. -/
theorem clauseIndexedPinnedPrimeWeightFixedCapacity_to_previous
    {k : ℕ} (C : ℝ)
    (nextPolarity : ClausePolarity (k + 1))
    (currentPolarity : ClausePolarity k)
    (hlower :
      (3 : ℝ) / 4 ≤ countedSuccessFraction nextPolarity)
    (hcriterion :
      ClauseIndexedPinnedPrimeWeightFixedCapacityCriterion
        C nextPolarity)
    (htheta :
      AllDyadicThetaAtThreshold
        (countedSuccessFraction nextPolarity)) :
    AllDyadicThetaAtThreshold
      (countedSuccessFraction currentPolarity) :=
  clauseIndexedRecurrence_to_previous
    nextPolarity currentPolarity hlower
    (clauseIndexedPinnedPrimeWeightFixedCapacity_to_recurrence
      hcriterion)
    htheta

/-- Arity three names exactly the necessary capacity condition at `7/8`. -/
theorem threeClauseIndexedPinnedPrimeWeightCapacityCriterion_iff
    (polarity : ClausePolarity 3) :
    ClauseIndexedPinnedPrimeWeightCapacityCriterion polarity ↔
      PinnedPrimeWeightCapacityCriterionAt ((7 : ℝ) / 8) := by
  unfold ClauseIndexedPinnedPrimeWeightCapacityCriterion
  rw [threeLiteralClauseThreshold]

/-- Arity two names exactly the necessary capacity condition at `3/4`. -/
theorem twoClauseIndexedPinnedPrimeWeightCapacityCriterion_iff
    (polarity : ClausePolarity 2) :
    ClauseIndexedPinnedPrimeWeightCapacityCriterion polarity ↔
      PinnedPrimeWeightCapacityCriterionAt ((3 : ℝ) / 4) := by
  unfold ClauseIndexedPinnedPrimeWeightCapacityCriterion
  rw [twoLiteralClauseThreshold]

/-- Arity three names exactly the fixed-capacity criterion at `7/8`. -/
theorem threeClauseIndexedPinnedPrimeWeightFixedCapacityCriterion_iff
    (C : ℝ) (polarity : ClausePolarity 3) :
    ClauseIndexedPinnedPrimeWeightFixedCapacityCriterion C polarity ↔
      PinnedPrimeWeightFixedCapacityCriterionAt C ((7 : ℝ) / 8) := by
  unfold ClauseIndexedPinnedPrimeWeightFixedCapacityCriterion
  rw [threeLiteralClauseThreshold]

/-- Arity two names exactly the fixed-capacity criterion at `3/4`. -/
theorem twoClauseIndexedPinnedPrimeWeightFixedCapacityCriterion_iff
    (C : ℝ) (polarity : ClausePolarity 2) :
    ClauseIndexedPinnedPrimeWeightFixedCapacityCriterion C polarity ↔
      PinnedPrimeWeightFixedCapacityCriterionAt C ((3 : ℝ) / 4) := by
  unfold ClauseIndexedPinnedPrimeWeightFixedCapacityCriterion
  rw [twoLiteralClauseThreshold]

/-- Conditional two-step endpoint through two independently supplied fixed
capacity criteria.  The hard bounded-deficit estimates remain explicit theorem
arguments. -/
theorem clauseIndexedPinnedPrimeWeightFixedCapacityCriteria_to_rh
    (C3 C2 : ℝ)
    (polarity3 : ClausePolarity 3)
    (polarity2 : ClausePolarity 2)
    (htheta :
      AllDyadicThetaAtThreshold
        (countedSuccessFraction polarity3))
    (hcriterion3 :
      ClauseIndexedPinnedPrimeWeightFixedCapacityCriterion
        C3 polarity3)
    (hcriterion2 :
      ClauseIndexedPinnedPrimeWeightFixedCapacityCriterion
        C2 polarity2) :
    _root_.RiemannHypothesis := by
  apply clauseIndexedThreeTwoRecurrences_to_rh
    polarity3 polarity2 htheta
  · exact
      clauseIndexedPinnedPrimeWeightFixedCapacity_to_recurrence
        hcriterion3
  · exact
      clauseIndexedPinnedPrimeWeightFixedCapacity_to_recurrence
        hcriterion2

end GRWTSK.RiemannHypothesis
