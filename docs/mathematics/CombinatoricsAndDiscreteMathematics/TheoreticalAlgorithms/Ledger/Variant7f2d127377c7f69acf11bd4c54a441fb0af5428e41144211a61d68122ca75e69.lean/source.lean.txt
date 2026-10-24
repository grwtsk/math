import MathDiscovery.Inventory.CompiledInventory
import MathDiscovery.Taxonomy.Registry

/-!
# Repository concept ledger

The ledger coordinates concepts, typed terrain relations, product taxonomy,
assignments, representations, and runtime bindings for one compiled snapshot.
It is the checked semantic target of extraction and assignment, not a source-file
index.
-/

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
