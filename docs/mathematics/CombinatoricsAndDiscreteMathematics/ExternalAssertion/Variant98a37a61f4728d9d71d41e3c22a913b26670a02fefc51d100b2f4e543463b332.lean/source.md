# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.ExternalAssertion.Variant98a37a61f4728d9d71d41e3c22a913b26670a02fefc51d100b2f4e543463b332

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `641720457d061d4cda62fdc9e9c1403911e06ea8` · SHA-256 `98a37a61f4728d9d71d41e3c22a913b26670a02fefc51d100b2f4e543463b332`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.SemanticTokenization.Metadata
import Mathematics.SemanticTokenization.Provenance

/-!
# Externally supplied typed assertions and interpretations
-/

namespace Mathematics.SemanticTokenization

structure ExternalAssertion
    (text : TextCarrier)
    (metadataType : MetadataType) where
  id : AssertionId
  source : Finset (Span text)
  source_nonempty : source.Nonempty
  value : MetadataValue metadataType
  context : ContextId
  dependency : ContextDependency
  evidence : Finset EvidenceId
  evidence_nonempty : evidence.Nonempty
  authority : AuthorityClass
  intendedUse : AssertionUse
  snapshot : SnapshotId

abbrev PackedExternalAssertion (text : TextCarrier) :=
  Sigma (ExternalAssertion text)

structure MeaningPayload where
  identifier : String
  conceptRefs : Finset ConceptId
  payloadDigest : Digest
deriving Repr

inductive ReadingClass
  | literal
  | technical
  | collocational
  | metaphorical
  | idiomatic
  | mixed
  | unresolved
deriving DecidableEq, Repr

structure ExternalInterpretation
    (text : TextCarrier) where
  id : AssertionId
  source : Finset (Span text)
  source_nonempty : source.Nonempty
  readingClass : ReadingClass
  meaning : MeaningPayload
  context : ContextId
  dependency : ContextDependency
  evidence : Finset EvidenceId
  evidence_nonempty : evidence.Nonempty
  authority : AuthorityClass
  snapshot : SnapshotId

structure CandidateInterpretation
    (text : TextCarrier) where
  source : Finset (Span text)
  proposedReading : ReadingClass
  proposedMeaning : MeaningPayload
  producer : EvidenceSourceKind
  authoritative : Bool := false

end Mathematics.SemanticTokenization
```
