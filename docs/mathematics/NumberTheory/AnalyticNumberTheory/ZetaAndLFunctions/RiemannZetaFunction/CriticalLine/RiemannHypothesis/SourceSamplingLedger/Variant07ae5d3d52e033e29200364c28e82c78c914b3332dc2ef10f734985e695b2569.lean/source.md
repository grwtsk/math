# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SourceSamplingLedger.Variant07ae5d3d52e033e29200364c28e82c78c914b3332dc2ef10f734985e695b2569

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `14d846eb0e168a06abfce8cf849f747b77b5174a` · SHA-256 `07ae5d3d52e033e29200364c28e82c78c914b3332dc2ef10f734985e695b2569`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import SourceShortSamplingInventory
import SourceDiagonalMainTermReview
import SourceShortSamplingPointwise
import VaughanOperatorReview
import FormalResearch.RiemannHypothesis.SourceSamplingPointwise
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateBetaSourceRecombination

/-!
# Independent finite coefficient aggregation for the retained Vaughan ledger

This review adapter retains the exact finite centering compensation, short
Mangoldt term, and normalized diagonal contribution. The sampling coefficient
rows are defined independently of the ledger. No signed covariance estimate is
asserted by their algebraic aggregation.

AI attribution: developed with OpenAI Codex; proof terms are checked by Lean.
-/

set_option autoImplicit false

namespace FormalResearch.RiemannHypothesis.SourceSamplingLedger

open SourcePairing SourceDiagonalMainTerm SourceShortSamplingInventory
open SourceSamplingCoefficients SourceSamplingPointwise SourceShortSamplingPointwise
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization EstimateMertensAbel EstimateVaughanSource EstimateBetaCentering
open EstimateBetaSourceRecombination EstimateVaughanTranslationGate

noncomputable section

/-- Correlation and derivative rows use the actual normalized source. -/
def correlationRow (A k : ℝ) : ℝ :=
  sourceCorrelation explicitSecondDerivative A (Real.log k) / Real.sqrt k

def derivativeRow (A k : ℝ) : ℝ :=
  deriv (sourceCorrelation explicitSecondDerivative A) (Real.log k) / Real.sqrt k

/-- The four retained finite arithmetic coefficients carry their original signs. -/
def logCorrelationCoefficient (A : ℝ) : ℝ := shortLogMainTerm A (correlationRow A)
def logDerivativeCoefficient (A : ℝ) : ℝ := shortLogMainTerm A (derivativeRow A)
def plainCorrelationCoefficient (A : ℝ) : ℝ := shortPlainMainTerm A (correlationRow A)
def plainDerivativeCoefficient (A : ℝ) : ℝ := shortPlainMainTerm A (derivativeRow A)

/-- A plain sample with the constant and linear coefficients retained. -/
def plainLinearMain (A b₀ b₁ k : ℝ) : ℝ :=
  (b₀ * sourceCorrelation explicitSecondDerivative A (Real.log k) +
    b₁ * deriv (sourceCorrelation explicitSecondDerivative A) (Real.log k)) / Real.sqrt k

/-- The logarithmic sample has the shifted coefficient pair. -/
def logLinearMain (A b₁ b₂ k : ℝ) : ℝ := plainLinearMain A b₁ b₂ k

theorem shortLog_coefficient_aggregation (A b₁ b₂ : ℝ) :
    shortLogMainTerm A (logLinearMain A b₁ b₂) =
      b₁ * logCorrelationCoefficient A + b₂ * logDerivativeCoefficient A := by
  unfold shortLogMainTerm logLinearMain plainLinearMain logCorrelationCoefficient
    logDerivativeCoefficient shortLogMainTerm correlationRow derivativeRow
  rw [Finset.mul_sum, Finset.mul_sum, ← Finset.sum_add_distrib]
  apply Finset.sum_congr rfl
  intro d _
  ring

theorem shortPlain_coefficient_aggregation (A b₀ b₁ : ℝ) :
    shortPlainMainTerm A (plainLinearMain A b₀ b₁) =
      b₀ * plainCorrelationCoefficient A + b₁ * plainDerivativeCoefficient A := by
  unfold shortPlainMainTerm plainLinearMain plainCorrelationCoefficient
    plainDerivativeCoefficient shortPlainMainTerm correlationRow derivativeRow
  rw [Finset.mul_sum, Finset.mul_sum, ← Finset.sum_add_distrib]
  apply Finset.sum_congr rfl
  intro d _
  rw [Finset.mul_sum, Finset.mul_sum, ← Finset.sum_add_distrib]
  apply Finset.sum_congr rfl
  intro m _
  ring

/-- The independent main term uses only the four finite coefficient rows. -/
def coefficientMainTerm (A b₀ b₁ b₂ : ℝ) : ℝ :=
  alpha (vaughanCutoff A) * plainTypeTwoOffDiagonal A +
    diagonalMainCoefficient A * A - Real.log (vaughanCutoff A : ℝ) -
    shortMangoldtSource A - b₁ * logCorrelationCoefficient A -
    b₂ * logDerivativeCoefficient A + b₀ * plainCorrelationCoefficient A +
    b₁ * plainDerivativeCoefficient A

theorem coefficientMainTerm_eq_sampling_inventory (A b₀ b₁ b₂ : ℝ) :
    coefficientMainTerm A b₀ b₁ b₂ =
      alpha (vaughanCutoff A) * plainTypeTwoOffDiagonal A +
        diagonalMainCoefficient A * A - Real.log (vaughanCutoff A : ℝ) -
        shortMangoldtSource A - shortLogMainTerm A (logLinearMain A b₁ b₂) +
        shortPlainMainTerm A (plainLinearMain A b₀ b₁) := by
  rw [shortLog_coefficient_aggregation, shortPlain_coefficient_aggregation]
  unfold coefficientMainTerm
  ring

/-- The exact signed ledger difference, before taking any absolute value. -/
theorem ledger_plus_coefficientMainTerm (A b₀ b₁ b₂ : ℝ) :
    betaMainLedger A + coefficientMainTerm A b₀ b₁ b₂ =
      (typeTwoDiagonal A + diagonalMainCoefficient A * A -
        Real.log (vaughanCutoff A : ℝ)) +
      (shortLogSource A - shortLogMainTerm A (logLinearMain A b₁ b₂)) -
      (shortPlainSource A - shortPlainMainTerm A (plainLinearMain A b₀ b₁)) := by
  rw [coefficientMainTerm_eq_sampling_inventory]
  unfold betaMainLedger
  ring

/-- Independent diagonal and sampling replacement budgets add only after cancellation. -/
theorem ledger_error_of_sampling_bounds (b₀ b₁ b₂ E : ℝ) (hE : 0 ≤ E)
    (hlog : ∀ A : ℝ, 1 ≤ A →
      |shortLogSource A - shortLogMainTerm A (logLinearMain A b₁ b₂)| ≤ 2 * E)
    (hplain : ∀ A : ℝ, 1 ≤ A →
      |shortPlainSource A - shortPlainMainTerm A (plainLinearMain A b₀ b₁)| ≤
        4 * (Real.log 4 + 4) * E) :
    ∃ C_F : ℝ, 0 ≤ C_F ∧ ∀ A : ℝ, 1 ≤ A →
      |betaMainLedger A + coefficientMainTerm A b₀ b₁ b₂| ≤ C_F := by
  obtain ⟨C_D, hD0, hD⟩ :=
    VaughanDiagonalMainTermReview.actual_diagonal_main_term_error
  refine ⟨C_D + 2 * E + 4 * (Real.log 4 + 4) * E, by positivity, ?_⟩
  intro A hA
  rw [ledger_plus_coefficientMainTerm]
  have hd := hD A hA
  change |EstimateVaughanTranslationGate.typeTwoDiagonal A +
    diagonalMainCoefficient A * A - Real.log (vaughanCutoff A : ℝ)| ≤ C_D at hd
  calc
    _ ≤ |typeTwoDiagonal A + diagonalMainCoefficient A * A -
          Real.log (vaughanCutoff A : ℝ)| +
        |shortLogSource A - shortLogMainTerm A (logLinearMain A b₁ b₂)| +
        |shortPlainSource A - shortPlainMainTerm A (plainLinearMain A b₀ b₁)| :=
      by
        have h₁ := abs_add_le
          (typeTwoDiagonal A + diagonalMainCoefficient A * A -
            Real.log (vaughanCutoff A : ℝ))
          (shortLogSource A - shortLogMainTerm A (logLinearMain A b₁ b₂))
        have h₂ := abs_add_le
          ((typeTwoDiagonal A + diagonalMainCoefficient A * A -
            Real.log (vaughanCutoff A : ℝ)) +
            (shortLogSource A - shortLogMainTerm A (logLinearMain A b₁ b₂)))
          (-(shortPlainSource A - shortPlainMainTerm A (plainLinearMain A b₀ b₁)))
        rw [abs_neg] at h₂
        rw [sub_eq_add_neg]
        linarith
    _ ≤ _ := add_le_add (add_le_add hd (hlog A hA)) (hplain A hA)

/-- The concrete source main term uses the proved signed universal coefficients. -/
def independentMainTerm (A : ℝ) : ℝ :=
  coefficientMainTerm A samplingAlpha0 samplingAlpha1 samplingAlpha2

/-- A common pointwise budget feeds both original short-inventory consumers. -/
def samplingInventoryError : ℝ := 96 * (162826 / 7623 : ℝ)

theorem samplingInventoryError_nonneg : 0 ≤ samplingInventoryError := by
  norm_num [samplingInventoryError]

theorem actual_shortLog_error (A : ℝ) (hA : 1 ≤ A) :
    |shortLogSource A - shortLogMainTerm A (sourceLogSamplingMainTerm A)| ≤
      2 * samplingInventoryError / A := by
  apply shortLog_error_le_of_sampling_error hA samplingInventoryError_nonneg
  intro d hd
  have hd1 : (1 : ℝ) ≤ d := by exact_mod_cast (Finset.mem_Icc.mp hd).1
  simpa only [samplingInventoryError] using
    sourceMobiusKernel_sub_mainTerm_abs_le hA hd1

theorem actual_shortLog_uniform_error (A : ℝ) (hA : 1 ≤ A) :
    |shortLogSource A - shortLogMainTerm A (sourceLogSamplingMainTerm A)| ≤
      2 * samplingInventoryError := by
  exact (actual_shortLog_error A hA).trans
    (div_le_self (mul_nonneg (by norm_num) samplingInventoryError_nonneg) hA)

theorem actual_shortPlain_uniform_error (A : ℝ) (hA : 1 ≤ A) :
    |shortPlainSource A - shortPlainMainTerm A (sourcePlainSamplingMainTerm A)| ≤
      4 * (Real.log 4 + 4) * samplingInventoryError := by
  apply shortPlain_error_uniform_le_of_sampling_error hA samplingInventoryError_nonneg
  intro d hd m hm
  have hd1 : 1 ≤ d := (Finset.mem_Icc.mp hd).1
  have hm1 : 1 ≤ m := (Finset.mem_Icc.mp hm).1
  have hp1 : (1 : ℝ) ≤ (d * m : ℕ) := by
    exact_mod_cast Nat.mul_le_mul hd1 hm1
  have he := sourcePlainKernel_sub_mainTerm_abs_le hA hp1
  apply he.trans
  unfold samplingInventoryError
  gcongr
  norm_num

/-- Exact arithmetic aggregation of the actual retained logarithmic coefficients. -/
theorem actual_shortLog_coefficient_aggregation (A : ℝ) :
    shortLogMainTerm A (sourceLogSamplingMainTerm A) =
      samplingAlpha1 * logCorrelationCoefficient A +
        samplingAlpha2 * logDerivativeCoefficient A :=
  shortLog_coefficient_aggregation A samplingAlpha1 samplingAlpha2

/-- Exact arithmetic aggregation of the actual doubly short plain coefficients. -/
theorem actual_shortPlain_coefficient_aggregation (A : ℝ) :
    shortPlainMainTerm A (sourcePlainSamplingMainTerm A) =
      samplingAlpha0 * plainCorrelationCoefficient A +
        samplingAlpha1 * plainDerivativeCoefficient A :=
  shortPlain_coefficient_aggregation A samplingAlpha0 samplingAlpha1

/-- The independently defined source main term has a uniformly bounded full ledger error. -/
theorem actual_ledger_uniform_error :
    ∃ C_F : ℝ, 0 ≤ C_F ∧ ∀ A : ℝ, 1 ≤ A →
      |betaMainLedger A + independentMainTerm A| ≤ C_F := by
  apply ledger_error_of_sampling_bounds samplingAlpha0 samplingAlpha1 samplingAlpha2
    samplingInventoryError samplingInventoryError_nonneg
  · exact actual_shortLog_uniform_error
  · exact actual_shortPlain_uniform_error

/-- The original residual splits into the joint signed deformation and the bounded ledger error. -/
theorem actual_residual_decomposition (A : ℝ) (hA : 1 ≤ A) :
    EstimateMertensResidual.mertensResidual A =
      (VaughanOperatorReview.covarianceOperatorValue A / 2 - independentMainTerm A) +
      (betaMainLedger A + independentMainTerm A) :=
  VaughanOperatorReview.mainTerm_subtraction_exact A (independentMainTerm A) hA

/-- The remaining joint upper-bound target is checked equivalent to the unchanged residual tail. -/
theorem independentMainTerm_tail_iff_mertensResidualTail :
    VaughanOperatorReview.JointMainTermTailUpperBound independentMainTerm ↔
      EstimateMertensResidual.MertensResidualTailUpperBound := by
  obtain ⟨C_F, hF0, hF⟩ := actual_ledger_uniform_error
  exact VaughanOperatorReview.jointMainTermTail_iff_residualTail_of_boundedLedgerError
    independentMainTerm C_F hF0 hF

end
end FormalResearch.RiemannHypothesis.SourceSamplingLedger
```
