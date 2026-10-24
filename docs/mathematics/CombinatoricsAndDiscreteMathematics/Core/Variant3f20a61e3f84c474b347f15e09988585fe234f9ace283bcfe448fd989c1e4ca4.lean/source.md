# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.Core.Variant3f20a61e3f84c474b347f15e09988585fe234f9ace283bcfe448fd989c1e4ca4

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `0d6bf9e0f0c04bec6019e31c5e4d58b0398ca765` · SHA-256 `3f20a61e3f84c474b347f15e09988585fe234f9ace283bcfe448fd989c1e4ca4`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
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
```
