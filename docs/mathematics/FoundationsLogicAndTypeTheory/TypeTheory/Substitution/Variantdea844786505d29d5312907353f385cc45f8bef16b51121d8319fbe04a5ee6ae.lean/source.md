# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.TypeTheory.Substitution.Variantdea844786505d29d5312907353f385cc45f8bef16b51121d8319fbe04a5ee6ae

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `74a46edcbe9c705da8591623e3a73e317fa820b3` · SHA-256 `dea844786505d29d5312907353f385cc45f8bef16b51121d8319fbe04a5ee6ae`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
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
```
