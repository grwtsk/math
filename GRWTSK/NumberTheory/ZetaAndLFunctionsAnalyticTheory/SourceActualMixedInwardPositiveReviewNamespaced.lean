-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SourceActualMixedInwardPositive.Variant9ed707483591b665ee26d6ceb147267db780b2a393a4fcf44954f2b82a1bb784","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"9ed707483591b665ee26d6ceb147267db780b2a393a4fcf44954f2b82a1bb784","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.SourceActualMixedInwardPositive.Variant9ed707483591b665ee26d6ceb147267db780b2a393a4fcf44954f2b82a1bb784","mathematical_subject":"Foundations.Unclassified","original_sha256":"9ed707483591b665ee26d6ceb147267db780b2a393a4fcf44954f2b82a1bb784","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-balance-overnight-20261007/reflection-analysis/independent-actual-mixed-inward-positive/native/SourceActualMixedInwardPositiveReview.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","interpolated_literals","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import SourceActualMixedInwardPositive

namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SourceActualMixedInwardPositive.Variant9ed707483591b665ee26d6ceb147267db780b2a393a4fcf44954f2b82a1bb784

open RH16ActualMixedInwardPositive
#print actual_mixed_inward_right
#print axioms actual_mixed_inward_right
#print actual_mixed_inward_left
#print axioms actual_mixed_inward_left
#print actual_source_ge_outward_right
#print axioms actual_source_ge_outward_right
#print actual_source_ge_outward_left
#print axioms actual_source_ge_outward_left

open Lean Elab Command
run_cmd do
  let env ← getEnv
  for mod in env.allImportedModuleNames do
    logInfo m!"RH16_IMPORT {mod}"
