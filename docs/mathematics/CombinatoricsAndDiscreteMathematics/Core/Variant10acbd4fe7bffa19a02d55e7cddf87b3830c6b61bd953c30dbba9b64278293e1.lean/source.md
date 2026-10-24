# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.Core.Variant10acbd4fe7bffa19a02d55e7cddf87b3830c6b61bd953c30dbba9b64278293e1

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c36e1df973714fa92f9cc80a284d9ecf2ed35039` · SHA-256 `c8b784c0eae8567776b3b13d0ac0e88647a91b8e132bc6d40a99b1aa00179046`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.BinaryRelationRecord.Variantc5cc174ff786560e7d7b90c7b36076599d884b4aba0dcf6e5e48b532bf2f0478","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"c5cc174ff786560e7d7b90c7b36076599d884b4aba0dcf6e5e48b532bf2f0478","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.FiniteCombinatorics.SourceCorpus.BinaryRelationRecord.Variantc5cc174ff786560e7d7b90c7b36076599d884b4aba0dcf6e5e48b532bf2f0478","mathematical_subject":"Combinatorics.FiniteCombinatorics","original_sha256":"c5cc174ff786560e7d7b90c7b36076599d884b4aba0dcf6e5e48b532bf2f0478","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/.surface/revoked-artifacts/source-structure/2487c9da77d9d8ececb8ffd882948a360b9125bba2b28ca69972182b0e8e2352/failed-candidates/post-application-e89443c73810dcdf/MathDiscovery/Projection/Core.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["lake_or_runtime_control","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import MathDiscovery.Projection.Candidate
import MathDiscovery.Taxonomy.Core
import MathDiscovery.Concept.Core

/-!
# Lossless deterministic tree-projection data model

The semantic polyhierarchy remains authoritative. Projection-only and
reference occurrences never become semantic concepts.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.BinaryRelationRecord.Variantc5cc174ff786560e7d7b90c7b36076599d884b4aba0dcf6e5e48b532bf2f0478

namespace MathDiscovery.Projection

open MathDiscovery

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

end MathDiscovery.Projection
```
