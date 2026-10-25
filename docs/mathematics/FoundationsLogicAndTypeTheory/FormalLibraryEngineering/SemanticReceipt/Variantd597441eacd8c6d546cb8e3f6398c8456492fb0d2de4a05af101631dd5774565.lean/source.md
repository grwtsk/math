# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.SemanticReceipt.Variantd597441eacd8c6d546cb8e3f6398c8456492fb0d2de4a05af101631dd5774565

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ae2cdd4578968a1e442d4a8171c9a7e8cf8d49ad` · SHA-256 `e6414e86551d338d80a55587a3761f7b268df48d804ec28ee88a7b008bd119d0`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.SEAReceiptBoundaryKey.Variant36b0b52f9b3abc1560fa844818acda5e1c7198da7de1038a4f0b52282fbd8581","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"36b0b52f9b3abc1560fa844818acda5e1c7198da7de1038a4f0b52282fbd8581","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.SEAReceiptBoundaryKey.Variant36b0b52f9b3abc1560fa844818acda5e1c7198da7de1038a4f0b52282fbd8581","mathematical_subject":"Foundations.Unclassified","original_sha256":"36b0b52f9b3abc1560fa844818acda5e1c7198da7de1038a4f0b52282fbd8581","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/AbelReynolds/SemanticReceipt.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.AbelReynolds.Focus

/-!
# Exact SEA result receipts

The semantic layer stores an immutable reference to a proof-bearing SEA
result.  Extraction is exact; no tensor amplitude or approximate decoder may
reconstruct arithmetic theorem authority.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.SEAReceiptBoundaryKey.Variant36b0b52f9b3abc1560fa844818acda5e1c7198da7de1038a4f0b52282fbd8581

namespace Mathematics.AbelReynolds

structure SEAReceiptBoundaryKey where
  snapshotDigest : String
  classId : String
  primeId : String
  seaBound : Nat
  deriving DecidableEq, Repr

structure SEAResultReceipt where
  resultDigest : String
  cutDigest : String
  snapshotDigest : String
  classId : String
  primeId : String
  pointCount : Nat
  transcriptDigest : String
  focusCertificateDigest : String
  boundaryKey : SEAReceiptBoundaryKey
  deriving DecidableEq, Repr

def SEAResultReceipt.Matches
    (receipt : SEAResultReceipt)
    (cut : UnifiedCutBinding)
    (payload : UnifiedSEAPayload) : Prop :=
  receipt.resultDigest = payload.resultDigest ∧
  receipt.cutDigest = cut.cutDigest ∧
  receipt.snapshotDigest = cut.snapshotDigest ∧
  receipt.classId = cut.classId ∧
  receipt.primeId = cut.primeId ∧
  receipt.pointCount = payload.pointCount ∧
  receipt.transcriptDigest = payload.transcriptDigest ∧
  receipt.focusCertificateDigest ≠ "" ∧
  receipt.boundaryKey.snapshotDigest = cut.snapshotDigest ∧
  receipt.boundaryKey.classId = cut.classId ∧
  receipt.boundaryKey.primeId = cut.primeId ∧
  receipt.boundaryKey.seaBound = cut.seaBound

structure EmbeddedSEAReceipt (Context : Type) where
  context : Context
  receipt : SEAResultReceipt
  extract : Context → Option SEAResultReceipt
  extract_exact : extract context = some receipt

theorem extract_embedded_receipt
    (embedding : EmbeddedSEAReceipt Context) :
    embedding.extract embedding.context = some embedding.receipt :=
  embedding.extract_exact

end Mathematics.AbelReynolds
```
