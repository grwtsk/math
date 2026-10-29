-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.AssumptionBudgetEntry.Variant643d52398298a300d943aa4618ed29b8753d1d8ae7403a3f9ac5646876d6f063","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"643d52398298a300d943aa4618ed29b8753d1d8ae7403a3f9ac5646876d6f063","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.AssumptionBudgetEntry.Variant643d52398298a300d943aa4618ed29b8753d1d8ae7403a3f9ac5646876d6f063","mathematical_subject":"Computation.DataStructures","original_sha256":"643d52398298a300d943aa4618ed29b8753d1d8ae7403a3f9ac5646876d6f063","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/ProofSafety/AssumptionBudget.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Folder.ProofSafety.Layer

/-!
# Folder.ProofSafety.AssumptionBudget

Radiation role: proof-governance
BinaryMatrix spine: This module records assumption budgets for final-proof audits.
Ontology: proof_safety.assumption_budget
Pivot role: verification
Zero typology: none
Contract boundary: policy
Composite stack role: proof-safety
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.AssumptionBudgetEntry.Variant643d52398298a300d943aa4618ed29b8753d1d8ae7403a3f9ac5646876d6f063

namespace Folder
namespace ProofSafety

structure AssumptionBudgetEntry where
  assumptionLabel : String
  sourceLayer : ProofLayer
  allowedInFinal : Prop
  sourceLabel : String

/--
Assumption budget for a theorem candidate.

This is a bookkeeping object: it records that a candidate final theorem has no
contract entries, no external witness entries, and no projection-style contract
accessors in its dependency cone.
-/
structure AssumptionBudget where
  theoremLabel : String
  entries : List AssumptionBudgetEntry
  noContractEntries : Prop
  noContractEntries_holds : noContractEntries
  noExternalWitnessEntries : Prop
  noExternalWitnessEntries_holds : noExternalWitnessEntries
  noIfSuppliedAccessors : Prop
  noIfSuppliedAccessors_holds : noIfSuppliedAccessors
  noCertifiedProjectionProofs : Prop
  noCertifiedProjectionProofs_holds : noCertifiedProjectionProofs
  sourceLabel : String

theorem assumption_budget_no_contract_entries
    (B : AssumptionBudget) :
    B.noContractEntries :=
  B.noContractEntries_holds

theorem assumption_budget_no_external_witness_entries
    (B : AssumptionBudget) :
    B.noExternalWitnessEntries :=
  B.noExternalWitnessEntries_holds

theorem assumption_budget_no_if_supplied_accessors
    (B : AssumptionBudget) :
    B.noIfSuppliedAccessors :=
  B.noIfSuppliedAccessors_holds

theorem assumption_budget_no_certified_projection_proofs
    (B : AssumptionBudget) :
    B.noCertifiedProjectionProofs :=
  B.noCertifiedProjectionProofs_holds

end ProofSafety
end Folder
