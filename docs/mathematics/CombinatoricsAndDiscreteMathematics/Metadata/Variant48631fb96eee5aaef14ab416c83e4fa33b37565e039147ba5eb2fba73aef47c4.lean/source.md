# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.Metadata.Variant48631fb96eee5aaef14ab416c83e4fa33b37565e039147ba5eb2fba73aef47c4

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `43b86556dcb0b56e7628cc24d86e58062bb801ae` · SHA-256 `48631fb96eee5aaef14ab416c83e4fa33b37565e039147ba5eb2fba73aef47c4`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.SemanticTokenization.Context

/-!
# Dependent metadata values
-/

namespace Mathematics.SemanticTokenization

inductive MetadataType
  | lexeme
  | partOfSpeech
  | lemma
  | morphology
  | syntacticRole
  | frame
  | domain
  | polarity
  | modality
  | figurativeStatus
  | register
  | concept
  | argumentRole
  | discourseRole
  | referent
  | evidenceClass
  | confidenceBand
deriving DecidableEq, Ord, Repr

inductive PartOfSpeech
  | noun
  | verb
  | adjective
  | adverb
  | pronoun
  | determiner
  | preposition
  | conjunction
  | particle
  | punctuation
  | other
deriving DecidableEq, Repr

inductive Polarity
  | positive
  | negative
  | neutral
  | unresolved
deriving DecidableEq, Repr

inductive Modality
  | asserted
  | possible
  | necessary
  | permitted
  | obligatory
  | counterfactual
  | unresolved
deriving DecidableEq, Repr

inductive FigurativeStatus
  | literal
  | metaphorical
  | idiomatic
  | mixed
  | unresolved
deriving DecidableEq, Repr

def MetadataValue : MetadataType → Type
  | .partOfSpeech => PartOfSpeech
  | .lexeme => String
  | .lemma => String
  | .morphology => String
  | .syntacticRole => String
  | .frame => String
  | .domain => String
  | .polarity => Polarity
  | .modality => Modality
  | .figurativeStatus => FigurativeStatus
  | .register => String
  | .concept => ConceptId
  | .argumentRole => String
  | .discourseRole => String
  | .referent => String
  | .evidenceClass => AuthorityClass
  | .confidenceBand => Nat

structure MetadataSchema where
  enabled : Finset MetadataType
  schemaDigest : Digest
  finite : Prop

end Mathematics.SemanticTokenization
```
