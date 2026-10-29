-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SourceSquarefreeDirectEstimate.Variant3579dbc4912e0ca36a1894e8146304944ef10c046dedcbafe5a2ce3d3891f04f","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"3579dbc4912e0ca36a1894e8146304944ef10c046dedcbafe5a2ce3d3891f04f","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.SourceSquarefreeDirectEstimate.Variant3579dbc4912e0ca36a1894e8146304944ef10c046dedcbafe5a2ce3d3891f04f","mathematical_subject":"Foundations.Unclassified","original_sha256":"3579dbc4912e0ca36a1894e8146304944ef10c046dedcbafe5a2ce3d3891f04f","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-balance-overnight-20261007/graph-review/independent-squarefree-direct-estimate/fresh-replay/ExpandedAudit.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","interpolated_literals","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import SourceSquarefreeDirectEstimate

namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SourceSquarefreeDirectEstimate.Variant3579dbc4912e0ca36a1894e8146304944ef10c046dedcbafe5a2ce3d3891f04f

set_option linter.hashCommand false
#check RH16SquarefreeDirectEstimate.all_real_lower_of_readout_squarefree
#print axioms RH16SquarefreeDirectEstimate.all_real_lower_of_readout_squarefree
#check RH16SquarefreeDirectEstimate.actual_negative_defect_cap_squarefree
#print axioms RH16SquarefreeDirectEstimate.actual_negative_defect_cap_squarefree
#check RH16SquarefreeDirectEstimate.estimate_of_readout_squarefree_direct
#print axioms RH16SquarefreeDirectEstimate.estimate_of_readout_squarefree_direct
open Lean Elab Command
run_cmd do
  let env ← getEnv
  for m in env.allImportedModuleNames do
    logInfo m!"RH16_IMPORT {m}"
