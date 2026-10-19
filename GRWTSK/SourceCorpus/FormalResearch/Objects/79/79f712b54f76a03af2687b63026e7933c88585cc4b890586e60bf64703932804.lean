/-!
# Folder.ProofSafety.Layer

Radiation role: proof-governance
BinaryMatrix spine: This module classifies proof layers for dependency audits.
Ontology: proof_safety.layer
Pivot role: verification
Zero typology: none
Contract boundary: policy
Composite stack role: proof-safety
-/

namespace Folder
namespace ProofSafety

/--
Layer labels used by the final-proof dependency audit.

The labels separate specifications, contracts, external witnesses, constructed
theorem content, and final theorem files.
-/
inductive ProofLayer where
  | spec
  | contract
  | externalWitness
  | constructed
  | finalTheorem
deriving DecidableEq, Repr

structure ModuleClassification where
  moduleName : String
  layer : ProofLayer
  statusLabel : String
  sourceLabel : String

/--
Default admissibility predicate for final theorem imports.

Final theorem files may depend on specification labels, constructed theorem
content, and other final theorem files. Contract and external-witness layers are
excluded from the final dependency cone.
-/
def mayImportInFinal : ProofLayer → Prop
  | ProofLayer.spec => True
  | ProofLayer.contract => False
  | ProofLayer.externalWitness => False
  | ProofLayer.constructed => True
  | ProofLayer.finalTheorem => True

structure FinalImportPolicy where
  mayImport : ProofLayer → Prop
  specAllowed : mayImport ProofLayer.spec
  constructedAllowed : mayImport ProofLayer.constructed
  finalAllowed : mayImport ProofLayer.finalTheorem
  contractForbidden : ¬ mayImport ProofLayer.contract
  externalWitnessForbidden : ¬ mayImport ProofLayer.externalWitness
  contractAccessorForbidden : Prop
  sourceLabel : String

def defaultFinalImportPolicy : FinalImportPolicy where
  mayImport := mayImportInFinal
  specAllowed := trivial
  constructedAllowed := trivial
  finalAllowed := trivial
  contractForbidden := by
    intro h
    exact h
  externalWitnessForbidden := by
    intro h
    exact h
  contractAccessorForbidden := True
  sourceLabel :=
    "final proof files may not discharge claims by contract or external-witness projection"

theorem final_import_policy_forbids_contract
    (P : FinalImportPolicy) :
    ¬ P.mayImport ProofLayer.contract :=
  P.contractForbidden

theorem final_import_policy_forbids_external_witness
    (P : FinalImportPolicy) :
    ¬ P.mayImport ProofLayer.externalWitness :=
  P.externalWitnessForbidden

theorem default_final_import_policy_forbids_contract :
    ¬ defaultFinalImportPolicy.mayImport ProofLayer.contract :=
  defaultFinalImportPolicy.contractForbidden

theorem default_final_import_policy_forbids_external_witness :
    ¬ defaultFinalImportPolicy.mayImport ProofLayer.externalWitness :=
  defaultFinalImportPolicy.externalWitnessForbidden

theorem contract_layer_ne_constructed :
    ProofLayer.contract ≠ ProofLayer.constructed := by
  intro h
  cases h

theorem external_witness_layer_ne_final :
    ProofLayer.externalWitness ≠ ProofLayer.finalTheorem := by
  intro h
  cases h

end ProofSafety
end Folder
