# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Verify.Variantb1c88cce34a9159dfb34c04799a96ce9a19b06f1fec1777888078cf917514525

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a8c9b574ca0c4d7929527af5827f49d1fd2cc99a` · SHA-256 `52c685fd910997324fbb644c64a94a76844c41394718066a48ccaa3e7618ada1`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
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
```
