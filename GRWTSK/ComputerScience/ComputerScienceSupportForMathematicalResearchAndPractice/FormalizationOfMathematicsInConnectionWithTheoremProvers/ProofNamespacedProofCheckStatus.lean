-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ProofCheckStatus.Variant4c794a63921269117fc5bcc03604accdc6893c3d759030afd8416c303196ff35","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"4c794a63921269117fc5bcc03604accdc6893c3d759030afd8416c303196ff35","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.ProofCheckStatus.Variant4c794a63921269117fc5bcc03604accdc6893c3d759030afd8416c303196ff35","mathematical_subject":"Foundations.Unclassified","original_sha256":"4c794a63921269117fc5bcc03604accdc6893c3d759030afd8416c303196ff35","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/Ingestion/Proof.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.Authority.Kernel
import Mathematics.Ingestion.Declaration

/-! # Proof-object capture without authority inflation -/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ProofCheckStatus.Variant4c794a63921269117fc5bcc03604accdc6893c3d759030afd8416c303196ff35

namespace Mathematics.Ingestion

inductive ProofCheckStatus
  | notApplicable
  | unchecked
  | rejected
  | kernelAccepted
  deriving DecidableEq, Repr

/--
An extracted proof term is observational data.  Kernel authority remains in
the separately sealed accepted-kernel certificate.
-/
structure ProofCapture where
  declaration : ProjectDeclarationId
  proofTermDigest : Option Digest
  dependencyConeDigest : Digest
  axiomClosureDigest : Digest
  status : ProofCheckStatus
  kernelReceiptDigest : Option Digest
  deriving DecidableEq, Repr

theorem ProofCapture.unchecked_not_kernel_accepted
    (proof : ProofCapture)
    (unchecked : proof.status = .unchecked) :
    proof.status ≠ .kernelAccepted := by
  simp [unchecked]

end Mathematics.Ingestion
