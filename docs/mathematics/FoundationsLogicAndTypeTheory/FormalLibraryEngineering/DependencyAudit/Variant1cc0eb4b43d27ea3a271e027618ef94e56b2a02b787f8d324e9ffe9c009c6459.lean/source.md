# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.DependencyAudit.Variant1cc0eb4b43d27ea3a271e027618ef94e56b2a02b787f8d324e9ffe9c009c6459

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `51d9783a3e1169440b1f7b9321401b15b516f9cf` · SHA-256 `1cc0eb4b43d27ea3a271e027618ef94e56b2a02b787f8d324e9ffe9c009c6459`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Folder.ProofSafety.AssumptionBudget

/-!
# Folder.ProofSafety.DependencyAudit

Radiation role: proof-governance
BinaryMatrix spine: This module records dependency-audit results for final proofs.
Ontology: proof_safety.dependency_audit
Pivot role: verification
Zero typology: none
Contract boundary: policy
Composite stack role: proof-safety
-/

namespace Folder
namespace ProofSafety

/--
Machine-checkable shape of a dependency audit report.

The fields are deliberately proof obligations supplied by an audit or a future
construction. Projection theorems expose the report status; they do not turn a
research contract into final mathematics.
-/
structure DependencyAuditReport where
  theoremLabel : String
  importsOnlyAllowedLayers : Prop
  importsOnlyAllowedLayers_holds : importsOnlyAllowedLayers
  noContractModules : Prop
  noContractModules_holds : noContractModules
  noExternalWitnessModules : Prop
  noExternalWitnessModules_holds : noExternalWitnessModules
  noIfSuppliedAccessors : Prop
  noIfSuppliedAccessors_holds : noIfSuppliedAccessors
  noCertifiedProjectionProofs : Prop
  noCertifiedProjectionProofs_holds : noCertifiedProjectionProofs
  noGapTokens : Prop
  noGapTokens_holds : noGapTokens
  assumptionBudget : AssumptionBudget
  sourceLabel : String

theorem dependency_audit_imports_only_allowed_layers
    (R : DependencyAuditReport) :
    R.importsOnlyAllowedLayers :=
  R.importsOnlyAllowedLayers_holds

theorem dependency_audit_no_contract_modules
    (R : DependencyAuditReport) :
    R.noContractModules :=
  R.noContractModules_holds

theorem dependency_audit_no_external_witness_modules
    (R : DependencyAuditReport) :
    R.noExternalWitnessModules :=
  R.noExternalWitnessModules_holds

theorem dependency_audit_no_if_supplied_accessors
    (R : DependencyAuditReport) :
    R.noIfSuppliedAccessors :=
  R.noIfSuppliedAccessors_holds

theorem dependency_audit_no_certified_projection_proofs
    (R : DependencyAuditReport) :
    R.noCertifiedProjectionProofs :=
  R.noCertifiedProjectionProofs_holds

theorem dependency_audit_no_gap_tokens
    (R : DependencyAuditReport) :
    R.noGapTokens :=
  R.noGapTokens_holds

end ProofSafety
end Folder
```
