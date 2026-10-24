-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.BinaryRelationRecord.Variant3f20a61e3f84c474b347f15e09988585fe234f9ace283bcfe448fd989c1e4ca4","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"3f20a61e3f84c474b347f15e09988585fe234f9ace283bcfe448fd989c1e4ca4","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.FiniteCombinatorics.SourceCorpus.BinaryRelationRecord.Variant3f20a61e3f84c474b347f15e09988585fe234f9ace283bcfe448fd989c1e4ca4","mathematical_subject":"Combinatorics.FiniteCombinatorics","original_sha256":"3f20a61e3f84c474b347f15e09988585fe234f9ace283bcfe448fd989c1e4ca4","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/.surface/oracle/recovery/e7ca3ab08a9941d3b0d081a02fe454bdf10e695cc272c56d32f3ad446cc76aee-superseded-json-wrapper-grid-v1/candidate-tree/Mathematics/Projection/Core.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["lake_or_runtime_control","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.Projection.Candidate
import Mathematics.Taxonomy.Core
import Mathematics.Concept.Core

/-!
# Lossless deterministic tree-projection data model

The semantic polyhierarchy remains authoritative. Projection-only and
reference occurrences never become semantic concepts.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.BinaryRelationRecord.Variant3f20a61e3f84c474b347f15e09988585fe234f9ace283bcfe448fd989c1e4ca4

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
