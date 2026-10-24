import Mathematics.SemanticTokenization.Idiom

/-!
# Metaphor and mixed-reading certificates
-/

namespace Mathematics.SemanticTokenization

structure MetaphorMapping where
  sourceDomain : ConceptDomain
  targetDomain : ConceptDomain
  mappingId : String
  mappingDigest : Digest
deriving Repr

structure MetaphorCertificate
    (cut : EvidenceCut)
    (phrase : PhraseCandidate cut) where
  contextual : ContextualReading cut phrase
  mapping : MetaphorMapping
  evidence : Finset EvidenceId
  evidence_nonempty : evidence.Nonempty
  targetNotInferredFromSingleToken : Prop

structure MixedReadingCertificate
    (cut : EvidenceCut)
    (phrase : PhraseCandidate cut) where
  layers : Finset ReadingClass
  layers_nonempty : layers.Nonempty
  includesAtLeastTwo : 2 ≤ layers.card
  interpretations : Array (CertifiedInterpretation cut)
  sameSource : Prop
  sameContext : Prop

end Mathematics.SemanticTokenization
