# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ContractTypology.Variant199cdf6b6f08dd4ddedb41f3debc4e73a584e90a36ddfe2a6ed33d28d680bf53

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f08166022f4594c9c8f2e40985d78fb5f507ad8c` · SHA-256 `199cdf6b6f08dd4ddedb41f3debc4e73a584e90a36ddfe2a6ed33d28d680bf53`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
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
```
