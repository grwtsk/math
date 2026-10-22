/- Copyright (c) 2026 R.A. Jacob Martone. MIT.
Human mathematical direction: R.A. Jacob Martone. Formalization assistance: OpenAI ChatGPT.
Mathlib results retain upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Zeta.Riemann.PrimeThetaSeparableKernelFactorization
import GRWTSK.NumberTheory.Zeta.Riemann.ClauseIndexedPrimeThetaKernelCriterion
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section

/-!
# Clause-indexed separable prime-kernel criteria

Clause arity supplies only an exact numerical name for a dyadic threshold.  A
separable source-feature family, its uniform absolute budget, source
majorization, and descended residual remain independently required arithmetic
premises.

SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED /
EQUALITY_ONLY_CLAUSE_INDEXED_SEPARABLE_KERNEL /
SOURCE_FEATURE_FAMILY_OPEN /
NO_COMPLEXITY_TO_ZETA_TRANSFER / NO_RH_CLAIM.
-/

namespace GRWTSK.RiemannHypothesis

open GRWTSK.Logic.Satisfiability

/-- Clause-arity indexing for the independently required separable-feature
criterion. -/
abbrev ClauseIndexedPrimeThetaSeparableKernelCriterion
    {k : ℕ} (polarity : ClausePolarity k) : Prop :=
  PrimeThetaSeparableKernelCriterionAt
    (countedSuccessFraction polarity)

/-- A clause-indexed separable criterion supplies the corresponding raw
prime-kernel criterion. -/
theorem clauseIndexedSeparableKernel_to_primeKernel
    {k : ℕ} {polarity : ClausePolarity k}
    (hcriterion :
      ClauseIndexedPrimeThetaSeparableKernelCriterion polarity) :
    ClauseIndexedPrimeThetaKernelCriterion polarity :=
  primeThetaSeparableKernelCriterion_to_kernelCriterion hcriterion

/-- It consequently supplies the clause-indexed nonlinear recurrence. -/
theorem clauseIndexedSeparableKernel_to_recurrence
    {k : ℕ} {polarity : ClausePolarity k}
    (hcriterion :
      ClauseIndexedPrimeThetaSeparableKernelCriterion polarity) :
    ClauseIndexedThetaRecurrence polarity :=
  primeThetaSeparableKernelCriterion_to_recurrence hcriterion

/-- Equality-only one-step transport from a separable criterion at arity
`k+1` to the theta threshold indexed by arity `k`. -/
theorem clauseIndexedSeparableKernel_to_previous
    {k : ℕ}
    (nextPolarity : ClausePolarity (k + 1))
    (currentPolarity : ClausePolarity k)
    (hlower :
      (3 : ℝ) / 4 ≤ countedSuccessFraction nextPolarity)
    (hcriterion :
      ClauseIndexedPrimeThetaSeparableKernelCriterion nextPolarity)
    (htheta :
      AllDyadicThetaAtThreshold
        (countedSuccessFraction nextPolarity)) :
    AllDyadicThetaAtThreshold
      (countedSuccessFraction currentPolarity) :=
  clauseIndexedRecurrence_to_previous
    nextPolarity currentPolarity hlower
    (clauseIndexedSeparableKernel_to_recurrence hcriterion)
    htheta

/-- Arity three names exactly the separable-feature criterion at `7/8`. -/
theorem threeClauseIndexedSeparableKernelCriterion_iff
    (polarity : ClausePolarity 3) :
    ClauseIndexedPrimeThetaSeparableKernelCriterion polarity ↔
      PrimeThetaSeparableKernelCriterionAt ((7 : ℝ) / 8) := by
  unfold ClauseIndexedPrimeThetaSeparableKernelCriterion
  rw [threeLiteralClauseThreshold]

/-- Arity two names exactly the separable-feature criterion at `3/4`. -/
theorem twoClauseIndexedSeparableKernelCriterion_iff
    (polarity : ClausePolarity 2) :
    ClauseIndexedPrimeThetaSeparableKernelCriterion polarity ↔
      PrimeThetaSeparableKernelCriterionAt ((3 : ℝ) / 4) := by
  unfold ClauseIndexedPrimeThetaSeparableKernelCriterion
  rw [twoLiteralClauseThreshold]

/-- Conditional terminal re-expression through the narrower separable-feature
supplier.  The initial theta estimate and both arithmetic criteria remain
explicit theorem arguments. -/
theorem clauseIndexedSeparableKernelCriteria_to_rh
    (polarity3 : ClausePolarity 3)
    (polarity2 : ClausePolarity 2)
    (htheta :
      AllDyadicThetaAtThreshold
        (countedSuccessFraction polarity3))
    (hcriterion3 :
      ClauseIndexedPrimeThetaSeparableKernelCriterion polarity3)
    (hcriterion2 :
      ClauseIndexedPrimeThetaSeparableKernelCriterion polarity2) :
    _root_.RiemannHypothesis := by
  apply clauseIndexedThreeTwoRecurrences_to_rh
    polarity3 polarity2 htheta
  · exact clauseIndexedSeparableKernel_to_recurrence hcriterion3
  · exact clauseIndexedSeparableKernel_to_recurrence hcriterion2

end GRWTSK.RiemannHypothesis
