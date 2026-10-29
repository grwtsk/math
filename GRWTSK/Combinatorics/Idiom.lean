import Mathematics.SemanticTokenization.Concept
import Mathematics.SemanticTokenization.Reading

/-!
# Idiom certificates
-/

namespace Mathematics.SemanticTokenization

inductive ProtectedDifference
  | denotation
  | argumentStructure
  | entailment
  | conventionalTargetConcept
  | substitutionBehavior
  | registerRestriction
  | pragmaticEffect
deriving DecidableEq, Repr

structure NoncompositionalityWitness
    {cut : EvidenceCut}
    {phrase : PhraseCandidate cut}
    (literal : LiteralReading cut phrase)
    (contextual : ContextualReading cut phrase) where
  differences : Finset ProtectedDifference
  differences_nonempty : differences.Nonempty
  evidence : Finset EvidenceId
  evidence_nonempty : evidence.Nonempty

structure IdiomRestrictions where
  domains : Finset String
  registers : Finset String
  grammaticalRestrictions : Finset String
  pragmaticRestrictions : Finset String
deriving Repr

structure IdiomVariant where
  surface : String
  evidence : Finset EvidenceId
deriving DecidableEq, Repr

structure IdiomCertificate
    (cut : EvidenceCut)
    (phrase : PhraseCandidate cut) where
  contextual : ContextualReading cut phrase
  literal : LiteralReading cut phrase
  noncompositionality :
    NoncompositionalityWitness literal contextual
  coreConcept : ConceptId
  restrictions : IdiomRestrictions
  variants : Finset IdiomVariant
  conventionalityEvidence : Finset EvidenceId
  conventionalityEvidence_nonempty :
    conventionalityEvidence.Nonempty
  distinguishedFromMetaphor : Prop
  distinguishedFromCollocation : Prop

end Mathematics.SemanticTokenization
