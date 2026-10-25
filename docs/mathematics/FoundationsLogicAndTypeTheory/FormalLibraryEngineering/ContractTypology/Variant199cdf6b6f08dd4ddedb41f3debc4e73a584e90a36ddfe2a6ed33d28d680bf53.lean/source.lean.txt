import Folder.Basic

/-!
# Folder.Core.ContractTypology

Radiation role: core-architecture
BinaryMatrix spine: This module classifies proof, contract, witness, runtime, and shader claims before downstream carrier use.
Ontology: core.contract_typology
Pivot role: none
Zero typology: none
Contract boundary: definition
Composite stack role: infrastructure
-/

namespace Folder
namespace Core

inductive ClaimStatus where
  | proved
  | definition
  | contract
  | externalWitness
  | theoremTarget
  | runtimeChecker
  | shaderMirror
deriving DecidableEq, Repr

structure TypedClaim where
  name : String
  status : ClaimStatus
  description : String
deriving Repr

def IsInternalProof (C : TypedClaim) : Prop :=
  C.status = ClaimStatus.proved

def IsContractBoundary (C : TypedClaim) : Prop :=
  C.status = ClaimStatus.contract ∨
    C.status = ClaimStatus.externalWitness ∨
    C.status = ClaimStatus.theoremTarget

theorem proved_ne_contract :
    ClaimStatus.proved ≠ ClaimStatus.contract := by
  decide

theorem shaderMirror_ne_proved :
    ClaimStatus.shaderMirror ≠ ClaimStatus.proved := by
  decide

theorem runtimeChecker_ne_proved :
    ClaimStatus.runtimeChecker ≠ ClaimStatus.proved := by
  decide

end Core
end Folder
