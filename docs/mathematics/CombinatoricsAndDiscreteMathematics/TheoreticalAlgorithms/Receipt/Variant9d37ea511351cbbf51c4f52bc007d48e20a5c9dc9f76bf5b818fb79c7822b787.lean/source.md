# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Receipt.Variant9d37ea511351cbbf51c4f52bc007d48e20a5c9dc9f76bf5b818fb79c7822b787

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `87b5b6cd8ea22fdb9240f1aa41182a4e76a159fd` · SHA-256 `dc13d890eb7e80a0c1e55d39f3a6f1039961b06824d0bcf7105d377c1f084fc4`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Receipt.Variant369e656931a7d78628551679978bc5056e7405d701c70af65a029713074c7b66","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"369e656931a7d78628551679978bc5056e7405d701c70af65a029713074c7b66","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.Receipt.Variant369e656931a7d78628551679978bc5056e7405d701c70af65a029713074c7b66","mathematical_subject":"Computation.DataStructures","original_sha256":"369e656931a7d78628551679978bc5056e7405d701c70af65a029713074c7b66","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/.surface/oracle/recovery/e7ca3ab08a9941d3b0d081a02fe454bdf10e695cc272c56d32f3ad446cc76aee-superseded-json-wrapper-grid-v1/candidate-tree/Mathematics/Embedding/Receipt.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.Core.Id

/-! # Frozen external embedding receipts and exact dyadic factors -/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Receipt.Variant369e656931a7d78628551679978bc5056e7405d701c70af65a029713074c7b66

namespace Mathematics.Embedding

open Mathematics

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

end Mathematics.Embedding
```
