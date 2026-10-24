import Mathematics.Concept.Authority
import Mathematics.Concept.Boundary
import Mathematics.Concept.Descriptor
import Mathematics.Concept.Negative
import Mathematics.Concept.PointKind
import Mathematics.Concept.Representation

/-!
# Source-reconstructible mathematical points

A point is the smallest currently distinguished typed mathematical object.  It
keeps source, denotation, boundary, authority, relations, representations,
negative status, and obligations separate.  Names and filesystem coordinates
are evidence fields, not identity constructors.
-/

namespace Mathematics.Concept

structure FormalTypeReference where
  declarationName : String
  typeDigest : Digest
  deriving DecidableEq, Repr

structure RhetoricalRoleReference where
  roleId : StableId
  description : String
  deriving DecidableEq, Repr

structure ProjectRelativeName where
  projectId : ProjectId
  descriptorId : DescriptorId
  versionId : StableId
  deriving DecidableEq, Repr

structure StabilityRecord where
  status : EpistemicDisposition
  certificateIds : List CertificateId
  observedAtRevisionIds : List StableId
  stabilityDigest : Digest
  deriving DecidableEq, Repr

/-- One stable, typed point in the canonical mathematical universe. -/
structure MathematicalPoint where
  pointId : ElementId
  pointId_valid : pointId.Valid
  sources : List SourceAnalysis.AbstractSourceAddress
  sources_nonempty : sources ≠ []
  descriptorIds : List DescriptorId
  projectRelativeNames : List ProjectRelativeName
  kind : PointKind
  formalTypes : List FormalTypeReference
  denotationDigest : Digest
  rhetoricalRoles : List RhetoricalRoleReference
  terrainRegionIds : List RegionId
  boundary : Boundary
  assumptionPointIds : List ElementId
  relationIds : List RelationId
  representationIds : List RepresentationId
  computationalRealizationIds : List RuntimeBindingId
  authority : Profile
  provenanceIds : List StableId
  proofStatus : EpistemicDisposition
  epistemicDisposition : EpistemicDisposition
  stability : StabilityRecord
  versionId : StableId
  obligationIds : List StableId
  deriving DecidableEq

namespace MathematicalPoint

/-- Semantic identity is the stable point identifier only. -/
def SameIdentity (left right : MathematicalPoint) : Prop :=
  left.pointId = right.pointId

/-- Equal names, paths, embeddings, or representations are absent here. -/
theorem sameIdentity_of_pointId_eq
    {left right : MathematicalPoint}
    (same : left.pointId = right.pointId) :
    left.SameIdentity right :=
  same

/-- Every admitted point retains at least one source address. -/
theorem has_source (point : MathematicalPoint) :
    ∃ source, source ∈ point.sources := by
  exact List.exists_mem_of_ne_nil point.sources point.sources_nonempty

end MathematicalPoint

end Mathematics.Concept
