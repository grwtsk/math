# Complete source: GRWTSK.NumberTheory.Zeta.Riemann.ClauseIndexedPrimeThetaSeparableKernel

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `76de3b2e012ab7f2c847671b9c3d98fe31639c5a` · SHA-256 `6204d949d857393f2310dda8f8d3429132a352c1ba247bf4703b44cc7f8a6406`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI ChatGPT.
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
```
