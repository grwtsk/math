# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.SemanticReceipt.Variant36b0b52f9b3abc1560fa844818acda5e1c7198da7de1038a4f0b52282fbd8581

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e457eb842e556b22842f227a6cd9a4e0d339412f` · SHA-256 `36b0b52f9b3abc1560fa844818acda5e1c7198da7de1038a4f0b52282fbd8581`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.AbelReynolds.Focus

/-!
# Exact SEA result receipts

The semantic layer stores an immutable reference to a proof-bearing SEA
result.  Extraction is exact; no tensor amplitude or approximate decoder may
reconstruct arithmetic theorem authority.
-/

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
