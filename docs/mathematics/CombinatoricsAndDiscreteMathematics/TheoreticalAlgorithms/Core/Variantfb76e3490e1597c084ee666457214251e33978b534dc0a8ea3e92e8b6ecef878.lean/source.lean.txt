import DAF.Manifest
import Surface.ContinuousAssurance.LiteratureTranslation

/-!
# Canonical assurance index core

The index is typed metadata.  It locates declarations, representations,
evidence, reviews, authorizations, and obligations without promoting hashes or
generated data to theorem authority.
-/

namespace Surface.ContinuousAssurance

/-- Stable owner identity, including domain owners outside the pipeline project enum. -/
structure SemanticOwnerId where
  value : String
  deriving DecidableEq, Repr

/-- Optional absolute global locus retained by an indexed representation. -/
structure GlobalLocusRef where
  globalReference : MathematicalObjectId
  regionIdentifier : String
  deriving DecidableEq, Repr

/-- Metadata shared by every canonical index record. -/
structure IndexMetadata where
  owner : SemanticOwnerId
  semanticVersion : DAF.Version
  representationVersion : DAF.Version
  payload : ArtifactIdentity
  contentDigest : EvidenceDigest
  sourceAuthority : AuthorityClass
  observationAuthority : AuthorityClass
  assuranceLevel : AssuranceLevel
  assumptions : List String
  dependencies : List MathematicalObjectId
  globalLocus : Option GlobalLocusRef
  provenance : List ArtifactIdentity
  supersedes : Option RepresentationId
  openObligations : List ObligationId
  deriving Repr

/-- All supported semantic record classes in the finite canonical index. -/
inductive IndexRecordKind
  | mathematicalObject
  | formalDeclaration
  | proposition
  | globalReference
  | absoluteRegion
  | windowSystem
  | convolutionInvolutionCore
  | hierarchyLevel
  | binaryCharge
  | raster
  | metricFlow
  | torsionModel
  | thresholdState
  | avalanchePartition
  | surgeryPatch
  | submatrixLocus
  | implementationRefinement
  | example
  | counterexample
  | diagram
  | evidenceEvent
  | representationChange
  | obligation
  | reviewBinding
  | authorizationBinding
  deriving DecidableEq, Repr

/-- A record whose type remembers its semantic class. -/
structure IndexRecord (kind : IndexRecordKind) where
  identifier : String
  objectId : MathematicalObjectId
  representationId : RepresentationId
  declaration : Option FormalDeclarationId
  propositionOrSpecification : Option String
  metadata : IndexMetadata
  payloadReference : String
  deriving Repr

/-- Erased record used only to store heterogeneous records in one finite list. -/
structure AnyIndexRecord where
  kind : IndexRecordKind
  identifier : String
  objectId : MathematicalObjectId
  representationId : RepresentationId
  declaration : Option FormalDeclarationId
  propositionOrSpecification : Option String
  metadata : IndexMetadata
  payloadReference : String
  deriving Repr

/-- Forget only the type index; no record data is lost. -/
def IndexRecord.erase {kind : IndexRecordKind}
    (record : IndexRecord kind) : AnyIndexRecord :=
  { kind
    identifier := record.identifier
    objectId := record.objectId
    representationId := record.representationId
    declaration := record.declaration
    propositionOrSpecification := record.propositionOrSpecification
    metadata := record.metadata
    payloadReference := record.payloadReference }

/-- Finite canonical snapshot plus its externally computed root digest. -/
structure CanonicalIndex where
  schemaVersion : DAF.Version
  records : List AnyIndexRecord
  rootDigest : EvidenceDigest
  deriving Repr

/-- Semantic validity conditions independently checked for an index snapshot. -/
def CanonicalIndex.Valid (index : CanonicalIndex) : Prop :=
  index.records.Pairwise fun left right => left.identifier ≠ right.identifier

/-- A valid canonical index has unique stable record identifiers. -/
theorem CanonicalIndex.identifiers_unique
    {index : CanonicalIndex}
    (valid : index.Valid) :
    index.records.Pairwise fun left right => left.identifier ≠ right.identifier :=
  valid

end Surface.ContinuousAssurance
