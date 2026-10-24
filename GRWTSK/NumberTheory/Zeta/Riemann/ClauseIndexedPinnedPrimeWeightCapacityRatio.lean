/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI ChatGPT.
Mathlib results retain upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Zeta.Riemann.PinnedPrimeWeightCapacityRatio
import GRWTSK.NumberTheory.Zeta.Riemann.ClauseIndexedPinnedPrimeWeightAmplitude
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section

/-!
# Clause-indexed pinned prime-weight capacity ratios

Clause arity supplies only the numerical dyadic threshold.  The exact ratio
criterion retains the covered-target branch and the nonzero-amplitude guard;
it does not obtain either branch from SAT or complexity theory.

SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED /
EQUALITY_ONLY_CLAUSE_INDEXED_CAPACITY_RATIO /
PINNED_AMPLITUDE_ESTIMATE_OPEN /
NO_COMPLEXITY_TO_ZETA_TRANSFER / NO_RH_CLAIM.
-/

namespace GRWTSK.RiemannHypothesis

open GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Satisfiability

/-- Clause-arity index for the variable-budget finite-capacity ratio
criterion. -/
abbrev ClauseIndexedPinnedPrimeWeightCapacityRatioCriterion
    {k : ℕ} (polarity : ClausePolarity k) : Prop :=
  PinnedPrimeWeightCapacityRatioCriterionAt
    (countedSuccessFraction polarity)

/-- Clause-arity index for one fixed coefficient budget and its exact ratio
criterion. -/
abbrev ClauseIndexedPinnedPrimeWeightFixedCapacityRatioCriterion
    (C : ℝ) {k : ℕ} (polarity : ClausePolarity k) : Prop :=
  PinnedPrimeWeightFixedCapacityRatioCriterionAt C
    (countedSuccessFraction polarity)

/-- At every clause arity, the ratio criterion is exactly the preceding
amplitude-envelope criterion. -/
theorem clauseIndexedPinnedPrimeWeightCapacityRatioCriterion_iff_amplitudeCriterion
    {k : ℕ} (polarity : ClausePolarity k) :
    ClauseIndexedPinnedPrimeWeightCapacityRatioCriterion polarity ↔
      ClauseIndexedPinnedPrimeWeightAmplitudeCriterion polarity :=
  pinnedPrimeWeightCapacityRatioCriterion_iff_amplitudeCriterion
    (countedSuccessFraction polarity)

/-- The same exact equivalence for one coefficient budget fixed before the
`eta` quantifier. -/
theorem clauseIndexedPinnedPrimeWeightFixedCapacityRatioCriterion_iff_amplitudeCriterion
    (C : ℝ) {k : ℕ} (polarity : ClausePolarity k) :
    ClauseIndexedPinnedPrimeWeightFixedCapacityRatioCriterion C polarity ↔
      ClauseIndexedPinnedPrimeWeightFixedCapacityAmplitudeCriterion
        C polarity :=
  pinnedPrimeWeightFixedCapacityRatioCriterion_iff_amplitudeCriterion
    C (countedSuccessFraction polarity)

/-- Every immutable rule-deficit criterion satisfies the corresponding exact
clause-indexed ratio obstruction. -/
theorem clauseIndexedPinnedPrimeWeightDeficit_to_capacityRatio
    {rule : PinnedPrimeWeightCoefficientRule}
    {k : ℕ} {polarity : ClausePolarity k}
    (hcriterion :
      ClauseIndexedPinnedPrimeWeightDeficitCriterion rule polarity) :
    ClauseIndexedPinnedPrimeWeightCapacityRatioCriterion polarity :=
  pinnedPrimeWeightRuleDeficitCriterion_to_capacityRatioCriterion
    hcriterion

/-- A fixed ratio criterion supplies the clause-indexed nonlinear
recurrence. -/
theorem clauseIndexedPinnedPrimeWeightFixedCapacityRatio_to_recurrence
    {C : ℝ} {k : ℕ} {polarity : ClausePolarity k}
    (hcriterion :
      ClauseIndexedPinnedPrimeWeightFixedCapacityRatioCriterion
        C polarity) :
    ClauseIndexedThetaRecurrence polarity :=
  pinnedPrimeWeightFixedCapacityRatioCriterion_to_recurrence
    hcriterion

/-- Equality-only one-step transport from a fixed ratio criterion at arity
`k+1` to the theta threshold indexed by arity `k`. -/
theorem clauseIndexedPinnedPrimeWeightFixedCapacityRatio_to_previous
    {k : ℕ} (C : ℝ)
    (nextPolarity : ClausePolarity (k + 1))
    (currentPolarity : ClausePolarity k)
    (hlower :
      (3 : ℝ) / 4 ≤ countedSuccessFraction nextPolarity)
    (hcriterion :
      ClauseIndexedPinnedPrimeWeightFixedCapacityRatioCriterion
        C nextPolarity)
    (htheta :
      AllDyadicThetaAtThreshold
        (countedSuccessFraction nextPolarity)) :
    AllDyadicThetaAtThreshold
      (countedSuccessFraction currentPolarity) :=
  clauseIndexedRecurrence_to_previous
    nextPolarity currentPolarity hlower
    (clauseIndexedPinnedPrimeWeightFixedCapacityRatio_to_recurrence
      hcriterion)
    htheta

/-- Arity three names exactly the variable-budget ratio criterion at `7/8`. -/
theorem threeClauseIndexedPinnedPrimeWeightCapacityRatioCriterion_iff
    (polarity : ClausePolarity 3) :
    ClauseIndexedPinnedPrimeWeightCapacityRatioCriterion polarity ↔
      PinnedPrimeWeightCapacityRatioCriterionAt ((7 : ℝ) / 8) := by
  unfold ClauseIndexedPinnedPrimeWeightCapacityRatioCriterion
  rw [threeLiteralClauseThreshold]

/-- Arity two names exactly the variable-budget ratio criterion at `3/4`. -/
theorem twoClauseIndexedPinnedPrimeWeightCapacityRatioCriterion_iff
    (polarity : ClausePolarity 2) :
    ClauseIndexedPinnedPrimeWeightCapacityRatioCriterion polarity ↔
      PinnedPrimeWeightCapacityRatioCriterionAt ((3 : ℝ) / 4) := by
  unfold ClauseIndexedPinnedPrimeWeightCapacityRatioCriterion
  rw [twoLiteralClauseThreshold]

/-- Arity three names exactly the fixed-budget ratio criterion at `7/8`. -/
theorem threeClauseIndexedPinnedPrimeWeightFixedCapacityRatioCriterion_iff
    (C : ℝ) (polarity : ClausePolarity 3) :
    ClauseIndexedPinnedPrimeWeightFixedCapacityRatioCriterion
        C polarity ↔
      PinnedPrimeWeightFixedCapacityRatioCriterionAt
        C ((7 : ℝ) / 8) := by
  unfold ClauseIndexedPinnedPrimeWeightFixedCapacityRatioCriterion
  rw [threeLiteralClauseThreshold]

/-- Arity two names exactly the fixed-budget ratio criterion at `3/4`. -/
theorem twoClauseIndexedPinnedPrimeWeightFixedCapacityRatioCriterion_iff
    (C : ℝ) (polarity : ClausePolarity 2) :
    ClauseIndexedPinnedPrimeWeightFixedCapacityRatioCriterion
        C polarity ↔
      PinnedPrimeWeightFixedCapacityRatioCriterionAt
        C ((3 : ℝ) / 4) := by
  unfold ClauseIndexedPinnedPrimeWeightFixedCapacityRatioCriterion
  rw [twoLiteralClauseThreshold]

/-- Conditional two-step endpoint through independently supplied fixed ratio
criteria at arities three and two.  Both analytic ratio estimates remain
explicit theorem arguments. -/
theorem clauseIndexedPinnedPrimeWeightFixedCapacityRatioCriteria_to_rh
    (C3 C2 : ℝ)
    (polarity3 : ClausePolarity 3)
    (polarity2 : ClausePolarity 2)
    (htheta :
      AllDyadicThetaAtThreshold
        (countedSuccessFraction polarity3))
    (hcriterion3 :
      ClauseIndexedPinnedPrimeWeightFixedCapacityRatioCriterion
        C3 polarity3)
    (hcriterion2 :
      ClauseIndexedPinnedPrimeWeightFixedCapacityRatioCriterion
        C2 polarity2) :
    _root_.RiemannHypothesis := by
  apply clauseIndexedThreeTwoRecurrences_to_rh
    polarity3 polarity2 htheta
  · exact
      clauseIndexedPinnedPrimeWeightFixedCapacityRatio_to_recurrence
        hcriterion3
  · exact
      clauseIndexedPinnedPrimeWeightFixedCapacityRatio_to_recurrence
        hcriterion2

end GRWTSK.RiemannHypothesis
