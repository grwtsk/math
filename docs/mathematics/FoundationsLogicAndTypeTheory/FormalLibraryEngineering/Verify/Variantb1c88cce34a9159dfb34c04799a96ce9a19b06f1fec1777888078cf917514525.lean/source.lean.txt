-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.LedgerVerificationInputs.Varianta182486185215260ce5786686e64715a3bced29c9d413f2ad226666e2743eada","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"a182486185215260ce5786686e64715a3bced29c9d413f2ad226666e2743eada","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.LedgerVerificationInputs.Varianta182486185215260ce5786686e64715a3bced29c9d413f2ad226666e2743eada","mathematical_subject":"Foundations.Unclassified","original_sha256":"a182486185215260ce5786686e64715a3bced29c9d413f2ad226666e2743eada","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/.surface/revoked-artifacts/source-structure/2487c9da77d9d8ececb8ffd882948a360b9125bba2b28ca69972182b0e8e2352/failed-candidates/post-application-e89443c73810dcdf/MathDiscovery/Extractor/Verify.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import MathDiscovery.Extractor.Merge

/-!
# Ledger verification input boundary

This structure deliberately does not claim that external bytes have been
decoded soundly inside Lean. It connects the decoded extraction to canonical
and Merkle receipts while the canonical decoder remains a separate release
gate.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.LedgerVerificationInputs.Varianta182486185215260ce5786686e64715a3bced29c9d413f2ad226666e2743eada

namespace MathDiscovery.Extractor

structure LedgerVerificationInputs where
  extraction : EnvironmentExtraction
  payload : CanonicalPayloadReceipt
  merkle : MerkleReceipt

namespace LedgerVerificationInputs

structure Valid (inputs : LedgerVerificationInputs) : Prop where
  extractionValid : inputs.extraction.Valid
  payloadValid : inputs.payload.Valid
  merkleValid : inputs.merkle.Valid
  receiptFilesAgree : inputs.merkle.files = inputs.payload.files
  payloadCommitsExtraction :
    inputs.payload.payloadDigest = inputs.extraction.digest
  schemaAgrees :
    inputs.payload.schemaVersion = inputs.extraction.schemaVersion
  extractorVersionAgrees :
    inputs.payload.extractorVersion = inputs.extraction.extractorVersion

end LedgerVerificationInputs

end MathDiscovery.Extractor
