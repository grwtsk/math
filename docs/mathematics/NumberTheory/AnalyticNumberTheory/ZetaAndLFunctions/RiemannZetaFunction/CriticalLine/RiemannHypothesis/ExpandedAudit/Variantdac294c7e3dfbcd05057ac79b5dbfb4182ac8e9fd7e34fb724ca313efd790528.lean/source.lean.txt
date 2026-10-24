-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SourceSquarefreeSampling.Variantcebd93e9db064981b3b0de084bc8af760158a92ce82a44deb91eccca1c27ffe9","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"cebd93e9db064981b3b0de084bc8af760158a92ce82a44deb91eccca1c27ffe9","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.SourceSquarefreeSampling.Variantcebd93e9db064981b3b0de084bc8af760158a92ce82a44deb91eccca1c27ffe9","mathematical_subject":"Foundations.Unclassified","original_sha256":"cebd93e9db064981b3b0de084bc8af760158a92ce82a44deb91eccca1c27ffe9","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-balance-overnight-20261007/graph-review/independent-squarefree-sampling/fresh-replay/ExpandedAudit.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","interpolated_literals","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import SourceSquarefreeSampling

namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SourceSquarefreeSampling.Variantcebd93e9db064981b3b0de084bc8af760158a92ce82a44deb91eccca1c27ffe9

set_option linter.hashCommand false
#check RH16SquarefreeSampling.reciprocalSqrtSum
#print axioms RH16SquarefreeSampling.reciprocalSqrtSum
#check RH16SquarefreeSampling.mobius_four_mul_zero
#print axioms RH16SquarefreeSampling.mobius_four_mul_zero
#check RH16SquarefreeSampling.reciprocalSqrtSum_upper_unit
#print axioms RH16SquarefreeSampling.reciprocalSqrtSum_upper_unit
#check RH16SquarefreeSampling.reciprocalSqrtSum_lower_next
#print axioms RH16SquarefreeSampling.reciprocalSqrtSum_lower_next
#check RH16SquarefreeSampling.squarefreeWeightSum
#print axioms RH16SquarefreeSampling.squarefreeWeightSum
#check RH16SquarefreeSampling.squarefreeWeightSum_subtract_four
#print axioms RH16SquarefreeSampling.squarefreeWeightSum_subtract_four
#check RH16SquarefreeSampling.squarefreeWeightSum_three_halves
#print axioms RH16SquarefreeSampling.squarefreeWeightSum_three_halves
open Lean Elab Command
run_cmd do
  let env ← getEnv
  for m in env.allImportedModuleNames do
    logInfo m!"RH16_IMPORT {m}"
