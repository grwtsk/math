# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.ExternalAssertion.Variantdf8ccf4a707b109435ffbbdff90ea8c5d186c3ae94de6dfcdb9ecbe58f412855

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `299e55aee89fb785996f4ab414438bb5957263c8` · SHA-256 `c533bacdd601c25840b0ce0db5b65a893b89de62263e6b0155a15a97568d99fa`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.ExternalAssertion.Variant98a37a61f4728d9d71d41e3c22a913b26670a02fefc51d100b2f4e543463b332","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"98a37a61f4728d9d71d41e3c22a913b26670a02fefc51d100b2f4e543463b332","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.FiniteCombinatorics.SourceCorpus.ExternalAssertion.Variant98a37a61f4728d9d71d41e3c22a913b26670a02fefc51d100b2f4e543463b332","mathematical_subject":"Combinatorics.FiniteCombinatorics","original_sha256":"98a37a61f4728d9d71d41e3c22a913b26670a02fefc51d100b2f4e543463b332","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/SemanticTokenization/ExternalAssertion.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.SemanticTokenization.Metadata
import Mathematics.SemanticTokenization.Provenance

/-!
# Externally supplied typed assertions and interpretations
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.ExternalAssertion.Variant98a37a61f4728d9d71d41e3c22a913b26670a02fefc51d100b2f4e543463b332

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
