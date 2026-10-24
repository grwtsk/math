# Complete source: GRWTSK.NumberTheory.Zeta.Riemann.ClauseIndexedPinnedPrimeWeightBertrandRatio

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `27037dff6437619fe41460418c5ddd24cc7418db` · SHA-256 `3a20601b262f3f5941463ae2a396074a24468c1e4ea0eb2283b7635b06e62baf`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI ChatGPT.
Mathlib results retain upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Zeta.Riemann.PinnedPrimeWeightBertrandPositivity
import GRWTSK.NumberTheory.Zeta.Riemann.ClauseIndexedPinnedPrimeWeightCapacityRatio
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section

/-!
# Clause-indexed Bertrand ratio criteria

Bertrand's postulate removes the zero-amplitude guard at every dyadic scale.
Clause arity still contributes only the numerical threshold.  Neither clause
counting nor complexity theory supplies the remaining uniform ratio estimate.

SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED /
EQUALITY_ONLY_CLAUSE_INDEXED_BERTRAND_RATIO /
DYADIC_DENOMINATOR_NONVANISHING_DEFINED /
UNIFORM_RATIO_BOUND_OPEN /
NO_COMPLEXITY_TO_ZETA_TRANSFER / NO_RH_CLAIM.
-/

namespace GRWTSK.RiemannHypothesis

open GRWTSK.Logic.Satisfiability

/-- Clause-arity index for the variable-budget Bertrand ratio criterion. -/
abbrev ClauseIndexedPinnedPrimeWeightBertrandRatioCriterion
    {k : ℕ} (polarity : ClausePolarity k) : Prop :=
  PinnedPrimeWeightBertrandRatioCriterionAt
    (countedSuccessFraction polarity)

/-- Clause-arity index for one budget fixed before `eta`. -/
abbrev ClauseIndexedPinnedPrimeWeightFixedBertrandRatioCriterion
    (C : ℝ) {k : ℕ} (polarity : ClausePolarity k) : Prop :=
  PinnedPrimeWeightFixedBertrandRatioCriterionAt C
    (countedSuccessFraction polarity)

/-- At every arity, the simplified Bertrand criterion is exactly the guarded
ratio criterion from the preceding layer. -/
theorem clauseIndexedPinnedPrimeWeightBertrandRatioCriterion_iff_capacityRatioCriterion
    {k : ℕ} (polarity : ClausePolarity k) :
    ClauseIndexedPinnedPrimeWeightBertrandRatioCriterion polarity ↔
      ClauseIndexedPinnedPrimeWeightCapacityRatioCriterion polarity :=
  pinnedPrimeWeightBertrandRatioCriterion_iff_capacityRatioCriterion
    (countedSuccessFraction polarity)

/-- The same equivalence for one budget fixed before `eta`. -/
theorem clauseIndexedPinnedPrimeWeightFixedBertrandRatioCriterion_iff_capacityRatioCriterion
    (C : ℝ) {k : ℕ} (polarity : ClausePolarity k) :
    ClauseIndexedPinnedPrimeWeightFixedBertrandRatioCriterion C polarity ↔
      ClauseIndexedPinnedPrimeWeightFixedCapacityRatioCriterion
        C polarity :=
  pinnedPrimeWeightFixedBertrandRatioCriterion_iff_capacityRatioCriterion
    C (countedSuccessFraction polarity)

/-- Every immutable coefficient-rule deficit criterion satisfies the
clause-indexed Bertrand ratio obstruction. -/
theorem clauseIndexedPinnedPrimeWeightDeficit_to_bertrandRatio
    {rule : PinnedPrimeWeightCoefficientRule}
    {k : ℕ} {polarity : ClausePolarity k}
    (hcriterion :
      ClauseIndexedPinnedPrimeWeightDeficitCriterion rule polarity) :
    ClauseIndexedPinnedPrimeWeightBertrandRatioCriterion polarity :=
  pinnedPrimeWeightRuleDeficitCriterion_to_bertrandRatioCriterion
    hcriterion

/-- A fixed Bertrand ratio criterion supplies the clause-indexed nonlinear
recurrence. -/
theorem clauseIndexedPinnedPrimeWeightFixedBertrandRatio_to_recurrence
    {C : ℝ} {k : ℕ} {polarity : ClausePolarity k}
    (hcriterion :
      ClauseIndexedPinnedPrimeWeightFixedBertrandRatioCriterion
        C polarity) :
    ClauseIndexedThetaRecurrence polarity :=
  pinnedPrimeWeightFixedBertrandRatioCriterion_to_recurrence
    hcriterion

/-- Equality-only one-step transport from arity `k+1` to arity `k`. -/
theorem clauseIndexedPinnedPrimeWeightFixedBertrandRatio_to_previous
    {k : ℕ} (C : ℝ)
    (nextPolarity : ClausePolarity (k + 1))
    (currentPolarity : ClausePolarity k)
    (hlower :
      (3 : ℝ) / 4 ≤ countedSuccessFraction nextPolarity)
    (hcriterion :
      ClauseIndexedPinnedPrimeWeightFixedBertrandRatioCriterion
        C nextPolarity)
    (htheta :
      AllDyadicThetaAtThreshold
        (countedSuccessFraction nextPolarity)) :
    AllDyadicThetaAtThreshold
      (countedSuccessFraction currentPolarity) :=
  clauseIndexedRecurrence_to_previous
    nextPolarity currentPolarity hlower
    (clauseIndexedPinnedPrimeWeightFixedBertrandRatio_to_recurrence
      hcriterion)
    htheta

/-- Arity three names exactly the Bertrand ratio criterion at `7/8`. -/
theorem threeClauseIndexedPinnedPrimeWeightBertrandRatioCriterion_iff
    (polarity : ClausePolarity 3) :
    ClauseIndexedPinnedPrimeWeightBertrandRatioCriterion polarity ↔
      PinnedPrimeWeightBertrandRatioCriterionAt ((7 : ℝ) / 8) := by
  unfold ClauseIndexedPinnedPrimeWeightBertrandRatioCriterion
  rw [threeLiteralClauseThreshold]

/-- Arity two names exactly the Bertrand ratio criterion at `3/4`. -/
theorem twoClauseIndexedPinnedPrimeWeightBertrandRatioCriterion_iff
    (polarity : ClausePolarity 2) :
    ClauseIndexedPinnedPrimeWeightBertrandRatioCriterion polarity ↔
      PinnedPrimeWeightBertrandRatioCriterionAt ((3 : ℝ) / 4) := by
  unfold ClauseIndexedPinnedPrimeWeightBertrandRatioCriterion
  rw [twoLiteralClauseThreshold]

/-- Arity three names exactly the fixed Bertrand ratio criterion at `7/8`. -/
theorem threeClauseIndexedPinnedPrimeWeightFixedBertrandRatioCriterion_iff
    (C : ℝ) (polarity : ClausePolarity 3) :
    ClauseIndexedPinnedPrimeWeightFixedBertrandRatioCriterion
        C polarity ↔
      PinnedPrimeWeightFixedBertrandRatioCriterionAt
        C ((7 : ℝ) / 8) := by
  unfold ClauseIndexedPinnedPrimeWeightFixedBertrandRatioCriterion
  rw [threeLiteralClauseThreshold]

/-- Arity two names exactly the fixed Bertrand ratio criterion at `3/4`. -/
theorem twoClauseIndexedPinnedPrimeWeightFixedBertrandRatioCriterion_iff
    (C : ℝ) (polarity : ClausePolarity 2) :
    ClauseIndexedPinnedPrimeWeightFixedBertrandRatioCriterion
        C polarity ↔
      PinnedPrimeWeightFixedBertrandRatioCriterionAt
        C ((3 : ℝ) / 4) := by
  unfold ClauseIndexedPinnedPrimeWeightFixedBertrandRatioCriterion
  rw [twoLiteralClauseThreshold]

/-- Conditional two-step endpoint through independently supplied fixed
Bertrand ratio criteria.  The uniform ratio estimates remain explicit theorem
arguments. -/
theorem clauseIndexedPinnedPrimeWeightFixedBertrandRatioCriteria_to_rh
    (C3 C2 : ℝ)
    (polarity3 : ClausePolarity 3)
    (polarity2 : ClausePolarity 2)
    (htheta :
      AllDyadicThetaAtThreshold
        (countedSuccessFraction polarity3))
    (hcriterion3 :
      ClauseIndexedPinnedPrimeWeightFixedBertrandRatioCriterion
        C3 polarity3)
    (hcriterion2 :
      ClauseIndexedPinnedPrimeWeightFixedBertrandRatioCriterion
        C2 polarity2) :
    _root_.RiemannHypothesis := by
  apply clauseIndexedThreeTwoRecurrences_to_rh
    polarity3 polarity2 htheta
  · exact
      clauseIndexedPinnedPrimeWeightFixedBertrandRatio_to_recurrence
        hcriterion3
  · exact
      clauseIndexedPinnedPrimeWeightFixedBertrandRatio_to_recurrence
        hcriterion2

end GRWTSK.RiemannHypothesis
```
