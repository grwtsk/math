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
