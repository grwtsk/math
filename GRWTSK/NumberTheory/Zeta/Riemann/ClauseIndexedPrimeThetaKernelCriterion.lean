/- Copyright (c) 2026 R.A. Jacob Martone. MIT.
Human mathematical direction: R.A. Jacob Martone. Formalization assistance: OpenAI ChatGPT.
Mathlib results retain upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Zeta.Riemann.PrimeThetaQuadraticKernelCriterion
import GRWTSK.NumberTheory.Zeta.Riemann.ClauseIndexedDyadicThreshold
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section

/-!
# Clause-indexed prime-kernel criteria

Clause arity supplies only an exact numerical name for the dyadic threshold.
The prime-pair kernel criterion remains an independently supplied arithmetic
proposition at that real threshold.

SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED /
EQUALITY_ONLY_CLAUSE_INDEXED_PRIME_KERNEL /
PRIME_KERNEL_CONSTRUCTION_OPEN /
NO_COMPLEXITY_TO_ZETA_TRANSFER / NO_RH_CLAIM.
-/

namespace GRWTSK.RiemannHypothesis

open GRWTSK.Logic.Satisfiability

/-- Readable clause-arity indexing for the independently required arithmetic
prime-kernel criterion. -/
abbrev ClauseIndexedPrimeThetaKernelCriterion
    {k : ℕ} (polarity : ClausePolarity k) : Prop :=
  PrimeThetaQuadraticKernelCriterionAt
    (countedSuccessFraction polarity)

/-- A clause-indexed prime-kernel criterion supplies the already-open
clause-indexed recurrence premise. -/
theorem clauseIndexedPrimeThetaKernelCriterion_to_recurrence
    {k : ℕ} {polarity : ClausePolarity k}
    (hcriterion :
      ClauseIndexedPrimeThetaKernelCriterion polarity) :
    ClauseIndexedThetaRecurrence polarity :=
  primeThetaQuadraticKernelCriterion_to_recurrence hcriterion

/-- Equality-only one-step transport.  Clause counting supplies the threshold
identity; the prime-kernel criterion supplies the analytic recurrence. -/
theorem clauseIndexedPrimeKernelCriterion_to_previous
    {k : ℕ}
    (nextPolarity : ClausePolarity (k + 1))
    (currentPolarity : ClausePolarity k)
    (hlower :
      (3 : ℝ) / 4 ≤ countedSuccessFraction nextPolarity)
    (hcriterion :
      ClauseIndexedPrimeThetaKernelCriterion nextPolarity)
    (htheta :
      AllDyadicThetaAtThreshold
        (countedSuccessFraction nextPolarity)) :
    AllDyadicThetaAtThreshold
      (countedSuccessFraction currentPolarity) :=
  clauseIndexedRecurrence_to_previous
    nextPolarity currentPolarity hlower
    (clauseIndexedPrimeThetaKernelCriterion_to_recurrence
      hcriterion)
    htheta

/-- Arity three names exactly the prime-kernel criterion at `7/8`. -/
theorem threeClauseIndexedPrimeKernelCriterion_iff
    (polarity : ClausePolarity 3) :
    ClauseIndexedPrimeThetaKernelCriterion polarity ↔
      PrimeThetaQuadraticKernelCriterionAt ((7 : ℝ) / 8) := by
  unfold ClauseIndexedPrimeThetaKernelCriterion
  rw [threeLiteralClauseThreshold]

/-- Arity two names exactly the prime-kernel criterion at `3/4`. -/
theorem twoClauseIndexedPrimeKernelCriterion_iff
    (polarity : ClausePolarity 2) :
    ClauseIndexedPrimeThetaKernelCriterion polarity ↔
      PrimeThetaQuadraticKernelCriterionAt ((3 : ℝ) / 4) := by
  unfold ClauseIndexedPrimeThetaKernelCriterion
  rw [twoLiteralClauseThreshold]

/-- Conditional terminal re-expression through the narrower prime-kernel
supplier.  The initial theta estimate and both arithmetic kernel criteria
remain explicit theorem arguments. -/
theorem clauseIndexedPrimeKernelCriteria_to_rh
    (polarity3 : ClausePolarity 3)
    (polarity2 : ClausePolarity 2)
    (htheta :
      AllDyadicThetaAtThreshold
        (countedSuccessFraction polarity3))
    (hcriterion3 :
      ClauseIndexedPrimeThetaKernelCriterion polarity3)
    (hcriterion2 :
      ClauseIndexedPrimeThetaKernelCriterion polarity2) :
    _root_.RiemannHypothesis := by
  apply clauseIndexedThreeTwoRecurrences_to_rh
    polarity3 polarity2 htheta
  · exact
      clauseIndexedPrimeThetaKernelCriterion_to_recurrence
        hcriterion3
  · exact
      clauseIndexedPrimeThetaKernelCriterion_to_recurrence
        hcriterion2

end GRWTSK.RiemannHypothesis
