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

@[expose] def GoalGraph.containsCell (graph : GoalGraph) (id : GoalCellId) : Bool :=
  graph.cells.any fun cell => cell.id == id

@[expose] def GoalGraph.cellIds (graph : GoalGraph) : List GoalCellId :=
  graph.cells.map fun cell => cell.id

/-- Finite endpoint validation.  This checks graph integrity only; it does not
assert that an edge corresponds to a valid Lean dependency. -/
@[expose] def GoalGraph.edgeEndpointsPresent (graph : GoalGraph) : Bool :=
  graph.edges.all fun edge =>
    graph.containsCell edge.prerequisite && graph.containsCell edge.dependent

/-- Executable protocol validity for a goal graph.  Mathematical/search
relations such as rewriting and unification are not required to be acyclic. -/
@[expose] def GoalGraph.Valid (graph : GoalGraph) : Prop :=
  graph.cellIds.Nodup ∧ graph.edgeEndpointsPresent = true

instance (graph : GoalGraph) : Decidable graph.Valid := by
  unfold GoalGraph.Valid
  infer_instance

@[expose] def verifyGoalGraph (graph : GoalGraph) : Bool :=
  decide graph.Valid

@[surface_novel, surface_published, surface_certificate]
theorem verifyGoalGraph_sound (graph : GoalGraph)
    (h : verifyGoalGraph graph = true) : graph.Valid := by
  exact of_decide_eq_true h

@[surface_novel, surface_published]
theorem GoalGraph.Valid.cell_ids_nodup {graph : GoalGraph}
    (h : graph.Valid) : graph.cellIds.Nodup :=
  h.1

@[surface_novel, surface_published]
theorem GoalGraph.Valid.edge_endpoints_present {graph : GoalGraph}
    (h : graph.Valid) : graph.edgeEndpointsPresent = true :=
  h.2

/-- A slice is tied to one graph digest, has no repeated selections, and names
only cells present in that graph. -/
@[expose] def GoalSlice.ValidFor (slice : GoalSlice) (graph : GoalGraph) : Prop :=
  slice.graphDigest = graph.snapshotDigest ∧
    slice.selected.Nodup ∧
    slice.selected.all graph.containsCell = true

instance (slice : GoalSlice) (graph : GoalGraph) : Decidable (slice.ValidFor graph) := by
  unfold GoalSlice.ValidFor
  infer_instance

@[expose] def verifyGoalSlice (slice : GoalSlice) (graph : GoalGraph) : Bool :=
  decide (slice.ValidFor graph)

@[surface_novel, surface_published, surface_certificate]
theorem verifyGoalSlice_sound (slice : GoalSlice) (graph : GoalGraph)
    (h : verifyGoalSlice slice graph = true) : slice.ValidFor graph := by
  exact of_decide_eq_true h

@[surface_novel, surface_published]
theorem GoalSlice.ValidFor.selected_cells_present
    {slice : GoalSlice} {graph : GoalGraph} (h : slice.ValidFor graph) :
    slice.selected.all graph.containsCell = true :=
  h.2.2

/-- Executable identity comparison for the serializable fields of two theorem
tasks.  Proposition equality remains a proof-level concern and is not inferred
from this finite check. -/
@[expose] def theoremTaskProtocolIdentityMatches
    (left right : TheoremTask) : Bool :=
  left.declarationName == right.declarationName &&
    left.statement == right.statement &&
    left.statementHash == right.statementHash &&
    left.targetModule == right.targetModule &&
    left.policyHash == right.policyHash

/-- An elaboration snapshot contains a protocol-identical task in its graph
and a structurally valid finite graph. -/
@[expose] def ElaborationSnapshot.Valid (snapshot : ElaborationSnapshot) : Prop :=
  theoremTaskProtocolIdentityMatches snapshot.task snapshot.graph.task = true ∧
    snapshot.graph.Valid

instance (snapshot : ElaborationSnapshot) : Decidable snapshot.Valid := by
  unfold ElaborationSnapshot.Valid
  infer_instance

@[expose] def verifyElaborationSnapshot (snapshot : ElaborationSnapshot) : Bool :=
  decide snapshot.Valid

@[surface_novel, surface_published, surface_certificate]
theorem verifyElaborationSnapshot_sound (snapshot : ElaborationSnapshot)
    (h : verifyElaborationSnapshot snapshot = true) : snapshot.Valid := by
  exact of_decide_eq_true h

@[surface_novel, surface_published]
theorem ElaborationSnapshot.Valid.task_identity_consistent
    {snapshot : ElaborationSnapshot} (h : snapshot.Valid) :
    theoremTaskProtocolIdentityMatches snapshot.task snapshot.graph.task = true :=
  h.1

end Surface.Core
