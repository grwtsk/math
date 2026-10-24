# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Invariant.Variant7766e5219b160995be5bd3f73c9e0348019e2dc846c9c9b8a2f6b68c0233ae10

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `99dba7f60c66ef380c8d4d1309b9e5f019e07287` · SHA-256 `07d508fe69791d499945b5d50f62bb29095389b04e9d0286f9484a9d380357ad`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Certificate.Varianta7b1bccd4c436a0118921a43a06fcbff7cb9d92fb8ffd2458d26d38921f6e668","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"a7b1bccd4c436a0118921a43a06fcbff7cb9d92fb8ffd2458d26d38921f6e668","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.Certificate.Varianta7b1bccd4c436a0118921a43a06fcbff7cb9d92fb8ffd2458d26d38921f6e668","mathematical_subject":"Computation.DataStructures","original_sha256":"a7b1bccd4c436a0118921a43a06fcbff7cb9d92fb8ffd2458d26d38921f6e668","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/.surface/revoked-artifacts/source-structure/2487c9da77d9d8ececb8ffd882948a360b9125bba2b28ca69972182b0e8e2352/failed-candidates/post-application-e89443c73810dcdf/MathDiscovery/Projection/Invariant.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import MathDiscovery.Projection.Core
import Mathlib.Data.Rel

/-! # Structural invariants of deterministic tree projections. -/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Certificate.Varianta7b1bccd4c436a0118921a43a06fcbff7cb9d92fb8ffd2458d26d38921f6e668

namespace MathDiscovery.Projection

open MathDiscovery

namespace TreeProjection

private def occurrenceIds (projection : TreeProjection) : List ProjectionOccurrenceId :=
  projection.occurrences.map (·.occurrenceId)

private def canonicalSemanticIds (projection : TreeProjection) : List ConceptId :=
  projection.occurrences.filterMap fun occurrence =>
    if occurrence.nodeKind = .semantic then occurrence.semanticId else none

private def conceptIds (projection : TreeProjection) : List ConceptId :=
  projection.concepts.map (·.id)

private def binaryRelationIds (projection : TreeProjection) : List RelationId :=
  projection.binaryRelations.map (·.id)

private def dispositionRelationIds (projection : TreeProjection) : List RelationId :=
  projection.relationDispositions.map (·.relation.id)

private def parentRelation (projection : TreeProjection)
    (parent child : ProjectionOccurrenceId) : Prop :=
  ∃ occurrence ∈ projection.occurrences,
    occurrence.occurrenceId = child ∧
      occurrence.parentOccurrenceId = some parent

def SemanticOccurrencesNotProjectionOnly (projection : TreeProjection) : Prop :=
  ∀ occurrence ∈ projection.occurrences,
    occurrence.nodeKind = .semantic → occurrence.projectionOnly = false

def UniqueOccurrenceIds (projection : TreeProjection) : Prop :=
  projection.occurrenceIds.Nodup

def UniqueCanonicalConcepts (projection : TreeProjection) : Prop :=
  projection.canonicalSemanticIds.Nodup

def ExactConceptCoverage (projection : TreeProjection) : Prop :=
  ∀ conceptId,
    conceptId ∈ projection.canonicalSemanticIds ↔
      conceptId ∈ projection.conceptIds

def UniqueRoot (projection : TreeProjection) : Prop :=
  ∃ root ∈ projection.occurrences,
    root.occurrenceId = projection.rootOccurrenceId ∧
      root.parentOccurrenceId = none ∧
      ∀ candidate ∈ projection.occurrences,
        candidate.parentOccurrenceId = none →
          candidate.occurrenceId = projection.rootOccurrenceId

def ParentReferencesResolve (projection : TreeProjection) : Prop :=
  ∀ occurrence ∈ projection.occurrences,
    occurrence.occurrenceId ≠ projection.rootOccurrenceId →
      ∃ parent ∈ projection.occurrences,
        occurrence.parentOccurrenceId = some parent.occurrenceId

def RootReachability (projection : TreeProjection) : Prop :=
  ∀ occurrence ∈ projection.occurrences,
    Relation.ReflTransGen projection.parentRelation
      projection.rootOccurrenceId occurrence.occurrenceId

def Acyclic (projection : TreeProjection) : Prop :=
  ∀ id, ¬ Relation.TransGen projection.parentRelation id id

def ReferencesOwnNoChildren (projection : TreeProjection) : Prop :=
  ∀ reference ∈ projection.occurrences,
    reference.nodeKind = .reference →
      reference.projectionOnly = true ∧
      ¬ ∃ child ∈ projection.occurrences,
        child.parentOccurrenceId = some reference.occurrenceId

def RelationConservation (projection : TreeProjection) : Prop :=
  projection.binaryRelationIds.Nodup ∧
  projection.dispositionRelationIds.Nodup ∧
  (∀ relationId,
    relationId ∈ projection.binaryRelationIds ↔
      relationId ∈ projection.dispositionRelationIds) ∧
  ∀ disposition ∈ projection.relationDispositions,
    disposition.relation ∈ projection.binaryRelations

def HyperrelationConservation (projection : TreeProjection) : Prop :=
  (projection.hyperrelations.map (·.relation.id)).Nodup ∧
  ∀ projected ∈ projection.hyperrelations,
    projected.relation.participants ≠ [] ∧
    (∀ participant ∈ projected.relation.participants,
      participant.conceptId ∈ projection.conceptIds) ∧
    (∀ ownerId, projected.relation.ownerConceptId = some ownerId →
      ownerId ∈ projection.conceptIds) ∧
    (∃ occurrence ∈ projection.occurrences,
      occurrence.occurrenceId = projected.occurrenceId) ∧
    ∃ owner ∈ projection.occurrences,
      owner.occurrenceId = projected.ownerOccurrenceId

def LayoutIntervalsValid (projection : TreeProjection) : Prop :=
  (∀ occurrence ∈ projection.occurrences,
    occurrence.preorder ≤ occurrence.subtreeEnd ∧
    occurrence.leafStart ≤ occurrence.leafEnd ∧
    occurrence.subtreeEnd + 1 = occurrence.preorder + occurrence.subtreeSize) ∧
  (∀ child ∈ projection.occurrences,
    ∀ parent ∈ projection.occurrences,
      child.parentOccurrenceId = some parent.occurrenceId →
        parent.preorder ≤ child.preorder ∧
        child.subtreeEnd ≤ parent.subtreeEnd) ∧
  ∀ hint ∈ projection.layoutHints,
    ∃ occurrence ∈ projection.occurrences,
      occurrence.occurrenceId = hint.occurrenceId ∧
      occurrence.depth = hint.depth ∧
      occurrence.preorder = hint.preorder ∧
      occurrence.leafStart = hint.leafStart ∧
      occurrence.leafEnd = hint.leafEnd

def ProfileAligned (projection : TreeProjection) (profile : Profile) : Prop :=
  profile.id = projection.profileId ∧
  projection.profileDigest.Valid ∧
  profile.Valid

def DeterministicSiblingOrder
    (projection : TreeProjection) (profile : Profile) : Prop :=
  projection.ProfileAligned profile ∧
  ∀ left ∈ projection.occurrences,
    ∀ right ∈ projection.occurrences,
      left ≠ right → left.preorder ≠ right.preorder

def StructurallyValid (projection : TreeProjection) : Prop :=
  projection.SemanticOccurrencesNotProjectionOnly ∧
  projection.UniqueOccurrenceIds ∧
  projection.UniqueCanonicalConcepts ∧
  projection.ExactConceptCoverage ∧
  projection.UniqueRoot ∧
  projection.ParentReferencesResolve ∧
  projection.RootReachability ∧
  projection.Acyclic ∧
  projection.ReferencesOwnNoChildren ∧
  projection.RelationConservation ∧
  projection.HyperrelationConservation ∧
  projection.LayoutIntervalsValid

structure Certificate (projection : TreeProjection) where
  profile : Profile
  profileAligned : projection.ProfileAligned profile
  structurallyValid : projection.StructurallyValid
  siblingOrderValid : projection.DeterministicSiblingOrder profile

structure Certified where
  projection : TreeProjection
  certificate : Certificate projection

/-- Projection-only nodes cannot be canonical semantic occurrences. -/
theorem projectionOnly_not_canonical
    {projection : TreeProjection}
    (valid : projection.StructurallyValid)
    {occurrence : TreeOccurrence}
    (mem : occurrence ∈ projection.occurrences)
    (projectionOnly : occurrence.projectionOnly = true) :
    occurrence.nodeKind ≠ .semantic := by
  intro semantic
  have notProjectionOnly : occurrence.projectionOnly = false :=
    valid.1 occurrence mem semantic
  rw [projectionOnly] at notProjectionOnly
  cases notProjectionOnly

end TreeProjection

end MathDiscovery.Projection
```
