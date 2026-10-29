-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ArithmeticZeroEquality.Variante70c379cc2ec691d88a06750ed26ff09b9429afa1c8413e2d3dc74f6fc4b103e","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"e70c379cc2ec691d88a06750ed26ff09b9429afa1c8413e2d3dc74f6fc4b103e","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.ArithmeticZeroEquality.Variante70c379cc2ec691d88a06750ed26ff09b9429afa1c8413e2d3dc74f6fc4b103e","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"e70c379cc2ec691d88a06750ed26ff09b9429afa1c8413e2d3dc74f6fc4b103e","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/weil-lineage-d360/FormalResearch/RiemannHypothesis/WeilSource/Comparison.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.RiemannHypothesis.WeilSource.Transforms
import FormalResearch.RiemannHypothesis.SourceComparison.ZeroEquality

/-!
# Unconditional arithmetic--zero comparison for the original dilation family

Apply the proved literature-form explicit formula to the C2 autocorrelation,
then transport each arithmetic term and each analytic-multiplicity occurrence.
The original arithmetic definition and ordinary complex squares are unchanged.
No arithmetic lower bound, positivity, or RH hypothesis is used or proved.
-/


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ArithmeticZeroEquality.Variante70c379cc2ec691d88a06750ed26ff09b9429afa1c8413e2d3dc74f6fc4b103e

namespace FormalResearch.RiemannHypothesis.WeilSource

open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open ZeroObject ZeroSideTargets BridgeAdmissibility
open FormalResearch.RiemannHypothesis.SourcePairing
open SourceComparison.ZeroEquality

noncomputable section

/-- The classical explicit formula specializes to the exact original arithmetic form. -/
theorem arithmetic_zero_equality : ArithmeticZeroEqualityObligation := by
  intro A hA
  have hef := explicit_formula (complexCorrelation A)
    (complexCorrelation_contDiff_two A hA) (complexCorrelation_hasCompactSupport A hA)
  calc
    (realArithmeticForm A (actualTest A) : ℂ) =
        Zeta23.EF.literatureRHS (complexCorrelation A) :=
      (literatureRHS_eq_source_form A hA).symm
    _ = ∑' p : Zeta23.zetaZeroConfig.carrier,
        (Zeta23.zetaZeroConfig.mult p : ℂ) *
          Zeta23.paperFT (complexCorrelation A) (Zeta23.gammaOf p) := hef.2.symm
    _ = ∑' p : Zeta23.zetaZeroConfig.carrier,
        (Zeta23.zetaZeroConfig.mult p : ℂ) *
          bilateralTransform A ((p : ℂ) - 1 / 2) ^ 2 := by
      apply tsum_congr
      intro p
      rw [paperFT_at_zero A hA]
    _ = ∑' o : ZeroOccurrence, bilateralTransform A (shiftedValue o) ^ 2 :=
      weighted_source_sum_eq_occurrences A hA

/-- The unchanged full source obligation, with every admission and summability field. -/
theorem zero_side_identity : ZeroSideIdentityObligation :=
  zero_side_identity_iff_arithmetic_zero_equality.mpr arithmetic_zero_equality

/-- The convergent ordinary-square family sums to the independently defined arithmetic form. -/
theorem arithmetic_zero_hasSum : ArithmeticZeroHasSumObligation :=
  arithmetic_zero_equality_iff_hasSum.mp arithmetic_zero_equality

/-- Exact normalization transports the convergent sum to the original scalar Z_A Q(A). -/
theorem normalized_hasSum (A : ℝ) (hA : 1 ≤ A) :
    HasSum (fun o : ZeroOccurrence ↦ bilateralTransform A (shiftedValue o) ^ 2)
      ((sourceNormalization A *
        sourceQuadraticValue Realization.explicitSecondDerivative A : ℝ) : ℂ) := by
  simpa only [SourceComparison.Admission.unnormalized_form_eq_source A hA] using
    arithmetic_zero_hasSum A hA

/-- The exact source equality, without a comparison, estimate, or zero-location premise. -/
theorem original_source_equality (A : ℝ) (hA : 1 ≤ A) :
    ((sourceNormalization A *
      sourceQuadraticValue Realization.explicitSecondDerivative A : ℝ) : ℂ) =
      ∑' o : ZeroOccurrence, bilateralTransform A (shiftedValue o) ^ 2 :=
  (normalized_hasSum A hA).tsum_eq.symm

end
end FormalResearch.RiemannHypothesis.WeilSource
