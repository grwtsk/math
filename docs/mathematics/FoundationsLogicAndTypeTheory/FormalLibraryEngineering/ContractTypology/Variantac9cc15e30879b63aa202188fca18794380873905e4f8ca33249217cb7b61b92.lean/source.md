# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ContractTypology.Variantac9cc15e30879b63aa202188fca18794380873905e4f8ca33249217cb7b61b92

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f794af4cfe474e56ffbc4ec15611dac39c243384` · SHA-256 `f7565192218fd2782e59eea443e1f47ca9b7704a2cc51e91c0e81df0ece02f84`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ClaimStatus.Variant199cdf6b6f08dd4ddedb41f3debc4e73a584e90a36ddfe2a6ed33d28d680bf53","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"199cdf6b6f08dd4ddedb41f3debc4e73a584e90a36ddfe2a6ed33d28d680bf53","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.ClaimStatus.Variant199cdf6b6f08dd4ddedb41f3debc4e73a584e90a36ddfe2a6ed33d28d680bf53","mathematical_subject":"Foundations.Unclassified","original_sha256":"199cdf6b6f08dd4ddedb41f3debc4e73a584e90a36ddfe2a6ed33d28d680bf53","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/ContractTypology.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
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


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ClaimStatus.Variant199cdf6b6f08dd4ddedb41f3debc4e73a584e90a36ddfe2a6ed33d28d680bf53

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
