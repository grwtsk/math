# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Verify.Variantd0e45e963ec7dca9c494f07f6bdbb65eb97f413a2ef6bdb0a56d3467b2831bca

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7c81f81ca89e63a91f10942beb2f9d9e6caa0350` · SHA-256 `d0e45e963ec7dca9c494f07f6bdbb65eb97f413a2ef6bdb0a56d3467b2831bca`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.Extractor.Merge

/-!
# Ledger verification input boundary

This structure deliberately does not claim that external bytes have been
decoded soundly inside Lean. It connects the decoded extraction to canonical
and Merkle receipts while the canonical decoder remains a separate release
gate.
-/

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
