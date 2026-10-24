# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Ledger.Variant00554417e2ad0252ca2c9921efafb5bd1be538b1b8a45df8b73ae128e1ad7fad

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f67cc69ee358dddb28f41988652f0d3a2ce9fb0e` · SHA-256 `db6cc246e35cc0f6ea4d721971c51424dd11a1cb790aa7fbe38ee3d85738f997`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Ledger.Variant996246db897256694390802dbb590d6d8cd6259f666da2c9f89659f4c234ee0e","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"996246db897256694390802dbb590d6d8cd6259f666da2c9f89659f4c234ee0e","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.Ledger.Variant996246db897256694390802dbb590d6d8cd6259f666da2c9f89659f4c234ee0e","mathematical_subject":"Computation.DataStructures","original_sha256":"996246db897256694390802dbb590d6d8cd6259f666da2c9f89659f4c234ee0e","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/.surface/oracle/recovery/e7ca3ab08a9941d3b0d081a02fe454bdf10e695cc272c56d32f3ad446cc76aee-superseded-json-wrapper-grid-v1/candidate-tree/Mathematics/Concept/Ledger.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.Inventory.CompiledInventory
import Mathematics.Taxonomy.Registry

/-!
# Repository concept ledger

The ledger coordinates concepts, typed terrain relations, product taxonomy,
assignments, representations, and runtime bindings for one compiled snapshot.
It is the checked semantic target of extraction and assignment, not a source-file
index.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Ledger.Variant996246db897256694390802dbb590d6d8cd6259f666da2c9f89659f4c234ee0e

namespace Mathematics.Concept

open Mathematics
open Mathematics.Inventory

/-- Complete semantic ledger for one compiled snapshot. -/
structure Ledger where
  snapshotId : SnapshotId
  concepts : List Record
  relations : List RelationRecord
  assignments : List Assignment
  representations : List RepresentationRecord
  runtimeBindings : List RuntimeBindingDescriptor
  supersessions : List Supersession
  taxonomy : Taxonomy.Registry

namespace Ledger

/-- Concept IDs are unique. -/
def UniqueConceptIds (ledger : Ledger) : Prop :=
  (ledger.concepts.map (·.id)).Nodup

/-- Relation IDs are unique. -/
def UniqueRelationIds (ledger : Ledger) : Prop :=
  (ledger.relations.map (·.id)).Nodup

/-- Representation IDs are unique. -/
def UniqueRepresentationIds (ledger : Ledger) : Prop :=
  (ledger.representations.map (·.id)).Nodup

/-- Every relation endpoint resolves to an admitted or candidate concept. -/
def RelationsResolve (ledger : Ledger) : Prop :=
  ∀ relation ∈ ledger.relations,
    relation.source ∈ ledger.concepts.map (·.id) ∧
      relation.target ∈ ledger.concepts.map (·.id)

/-- Every representation points to a known concept. -/
def RepresentationsResolve (ledger : Ledger) : Prop :=
  ∀ representation ∈ ledger.representations,
    representation.conceptId ∈ ledger.concepts.map (·.id)

/-- Every runtime binding points to a known concept. -/
def RuntimeBindingsResolve (ledger : Ledger) : Prop :=
  ∀ binding ∈ ledger.runtimeBindings,
    binding.conceptId ∈ ledger.concepts.map (·.id)

/-- Lookup a concept by stable identity. -/
def findConcept? (ledger : Ledger) (conceptId : ConceptId) : Option Record :=
  ledger.concepts.find? fun concept => concept.id = conceptId

/-- Lookup the authoritative product taxon of a concept. -/
def findTaxon? (ledger : Ledger) (conceptId : ConceptId) :
    Option Taxonomy.MathematicalTaxon :=
  ledger.taxonomy.findTaxon? conceptId

end Ledger

end Mathematics.Concept
```
