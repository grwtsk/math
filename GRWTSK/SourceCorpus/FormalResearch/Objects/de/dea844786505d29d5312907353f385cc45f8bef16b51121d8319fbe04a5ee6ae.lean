import Mathematics.SemanticTokenization.ContextualEquivalence

/-! # Contextual substitution certificates and global-synonymy prohibition -/

namespace Mathematics.SemanticTokenization

structure SubstitutionCertificate
    (text : TextCarrier)
    (left right : ConceptProfile text) where
  sourceExpressionId : StableId
  replacementExpressionId : StableId
  sentenceFrameDigest : Digest
  sentence_digest_valid : sentenceFrameDigest.Valid
  context_exact :
    left.context.contextId = right.context.contextId
  registerPreserved : Prop
  domainPreserved : Prop
  pragmaticEffectPreserved : Prop
  register_preserved : registerPreserved
  domain_preserved : domainPreserved
  pragmatic_preserved : pragmaticEffectPreserved
  evidence : EvidenceBundle text

def ContextualSynonymy
    {text : TextCarrier}
    (left right : ConceptProfile text) : Prop :=
  Nonempty (SubstitutionCertificate text left right)

structure GlobalSynonymyClaim where
  claimId : StableId
  universalContextDigest : Digest
  digest_valid : universalContextDigest.Valid

def contextualSynonymyPromotesToGlobal : Bool :=
  false

@[simp] theorem global_synonymy_prohibition :
    contextualSynonymyPromotesToGlobal = false :=
  rfl

structure SingleWordEquivalent (text : TextCarrier) where
  phrase : PhraseCandidate text
  word : Span text
  substitutionEvidence : EvidenceBundle text

end Mathematics.SemanticTokenization
