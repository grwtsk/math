# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Ledger.Variant8482943ca7d6987b99fa05b8642ab8d0d14a6a80e777863ba39d0bbbe4c67d99

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f95fb4339cd790b2e7f2c97c2461109ff38eb810` · SHA-256 `4c9764a6dc1e5423fefd7a8a4afb27dd3192ba74f2f80ca67d6560e623d7b592`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Ledger.Variant7f2d127377c7f69acf11bd4c54a441fb0af5428e41144211a61d68122ca75e69","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"7f2d127377c7f69acf11bd4c54a441fb0af5428e41144211a61d68122ca75e69","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.Ledger.Variant7f2d127377c7f69acf11bd4c54a441fb0af5428e41144211a61d68122ca75e69","mathematical_subject":"Computation.DataStructures","original_sha256":"7f2d127377c7f69acf11bd4c54a441fb0af5428e41144211a61d68122ca75e69","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/.surface/revoked-artifacts/source-structure/2487c9da77d9d8ececb8ffd882948a360b9125bba2b28ca69972182b0e8e2352/failed-candidates/post-application-e89443c73810dcdf/MathDiscovery/Concept/Ledger.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import MathDiscovery.Inventory.CompiledInventory
import MathDiscovery.Taxonomy.Registry

/-!
# Repository concept ledger

The ledger coordinates concepts, typed terrain relations, product taxonomy,
assignments, representations, and runtime bindings for one compiled snapshot.
It is the checked semantic target of extraction and assignment, not a source-file
index.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Ledger.Variant7f2d127377c7f69acf11bd4c54a441fb0af5428e41144211a61d68122ca75e69

namespace MathDiscovery.Concept

open MathDiscovery
open MathDiscovery.Inventory

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

end MathDiscovery.Concept
```
