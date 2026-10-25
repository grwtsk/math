# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ProofStatus.Variantd9b482ecc25cee52309b573d4fc22b40cf46a0eb467d12ad4cfbc60fed1ff23d

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `90d38db8b3f69b221c5629af7c69895c54f3c582` · SHA-256 `1213fc45d368cb5e3ae026043bf5bf3883b0202b680eaa284ee729a6ea70f613`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ProofStatusContractNotAllowed.Variant9acd3fd7039d9cd208c84424db54a1f658a7f5e4ecbc1373af1745b178f49d5b","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"9acd3fd7039d9cd208c84424db54a1f658a7f5e4ecbc1373af1745b178f49d5b","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.ProofStatusContractNotAllowed.Variant9acd3fd7039d9cd208c84424db54a1f658a7f5e4ecbc1373af1745b178f49d5b","mathematical_subject":"Foundations.Unclassified","original_sha256":"9acd3fd7039d9cd208c84424db54a1f658a7f5e4ecbc1373af1745b178f49d5b","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/Theorem/RH/ProofStatus.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Folder.RH.ProofStatus

/-!
# Folder.Theorem.RH.ProofStatus

Radiation role: theorem-wrapper
BinaryMatrix spine: This module re-exports proof-status facts for the narrow RH cone.
Ontology: proof.rh.proof_status
Pivot role: verification
Zero typology: zeta
Contract boundary: theorem-wrapper
Composite stack role: rh
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ProofStatusContractNotAllowed.Variant9acd3fd7039d9cd208c84424db54a1f658a7f5e4ecbc1373af1745b178f49d5b

namespace Folder
namespace Theorem
namespace RH
namespace ProofStatus

theorem proof_status_contract_not_allowed :
    ¬ Folder.RH.ProofStatus.allowedInFinalCone Folder.RH.ProofStatus.contract :=
  Folder.RH.proof_status_contract_not_allowed

theorem proof_status_theorem_target_not_allowed :
    ¬ Folder.RH.ProofStatus.allowedInFinalCone Folder.RH.ProofStatus.theoremTarget :=
  Folder.RH.proof_status_theorem_target_not_allowed

theorem proof_status_external_input_not_allowed :
    ¬ Folder.RH.ProofStatus.allowedInFinalCone Folder.RH.ProofStatus.externalAnalyticInput :=
  Folder.RH.proof_status_external_input_not_allowed

theorem allowed_status_is_checked_or_imported
    {status : Folder.RH.ProofStatus}
    (h : Folder.RH.ProofStatus.allowedInFinalCone status) :
    status = Folder.RH.ProofStatus.checkedByLean ∨
      status = Folder.RH.ProofStatus.importedTheorem :=
  Folder.RH.allowed_status_is_checked_or_imported h

theorem imported_theorem_certificate_allowed
    (I : Folder.RH.ImportedTheoremCertificate) :
    Folder.RH.ProofStatus.allowedInFinalCone I.status :=
  Folder.RH.imported_theorem_certificate_allowed I

theorem imported_theorem_certificate_status
    (I : Folder.RH.ImportedTheoremCertificate) :
    I.status = Folder.RH.ProofStatus.importedTheorem :=
  Folder.RH.imported_theorem_certificate_status I

end ProofStatus
end RH
end Theorem
end Folder
```
