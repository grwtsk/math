# Complete source: GRWTSK.NumberTheory.Zeta.Riemann.ClauseIndexedDyadicThreshold

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5838ae5600b90dc2fbe7e175ea5713b63f8f753e` · SHA-256 `8c4ee7c69ae0469ca64c3401ada95629d4decf35cdc67ef49a60b408ec152904`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI ChatGPT.
Mathlib results retain upstream authorship and Apache-2.0 license. -/
import GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Satisfiability.BooleanClauseCounting
import GRWTSK.NumberTheory.Zeta.Riemann.DyadicThresholdDuality
import GRWTSK.NumberTheory.Zeta.Riemann.QuadraticThetaRecurrenceSupplier
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section

/-!
# Clause-indexed dyadic thresholds

The finite Boolean theorem supplies the numerical identity

  countedSuccessFraction(k-literal clause) = 1 - 2^(-k).

The RH threshold modules independently use the same real number as
`dyadicThreshold k`.  This file transports propositions only through that
proved equality.

In particular, clause counting does not construct a theta recurrence.  The
predicate `ClauseIndexedThetaRecurrence` is merely a readable alias for the
already-open analytic premise `QuadraticThetaSourceRecurrenceAt` evaluated at
the counted fraction.

SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED /
EQUALITY_ONLY_DYADIC_ADAPTER /
QUADRATIC_THETA_RECURRENCE_STILL_OPEN /
NO_COMPLEXITY_TO_ZETA_TRANSFER / NO_RH_CLAIM.
-/

namespace GRWTSK.RiemannHypothesis

open GRWTSK.Logic.Satisfiability

/-- The exact counted clause fraction is the dyadic threshold of the same
arity. -/
@[simp]
theorem countedSuccessFraction_eq_dyadicThreshold
    {k : ℕ} (polarity : ClausePolarity k) :
    countedSuccessFraction polarity = dyadicThreshold k := by
  simpa [dyadicThreshold] using
    (GRWTSK.Logic.Satisfiability.countedSuccessFraction_eq polarity)

/-- Readable indexing alias.  Its inhabitant must still be supplied by the
number-theoretic source recurrence. -/
abbrev ClauseIndexedThetaRecurrence
    {k : ℕ} (polarity : ClausePolarity k) : Prop :=
  QuadraticThetaSourceRecurrenceAt
    (countedSuccessFraction polarity)

@[simp]
theorem oneLiteralClauseThreshold
    (polarity : ClausePolarity 1) :
    countedSuccessFraction polarity = (1 : ℝ) / 2 := by
  rw [countedSuccessFraction_eq_dyadicThreshold,
    dyadicThreshold_one]

@[simp]
theorem twoLiteralClauseThreshold
    (polarity : ClausePolarity 2) :
    countedSuccessFraction polarity = (3 : ℝ) / 4 := by
  rw [countedSuccessFraction_eq_dyadicThreshold,
    dyadicThreshold_two]

@[simp]
theorem threeLiteralClauseThreshold
    (polarity : ClausePolarity 3) :
    countedSuccessFraction polarity = (7 : ℝ) / 8 := by
  rw [countedSuccessFraction_eq_dyadicThreshold,
    dyadicThreshold_three]

/-- An independently supplied analytic recurrence at a `(k+1)`-literal
numerical threshold descends to the `k`-literal numerical threshold.  The
clause theorem contributes only the two equalities used by `simpa`. -/
theorem clauseIndexedRecurrence_to_previous
    {k : ℕ}
    (nextPolarity : ClausePolarity (k + 1))
    (currentPolarity : ClausePolarity k)
    (hlower :
      (3 : ℝ) / 4 ≤ countedSuccessFraction nextPolarity)
    (hrecurrence : ClauseIndexedThetaRecurrence nextPolarity)
    (htheta :
      AllDyadicThetaAtThreshold
        (countedSuccessFraction nextPolarity)) :
    AllDyadicThetaAtThreshold
      (countedSuccessFraction currentPolarity) := by
  have hdescent :
      QuadraticThetaDescentAt
        (countedSuccessFraction nextPolarity) :=
    quadraticThetaSourceRecurrence_to_descent
      hlower hrecurrence
  simpa only [countedSuccessFraction_eq_dyadicThreshold,
    quadraticThreshold_dyadicThreshold_succ] using
      hdescent htheta

/-- The arity-three analytic premise is exactly the existing seven-eighths
recurrence premise after equality transport. -/
theorem threeClauseIndexedRecurrence_iff
    (polarity : ClausePolarity 3) :
    ClauseIndexedThetaRecurrence polarity ↔
      QuadraticThetaSourceRecurrenceAt ((7 : ℝ) / 8) := by
  simp [ClauseIndexedThetaRecurrence]

/-- The arity-two analytic premise is exactly the existing three-quarters
recurrence premise after equality transport. -/
theorem twoClauseIndexedRecurrence_iff
    (polarity : ClausePolarity 2) :
    ClauseIndexedThetaRecurrence polarity ↔
      QuadraticThetaSourceRecurrenceAt ((3 : ℝ) / 4) := by
  simp [ClauseIndexedThetaRecurrence]

/-- Concrete equality-only transport from the arity-three threshold to the
arity-two threshold. -/
theorem threeLiteralRecurrence_to_twoLiteral
    (polarity3 : ClausePolarity 3)
    (polarity2 : ClausePolarity 2)
    (hrecurrence : ClauseIndexedThetaRecurrence polarity3)
    (htheta :
      AllDyadicThetaAtThreshold
        (countedSuccessFraction polarity3)) :
    AllDyadicThetaAtThreshold
      (countedSuccessFraction polarity2) := by
  apply clauseIndexedRecurrence_to_previous
    (k := 2) polarity3 polarity2
  · rw [threeLiteralClauseThreshold]
    norm_num
  · exact hrecurrence
  · exact htheta

/-- Concrete equality-only transport from the arity-two threshold to the
arity-one threshold. -/
theorem twoLiteralRecurrence_to_oneLiteral
    (polarity2 : ClausePolarity 2)
    (polarity1 : ClausePolarity 1)
    (hrecurrence : ClauseIndexedThetaRecurrence polarity2)
    (htheta :
      AllDyadicThetaAtThreshold
        (countedSuccessFraction polarity2)) :
    AllDyadicThetaAtThreshold
      (countedSuccessFraction polarity1) := by
  apply clauseIndexedRecurrence_to_previous
    (k := 1) polarity2 polarity1
  · rw [twoLiteralClauseThreshold]
  · exact hrecurrence
  · exact htheta

/-- Re-expression of the existing two-step conditional RH endpoint.  The
three- and two-literal clause objects supply only threshold names; both
analytic recurrence premises and the initial theta estimate remain explicit. -/
theorem clauseIndexedThreeTwoRecurrences_to_rh
    (polarity3 : ClausePolarity 3)
    (polarity2 : ClausePolarity 2)
    (htheta :
      AllDyadicThetaAtThreshold
        (countedSuccessFraction polarity3))
    (hrecurrence3 : ClauseIndexedThetaRecurrence polarity3)
    (hrecurrence2 : ClauseIndexedThetaRecurrence polarity2) :
    _root_.RiemannHypothesis := by
  apply twoStepQuadraticRecurrence_to_rh
  · simpa using htheta
  · simpa [ClauseIndexedThetaRecurrence] using hrecurrence3
  · simpa [ClauseIndexedThetaRecurrence] using hrecurrence2

end GRWTSK.RiemannHypothesis
```
