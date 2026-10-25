import Folder.ProofSafety.AssumptionBudget

/-!
# Folder.Theorem.ProofSafety.AssumptionBudget

Radiation role: theorem-wrapper
BinaryMatrix spine: This module re-exports assumption-budget facts.
Ontology: proof.proof_safety.assumption_budget
Pivot role: verification
Zero typology: none
Contract boundary: theorem-wrapper
Composite stack role: proof-safety
-/

namespace Folder
namespace Theorem
namespace ProofSafety

theorem assumption_budget_no_contract_entries
    (B : Folder.ProofSafety.AssumptionBudget) :
    B.noContractEntries :=
  Folder.ProofSafety.assumption_budget_no_contract_entries B

theorem assumption_budget_no_external_witness_entries
    (B : Folder.ProofSafety.AssumptionBudget) :
    B.noExternalWitnessEntries :=
  Folder.ProofSafety.assumption_budget_no_external_witness_entries B

theorem assumption_budget_no_if_supplied_accessors
    (B : Folder.ProofSafety.AssumptionBudget) :
    B.noIfSuppliedAccessors :=
  Folder.ProofSafety.assumption_budget_no_if_supplied_accessors B

theorem assumption_budget_no_certified_projection_proofs
    (B : Folder.ProofSafety.AssumptionBudget) :
    B.noCertifiedProjectionProofs :=
  Folder.ProofSafety.assumption_budget_no_certified_projection_proofs B

end ProofSafety
end Theorem
end Folder
