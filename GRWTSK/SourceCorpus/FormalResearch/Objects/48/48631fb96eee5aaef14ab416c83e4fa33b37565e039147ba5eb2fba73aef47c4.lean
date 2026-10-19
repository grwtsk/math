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
