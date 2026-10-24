# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Idiom.Variant1836e75f9a4adc78a732bf80a650e16c0ccbaa2fb9e1489f071433a78e731b55

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3c530a8ac03bf04a229610da9bad6956e3c6914e` · SHA-256 `1836e75f9a4adc78a732bf80a650e16c0ccbaa2fb9e1489f071433a78e731b55`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.SemanticTokenization.Composition

/-! # Evidence-bearing idiom records -/

namespace Mathematics.SemanticTokenization

inductive IdiomProductivity
  | fixed
  | semiProductive
  | productive
  | unknown
  deriving DecidableEq, Repr

structure IdiomCertificate (text : TextCarrier) where
  idiomId : StableId
  phrase : PhraseCandidate text
  context : Context
  conventionalMeaning : MeaningPayload
  domain : StableId
  productivity : IdiomProductivity
  fixednessEvidence : EvidenceBundle text
  substitutionEvidence : EvidenceBundle text
  provenance : List (ProvenancePath text)
  snapshot : SnapshotId
  context_snapshot_exact :
    context.snapshot = snapshot

structure IdiomRecord (text : TextCarrier) where
  certificate : IdiomCertificate text
  readingClass : ReadingClass
  idiomatic :
    readingClass = .idiomatic

theorem IdiomRecord.is_idiomatic
    {text : TextCarrier}
    (record : IdiomRecord text) :
    record.readingClass = .idiomatic :=
  record.idiomatic

end Mathematics.SemanticTokenization
```
