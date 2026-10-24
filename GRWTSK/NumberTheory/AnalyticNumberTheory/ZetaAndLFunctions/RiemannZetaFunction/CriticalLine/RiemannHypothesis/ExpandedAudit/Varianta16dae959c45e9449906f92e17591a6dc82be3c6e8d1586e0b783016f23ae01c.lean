-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SourceFourNineLedger.Variant7414235e54879b4e03a31faff5d2548f051dcbb863aefa7ee6255b412d719d75","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"7414235e54879b4e03a31faff5d2548f051dcbb863aefa7ee6255b412d719d75","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.SourceFourNineLedger.Variant7414235e54879b4e03a31faff5d2548f051dcbb863aefa7ee6255b412d719d75","mathematical_subject":"Foundations.Unclassified","original_sha256":"7414235e54879b4e03a31faff5d2548f051dcbb863aefa7ee6255b412d719d75","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-balance-overnight-20261007/graph-review/four-nine-native/author-ledger-audit-replay/ExpandedAudit.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","interpolated_literals","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import SourceFourNineLedger

namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SourceFourNineLedger.Variant7414235e54879b4e03a31faff5d2548f051dcbb863aefa7ee6255b412d719d75

set_option linter.hashCommand false
#check RH16FourNineLedger.fourNineLedgerCost
#print axioms RH16FourNineLedger.fourNineLedgerCost
#check RH16FourNineLedger.actual_ledger_error_tail_four_nine
#print axioms RH16FourNineLedger.actual_ledger_error_tail_four_nine
#check RH16FourNineLedger.fourNineLedgerCost_antitone
#print axioms RH16FourNineLedger.fourNineLedgerCost_antitone
#check RH16FourNineLedger.fourNineLedgerCost_ninety_one_lt_1168
#print axioms RH16FourNineLedger.fourNineLedgerCost_ninety_one_lt_1168
#check RH16FourNineLedger.fourNineLedgerCost_lt_1168
#print axioms RH16FourNineLedger.fourNineLedgerCost_lt_1168
#check RH16FourNineLedger.actual_ledger_error_tail_lt_1168
#print axioms RH16FourNineLedger.actual_ledger_error_tail_lt_1168
#check RH16FourNineLedger.residual_tail_of_readout_four_nine
#print axioms RH16FourNineLedger.residual_tail_of_readout_four_nine
#check RH16FourNineLedger.all_real_lower_of_readout_four_nine
#print axioms RH16FourNineLedger.all_real_lower_of_readout_four_nine
#check RH16FourNineLedger.all_real_lower_with_fixed_four_nine_cap
#print axioms RH16FourNineLedger.all_real_lower_with_fixed_four_nine_cap
#check RH16FourNineLedger.estimate_of_readout_fixed_four_nine_cap
#print axioms RH16FourNineLedger.estimate_of_readout_fixed_four_nine_cap
open Lean Elab Command
run_cmd do
  let env ← getEnv
  for m in env.allImportedModuleNames do
    logInfo m!"RH16_IMPORT {m}"
