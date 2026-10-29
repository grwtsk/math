-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SourceBalancedAdaptiveTailBudget.Variant1bb1929e2fede977b15f104dcca9b0df48299ec6d40b5192a184c84cf1f027a6","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"1bb1929e2fede977b15f104dcca9b0df48299ec6d40b5192a184c84cf1f027a6","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.SourceBalancedAdaptiveTailBudget.Variant1bb1929e2fede977b15f104dcca9b0df48299ec6d40b5192a184c84cf1f027a6","mathematical_subject":"Foundations.Unclassified","original_sha256":"1bb1929e2fede977b15f104dcca9b0df48299ec6d40b5192a184c84cf1f027a6","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-balance-overnight-20261007/graph-review/balanced-adaptive-tail-budget/author-fresh/ActualHeaderProbe.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","interpolated_literals","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import SourceBalancedAdaptiveTailBudget

namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SourceBalancedAdaptiveTailBudget.Variant1bb1929e2fede977b15f104dcca9b0df48299ec6d40b5192a184c84cf1f027a6

open Lean Elab Command
run_cmd do
  let env ← getEnv
  for mod in env.allImportedModuleNames do
    logInfo m!"RH16_IMPORT {mod}"
