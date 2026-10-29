import Mathematics.Projection.Candidate
import Mathematics.Taxonomy.Core
import Mathematics.Concept.Core

/-!
# Lossless deterministic tree-projection data model

The semantic polyhierarchy remains authoritative. Projection-only and
reference occurrences never become semantic concepts.
-/

namespace Mathematics.Projection

open Mathematics

structure BinaryRelationRecord where
  id : RelationId
  source : ConceptId
  target : ConceptId
  kind : RelationKindId
  direction : String
  authorityName : String
  provenance : Finset StableId
  payloadDigest : Digest
  deriving DecidableEq

structure HyperParticipant where
  conceptId : ConceptId
  role : String
  direction : String
  payloadDigest : Digest
  deriving DecidableEq

structure HyperrelationRecord where
  id : HyperrelationId
  kind : RelationKindId
  participants : List HyperParticipant
  ownerConceptId : Option ConceptId
  authorityName : String
  provenance : Finset StableId
  payloadDigest : Digest
  deriving DecidableEq

structure TreeOccurrence where
  occurrenceId : ProjectionOccurrenceId
  nodeKind : NodeKind
  semanticId : Option ConceptId
  projectionOnly : Bool
  canonicalTargetOccurrenceId : Option ProjectionOccurrenceId
  parentOccurrenceId : Option ProjectionOccurrenceId
  canonicalName : String
  depth : Nat
  preorder : Nat
  subtreeEnd : Nat
  leafStart : Nat
  leafEnd : Nat
  subtreeSize : Nat
  canonicalPathId : CanonicalPathId
  pathOccurrenceIds : List ProjectionOccurrenceId
  pathSemanticIds : List ConceptId
  deriving DecidableEq

structure PrimaryTreeEdge where
  id : ProjectionEdgeId
  parentOccurrenceId : ProjectionOccurrenceId
  childOccurrenceId : ProjectionOccurrenceId
  relationId : Option RelationId
  synthetic : Bool
  deriving DecidableEq

structure SecondaryReference where
  occurrenceId : ProjectionOccurrenceId
  semanticId : ConceptId
  canonicalOccurrenceId : ProjectionOccurrenceId
  secondaryParentId : StableId
  relationId : StableId
  relationType : RelationKindId
  rejectedSelectionKey : Option ParentSelectionKey
  chosenSelectionKey : ParentSelectionKey
  deriving DecidableEq

structure CrossLink where
  id : StableId
  relationId : RelationId
  sourceCanonicalOccurrenceId : ProjectionOccurrenceId
  targetCanonicalOccurrenceId : ProjectionOccurrenceId
  relationType : RelationKindId
  authorityName : String
  provenance : Finset StableId
  displayPolicy : StableId
  deriving DecidableEq

structure ProjectedHyperrelation where
  relation : HyperrelationRecord
  occurrenceId : ProjectionOccurrenceId
  ownerOccurrenceId : ProjectionOccurrenceId
  deriving DecidableEq

structure RelationDisposition where
  relation : BinaryRelationRecord
  disposition : DispositionKind
  occurrenceId : Option ProjectionOccurrenceId
  crossLinkId : Option StableId
  reason : Option String
  deriving DecidableEq

structure LayoutHint where
  occurrenceId : ProjectionOccurrenceId
  depth : Nat
  preorder : Nat
  leafStart : Nat
  leafEnd : Nat
  deriving DecidableEq

structure CycleDiagnostic where
  id : ProjectionDiagnosticId
  members : Finset ConceptId
  relationIds : Finset RelationId
  deriving DecidableEq

structure TreeProjection where
  id : ProjectionPackageId
  profileId : ProjectionProfileId
  algorithmVersion : String
  authority : Authority
  graphDigest : Digest
  profileDigest : Digest
  projectionDigest : Digest
  rootOccurrenceId : ProjectionOccurrenceId
  concepts : List Concept.Record
  taxa : List Taxonomy.MathematicalTaxon
  binaryRelations : List BinaryRelationRecord
  occurrences : List TreeOccurrence
  primaryEdges : List PrimaryTreeEdge
  secondaryReferences : List SecondaryReference
  crossLinks : List CrossLink
  hyperrelations : List ProjectedHyperrelation
  relationDispositions : List RelationDisposition
  parentExplanations : List ParentExplanation
  layoutHints : List LayoutHint
  diagnostics : List CycleDiagnostic

end Mathematics.Projection
