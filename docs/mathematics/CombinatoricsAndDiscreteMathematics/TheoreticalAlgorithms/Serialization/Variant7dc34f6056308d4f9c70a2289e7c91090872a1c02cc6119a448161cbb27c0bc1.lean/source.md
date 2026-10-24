# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Serialization.Variant7dc34f6056308d4f9c70a2289e7c91090872a1c02cc6119a448161cbb27c0bc1

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3a6d03e2fea20a9d5239622792db9919de168f24` · SHA-256 `e442d3ec69e6853176fc25c6320ad8aa0ba08a4def54e113352bab2ff935971f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.CanonicalFileReceipt.Variantbefed4fd532a21805a1dc406ecddcd198a03203938b869edb8f500bd0d4d7473","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"befed4fd532a21805a1dc406ecddcd198a03203938b869edb8f500bd0d4d7473","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.CanonicalFileReceipt.Variantbefed4fd532a21805a1dc406ecddcd198a03203938b869edb8f500bd0d4d7473","mathematical_subject":"Computation.DataStructures","original_sha256":"befed4fd532a21805a1dc406ecddcd198a03203938b869edb8f500bd0d4d7473","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/.surface/oracle/recovery/e7ca3ab08a9941d3b0d081a02fe454bdf10e695cc272c56d32f3ad446cc76aee-superseded-json-wrapper-grid-v1/candidate-tree/Mathematics/Extractor/Serialization.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.Extractor.Core

/-!
# Canonical serialization boundary

Actual UTF-8 canonical JSON and hashing are executable operations.  These
structures record the obligations a sound decoder must discharge; they do not
assert correctness of an external serializer merely from matching digests.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.CanonicalFileReceipt.Variantbefed4fd532a21805a1dc406ecddcd198a03203938b869edb8f500bd0d4d7473

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
