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
