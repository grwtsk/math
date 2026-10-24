/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI ChatGPT.
Mathlib results retain upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Zeta.Riemann.PrimeThetaFeatureNormBudget
import GRWTSK.NumberTheory.Zeta.Riemann.ClauseIndexedPrimeThetaSeparableKernel
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section

/-!
# Clause-indexed prime feature-norm criteria

Clause arity supplies only an exact numerical threshold.  Source-feature norm
certificates, the cross-scale theta majorization, and the descended residual
remain independent arithmetic premises.

SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED /
EQUALITY_ONLY_CLAUSE_INDEXED_FEATURE_NORM /
UNIFORM_CERTIFIED_BUDGET_OPEN /
NO_COMPLEXITY_TO_ZETA_TRANSFER / NO_RH_CLAIM.
-/

namespace GRWTSK.RiemannHypothesis

open GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Satisfiability

/-- Clause-arity indexing for the independently required norm-certified
feature criterion. -/
abbrev ClauseIndexedPrimeThetaFeatureNormCriterion
    {k : ℕ} (polarity : ClausePolarity k) : Prop :=
  PrimeThetaFeatureNormCriterionAt
    (countedSuccessFraction polarity)

/-- A clause-indexed feature-norm criterion supplies the prior separable
criterion. -/
theorem clauseIndexedFeatureNorm_to_separableKernel
    {k : ℕ} {polarity : ClausePolarity k}
    (hcriterion :
      ClauseIndexedPrimeThetaFeatureNormCriterion polarity) :
    ClauseIndexedPrimeThetaSeparableKernelCriterion polarity :=
  primeThetaFeatureNormCriterion_to_separableCriterion hcriterion

/-- It consequently supplies the clause-indexed nonlinear recurrence. -/
theorem clauseIndexedFeatureNorm_to_recurrence
    {k : ℕ} {polarity : ClausePolarity k}
    (hcriterion :
      ClauseIndexedPrimeThetaFeatureNormCriterion polarity) :
    ClauseIndexedThetaRecurrence polarity :=
  primeThetaFeatureNormCriterion_to_recurrence hcriterion

/-- Equality-only one-step transport from a norm-certified criterion at arity
`k+1` to the theta threshold indexed by arity `k`. -/
theorem clauseIndexedFeatureNorm_to_previous
    {k : ℕ}
    (nextPolarity : ClausePolarity (k + 1))
    (currentPolarity : ClausePolarity k)
    (hlower :
      (3 : ℝ) / 4 ≤ countedSuccessFraction nextPolarity)
    (hcriterion :
      ClauseIndexedPrimeThetaFeatureNormCriterion nextPolarity)
    (htheta :
      AllDyadicThetaAtThreshold
        (countedSuccessFraction nextPolarity)) :
    AllDyadicThetaAtThreshold
      (countedSuccessFraction currentPolarity) :=
  clauseIndexedRecurrence_to_previous
    nextPolarity currentPolarity hlower
    (clauseIndexedFeatureNorm_to_recurrence hcriterion)
    htheta

/-- Arity three names exactly the norm-certified feature criterion at `7/8`. -/
theorem threeClauseIndexedFeatureNormCriterion_iff
    (polarity : ClausePolarity 3) :
    ClauseIndexedPrimeThetaFeatureNormCriterion polarity ↔
      PrimeThetaFeatureNormCriterionAt ((7 : ℝ) / 8) := by
  unfold ClauseIndexedPrimeThetaFeatureNormCriterion
  rw [threeLiteralClauseThreshold]

/-- Arity two names exactly the norm-certified feature criterion at `3/4`. -/
theorem twoClauseIndexedFeatureNormCriterion_iff
    (polarity : ClausePolarity 2) :
    ClauseIndexedPrimeThetaFeatureNormCriterion polarity ↔
      PrimeThetaFeatureNormCriterionAt ((3 : ℝ) / 4) := by
  unfold ClauseIndexedPrimeThetaFeatureNormCriterion
  rw [twoLiteralClauseThreshold]

/-- Conditional terminal re-expression through the stronger norm-certified
feature suppliers.  The initial theta estimate and both arithmetic criteria
remain explicit theorem arguments. -/
theorem clauseIndexedFeatureNormCriteria_to_rh
    (polarity3 : ClausePolarity 3)
    (polarity2 : ClausePolarity 2)
    (htheta :
      AllDyadicThetaAtThreshold
        (countedSuccessFraction polarity3))
    (hcriterion3 :
      ClauseIndexedPrimeThetaFeatureNormCriterion polarity3)
    (hcriterion2 :
      ClauseIndexedPrimeThetaFeatureNormCriterion polarity2) :
    _root_.RiemannHypothesis := by
  apply clauseIndexedThreeTwoRecurrences_to_rh
    polarity3 polarity2 htheta
  · exact clauseIndexedFeatureNorm_to_recurrence hcriterion3
  · exact clauseIndexedFeatureNorm_to_recurrence hcriterion2

end GRWTSK.RiemannHypothesis
