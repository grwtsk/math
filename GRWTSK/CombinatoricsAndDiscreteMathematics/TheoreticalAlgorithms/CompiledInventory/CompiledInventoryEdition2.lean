import Lean
import Mathematics.Concept.RuntimeBinding

/-!
# Compiled public-entity inventory boundary

This module defines the typed snapshot accepted from a downstream Lean
environment exporter.  It does not pretend to discover declarations itself.
Source locations are provenance; stable entity identity is supplied separately.
-/

namespace Mathematics.Inventory

open Mathematics

/-- Public compiled entity kinds relevant to concept assignment. -/
inductive EntityKind
  | axiom
  | definition
  | theorem
  | opaqueDefinition
  | structure
  | constructor
  | recursor
  | instance
  | class
  | inductiveType
  | projection
  | syntax
  | macro
  | command
  | schema
  | runtimeOperation
  | test
  | documentation
  | generatedSupport
  | external
  deriving DecidableEq, Repr, Inhabited

/-- One normalized public entity extracted from a compiled environment. -/
structure CompiledEntity where
  id : EntityId
  fullyQualifiedName : Lean.Name
  kind : EntityKind
  normalizedSignature : NormalizedSignature
  typeDigest : Digest
  sourceDigest : Digest
  dependencyDigest : Digest
  bodyDigest : Option Digest
  axiomClosure : Finset Lean.Name
  typeDependencies : Finset Lean.Name
  valueDependencies : Finset Lean.Name
  directDependencies : Finset Lean.Name
  hasCompiledValue : Bool
  sourceLocation : Option SourceLocation
  isPublic : Bool
  generatedParent : Option EntityId
  semanticProfile : Concept.EntityProfile
  deriving DecidableEq

/-- Immutable compiled-project snapshot. -/
structure Snapshot where
  id : SnapshotId
  projectId : ProjectId
  leanVersion : String
  environmentDigest : Digest
  rootModules : Array Lean.Name
  entities : List CompiledEntity

namespace Snapshot

/-- Public entities in source-independent discovery order. -/
def publicEntities (snapshot : Snapshot) : List CompiledEntity :=
  snapshot.entities.filter (·.isPublic)

/-- Stable entity identifiers must be unique in one snapshot. -/
def UniqueEntityIds (snapshot : Snapshot) : Prop :=
  (snapshot.entities.map (·.id)).Nodup

/-- Fully-qualified compiled names must be unique in one Lean environment. -/
def UniqueNames (snapshot : Snapshot) : Prop :=
  (snapshot.entities.map (·.fullyQualifiedName)).Nodup

/-- Generated entities expose an exact parent identifier. -/
def GeneratedParentsPresent (snapshot : Snapshot) : Prop :=
  ∀ entity ∈ snapshot.entities,
    entity.kind = .generatedSupport →
      ∃ parentId, entity.generatedParent = some parentId ∧
        parentId ∈ snapshot.entities.map (·.id)

end Snapshot

end Mathematics.Inventory
