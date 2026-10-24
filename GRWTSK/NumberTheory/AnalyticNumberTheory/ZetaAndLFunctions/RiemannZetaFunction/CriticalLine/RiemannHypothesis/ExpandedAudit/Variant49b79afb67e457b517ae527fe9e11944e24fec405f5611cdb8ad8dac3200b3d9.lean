-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SourceSquarefreeLedger.Variant13684ec406259e6abe5afcb289ed7c0ee6207d1599a00e11a07fdc5772ca5246","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"13684ec406259e6abe5afcb289ed7c0ee6207d1599a00e11a07fdc5772ca5246","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.SourceSquarefreeLedger.Variant13684ec406259e6abe5afcb289ed7c0ee6207d1599a00e11a07fdc5772ca5246","mathematical_subject":"Foundations.Unclassified","original_sha256":"13684ec406259e6abe5afcb289ed7c0ee6207d1599a00e11a07fdc5772ca5246","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-balance-overnight-20261007/graph-review/independent-squarefree-ledger/fresh-replay/ExpandedAudit.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","interpolated_literals","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import SourceSquarefreeLedger

namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SourceSquarefreeLedger.Variant13684ec406259e6abe5afcb289ed7c0ee6207d1599a00e11a07fdc5772ca5246

set_option linter.hashCommand false
#check RH16SquarefreeLedger.squarefreeLedgerCost
#print axioms RH16SquarefreeLedger.squarefreeLedgerCost
#check RH16SquarefreeLedger.actual_ledger_error_tail_squarefree
#print axioms RH16SquarefreeLedger.actual_ledger_error_tail_squarefree
#check RH16SquarefreeLedger.squarefreeResidualBudget
#print axioms RH16SquarefreeLedger.squarefreeResidualBudget
#check RH16SquarefreeLedger.squarefreeResidualBudget_nonneg
#print axioms RH16SquarefreeLedger.squarefreeResidualBudget_nonneg
#check RH16SquarefreeLedger.residual_tail_of_readout_squarefree
#print axioms RH16SquarefreeLedger.residual_tail_of_readout_squarefree
#check RH16SquarefreeLedger.estimate_of_readout_squarefree
#print axioms RH16SquarefreeLedger.estimate_of_readout_squarefree
open Lean Elab Command
run_cmd do
  let env ← getEnv
  for m in env.allImportedModuleNames do
    logInfo m!"RH16_IMPORT {m}"
