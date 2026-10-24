# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Receipt.Variant6716ab008d41283a920c1f21ef9af9bc3a28b62cbd798bd860b25c365804fc4f

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `0be7c80cb4202be1cf178400ebefd55f7c258308` · SHA-256 `7efda48844d73c8025e2e6711680bdb9ed89b774f616e3a1024362278d610df8`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Receipt.Variant7848de7d06d6ed91c037fb5a9992faac8599123df9087b451e6a2503730f0c26","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"7848de7d06d6ed91c037fb5a9992faac8599123df9087b451e6a2503730f0c26","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.Receipt.Variant7848de7d06d6ed91c037fb5a9992faac8599123df9087b451e6a2503730f0c26","mathematical_subject":"Computation.DataStructures","original_sha256":"7848de7d06d6ed91c037fb5a9992faac8599123df9087b451e6a2503730f0c26","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/.surface/revoked-artifacts/source-structure/2487c9da77d9d8ececb8ffd882948a360b9125bba2b28ca69972182b0e8e2352/failed-candidates/post-application-e89443c73810dcdf/MathDiscovery/Embedding/Receipt.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import MathDiscovery.Core.Id

/-! # Frozen external embedding receipts and exact dyadic factors -/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Receipt.Variant7848de7d06d6ed91c037fb5a9992faac8599123df9087b451e6a2503730f0c26

namespace MathDiscovery.Embedding

open MathDiscovery

structure Receipt where
  modelId : StableId
  modelRevision : String
  modelDigest : Digest
  tokenizerId : StableId
  tokenizerDigest : Digest
  inputTemplateDigest : Digest
  trainingOrProviderProvenance : String
  inputSemanticDigest : Digest
  entityCount : Nat
  dimension : Nat
  numericEncoding : String
  normalization : String
  quantizationBits : Nat
  inferenceImplementation : String
  seed : Option Nat
  outputVectorDigest : Digest
  licenseId : String
  deriving DecidableEq

namespace Receipt

def Valid (receipt : Receipt) : Prop :=
  receipt.modelId.Valid ∧
  receipt.modelRevision ≠ "" ∧
  receipt.modelDigest.Valid ∧
  receipt.tokenizerId.Valid ∧
  receipt.tokenizerDigest.Valid ∧
  receipt.inputTemplateDigest.Valid ∧
  receipt.trainingOrProviderProvenance ≠ "" ∧
  receipt.inputSemanticDigest.Valid ∧
  receipt.entityCount > 0 ∧
  receipt.dimension > 0 ∧
  receipt.numericEncoding ≠ "" ∧
  receipt.normalization ≠ "" ∧
  receipt.quantizationBits > 0 ∧
  receipt.inferenceImplementation ≠ "" ∧
  receipt.outputVectorDigest.Valid ∧
  receipt.licenseId ≠ ""

end Receipt

structure DyadicVector where
  entityId : EntityId
  numerators : List Int
  denominatorBits : Nat
  sourceFloatDigest : Digest
  vectorDigest : Digest
  deriving DecidableEq

namespace DyadicVector

def ValidFor (receipt : Receipt) (vector : DyadicVector) : Prop :=
  vector.entityId.Valid ∧
  vector.numerators.length = receipt.dimension ∧
  vector.denominatorBits = receipt.quantizationBits ∧
  vector.sourceFloatDigest.Valid ∧
  vector.vectorDigest.Valid

end DyadicVector

structure Snapshot where
  receipt : Receipt
  vectors : List DyadicVector
  snapshotDigest : Digest
  advisoryOnly : Bool := true
  deriving DecidableEq

namespace Snapshot

def Valid (snapshot : Snapshot) : Prop :=
  snapshot.receipt.Valid ∧
  snapshot.vectors.length = snapshot.receipt.entityCount ∧
  (snapshot.vectors.map (·.entityId)).Nodup ∧
  (∀ vector ∈ snapshot.vectors, vector.ValidFor snapshot.receipt) ∧
  snapshot.snapshotDigest.Valid ∧
  snapshot.advisoryOnly = true

end Snapshot

end MathDiscovery.Embedding
```
