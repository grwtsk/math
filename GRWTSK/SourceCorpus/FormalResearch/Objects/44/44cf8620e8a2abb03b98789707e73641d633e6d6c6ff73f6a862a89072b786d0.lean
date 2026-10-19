import Mathematics.Core.SemanticIdentity
import Mathematics.SourceAnalysis.AbstractSourceAddress

/-!
# Semantically accountable descriptors

Every retained label has exactly one disposition because the disposition is a
single typed field.  Candidate, opaque, and unresolved labels are therefore
visible states rather than omissions.
-/

namespace Mathematics.Concept

abbrev DescriptorId := StableId

inductive DescriptorKind
  | symbol
  | identifier
  | name
  | label
  | phrase
  | modifier
  | instruction
  deriving DecidableEq, Repr, Inhabited

/-- The exhaustive disposition required for every descriptor occurrence. -/
inductive DescriptorDisposition
  | knownPoint (pointId : ElementId)
  | projectLocalName (pointId : ElementId)
  | contextualModifier
  | representationIdentifier (representationId : RepresentationId)
  | operationalInstruction
  | authorityClassification
  | boundaryOrProhibition
  | candidatePoint (candidateId : ElementId)
  | opaqueLabel
  | unresolvedObligation (obligationId : StableId)
  deriving DecidableEq, Repr, Inhabited

/-- One exact descriptor occurrence and its accountable meaning status. -/
structure Descriptor where
  descriptorId : DescriptorId
  text : String
  kind : DescriptorKind
  disposition : DescriptorDisposition
  source : SourceAnalysis.AbstractSourceAddress
  normalizedTextDigest : Digest
  interpretationDigest : Digest
  deriving DecidableEq, Repr

/-- Spelling equality alone is merely an observation about text. -/
def Descriptor.SameSpelling (left right : Descriptor) : Prop :=
  left.text = right.text

/-- Descriptor identity is independent of spelling. -/
def Descriptor.SameIdentity (left right : Descriptor) : Prop :=
  left.descriptorId = right.descriptorId

end Mathematics.Concept
