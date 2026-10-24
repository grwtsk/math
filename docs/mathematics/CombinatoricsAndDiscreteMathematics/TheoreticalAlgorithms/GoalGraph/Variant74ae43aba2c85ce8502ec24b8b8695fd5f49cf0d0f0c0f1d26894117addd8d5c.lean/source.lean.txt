module

public import Surface.Core.Task

/-!
# Typed goal graph

The graph is finite protocol data.  It represents Lean obligations and their
dependencies without pretending to be a checked Lean environment.
-/

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
