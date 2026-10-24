# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.Idiom.Variant1523f07466b64fabb73bcfb5cf061c64782b4740d0245186af46e495646fba71

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f2a7417a16a3b77a00e6f6874256f5a68d90e1aa` · SHA-256 `1523f07466b64fabb73bcfb5cf061c64782b4740d0245186af46e495646fba71`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
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
```
