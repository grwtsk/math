-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SelbergSourceWeight.Variant75fde374504bcabc9e27dd1a746b3b5be88c0a1baa0f14798c64765365bef326","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"75fde374504bcabc9e27dd1a746b3b5be88c0a1baa0f14798c64765365bef326","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.SelbergSourceWeight.Variant75fde374504bcabc9e27dd1a746b3b5be88c0a1baa0f14798c64765365bef326","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"75fde374504bcabc9e27dd1a746b3b5be88c0a1baa0f14798c64765365bef326","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/mobius-quadrature/SelbergSourceTransport.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.RiemannHypothesis.SourceComparison.SelbergConvolution
import FormalResearch.RiemannHypothesis.SourceComparison.HigherPowerSource


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SelbergSourceWeight.Variant75fde374504bcabc9e27dd1a746b3b5be88c0a1baa0f14798c64765365bef326

set_option autoImplicit false
namespace FormalResearch.RiemannHypothesis.SourceComparison.SelbergSourceTransport
open Finset
open FormalResearch.RiemannHypothesis.SourcePairing
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization SelbergConvolution
noncomputable section

/-- The actual signed source weight after removal of the nonzero logarithmic factor. -/
def selbergSourceWeight (A : ℝ) (n : ℕ) : ℝ :=
  sourceCorrelation explicitSecondDerivative A (Real.log n) /
    (Real.sqrt (n : ℝ) * Real.log (n : ℝ))

/-- The full Mangoldt self-convolution retains every divisor and the original strict cutoff. -/
def mangoldtConvolutionContribution (A : ℝ) : ℝ :=
  ∑ n ∈ Cutoff.primeIndices A,
    (∑ d ∈ n.divisors,
      ArithmeticFunction.vonMangoldt d * ArithmeticFunction.vonMangoldt (n / d)) *
        selbergSourceWeight A n

/-- An exact identity for each permitted source index; no sign of the correlation is assumed. -/
theorem weighted_selberg_identity (A : ℝ) (n : ℕ) (hn : 2 ≤ n) :
    selbergCoefficient n * selbergSourceWeight A n =
      ArithmeticFunction.vonMangoldt n / Real.sqrt (n : ℝ) *
        sourceCorrelation explicitSecondDerivative A (Real.log n) +
      (∑ d ∈ n.divisors,
        ArithmeticFunction.vonMangoldt d * ArithmeticFunction.vonMangoldt (n / d)) *
          selbergSourceWeight A n := by
  have hnR : (1 : ℝ) < n := by exact_mod_cast (show 1 < n by omega)
  have hl : Real.log (n : ℝ) ≠ 0 := (Real.log_pos hnR).ne'
  unfold selbergCoefficient selbergSourceWeight
  field_simp

/-- The Selberg rearrangement is bound to the complete original source sum. -/
theorem primePowerContribution_eq_selberg_difference (A : ℝ) :
    primePowerContribution explicitSecondDerivative A =
      (∑ n ∈ Cutoff.primeIndices A, selbergCoefficient n * selbergSourceWeight A n) -
        mangoldtConvolutionContribution A := by
  unfold mangoldtConvolutionContribution
  rw [← Finset.sum_sub_distrib]
  change (∑ n ∈ Cutoff.primeIndices A,
    ArithmeticFunction.vonMangoldt n / Real.sqrt (n : ℝ) *
      sourceCorrelation explicitSecondDerivative A (Real.log n)) = _
  apply Finset.sum_congr rfl
  intro n hn
  have hn2 : 2 ≤ n := ((Cutoff.mem_primeIndices_iff A n).mp hn).1
  have h := weighted_selberg_identity A n hn2
  linarith

/-- Both signed weighted convolutions remain in the unchanged quadratic source. -/
theorem sourceQuadraticValue_eq_selberg_difference (A : ℝ) :
    sourceQuadraticValue explicitSecondDerivative A =
      archimedeanValue explicitSecondDerivative A -
        2 * (∑ n ∈ Cutoff.primeIndices A, selbergCoefficient n * selbergSourceWeight A n) +
        2 * mangoldtConvolutionContribution A := by
  unfold sourceQuadraticValue
  rw [primePowerContribution_eq_selberg_difference]
  ring

end
end FormalResearch.RiemannHypothesis.SourceComparison.SelbergSourceTransport
