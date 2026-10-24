# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Concept.Variantb84e3e1151b303cb2b3dfefb0be56fb677b07d4a3d45195a759c6e043bc893d0

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d31af4dee0cc14c931fce9d1a1767fa140322921` · SHA-256 `62e43c58dc771e6c60cb5d8b295f3730ceb10ead81c39ad8336a447555ad7e6f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.ProtectedFeature.Variantf70118ec998d2d22042f1d5b171ab998e78d31d8ee8ad6060b592e4286464abd","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"f70118ec998d2d22042f1d5b171ab998e78d31d8ee8ad6060b592e4286464abd","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.ProtectedFeature.Variantf70118ec998d2d22042f1d5b171ab998e78d31d8ee8ad6060b592e4286464abd","mathematical_subject":"Computation.DataStructures","original_sha256":"f70118ec998d2d22042f1d5b171ab998e78d31d8ee8ad6060b592e4286464abd","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Documents/N/formal/lean/Mathematics/SemanticTokenization/Concept.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.SemanticTokenization.Metaphor

/-! # Context-indexed concept profiles and protected features -/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.ProtectedFeature.Variantf70118ec998d2d22042f1d5b171ab998e78d31d8ee8ad6060b592e4286464abd

namespace Mathematics.SemanticTokenization

structure ProtectedFeature where
  featureId : StableId
  valueDigest : Digest
  digest_valid : valueDigest.Valid

structure ProtectedFeatureProfile where
  features : List ProtectedFeature
  feature_ids_nodup :
    (features.map ProtectedFeature.featureId).Nodup

structure ConceptProfile (text : TextCarrier) where
  profileId : StableId
  conceptId : StableId
  context : Context
  coreMeaning : MeaningPayload
  protectedFeatures : ProtectedFeatureProfile
  evidence : EvidenceBundle text
  provenance : List (ProvenancePath text)
  snapshot : SnapshotId
  context_snapshot_exact :
    context.snapshot = snapshot

end Mathematics.SemanticTokenization
```
