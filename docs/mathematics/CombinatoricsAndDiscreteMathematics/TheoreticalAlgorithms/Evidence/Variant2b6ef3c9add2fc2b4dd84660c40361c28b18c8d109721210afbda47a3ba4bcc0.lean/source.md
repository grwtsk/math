# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Evidence.Variant2b6ef3c9add2fc2b4dd84660c40361c28b18c8d109721210afbda47a3ba4bcc0

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `551b9d03667536610dfa85bef2d34d441b49380b` · SHA-256 `352525f1fbf20aa355380c479e75c0d84fe6a0e3c5c70717095390dc9833d28e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.EvidenceSourceKind.Variant68b165bdf5e83cf9968025f80dd0ce89df63eb0d97e9ed37b24ed7605a02b6b1","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"68b165bdf5e83cf9968025f80dd0ce89df63eb0d97e9ed37b24ed7605a02b6b1","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.EvidenceSourceKind.Variant68b165bdf5e83cf9968025f80dd0ce89df63eb0d97e9ed37b24ed7605a02b6b1","mathematical_subject":"Computation.DataStructures","original_sha256":"68b165bdf5e83cf9968025f80dd0ce89df63eb0d97e9ed37b24ed7605a02b6b1","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Documents/N/formal/lean/Mathematics/SemanticTokenization/Evidence.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.SemanticTokenization.MetadataAssertion

/-! # Finite evidence bundles and semantic authority classes -/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.EvidenceSourceKind.Variant68b165bdf5e83cf9968025f80dd0ce89df63eb0d97e9ed37b24ed7605a02b6b1

namespace Mathematics.SemanticTokenization

inductive EvidenceSourceKind
  | sourceText
  | humanAnnotation
  | lexicalResource
  | corpus
  | parser
  | model
  | taskAssumption
  | externalStandard
  deriving DecidableEq, Repr

inductive SemanticAuthorityClass
  | humanAccepted
  | lexicallyCertified
  | corpusSupported
  | parserSupported
  | modelSuggested
  | taskAssumed
  deriving DecidableEq, Repr

/-!
`EvidenceSourceAuthorityCompatible` records the only source/authority pairings
whose shape is recognized by this capsule.  Recognition is not admission:
parser and model outputs remain proposal evidence and are excluded from
semantic-completion authority below.
-/

inductive EvidenceSourceAuthorityCompatible :
    EvidenceSourceKind → SemanticAuthorityClass → Prop
  | humanAnnotation :
      EvidenceSourceAuthorityCompatible
        .humanAnnotation .humanAccepted
  | lexicalResource :
      EvidenceSourceAuthorityCompatible
        .lexicalResource .lexicallyCertified
  | corpus :
      EvidenceSourceAuthorityCompatible
        .corpus .corpusSupported
  | parser :
      EvidenceSourceAuthorityCompatible
        .parser .parserSupported
  | model :
      EvidenceSourceAuthorityCompatible
        .model .modelSuggested
  | taskAssumption :
      EvidenceSourceAuthorityCompatible
        .taskAssumption .taskAssumed
  | externalStandard :
      EvidenceSourceAuthorityCompatible
        .externalStandard .lexicallyCertified

/-!
Only these authority classes may participate in a completed semantic
certificate.  In particular, this type has no constructor for
`parserSupported` or `modelSuggested`.
-/

inductive SemanticCompletionAuthorityEligible :
    SemanticAuthorityClass → Prop
  | humanAccepted :
      SemanticCompletionAuthorityEligible .humanAccepted
  | lexicallyCertified :
      SemanticCompletionAuthorityEligible .lexicallyCertified
  | corpusSupported :
      SemanticCompletionAuthorityEligible .corpusSupported
  | taskAssumed :
      SemanticCompletionAuthorityEligible .taskAssumed

theorem SemanticCompletionAuthorityEligible.not_parser_supported
    {authority : SemanticAuthorityClass}
    (eligible :
      SemanticCompletionAuthorityEligible authority) :
    authority ≠ .parserSupported := by
  cases eligible <;> simp

theorem SemanticCompletionAuthorityEligible.not_model_suggested
    {authority : SemanticAuthorityClass}
    (eligible :
      SemanticCompletionAuthorityEligible authority) :
    authority ≠ .modelSuggested := by
  cases eligible <;> simp

inductive EvidenceScope
  | span
  | phrase
  | sentence
  | discourse
  | task
  | domain
  deriving DecidableEq, Repr

inductive EvidenceAnchor (text : TextCarrier)
  | sourceSpan (span : Span text)
  | externalResource (resourceId : StableId)

structure EvidenceRef (text : TextCarrier) where
  evidenceId : StableId
  sourceKind : EvidenceSourceKind
  location : SourceLocation
  snapshot : SnapshotId
  authority : SemanticAuthorityClass
  scope : EvidenceScope
  anchor : EvidenceAnchor text

def EvidenceRef.sourceAuthorityCompatible
    {text : TextCarrier}
    (evidence : EvidenceRef text) : Prop :=
  EvidenceSourceAuthorityCompatible
    evidence.sourceKind evidence.authority

structure EvidenceBundle (text : TextCarrier) where
  refs : List (EvidenceRef text)
  refs_nonempty : refs ≠ []
  identities_nodup :
    (refs.map EvidenceRef.evidenceId).Nodup

theorem EvidenceBundle.has_evidence
    {text : TextCarrier}
    (bundle : EvidenceBundle text) :
    ∃ evidence, evidence ∈ bundle.refs := by
  cases refsEquation : bundle.refs with
  | nil =>
      exact False.elim
        (bundle.refs_nonempty refsEquation)
  | cons head tail =>
      exact ⟨head, by simp⟩

end Mathematics.SemanticTokenization
```
