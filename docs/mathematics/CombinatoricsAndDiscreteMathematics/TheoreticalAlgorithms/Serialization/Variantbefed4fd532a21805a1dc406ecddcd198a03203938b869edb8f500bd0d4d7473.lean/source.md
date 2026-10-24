# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Serialization.Variantbefed4fd532a21805a1dc406ecddcd198a03203938b869edb8f500bd0d4d7473

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e3655765b4bae4de4f0fa8b5eee47f77bff13042` · SHA-256 `befed4fd532a21805a1dc406ecddcd198a03203938b869edb8f500bd0d4d7473`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.Extractor.Core

/-!
# Canonical serialization boundary

Actual UTF-8 canonical JSON and hashing are executable operations.  These
structures record the obligations a sound decoder must discharge; they do not
assert correctness of an external serializer merely from matching digests.
-/

namespace Mathematics.Extractor

open Mathematics

structure CanonicalFileReceipt where
  path : CanonicalPath
  digest : Digest
  sizeBytes : Nat
  deriving DecidableEq, Repr, Inhabited

structure CanonicalPayloadReceipt where
  schemaVersion : Nat
  extractorVersion : Version
  files : Array CanonicalFileReceipt
  payloadDigest : Digest
  deriving DecidableEq, Repr, Inhabited

structure MerkleReceipt where
  files : Array CanonicalFileReceipt
  rootDigest : Digest
  deriving DecidableEq, Repr, Inhabited

namespace CanonicalFileReceipt

def Valid (receipt : CanonicalFileReceipt) : Prop :=
  receipt.path.Valid ∧ receipt.digest.Valid

end CanonicalFileReceipt

namespace CanonicalPayloadReceipt

def Valid (payload : CanonicalPayloadReceipt) : Prop :=
  payload.schemaVersion = 2 ∧
  payload.extractorVersion.value ≠ "" ∧
  payload.payloadDigest.Valid ∧
  (payload.files.toList.map (·.path)).Nodup ∧
  ∀ file ∈ payload.files, file.Valid

end CanonicalPayloadReceipt

namespace MerkleReceipt

def Valid (merkle : MerkleReceipt) : Prop :=
  merkle.rootDigest.Valid ∧
  (merkle.files.toList.map (·.path)).Nodup ∧
  ∀ file ∈ merkle.files, file.Valid

end MerkleReceipt

end Mathematics.Extractor
```
