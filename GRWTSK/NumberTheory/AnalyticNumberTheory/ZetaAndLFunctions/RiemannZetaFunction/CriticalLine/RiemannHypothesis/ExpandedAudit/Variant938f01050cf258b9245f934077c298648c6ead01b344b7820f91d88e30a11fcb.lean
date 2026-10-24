-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SourceSquarefreeLedgerRadius.Variant810500c9266ed6edfcab4218418a40c3ed1eeae99805800c13d904d7e3eb8713","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"810500c9266ed6edfcab4218418a40c3ed1eeae99805800c13d904d7e3eb8713","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.SourceSquarefreeLedgerRadius.Variant810500c9266ed6edfcab4218418a40c3ed1eeae99805800c13d904d7e3eb8713","mathematical_subject":"Foundations.Unclassified","original_sha256":"810500c9266ed6edfcab4218418a40c3ed1eeae99805800c13d904d7e3eb8713","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-balance-overnight-20261007/root-squarefree-ledger-radius-review/fresh-replay/ExpandedAudit.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","interpolated_literals","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import SourceSquarefreeLedgerRadius

namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SourceSquarefreeLedgerRadius.Variant810500c9266ed6edfcab4218418a40c3ed1eeae99805800c13d904d7e3eb8713

set_option linter.hashCommand false
#check RH16SquarefreeLedgerRadius.squarefreeLedgerCost_antitone
#print axioms RH16SquarefreeLedgerRadius.squarefreeLedgerCost_antitone
#check RH16SquarefreeLedgerRadius.squarefreeLedgerCost_ninety_one_lt_1305
#print axioms RH16SquarefreeLedgerRadius.squarefreeLedgerCost_ninety_one_lt_1305
#check RH16SquarefreeLedgerRadius.squarefreeLedgerCost_lt_1305
#print axioms RH16SquarefreeLedgerRadius.squarefreeLedgerCost_lt_1305
#check RH16SquarefreeLedgerRadius.actual_ledger_error_tail_lt_1305
#print axioms RH16SquarefreeLedgerRadius.actual_ledger_error_tail_lt_1305
#check RH16SquarefreeLedgerRadius.all_real_lower_with_fixed_squarefree_cap
#print axioms RH16SquarefreeLedgerRadius.all_real_lower_with_fixed_squarefree_cap
#check RH16SquarefreeLedgerRadius.actual_negative_defect_cap_fixed_squarefree
#print axioms RH16SquarefreeLedgerRadius.actual_negative_defect_cap_fixed_squarefree
#check RH16SquarefreeLedgerRadius.estimate_of_readout_fixed_squarefree_cap
#print axioms RH16SquarefreeLedgerRadius.estimate_of_readout_fixed_squarefree_cap
open Lean Elab Command
run_cmd do
  let env ← getEnv
  for m in env.allImportedModuleNames do
    logInfo m!"RH16_IMPORT {m}"
