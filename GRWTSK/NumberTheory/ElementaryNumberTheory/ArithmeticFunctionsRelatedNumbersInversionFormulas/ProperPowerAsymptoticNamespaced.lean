-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ProperPowerConstant.Variantd7272d8100676eb309e0635c1d008d3dae8548e1ba1eb37ed55f9f17655470fb","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"d7272d8100676eb309e0635c1d008d3dae8548e1ba1eb37ed55f9f17655470fb","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.ProperPowerConstant.Variantd7272d8100676eb309e0635c1d008d3dae8548e1ba1eb37ed55f9f17655470fb","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"d7272d8100676eb309e0635c1d008d3dae8548e1ba1eb37ed55f9f17655470fb","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/proper-prime-powers/ProperPowerAsymptotic.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.RiemannHypothesis.SourceComparison.PrimeSquareAsymptotic
import FormalResearch.RiemannHypothesis.SourceComparison.HigherPowerAsymptotic

/-!
# All proper prime powers and the exact remaining source expression

The square and higher sectors have genuine arithmetic constants and uniform
inverse-square errors. Their exact source split gives one proper-power
asymptotic, preserving the strict cutoff and prime-two contributions. The
resulting full quadratic identity leaves the original archimedean and
first-prime expressions explicit; it does not estimate their cancellation.
-/

namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ProperPowerConstant.Variantd7272d8100676eb309e0635c1d008d3dae8548e1ba1eb37ed55f9f17655470fb

namespace ProperPowerAsymptoticScratch
open MeasureTheory Set
open FormalResearch.RiemannHypothesis.SourcePairing
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization
open FormalResearch.RiemannHypothesis.SourceComparison
open PrimeHarmonicRemainder PrimeSquareAsymptotic HigherPowerAsymptotic
open PrimeSquareSource HigherPowerSource ProperPrimePowers
noncomputable section

/-- The sum of the genuine prime-square centering and higher-power arithmetic constant. -/
def properPowerConstant : ℝ := thetaConstant + higherPowerConstant

/-- A finite uniform budget supplied by the two checked arithmetic moment bounds. -/
def properPowerBudget : ℝ := primeSquareErrorBudget + higherPowerBudget

/-- The exact signed deviation of the full proper-power contribution. -/
def properPowerError (A : ℝ) : ℝ :=
  -primeSquareError A + (higherPrimePowerContribution A - higherPowerConstant)

/-- The proper-power error with its original coefficient in the quadratic source. -/
def sourcePowerRemainder (A : ℝ) : ℝ := -2 * properPowerError A

theorem properPowerBudget_nonneg : 0 ≤ properPowerBudget :=
  add_nonneg primeSquareErrorBudget_nonneg higherPowerBudget_nonneg

theorem properPowerError_abs_le (A : ℝ) (hA : 1 ≤ A) :
    |properPowerError A| ≤ properPowerBudget / A ^ 2 := by
  unfold properPowerError
  calc
    _ ≤ |-primeSquareError A| + |higherPrimePowerContribution A - higherPowerConstant| :=
      abs_add_le _ _
    _ ≤ primeSquareErrorBudget / A ^ 2 + higherPowerBudget / A ^ 2 := by
      rw [abs_neg]
      exact add_le_add (primeSquareError_abs_le A hA) (actualHigherPower_deviation_bound A hA)
    _ = _ := by unfold properPowerBudget; ring

theorem properPrimePowerContribution_eq_main_add_error (A : ℝ) (hA : 1 ≤ A) :
    properPrimePowerContribution A =
      (256 / 315) ^ 2 * A / (64 * sourceNormalization A) + properPowerConstant +
        properPowerError A := by
  rw [properPrimePowerContribution_eq_square_add_higher,
    primeSquareContribution_eq_main_sub_error A hA]
  unfold properPowerConstant properPowerError
  ring

theorem properPrimePowerContribution_asymptotic_bound (A : ℝ) (hA : 1 ≤ A) :
    |properPrimePowerContribution A -
      ((256 / 315) ^ 2 * A / (64 * sourceNormalization A) + properPowerConstant)| ≤
        properPowerBudget / A ^ 2 := by
  rw [properPrimePowerContribution_eq_main_add_error A hA]
  have he : (256 / 315) ^ 2 * A / (64 * sourceNormalization A) + properPowerConstant +
      properPowerError A -
      ((256 / 315) ^ 2 * A / (64 * sourceNormalization A) + properPowerConstant) =
        properPowerError A := by ring
  rw [he]
  exact properPowerError_abs_le A hA

theorem actual_properPower_signed_asymptotic : ∃ C : ℝ, 0 ≤ C ∧
    ∀ A : ℝ, 1 ≤ A →
      |-2 * (∑ n ∈ (Cutoff.primeIndices A).filter (fun n => ¬n.Prime),
          ArithmeticFunction.vonMangoldt n / Real.sqrt (n : ℝ) *
            sourceCorrelation explicitSecondDerivative A (Real.log n)) +
        (256 / 315) ^ 2 * A / (32 * sourceNormalization A) + 2 * properPowerConstant| ≤
          C / A ^ 2 := by
  refine ⟨2 * properPowerBudget, mul_nonneg (by norm_num) properPowerBudget_nonneg, ?_⟩
  intro A hA
  change |-2 * properPrimePowerContribution A +
      (256 / 315) ^ 2 * A / (32 * sourceNormalization A) + 2 * properPowerConstant| ≤ _
  have he : -2 * properPrimePowerContribution A +
      (256 / 315) ^ 2 * A / (32 * sourceNormalization A) + 2 * properPowerConstant =
        -2 * (properPrimePowerContribution A -
          ((256 / 315) ^ 2 * A / (64 * sourceNormalization A) + properPowerConstant)) := by ring
  rw [he, abs_mul, show |(-2 : ℝ)| = 2 by norm_num]
  calc
    _ ≤ 2 * (properPowerBudget / A ^ 2) :=
      mul_le_mul_of_nonneg_left (properPrimePowerContribution_asymptotic_bound A hA) (by norm_num)
    _ = _ := by ring

theorem sourcePowerRemainder_abs_le (A : ℝ) (hA : 1 ≤ A) :
    |sourcePowerRemainder A| ≤ (2 * properPowerBudget) / A ^ 2 := by
  rw [sourcePowerRemainder, abs_mul, show |(-2 : ℝ)| = 2 by norm_num]
  calc
    _ ≤ 2 * (properPowerBudget / A ^ 2) :=
      mul_le_mul_of_nonneg_left (properPowerError_abs_le A hA) (by norm_num)
    _ = _ := by ring

theorem sourceQuadraticValue_exact_prime_remainder (A : ℝ) (hA : 1 ≤ A) :
    sourceQuadraticValue explicitSecondDerivative A =
      archimedeanValue explicitSecondDerivative A - 2 * PrimeSector.primeContribution A -
        (256 / 315) ^ 2 * A / (32 * sourceNormalization A) - 2 * properPowerConstant +
          sourcePowerRemainder A := by
  rw [sourceQuadraticValue, PrimeSector.prime_power_contribution_eq,
    properPrimePowerContribution_eq_main_add_error A hA]
  unfold sourcePowerRemainder
  ring

theorem sourceQuadraticValue_prime_remainder_bound (A : ℝ) (hA : 1 ≤ A) :
    |sourceQuadraticValue explicitSecondDerivative A -
      (archimedeanValue explicitSecondDerivative A - 2 * PrimeSector.primeContribution A -
        (256 / 315) ^ 2 * A / (32 * sourceNormalization A) - 2 * properPowerConstant)| ≤
          (2 * properPowerBudget) / A ^ 2 := by
  rw [sourceQuadraticValue_exact_prime_remainder A hA]
  have he : archimedeanValue explicitSecondDerivative A - 2 * PrimeSector.primeContribution A -
      (256 / 315) ^ 2 * A / (32 * sourceNormalization A) - 2 * properPowerConstant +
        sourcePowerRemainder A -
      (archimedeanValue explicitSecondDerivative A - 2 * PrimeSector.primeContribution A -
        (256 / 315) ^ 2 * A / (32 * sourceNormalization A) - 2 * properPowerConstant) =
          sourcePowerRemainder A := by ring
  rw [he]
  exact sourcePowerRemainder_abs_le A hA

end
end ProperPowerAsymptoticScratch
