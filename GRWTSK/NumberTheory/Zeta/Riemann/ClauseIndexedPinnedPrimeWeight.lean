/- Copyright (c) 2026 R.A. Jacob Martone. MIT.
Human mathematical direction: R.A. Jacob Martone. Formalization assistance: OpenAI ChatGPT.
Mathlib results retain upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Zeta.Riemann.PinnedPrimeWeightFeatureNorm
import GRWTSK.NumberTheory.Zeta.Riemann.ClauseIndexedPrimeThetaFeatureNorm
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section

/-!
# Clause-indexed pinned prime-weight criteria

Clause arity supplies only a numerical threshold.  The pinned prime feature is
an actual arithmetic source family with a proved uniform `l1` bound, but its
target coefficient, next-octave majorization, and descended residual remain
independent analytic premises.

SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED /
EQUALITY_ONLY_CLAUSE_INDEXED_PINNED_PRIME_WEIGHT /
SOURCE_MAJORANT_OPEN / NO_COMPLEXITY_TO_ZETA_TRANSFER / NO_RH_CLAIM.
-/

namespace GRWTSK.RiemannHypothesis

open GRWTSK.Logic.Satisfiability

/-- Clause-arity indexing for the pinned rank-one prime-weight criterion. -/
abbrev ClauseIndexedPinnedPrimeWeightCriterion
    {k : ℕ} (polarity : ClausePolarity k) : Prop :=
  PinnedPrimeWeightCriterionAt
    (countedSuccessFraction polarity)

/-- The concrete pinned source criterion supplies the prior clause-indexed
feature-norm criterion. -/
theorem clauseIndexedPinnedPrimeWeight_to_featureNorm
    {k : ℕ} {polarity : ClausePolarity k}
    (hcriterion :
      ClauseIndexedPinnedPrimeWeightCriterion polarity) :
    ClauseIndexedPrimeThetaFeatureNormCriterion polarity :=
  pinnedPrimeWeightCriterion_to_featureNormCriterion hcriterion

/-- It consequently supplies the clause-indexed nonlinear recurrence. -/
theorem clauseIndexedPinnedPrimeWeight_to_recurrence
    {k : ℕ} {polarity : ClausePolarity k}
    (hcriterion :
      ClauseIndexedPinnedPrimeWeightCriterion polarity) :
    ClauseIndexedThetaRecurrence polarity :=
  pinnedPrimeWeightCriterion_to_recurrence hcriterion

/-- Equality-only one-step transport from a pinned criterion at arity `k+1`
to the theta threshold indexed by arity `k`. -/
theorem clauseIndexedPinnedPrimeWeight_to_previous
    {k : ℕ}
    (nextPolarity : ClausePolarity (k + 1))
    (currentPolarity : ClausePolarity k)
    (hlower :
      (3 : ℝ) / 4 ≤ countedSuccessFraction nextPolarity)
    (hcriterion :
      ClauseIndexedPinnedPrimeWeightCriterion nextPolarity)
    (htheta :
      AllDyadicThetaAtThreshold
        (countedSuccessFraction nextPolarity)) :
    AllDyadicThetaAtThreshold
      (countedSuccessFraction currentPolarity) :=
  clauseIndexedRecurrence_to_previous
    nextPolarity currentPolarity hlower
    (clauseIndexedPinnedPrimeWeight_to_recurrence hcriterion)
    htheta

/-- Arity three names exactly the pinned criterion at `7/8`. -/
theorem threeClauseIndexedPinnedPrimeWeightCriterion_iff
    (polarity : ClausePolarity 3) :
    ClauseIndexedPinnedPrimeWeightCriterion polarity ↔
      PinnedPrimeWeightCriterionAt ((7 : ℝ) / 8) := by
  unfold ClauseIndexedPinnedPrimeWeightCriterion
  rw [threeLiteralClauseThreshold]

/-- Arity two names exactly the pinned criterion at `3/4`. -/
theorem twoClauseIndexedPinnedPrimeWeightCriterion_iff
    (polarity : ClausePolarity 2) :
    ClauseIndexedPinnedPrimeWeightCriterion polarity ↔
      PinnedPrimeWeightCriterionAt ((3 : ℝ) / 4) := by
  unfold ClauseIndexedPinnedPrimeWeightCriterion
  rw [twoLiteralClauseThreshold]

/-- Conditional terminal re-expression through the concrete pinned source
family.  The initial theta estimate and both analytic criteria remain explicit
arguments. -/
theorem clauseIndexedPinnedPrimeWeightCriteria_to_rh
    (polarity3 : ClausePolarity 3)
    (polarity2 : ClausePolarity 2)
    (htheta :
      AllDyadicThetaAtThreshold
        (countedSuccessFraction polarity3))
    (hcriterion3 :
      ClauseIndexedPinnedPrimeWeightCriterion polarity3)
    (hcriterion2 :
      ClauseIndexedPinnedPrimeWeightCriterion polarity2) :
    _root_.RiemannHypothesis := by
  apply clauseIndexedFeatureNormCriteria_to_rh
    polarity3 polarity2 htheta
  · exact
      clauseIndexedPinnedPrimeWeight_to_featureNorm hcriterion3
  · exact
      clauseIndexedPinnedPrimeWeight_to_featureNorm hcriterion2

end GRWTSK.RiemannHypothesis
