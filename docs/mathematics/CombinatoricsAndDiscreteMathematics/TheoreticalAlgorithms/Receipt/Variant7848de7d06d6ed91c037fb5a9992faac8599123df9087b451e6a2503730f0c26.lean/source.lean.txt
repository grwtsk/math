import MathDiscovery.Core.Id

/-! # Frozen external embedding receipts and exact dyadic factors -/

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
