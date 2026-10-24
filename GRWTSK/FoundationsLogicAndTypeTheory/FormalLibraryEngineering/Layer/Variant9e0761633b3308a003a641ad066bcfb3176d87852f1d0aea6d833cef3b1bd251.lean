import Folder.ProofSafety.Layer

/-!
# Folder.Theorem.ProofSafety.Layer

Radiation role: theorem-wrapper
BinaryMatrix spine: This module re-exports proof-layer policy facts.
Ontology: proof.proof_safety.layer
Pivot role: verification
Zero typology: none
Contract boundary: theorem-wrapper
Composite stack role: proof-safety
-/

namespace Folder
namespace Theorem
namespace ProofSafety

theorem final_import_policy_forbids_contract
    (P : Folder.ProofSafety.FinalImportPolicy) :
    ¬ P.mayImport Folder.ProofSafety.ProofLayer.contract :=
  Folder.ProofSafety.final_import_policy_forbids_contract P

theorem final_import_policy_forbids_external_witness
    (P : Folder.ProofSafety.FinalImportPolicy) :
    ¬ P.mayImport Folder.ProofSafety.ProofLayer.externalWitness :=
  Folder.ProofSafety.final_import_policy_forbids_external_witness P

theorem default_final_import_policy_forbids_contract :
    ¬ Folder.ProofSafety.defaultFinalImportPolicy.mayImport
      Folder.ProofSafety.ProofLayer.contract :=
  Folder.ProofSafety.default_final_import_policy_forbids_contract

theorem default_final_import_policy_forbids_external_witness :
    ¬ Folder.ProofSafety.defaultFinalImportPolicy.mayImport
      Folder.ProofSafety.ProofLayer.externalWitness :=
  Folder.ProofSafety.default_final_import_policy_forbids_external_witness

theorem contract_layer_ne_constructed :
    Folder.ProofSafety.ProofLayer.contract ≠
      Folder.ProofSafety.ProofLayer.constructed :=
  Folder.ProofSafety.contract_layer_ne_constructed

theorem external_witness_layer_ne_final :
    Folder.ProofSafety.ProofLayer.externalWitness ≠
      Folder.ProofSafety.ProofLayer.finalTheorem :=
  Folder.ProofSafety.external_witness_layer_ne_final

end ProofSafety
end Theorem
end Folder
