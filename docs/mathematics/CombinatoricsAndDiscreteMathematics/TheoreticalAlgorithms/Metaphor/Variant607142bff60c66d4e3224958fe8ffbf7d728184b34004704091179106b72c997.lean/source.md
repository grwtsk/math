# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Metaphor.Variant607142bff60c66d4e3224958fe8ffbf7d728184b34004704091179106b72c997

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `41bdf7d269b3d06c49189dc2d6953288ddf1928f` · SHA-256 `d21ca5ab9ce90098dae6d4bd151f002d0f4cda081207abbd9a9d8d15cd9f49e6`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.MetaphorMapping.Variant50d7b824d8f9fb5975bbcfdf62510923d1caf15f2f1b75ed9ba861c51702a712","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"50d7b824d8f9fb5975bbcfdf62510923d1caf15f2f1b75ed9ba861c51702a712","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.MetaphorMapping.Variant50d7b824d8f9fb5975bbcfdf62510923d1caf15f2f1b75ed9ba861c51702a712","mathematical_subject":"Computation.DataStructures","original_sha256":"50d7b824d8f9fb5975bbcfdf62510923d1caf15f2f1b75ed9ba861c51702a712","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Documents/N/formal/lean/Mathematics/SemanticTokenization/Metaphor.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.SemanticTokenization.Idiom

/-! # Source/target-separated metaphor records -/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.MetaphorMapping.Variant50d7b824d8f9fb5975bbcfdf62510923d1caf15f2f1b75ed9ba861c51702a712

namespace Mathematics.SemanticTokenization

structure MetaphorMapping where
  sourceFeature : StableId
  targetFeature : StableId

structure MetaphorCertificate (text : TextCarrier) where
  metaphorId : StableId
  phrase : PhraseCandidate text
  context : Context
  sourceDomain : StableId
  targetDomain : StableId
  domain_distinct :
    sourceDomain ≠ targetDomain
  mappings : List MetaphorMapping
  mappings_nonempty : mappings ≠ []
  evidence : EvidenceBundle text
  provenance : List (ProvenancePath text)
  snapshot : SnapshotId
  context_snapshot_exact :
    context.snapshot = snapshot

structure MixedReadingCertificate (text : TextCarrier) where
  literal : LiteralReading text
  metaphor : MetaphorCertificate text
  externalReading : ExternalContextualReading text

end Mathematics.SemanticTokenization
```
