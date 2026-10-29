-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SourceDiagonalMainTerm.Variant1323089fec5f5d33f80e6dde145ff68ae9fb00cef25863bb4aedc610542ac070","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"1323089fec5f5d33f80e6dde145ff68ae9fb00cef25863bb4aedc610542ac070","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.SourceDiagonalMainTerm.Variant1323089fec5f5d33f80e6dde145ff68ae9fb00cef25863bb4aedc610542ac070","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"1323089fec5f5d33f80e6dde145ff68ae9fb00cef25863bb4aedc610542ac070","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/diagonal-main/hostile-fixtures.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.RiemannHypothesis.SourceDiagonalMainTerm

namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SourceDiagonalMainTerm.Variant1323089fec5f5d33f80e6dde145ff68ae9fb00cef25863bb4aedc610542ac070

open MeasureTheory
open FormalResearch.RiemannHypothesis.SourcePairing
open FormalResearch.RiemannHypothesis.SourceDiagonalMainTerm
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.Realization
example : diagonalMainCoefficient 1 = (221 / 873180 : ℝ) := by
  norm_num [diagonalMainCoefficient, sourceNormalization]
example : diagonalMainCoefficient 1 ≠ (2431 / 8820 : ℝ) := by
  norm_num [diagonalMainCoefficient, sourceNormalization]
example : (∫ t in (0 : ℝ)..1, sourceCorrelation explicitSecondDerivative 1 (2 * t)) =
    (221 / 873180 : ℝ) := by
  rw [actual_source_half_integral 1 (by norm_num)]
  norm_num [sourceNormalization]
