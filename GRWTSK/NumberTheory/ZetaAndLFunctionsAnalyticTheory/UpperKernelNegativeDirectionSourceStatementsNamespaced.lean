-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.UpperKernelNegativeDirection.Variant3363cfc81a3f12707910f1385fd19db0ce87669ba2bb1079dc7e094ef5af251b","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"3363cfc81a3f12707910f1385fd19db0ce87669ba2bb1079dc7e094ef5af251b","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.UpperKernelNegativeDirection.Variant3363cfc81a3f12707910f1385fd19db0ce87669ba2bb1079dc7e094ef5af251b","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"3363cfc81a3f12707910f1385fd19db0ce87669ba2bb1079dc7e094ef5af251b","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/upper-cancellation/UpperKernelNegativeDirectionSourceStatements.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.RiemannHypothesis.SourceComparison.UpperKernelNegativeDirection


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.UpperKernelNegativeDirection.Variant3363cfc81a3f12707910f1385fd19db0ce87669ba2bb1079dc7e094ef5af251b

section UpperKernelNegativeDirectionExactStatements
open Finset
open FormalResearch.RiemannHypothesis.SourceComparison
open FormalResearch.RiemannHypothesis.SourceComparison.UpperKernelNegativeDirection

example : (3 : ℝ) ≤ Real.log 32 := log_thirty_two_ge_three

example :
    23 ∈ Ioc (⌊Real.exp (Real.log (32 : ℝ))⌋₊ / 2) ⌊Real.exp (Real.log (32 : ℝ))⌋₊ ∧
    17 ∈ Ioc (⌊Real.exp (Real.log (32 : ℝ))⌋₊ / 2) ⌊Real.exp (Real.log (32 : ℝ))⌋₊ :=
  actual_upper_pair

example : SourceSampling.sourceSamplingKernel (Real.log 32) ((23 : ℝ) * 23) = 0 :=
  actual_diagonal_zero

example : 0 < SourceSampling.sourceSamplingKernel (Real.log 32) ((23 : ℝ) * 17) :=
  actual_offDiagonal_pos

example :
    SourceSampling.sourceSamplingKernel (Real.log 32) ((23 : ℝ) * 23) *
      SourceSampling.sourceSamplingKernel (Real.log 32) ((17 : ℝ) * 17) -
      SourceSampling.sourceSamplingKernel (Real.log 32) ((23 : ℝ) * 17) ^ 2 < 0 :=
  actual_pair_determinant_neg

example : ∃ u v : ℝ,
    u ^ 2 * SourceSampling.sourceSamplingKernel (Real.log 32) ((23 : ℝ) * 23) +
    2 * u * v * SourceSampling.sourceSamplingKernel (Real.log 32) ((23 : ℝ) * 17) +
    v ^ 2 * SourceSampling.sourceSamplingKernel (Real.log 32) ((17 : ℝ) * 17) = -1 :=
  actual_negative_direction

example : ¬∀ u v : ℝ,
    0 ≤ u ^ 2 * SourceSampling.sourceSamplingKernel (Real.log 32) ((23 : ℝ) * 23) +
      2 * u * v * SourceSampling.sourceSamplingKernel (Real.log 32) ((23 : ℝ) * 17) +
      v ^ 2 * SourceSampling.sourceSamplingKernel (Real.log 32) ((17 : ℝ) * 17) :=
  not_actual_pair_positiveSemidefinite

end UpperKernelNegativeDirectionExactStatements
