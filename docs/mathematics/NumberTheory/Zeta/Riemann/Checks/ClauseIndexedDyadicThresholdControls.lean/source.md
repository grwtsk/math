# Complete source: GRWTSK.NumberTheory.Zeta.Riemann.Checks.ClauseIndexedDyadicThresholdControls

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `573384889dc093092349d5f62773323d3c91a943` · SHA-256 `8f94382986218460299166e5a27313a23a1130f910c825da3f9a2f33b2009b53`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI ChatGPT. -/
import GRWTSK.NumberTheory.Zeta.Riemann.ClauseIndexedDyadicThreshold
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section

namespace GRWTSK.RiemannHypothesis.Checks.ClauseIndexedDyadicThresholdControls

open GRWTSK.Logic.Satisfiability
open GRWTSK.RiemannHypothesis

/-- The all-positive polarity profile; the counting theorem itself is polarity
independent. -/
def positiveClausePolarity (k : ℕ) : ClausePolarity k :=
  fun _ => true

/-- A three-literal clause has seven satisfying local assignments. -/
theorem positive_three_clause_satisfying_card :
    Fintype.card
        {assignment : BooleanAssignment 3 //
          ClauseSatisfied (positiveClausePolarity 3) assignment} = 7 := by
  have h := card_clauseSatisfied (positiveClausePolarity 3)
  norm_num at h ⊢
  exact h

/-- Exactly one of the eight local assignments falsifies the three-literal
clause. -/
theorem positive_three_clause_falsifying_card :
    Fintype.card
        {assignment : BooleanAssignment 3 //
          ¬ ClauseSatisfied (positiveClausePolarity 3) assignment} = 1 := by
  exact card_clauseNotSatisfied (positiveClausePolarity 3)

/-- The exact counted ladder is `1/2, 3/4, 7/8`. -/
theorem concrete_clause_thresholds :
    countedSuccessFraction (positiveClausePolarity 1) = (1 : ℝ) / 2 ∧
      countedSuccessFraction (positiveClausePolarity 2) = (3 : ℝ) / 4 ∧
        countedSuccessFraction (positiveClausePolarity 3) = (7 : ℝ) / 8 := by
  simp

/-- The quadratic threshold map reverses the counted arity ladder. -/
theorem concrete_clause_reverse_ladder :
    quadraticThreshold
        (countedSuccessFraction (positiveClausePolarity 3)) =
      countedSuccessFraction (positiveClausePolarity 2) ∧
    quadraticThreshold
        (countedSuccessFraction (positiveClausePolarity 2)) =
      countedSuccessFraction (positiveClausePolarity 1) := by
  constructor <;> simp

/-- These unresolved statements are analytic suppliers, not consequences of
finite Boolean counting. -/
def requiredAnalyticPremises : List String :=
  ["theta estimate at the counted arity-three threshold (7/8)",
   "prime-derived quadratic theta recurrence at the arity-three threshold",
   "prime-derived quadratic theta recurrence at the arity-two threshold",
   "complete descended residual estimates for both recurrence steps"]

/-- Explicit nonimplication boundary for the connection layer. -/
def prohibitedPromotions : List String :=
  ["finite clause counting -> zeta zero-free theorem",
   "MAX-3SAT hardness -> QuadraticThetaSourceRecurrenceAt(7/8)",
   "random assignment success -> prime/quartic residual decay",
   "equal rational thresholds -> identical proof mechanisms",
   "conditional clause-indexed endpoint -> unconditional Riemann Hypothesis"]

end GRWTSK.RiemannHypothesis.Checks.ClauseIndexedDyadicThresholdControls
```
