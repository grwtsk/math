-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CanonicalIndexSerializer.Variant38ef97426a7032da8ced0962f9400efc99602c43c339b07c1698cbd12bc155a8","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"38ef97426a7032da8ced0962f9400efc99602c43c339b07c1698cbd12bc155a8","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.CanonicalIndexSerializer.Variant38ef97426a7032da8ced0962f9400efc99602c43c339b07c1698cbd12bc155a8","mathematical_subject":"Foundations.Unclassified","original_sha256":"38ef97426a7032da8ced0962f9400efc99602c43c339b07c1698cbd12bc155a8","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/Surface/ContinuousAssurance/Index/Serialization.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Surface.ContinuousAssurance.Index.Query

/-!
# Deterministic index serialization boundary

The serializer is an explicit capability.  Determinism means identical typed
input yields identical bytes; it does not make an ordinary digest a semantic
equivalence proof.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CanonicalIndexSerializer.Variant38ef97426a7032da8ced0962f9400efc99602c43c339b07c1698cbd12bc155a8

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
