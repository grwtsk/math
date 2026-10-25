# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Verify.Variant09e713c865e6e03d9b62409f42e2ae51c4733943d63836eca95018089eecce6c

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `21898982d9657836a4c8bfc6f276e15ca6b74068` · SHA-256 `e595ff0937f7000fe3635c371815141c0cfe571eb784d584323047db170d6baf`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.LedgerVerificationInputs.Variantd0e45e963ec7dca9c494f07f6bdbb65eb97f413a2ef6bdb0a56d3467b2831bca","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"d0e45e963ec7dca9c494f07f6bdbb65eb97f413a2ef6bdb0a56d3467b2831bca","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.LedgerVerificationInputs.Variantd0e45e963ec7dca9c494f07f6bdbb65eb97f413a2ef6bdb0a56d3467b2831bca","mathematical_subject":"Foundations.Unclassified","original_sha256":"d0e45e963ec7dca9c494f07f6bdbb65eb97f413a2ef6bdb0a56d3467b2831bca","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/.surface/oracle/recovery/e7ca3ab08a9941d3b0d081a02fe454bdf10e695cc272c56d32f3ad446cc76aee-superseded-json-wrapper-grid-v1/candidate-tree/Mathematics/Extractor/Verify.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.Extractor.Merge

/-!
# Ledger verification input boundary

This structure deliberately does not claim that external bytes have been
decoded soundly inside Lean. It connects the decoded extraction to canonical
and Merkle receipts while the canonical decoder remains a separate release
gate.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.LedgerVerificationInputs.Variantd0e45e963ec7dca9c494f07f6bdbb65eb97f413a2ef6bdb0a56d3467b2831bca

namespace Mathematics.Extractor

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

end Mathematics.Extractor
```
