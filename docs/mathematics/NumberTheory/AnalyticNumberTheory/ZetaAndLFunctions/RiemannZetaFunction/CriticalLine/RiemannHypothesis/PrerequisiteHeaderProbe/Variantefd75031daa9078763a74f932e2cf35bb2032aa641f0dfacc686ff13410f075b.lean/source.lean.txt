-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SourceSquarefreeSampling.Variant48725c9170ec4675c565d0a5b39c15862b8de125b9b6edb123728f04ecea0fc7","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"48725c9170ec4675c565d0a5b39c15862b8de125b9b6edb123728f04ecea0fc7","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.SourceSquarefreeSampling.Variant48725c9170ec4675c565d0a5b39c15862b8de125b9b6edb123728f04ecea0fc7","mathematical_subject":"Foundations.Unclassified","original_sha256":"48725c9170ec4675c565d0a5b39c15862b8de125b9b6edb123728f04ecea0fc7","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-balance-overnight-20261007/graph-review/independent-squarefree-sampling-consumer/fresh-replay/PrerequisiteHeaderProbe.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","interpolated_literals","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import SourceSquarefreeSampling
import SourceExactSamplingTail

namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SourceSquarefreeSampling.Variant48725c9170ec4675c565d0a5b39c15862b8de125b9b6edb123728f04ecea0fc7

open Lean Elab Command
run_cmd do
  let env ← getEnv
  for m in env.allImportedModuleNames do
    logInfo m!"RH16_IMPORT {m}"
