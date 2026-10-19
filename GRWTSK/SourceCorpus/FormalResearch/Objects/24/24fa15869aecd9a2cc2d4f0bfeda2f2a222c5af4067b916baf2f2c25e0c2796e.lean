import DAF.DependencyGraph
import DAF.System

/-!
# Certified project and workspace semantics

A project node denotes a public semantic value from the public values of its
direct dependencies.  `Artifact` and `ValidArtifact` describe a separately
certified build result; no compiler, filesystem, or external build process is
modeled here.

The public type of a node is *definitionally* the workspace's `Export p`.
Consequently workspace evaluation does not require equality transports between
an independently chosen export family and node-local public types.  Acyclicity
of the dependency graph supplies the well-founded recursion used by
`Workspace.evaluate`.
-/

universe u v w

namespace DAF

/-- A packaged public semantic value with its interface type made explicit. -/
structure Export where
  Interface : Type v
  value : Interface

/--
A representative public project capability: an observable system together
with a transition-stable invariant.  Projects may export other structures;
this record makes the common system boundary explicit without conflating it
with a build artifact.
-/
structure ProjectInterface where
  system : System
  invariants : system.State → Prop
  invariant_step :
    ∀ input state,
      invariants state → invariants (system.step input state)

/-- A semantic project node whose public type is the declared export at `p`. -/
structure ProjectNode
    (G : DependencyGraph.{u})
    (Exports : G.ProjectId → Type v)
    (p : G.ProjectId) where
  /-- Type of concrete build artifacts for this node. -/
  Artifact : Type w
  /-- Declarative public semantics assembled from direct dependency exports. -/
  semantics : DependencyEnv G Exports p → Exports p
  /-- Public denotation of a concrete artifact. -/
  denote : Artifact → Exports p
  /-- Certification predicate relative to the dependency environment. -/
  ValidArtifact : DependencyEnv G Exports p → Artifact → Prop
  /-- Every certified artifact denotes the declarative semantics. -/
  artifact_sound :
    ∀ env artifact,
      ValidArtifact env artifact →
        denote artifact = semantics env

namespace ProjectNode

/-- The public type of a project node, definitionally aligned with `Exports`. -/
abbrev Public
    {G : DependencyGraph.{u}}
    {Exports : G.ProjectId → Type v}
    {p : G.ProjectId}
    (_node : ProjectNode.{u, v, w} G Exports p) : Type v :=
  Exports p

end ProjectNode

/-- A project node equipped with a certified, total abstract build operation. -/
structure BuildableProjectNode
    (G : DependencyGraph.{u})
    (Exports : G.ProjectId → Type v)
    (p : G.ProjectId)
    extends ProjectNode.{u, v, w} G Exports p where
  /-- Abstract build operation; this is not an assertion about Lake or a compiler. -/
  build : DependencyEnv G Exports p → Artifact
  /-- The abstract build always returns a certified artifact. -/
  build_valid : ∀ env, ValidArtifact env (build env)

namespace BuildableProjectNode

/-- A buildable node's artifact denotes its semantics. -/
@[simp]
theorem denote_build
    {G : DependencyGraph.{u}}
    {Exports : G.ProjectId → Type v}
    {p : G.ProjectId}
    (node : BuildableProjectNode.{u, v, w} G Exports p)
    (env : DependencyEnv G Exports p) :
    node.denote (node.build env) = node.semantics env :=
  node.artifact_sound env (node.build env) (node.build_valid env)

end BuildableProjectNode

/-- A finite acyclic diagram of certified project semantics. -/
structure Workspace where
  graph : DependencyGraph.{u}
  /-- Public semantic interface exported at each project vertex. -/
  Export : graph.ProjectId → Type v
  /-- Certified node at each project vertex. -/
  node : (p : graph.ProjectId) → ProjectNode.{u, v, w} graph Export p

/--
An unpacked workspace diagram over one fixed graph.  This indexed form is the
practical domain for same-graph upgrades: two versions share `G`
definitionally, so dependency environments require no equality transport.
-/
structure WorkspaceDiagram (G : DependencyGraph.{u}) where
  Export : G.ProjectId → Type v
  node : (p : G.ProjectId) → ProjectNode.{u, v, w} G Export p

namespace WorkspaceDiagram

/-- Evaluate a fixed-graph workspace diagram by dependency recursion. -/
noncomputable def evaluate
    {G : DependencyGraph.{u}}
    (W : WorkspaceDiagram.{u, v, w} G)
    (p : G.ProjectId) : W.Export p :=
  G.acyclic.fix
    (C := fun p ↦ W.Export p)
    (fun p prior ↦
      (W.node p).semantics (fun q hq ↦ prior q hq))
    p

theorem evaluate_eq
    {G : DependencyGraph.{u}}
    (W : WorkspaceDiagram.{u, v, w} G)
    (p : G.ProjectId) :
    W.evaluate p =
      (W.node p).semantics (fun q _hq ↦ W.evaluate q) := by
  rw [evaluate, WellFounded.fix_eq]
  congr 1

end WorkspaceDiagram

namespace Workspace

/-- Forget only the packaging of a workspace's graph. -/
def toDiagram
    (W : Workspace.{u, v, w}) :
    WorkspaceDiagram.{u, v, w} W.graph where
  Export := W.Export
  node := W.node

/-- Package a diagram over a fixed graph as a workspace. -/
def ofDiagram
    (G : DependencyGraph.{u})
    (W : WorkspaceDiagram.{u, v, w} G) : Workspace.{u, v, w} where
  graph := G
  Export := W.Export
  node := W.node

@[simp]
theorem toDiagram_ofDiagram
    (G : DependencyGraph.{u})
    (W : WorkspaceDiagram.{u, v, w} G) :
    (ofDiagram G W).toDiagram = W := by
  cases W
  rfl

@[simp]
theorem ofDiagram_toDiagram
    (W : Workspace.{u, v, w}) :
    ofDiagram W.graph W.toDiagram = W := by
  cases W
  rfl

/--
Evaluate a workspace by well-founded recursion over direct dependencies.

Only dependency exports produced recursively are supplied to a node.  This is
the semantic evaluation of the diagram, not execution of a concrete build.
-/
noncomputable def evaluate
    (W : Workspace.{u, v, w})
    (p : W.graph.ProjectId) : W.Export p :=
  W.graph.acyclic.fix
    (C := fun p ↦ W.Export p)
    (fun p prior ↦
      (W.node p).semantics (fun q hq ↦ prior q hq))
    p

/-- Evaluation unfolds to the node semantics on recursively evaluated dependencies. -/
theorem evaluate_eq
    (W : Workspace.{u, v, w})
    (p : W.graph.ProjectId) :
    W.evaluate p =
      (W.node p).semantics (fun q _hq ↦ W.evaluate q) := by
  rw [evaluate, WellFounded.fix_eq]
  congr 1

/-- The recursively assembled direct-dependency environment at a node. -/
noncomputable def dependencyEnvironment
    (W : Workspace.{u, v, w})
    (p : W.graph.ProjectId) :
    DependencyEnv W.graph W.Export p :=
  fun q _hq ↦ W.evaluate q

@[simp]
theorem dependencyEnvironment_apply
    (W : Workspace.{u, v, w})
    (p q : W.graph.ProjectId)
    (hq : q ∈ W.graph.dependsOn p) :
    W.dependencyEnvironment p q hq = W.evaluate q :=
  rfl

/-- Workspace evaluation is exactly node semantics on its dependency environment. -/
theorem evaluate_eq_semantics
    (W : Workspace.{u, v, w})
    (p : W.graph.ProjectId) :
    W.evaluate p = (W.node p).semantics (W.dependencyEnvironment p) :=
  W.evaluate_eq p

end Workspace

end DAF
