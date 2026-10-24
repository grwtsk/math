/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI ChatGPT. -/
import GRWTSK.NumberTheory.Zeta.Riemann.ClauseIndexedPinnedPrimeWeight
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section

namespace GRWTSK.RiemannHypothesis.Checks.PinnedPrimeWeightFeatureNormControls

open GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Satisfiability
open GRWTSK.RiemannHypothesis
open GRWTSK.NumberTheory.ElementaryNumberTheory.ArithmeticFunctions.VonMangoldtFunction.DyadicDiscrepancy

/-- Canonical polarity used only to expose the exact numerical arity labels. -/
def positivePolarity (k : ℕ) : ClausePolarity k :=
  fun _ => true

/-- The pinned coefficient feature has one uniform non-PNT `l1` bound on every
dyadic source window. -/
theorem dyadic_prime_coefficient_uniform_bound (j : ℕ) :
    primeCoefficientL1 (dyadicScale j) ≤
      primeCoefficientL1Budget := by
  exact primeCoefficientL1_le_two_log_four
    (dyadicScale_pos j)

/-- Arity three and arity two retain the exact two open threshold criteria. -/
theorem concrete_three_clause_pinned_criterion :
    ClauseIndexedPinnedPrimeWeightCriterion
        (positivePolarity 3) ↔
      PinnedPrimeWeightCriterionAt ((7 : ℝ) / 8) :=
  threeClauseIndexedPinnedPrimeWeightCriterion_iff
    (positivePolarity 3)

theorem concrete_two_clause_pinned_criterion :
    ClauseIndexedPinnedPrimeWeightCriterion
        (positivePolarity 2) ↔
      PinnedPrimeWeightCriterionAt ((3 : ℝ) / 4) :=
  twoClauseIndexedPinnedPrimeWeightCriterion_iff
    (positivePolarity 2)

/-- Zero target coefficient and zero residual give a legitimate rank-one stage
record, but its response is identically zero. -/
def zeroPinnedPrimeWeightStage (X : ℕ) :
    PrimeThetaSeparableKernelStage X :=
  pinnedPrimeWeightStage X
    (fun _ => 0) (fun _ => 0) (fun _ => by norm_num)

@[simp]
theorem zeroPinnedPrimeWeightStage_response
    (X : ℕ) (v : ℝ) :
    (zeroPinnedPrimeWeightStage X).toKernelStage.response v = 0 := by
  simpa [zeroPinnedPrimeWeightStage] using
    (pinnedPrimeWeightStage_response_eq X
      (fun _ => 0) (fun _ => 0) (fun _ => by norm_num) v)

/-- The uniform source-feature norm theorem alone does not provide the missing
next-octave theta majorization. -/
theorem zero_pinned_stage_not_source_majorant
    (X : ℕ) (v : ℝ) :
    ¬ (|thetaError v| + 1 ≤
        |(zeroPinnedPrimeWeightStage X).toKernelStage.response v| /
            (X : ℝ) +
          (zeroPinnedPrimeWeightStage X).residual v) := by
  intro h
  simp [zeroPinnedPrimeWeightStage_response,
    zeroPinnedPrimeWeightStage, pinnedPrimeWeightStage] at h
  have hnonnegative : 0 ≤ |thetaError v| := abs_nonneg _
  linarith

/-- Exact source facts completed by this increment. -/
def completedSourceChannels : List String :=
  ["literal prime feature coefficient(p)=Lambda(p)/p=log(p)/p",
   "uniform dyadic prime-feature l1 bound <=2*log(4)",
   "one-factor source stage with the pinned coefficient on both sides",
   "exact rank-one response c(v)*(weighted prime amplitude)^2",
   "concrete feature-norm certificate with both budgets 2*log(4)"]

/-- Remaining analytic data for an actual threshold supplier. -/
def requiredAnalyticObligations : List String :=
  ["one source-derived target coefficient c_j(v) on every late transition",
   "one scale-uniform bound for |c_j(v)|",
   "exact next-octave theta majorization by the pinned rank-one response plus residual",
   "complete residual bound already at exponent Q(rho)+eta/2",
   "normalization and endpoint agreement with the selected explicit-formula source"]

/-- Explicit nonimplication boundary. -/
def prohibitedPromotions : List String :=
  ["uniform prime-weight l1 bound -> next-octave theta majorization",
   "rank-one response identity -> complete explicit-formula identity",
   "Chebyshev upper bound -> prime number theorem",
   "positive prime weights -> signed target theorem",
   "target coefficient bound -> descended residual theorem",
   "clause arity -> arithmetic source majorization",
   "MAX-3SAT hardness -> von Mangoldt response estimate",
   "conditional pinned-prime endpoint -> unconditional Riemann Hypothesis"]

end GRWTSK.RiemannHypothesis.Checks.PinnedPrimeWeightFeatureNormControls
