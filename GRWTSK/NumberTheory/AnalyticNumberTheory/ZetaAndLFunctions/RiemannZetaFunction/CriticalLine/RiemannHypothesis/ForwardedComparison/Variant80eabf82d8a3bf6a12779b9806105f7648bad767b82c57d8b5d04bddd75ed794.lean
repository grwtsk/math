-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.OccurrenceSumEqWeightedPoints.Variant7a8b58e38c0a51d8e8e3fc6b7ab8cad7b3d44269fd64d3617cd65c1f94df771d","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"7a8b58e38c0a51d8e8e3fc6b7ab8cad7b3d44269fd64d3617cd65c1f94df771d","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.OccurrenceSumEqWeightedPoints.Variant7a8b58e38c0a51d8e8e3fc6b7ab8cad7b3d44269fd64d3617cd65c1f94df771d","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"7a8b58e38c0a51d8e8e3fc6b7ab8cad7b3d44269fd64d3617cd65c1f94df771d","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/weil-lineage-d360/ForwardedComparison.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.RiemannHypothesis.WeilSource.Comparison
import FormalResearch.RiemannHypothesis.SourceComparison.WeilInput
import FormalResearch.RiemannHypothesis.SourceComparison.WeilArithmetic
import FormalResearch.RiemannHypothesis.SourceComparison.ZeroEquality

/-!
# The exact arithmetic--zero comparison for the original source

The proof applies the proved Weil explicit formula to the actual C²
unnormalized autocorrelation. Its prime, gamma and pole terms are identified
with the independently defined source arithmetic form. Absolute summability
justifies regrouping every analytic-multiplicity occurrence into its finite
zero-point fibre, and the existing admission/scaling reconstruction supplies
the unchanged full `ZeroSideIdentityObligation`.

This comparison does not prove or assume any uniform or polynomial lower bound.
-/


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.OccurrenceSumEqWeightedPoints.Variant7a8b58e38c0a51d8e8e3fc6b7ab8cad7b3d44269fd64d3617cd65c1f94df771d

namespace FormalResearch.RiemannHypothesis.SourceComparison.WeilComparison

open MeasureTheory
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open FormalResearch.RiemannHypothesis.SourcePairing
open ZeroSideTargets ZeroObject BridgeAdmissibility
open WeilAutocorrelation WeilArithmetic ZeroEquality

noncomputable section

/-- Regroup all original slots only after establishing absolute summability. -/
theorem occurrence_sum_eq_weighted_points (A : ℝ) (hA : 1 ≤ A) :
    (∑' o : ZeroOccurrence, bilateralTransform A (shiftedValue o) ^ 2) =
      ∑' p : ZeroPoint, (multiplicity p : ℂ) *
        bilateralTransform A (p.val - 1 / 2) ^ 2 := by
  have hs := SourceZeroSummability.source_transform_squares_summable A hA
  calc
    _ = ∑' p : ZeroPoint, ∑' i : Fin (multiplicity p),
        bilateralTransform A (shiftedValue ⟨p, i⟩) ^ 2 := hs.tsum_sigma
    _ = _ := by
      apply tsum_congr
      intro p
      simp [shiftedValue, tsum_fintype, nsmul_eq_mul]

/-- The formula on distinct actual zero points with their exact analytic weights. -/
theorem weighted_zero_identity (A : ℝ) (hA : 1 ≤ A) :
    (∑' p : ZeroPoint, (multiplicity p : ℂ) *
      bilateralTransform A (p.val - 1 / 2) ^ 2) =
      (realArithmeticForm A (actualTest A) : ℂ) := by
  have h := (WeilInput.weil_formula (kernel A) (kernel_contDiff A hA)
    (kernel_hasCompactSupport A hA)).2
  simp only [paperFT_kernel_zero_argument A hA] at h
  rw [literatureRHS_eq_arithmetic A hA] at h
  exact h

/-- The independently defined arithmetic form equals the full occurrence sum. -/
theorem arithmetic_zero_equality : ArithmeticZeroEqualityObligation := by
  intro A hA
  rw [occurrence_sum_eq_weighted_points A hA]
  exact (weighted_zero_identity A hA).symm

/-- Genuine convergence, not a totalized divergent sum. -/
theorem arithmetic_zero_hasSum : ArithmeticZeroHasSumObligation :=
  arithmetic_zero_equality_iff_hasSum.mp arithmetic_zero_equality

/-- Full original obligation, including admission, summability and both equalities. -/
theorem zero_side_identity : ZeroSideIdentityObligation :=
  FormalResearch.RiemannHypothesis.WeilSource.zero_side_identity

/-- The normalization-sensitive source identity stated as a convergent sum. -/
theorem source_hasSum (A : ℝ) (hA : 1 ≤ A) :
    HasSum (fun o : ZeroOccurrence ↦ bilateralTransform A (shiftedValue o) ^ 2)
      ((sourceNormalization A *
        sourceQuadraticValue Realization.explicitSecondDerivative A : ℝ) : ℂ) := by
  rw [Admission.normalization_scaling_comparison A hA]
  exact arithmetic_zero_hasSum A hA

/-- Exact normalized identity with all occurrences and ordinary complex squares. -/
theorem source_identity (A : ℝ) (hA : 1 ≤ A) :
    ((sourceNormalization A *
      sourceQuadraticValue Realization.explicitSecondDerivative A : ℝ) : ℂ) =
      ∑' o : ZeroOccurrence, bilateralTransform A (shiftedValue o) ^ 2 :=
  (source_hasSum A hA).tsum_eq.symm

#print zero_side_identity
#print axioms zero_side_identity
#print axioms source_identity

end
end FormalResearch.RiemannHypothesis.SourceComparison.WeilComparison
