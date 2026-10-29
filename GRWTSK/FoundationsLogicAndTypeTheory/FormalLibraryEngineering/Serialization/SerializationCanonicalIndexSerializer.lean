import Surface.ContinuousAssurance.Index.Query

/-!
# Deterministic index serialization boundary

The serializer is an explicit capability.  Determinism means identical typed
input yields identical bytes; it does not make an ordinary digest a semantic
equivalence proof.
-/

namespace Surface.ContinuousAssurance

/--
An explicit normalization and byte/digest boundary.  `digest` computes an
opaque identifier from bytes; no field interprets digest equality as semantic
equivalence of index records.
-/
structure CanonicalIndexSerializer where
  normalize : CanonicalIndex → CanonicalIndex
  encode : CanonicalIndex → ByteArray
  digest : ByteArray → EvidenceDigest
  normalized : CanonicalIndex → Prop
  normalize_normalized : ∀ index, normalized (normalize index)
  deterministic : ∀ {left right}, left = right → encode left = encode right

/-- The serializer's determinism law is available without interpreting bytes. -/
theorem CanonicalIndexSerializer.encode_deterministic
    (serializer : CanonicalIndexSerializer)
    {left right : CanonicalIndex}
    (same : left = right) :
    serializer.encode left = serializer.encode right :=
  serializer.deterministic same

/--
Certificate for the complete normalization-to-digest representation chain.
The source index, normalized index, bytes, and opaque root digest are all
retained.  This is representation evidence only.
-/
structure SerializedCanonicalIndex
    (serializer : CanonicalIndexSerializer)
    (source : CanonicalIndex) where
  normalizedIndex : CanonicalIndex
  normalization_spec : normalizedIndex = serializer.normalize source
  normalized_spec : serializer.normalized normalizedIndex
  bytes : ByteArray
  bytes_spec : bytes = serializer.encode normalizedIndex
  rootDigest : EvidenceDigest
  digest_spec : rootDigest = serializer.digest bytes
  index_root_matches : normalizedIndex.rootDigest = rootDigest

/-- A serialized certificate exposes the exact normalized bytes it digests. -/
theorem SerializedCanonicalIndex.representation_chain
    {serializer : CanonicalIndexSerializer}
    {source : CanonicalIndex}
    (certificate : SerializedCanonicalIndex serializer source) :
    certificate.normalizedIndex = serializer.normalize source ∧
      serializer.normalized certificate.normalizedIndex ∧
      certificate.bytes = serializer.encode certificate.normalizedIndex ∧
      certificate.rootDigest = serializer.digest certificate.bytes ∧
      certificate.normalizedIndex.rootDigest = certificate.rootDigest :=
  ⟨certificate.normalization_spec,
    certificate.normalized_spec,
    certificate.bytes_spec,
    certificate.digest_spec,
    certificate.index_root_matches⟩

end Surface.ContinuousAssurance
