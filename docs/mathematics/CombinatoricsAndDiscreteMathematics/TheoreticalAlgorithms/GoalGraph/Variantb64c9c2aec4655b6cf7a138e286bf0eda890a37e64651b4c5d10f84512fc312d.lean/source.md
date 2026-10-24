# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.GoalGraph.Variantb64c9c2aec4655b6cf7a138e286bf0eda890a37e64651b4c5d10f84512fc312d

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3b5a82a8689d9b33604cc2d89c3417cf79a38666` · SHA-256 `589533efe60a4ca4447dfcbfe01335ff79b9d7ff9631b160c4251230031bb086`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.GoalCellStatus.Variant74ae43aba2c85ce8502ec24b8b8695fd5f49cf0d0f0c0f1d26894117addd8d5c","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"74ae43aba2c85ce8502ec24b8b8695fd5f49cf0d0f0c0f1d26894117addd8d5c","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.GoalCellStatus.Variant74ae43aba2c85ce8502ec24b8b8695fd5f49cf0d0f0c0f1d26894117addd8d5c","mathematical_subject":"Computation.DataStructures","original_sha256":"74ae43aba2c85ce8502ec24b8b8695fd5f49cf0d0f0c0f1d26894117addd8d5c","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:f8ff4aee8f63f8901f3dcfee/workspace/lib/Surface/Core/GoalGraph.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
module

public import Surface.Core.Task

/-!
# Typed goal graph

The graph is finite protocol data.  It represents Lean obligations and their
dependencies without pretending to be a checked Lean environment.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.GoalCellStatus.Variant74ae43aba2c85ce8502ec24b8b8695fd5f49cf0d0f0c0f1d26894117addd8d5c

public section

namespace Surface.Core

open Lean

abbrev GoalCellId := Nat

/-- Local proof-state status used by deterministic cellular search policy. -/
@[surface_novel]
inductive GoalCellStatus where
  | open
  | active
  | proved
  | blocked
  | subsumed
  | rejected
deriving DecidableEq, Repr, BEq

/-- The exact kind of open obligation represented by a goal cell. -/
@[surface_novel]
inductive OpenObligationKind where
  | goal
  | typeclass
  | coercion
  | unresolvedImport
  | representationMismatch
deriving DecidableEq, Repr, BEq

/-- One typed proof obligation or candidate lemma. -/
@[surface_novel]
structure GoalCell where
  id : GoalCellId
  targetType : String
  localContext : List String
  kind : OpenObligationKind
  status : GoalCellStatus
  sourceDeclaration? : Option Name := none
deriving DecidableEq, Repr

/-- The typed relation joining two local obligations. -/
@[surface_novel]
inductive GoalEdgeKind where
  | dependsOn
  | unifiesWith
  | rewrites
  | suppliesInstance
  | imports
  | generalizes
  | specializes
deriving DecidableEq, Repr, BEq

/-- A directed dependency between proof obligations. -/
@[surface_novel]
structure GoalEdge where
  prerequisite : GoalCellId
  dependent : GoalCellId
  kind : GoalEdgeKind
deriving DecidableEq, Repr

/-- A finite dependency graph exported from an elaboration snapshot. -/
@[surface_novel]
structure GoalGraph where
  task : TheoremTask
  cells : List GoalCell
  edges : List GoalEdge
  snapshotDigest : Digest

/-- A selected subgraph, expressed only through identifiers in its parent graph. -/
@[surface_novel]
structure GoalSlice where
  graphDigest : Digest
  selected : List GoalCellId
deriving DecidableEq, Repr

/-- Lean state observed after elaborating a proof patch. -/
@[surface_novel]
structure ElaborationSnapshot where
  task : TheoremTask
  graph : GoalGraph
  appliedPatchDigest : Digest
  diagnostics : List String

def GoalGraph.containsCell (graph : GoalGraph) (id : GoalCellId) : Bool :=
  graph.cells.any fun cell => cell.id == id

end Surface.Core
```
