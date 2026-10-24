import Mathematics.SemanticTokenization.MetadataAssertion

/-! # Finite evidence bundles and semantic authority classes -/

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
