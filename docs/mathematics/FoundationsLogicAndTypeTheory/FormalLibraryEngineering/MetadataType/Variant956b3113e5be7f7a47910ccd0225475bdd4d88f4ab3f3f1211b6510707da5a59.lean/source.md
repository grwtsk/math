# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.MetadataType.Variant956b3113e5be7f7a47910ccd0225475bdd4d88f4ab3f3f1211b6510707da5a59

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `25bb35feaed17f4cfee33a0175378194e1cde91e` · SHA-256 `956b3113e5be7f7a47910ccd0225475bdd4d88f4ab3f3f1211b6510707da5a59`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.SemanticTokenization.Span

/-! # Dependent metadata sorts -/

namespace Mathematics.SemanticTokenization

inductive MetadataType
  | lexeme
  | lemma
  | partOfSpeech
  | syntacticRole
  | concept
  | frame
  | domain
  | register
  | polarity
  | modality
  | figurativeStatus
  | argumentRole
  | discourseRole
  | referent
  | evidence
  deriving DecidableEq, Repr

structure MetadataValue (kind : MetadataType) where
  value : String
  deriving DecidableEq, Repr

end Mathematics.SemanticTokenization
```
