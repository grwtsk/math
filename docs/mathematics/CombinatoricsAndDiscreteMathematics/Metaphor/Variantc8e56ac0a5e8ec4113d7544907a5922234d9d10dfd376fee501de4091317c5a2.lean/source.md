# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.Metaphor.Variantc8e56ac0a5e8ec4113d7544907a5922234d9d10dfd376fee501de4091317c5a2

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3b204fec898dfd8f79060d0501c8326465bbae99` · SHA-256 `c8e56ac0a5e8ec4113d7544907a5922234d9d10dfd376fee501de4091317c5a2`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
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
```
