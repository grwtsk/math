# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Metaphor.Variant50d7b824d8f9fb5975bbcfdf62510923d1caf15f2f1b75ed9ba861c51702a712

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1871312d2fb71946a2a53d1c18a4c0508e0fdf4b` · SHA-256 `50d7b824d8f9fb5975bbcfdf62510923d1caf15f2f1b75ed9ba861c51702a712`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.SemanticTokenization.Idiom

/-! # Source/target-separated metaphor records -/

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
