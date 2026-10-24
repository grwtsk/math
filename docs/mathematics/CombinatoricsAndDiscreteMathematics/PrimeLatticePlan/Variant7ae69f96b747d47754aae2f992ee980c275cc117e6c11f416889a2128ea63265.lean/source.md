# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.PrimeLatticePlan.Variant7ae69f96b747d47754aae2f992ee980c275cc117e6c11f416889a2128ea63265

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6423e14e00e7636182971c33596fd3ff550f97f3` · SHA-256 `7ae69f96b747d47754aae2f992ee980c275cc117e6c11f416889a2128ea63265`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
module

public meta import Surface.Core.Classification
public import Surface.Refactor.ModelAst
public import Mathlib.Order.Lattice
public import Mathlib.Data.Finset.Lattice.Basic
public import Mathlib.Data.Fintype.Defs
public import Mathlib.Data.Finset.BooleanAlgebra
public import Mathlib.Data.Finset.Basic
public import Mathlib.Tactic.SetNotationForOrder
import Mathlib.Tactic

/-!
# Dependency-closed PrimeLattice plans

The lattice points in this module are finite, dependency-closed sets of
typed theorem tasks.  Arithmetic coefficients, spatial packet atoms, source
files, and proof obligations are deliberately not collapsed into one carrier.
The name `PrimeLattice` refers only to the lattice of proof cones.
-/

public section

namespace Surface.Refactor

open Surface.Core

/-- A finite graded dependency graph of theorem tasks.  The grade law gives a
direct, checkable acyclicity witness: every dependency strictly lowers grade. -/
@[surface_novel]
structure PrimeLatticeGraph where
  Node : Type
  nodeFintype : Fintype Node
  dependsOn : Node → Node → Prop
  grade : Node → ℕ
  dependency_grade_lt : ∀ {dependency dependent},
    dependsOn dependency dependent → grade dependency < grade dependent
  task : Node → TheoremTask

namespace PrimeLatticeGraph

variable (graph : PrimeLatticeGraph)

/-- A proof cone contains every direct prerequisite of each selected node. -/
@[expose]
def DependencyClosed (nodes : Finset graph.Node) : Prop :=
  ∀ node ∈ nodes, ∀ dependency,
    graph.dependsOn dependency node → dependency ∈ nodes

/-- Strict grade descent rules out a dependency cycle. -/
@[surface_novel, surface_published]
theorem dependency_irreflexive (node : graph.Node) :
    ¬graph.dependsOn node node := by
  intro h
  exact (graph.dependency_grade_lt h).false

end PrimeLatticeGraph

/-- The genuine finite lattice carrier: dependency-closed proof cones. -/
@[expose]
def PrimeLattice (graph : PrimeLatticeGraph) :=
  {nodes : Finset graph.Node // graph.DependencyClosed nodes}

namespace PrimeLattice

variable {graph : PrimeLatticeGraph}

/-- Meet is intersection of dependency-closed cones. -/
@[expose]
noncomputable def meet (left right : PrimeLattice graph) :
    PrimeLattice graph := by
  classical
  refine ⟨left.1 ∩ right.1, ?_⟩
  intro node hnode dependency hdepends
  simp only [Finset.mem_inter] at hnode ⊢
  exact ⟨left.2 node hnode.1 dependency hdepends,
    right.2 node hnode.2 dependency hdepends⟩

/-- Join is union: the union of two downward-closed cones remains closed. -/
@[expose]
noncomputable def join (left right : PrimeLattice graph) :
    PrimeLattice graph := by
  classical
  refine ⟨left.1 ∪ right.1, ?_⟩
  intro node hnode dependency hdepends
  simp only [Finset.mem_union] at hnode ⊢
  rcases hnode with hleft | hright
  · exact Or.inl (left.2 node hleft dependency hdepends)
  · exact Or.inr (right.2 node hright dependency hdepends)

/-- Dependency-closed cones inherit the subset order and form a genuine
finite lattice under union and intersection. -/
noncomputable instance : Lattice (PrimeLattice graph) where
  le := fun left right ↦ left.1 ⊆ right.1
  le_refl := fun _ _ hnode ↦ hnode
  le_trans := fun _ _ _ hleft hright _ hnode ↦ hright (hleft hnode)
  le_antisymm := by
    intro left right hleft hright
    apply Subtype.ext
    exact Finset.Subset.antisymm hleft hright
  sup := join
  le_sup_left := by
    intro left right node hnode
    classical
    simpa [join] using (Or.inl hnode : node ∈ left.1 ∨ node ∈ right.1)
  le_sup_right := by
    intro left right node hnode
    classical
    simpa [join] using (Or.inr hnode : node ∈ left.1 ∨ node ∈ right.1)
  sup_le := by
    intro left right target hleft hright node hnode
    classical
    simp only [join, Finset.mem_union] at hnode
    exact hnode.elim (fun h ↦ hleft h) (fun h ↦ hright h)
  inf := meet
  inf_le_left := by
    intro left right node hnode
    classical
    exact (Finset.mem_inter.mp hnode).1
  inf_le_right := by
    intro left right node hnode
    classical
    exact (Finset.mem_inter.mp hnode).2
  le_inf := by
    intro source left right hleft hright node hnode
    classical
    exact Finset.mem_inter.mpr ⟨hleft hnode, hright hnode⟩

/-- The empty proof cone is the lattice bottom. -/
@[expose]
def bottom : PrimeLattice graph :=
  ⟨∅, by simp [PrimeLatticeGraph.DependencyClosed]⟩

/-- The full finite node set is the lattice top. -/
@[expose]
noncomputable def top : PrimeLattice graph := by
  classical
  letI := graph.nodeFintype
  refine ⟨Finset.univ, ?_⟩
  intro node _ dependency _
  exact Finset.mem_univ dependency

@[surface_novel, surface_published]
theorem mem_meet_iff (left right : PrimeLattice graph) (node : graph.Node) :
    node ∈ (meet left right).1 ↔ node ∈ left.1 ∧ node ∈ right.1 := by
  classical
  simp [meet]

@[surface_novel, surface_published]
theorem mem_join_iff (left right : PrimeLattice graph) (node : graph.Node) :
    node ∈ (join left right).1 ↔ node ∈ left.1 ∨ node ∈ right.1 := by
  classical
  simp [join]

@[surface_novel, surface_published]
theorem meet_comm (left right : PrimeLattice graph) :
    meet left right = meet right left := by
  classical
  apply Subtype.ext
  simp [meet, Finset.inter_comm]

@[surface_novel, surface_published]
theorem join_comm (left right : PrimeLattice graph) :
    join left right = join right left := by
  classical
  apply Subtype.ext
  simp [join, Finset.union_comm]

@[surface_novel, surface_published]
theorem meet_assoc (first second third : PrimeLattice graph) :
    meet (meet first second) third = meet first (meet second third) := by
  classical
  apply Subtype.ext
  simp [meet, Finset.inter_assoc]

@[surface_novel, surface_published]
theorem join_assoc (first second third : PrimeLattice graph) :
    join (join first second) third = join first (join second third) := by
  classical
  apply Subtype.ext
  simp [join, Finset.union_assoc]

@[surface_novel, surface_published]
theorem meet_join_absorb (left right : PrimeLattice graph) :
    meet left (join left right) = left := by
  classical
  apply Subtype.ext
  simp [meet, join]

@[surface_novel, surface_published]
theorem join_meet_absorb (left right : PrimeLattice graph) :
    join left (meet left right) = left := by
  classical
  apply Subtype.ext
  simp [meet, join]

/-- A model proposal may reference a cone, but its authority remains bounded
by the existing reasoning-AST constructor. -/
@[surface_novel, surface_published]
theorem proposal_over_cone_not_kernel_authority
    (_cone : PrimeLattice graph) (nodeId payload : String)
    (provenance : Provenance) :
    (ReasoningNode.modelProposal nodeId payload provenance).authority ≠
      .leanKernelChecked := by
  intro h
  cases h

end PrimeLattice

end Surface.Refactor
```
