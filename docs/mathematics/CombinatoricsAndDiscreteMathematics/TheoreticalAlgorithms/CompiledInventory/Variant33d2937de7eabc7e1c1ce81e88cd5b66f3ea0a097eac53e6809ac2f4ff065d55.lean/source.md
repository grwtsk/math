# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.CompiledInventory.Variant33d2937de7eabc7e1c1ce81e88cd5b66f3ea0a097eac53e6809ac2f4ff065d55

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `daa7bb28f8deab9ebcdf1ce3bef46f3c6715709c` · SHA-256 `7b8cd218a9112cd746290fc5f84a27e5152f9e83810f95a7eedf4f8014759cd3`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.EntityKind.Variantf2b0473a2625258ca05612c5ea4c4fe7b38b7f754584fbb353ba5bed460b71f0","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"f2b0473a2625258ca05612c5ea4c4fe7b38b7f754584fbb353ba5bed460b71f0","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.EntityKind.Variantf2b0473a2625258ca05612c5ea4c4fe7b38b7f754584fbb353ba5bed460b71f0","mathematical_subject":"Computation.DataStructures","original_sha256":"f2b0473a2625258ca05612c5ea4c4fe7b38b7f754584fbb353ba5bed460b71f0","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/.surface/oracle/recovery/e7ca3ab08a9941d3b0d081a02fe454bdf10e695cc272c56d32f3ad446cc76aee-superseded-json-wrapper-grid-v1/candidate-tree/Mathematics/Inventory/CompiledInventory.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Lean
import Mathematics.Concept.RuntimeBinding

/-!
# Compiled public-entity inventory boundary

This module defines the typed snapshot accepted from a downstream Lean
environment exporter.  It does not pretend to discover declarations itself.
Source locations are provenance; stable entity identity is supplied separately.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.EntityKind.Variantf2b0473a2625258ca05612c5ea4c4fe7b38b7f754584fbb353ba5bed460b71f0

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
```
