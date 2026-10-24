# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.AvalanchePartitionTests.Variant606d8aa79e9f8cc3e6f7575d80359773976e2bb0aad48fe7dbf55d8868386a53

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9c0a819a0c8a004796ba4c31fe8f8868290170ce` · SHA-256 `606d8aa79e9f8cc3e6f7575d80359773976e2bb0aad48fe7dbf55d8868386a53`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import DAF.Terrain.AvalanchePartition

/-!
# Concrete terrain avalanche-partition tests

This three-coordinate fixture checks exact absolute loci, deterministic cover,
strict child-rank decrease, and the production well-foundedness theorem.  It
does not use or alter `BitMatrix.Dynamics.Avalanche` Boolean-derivative semantics.
-/

namespace DAF.Integration.AvalanchePartitionTests

open DAF.Terrain

/-- A fixed three-coordinate maximal reference. -/
abbrev global : KnownMaximalState Bool where
  Coord := Fin 3
  coordFintype := inferInstance
  coordDecEq := inferInstance
  cardinality := 3
  absoluteIndex := Equiv.refl _
  reference i := decide (i = 2)

local instance : Fintype global.Coord := global.coordFintype
local instance : DecidableEq global.Coord := global.coordDecEq

/-- Root `0` splits deterministically into loci `{0,1}` and `{2}`. -/
abbrev tree : AvalanchePartitionTree global where
  Node := Fin 3
  nodeFintype := inferInstance
  nodeDecEq := inferInstance
  root := 0
  region p :=
    if p = 0 then ⟨Finset.univ⟩
    else if p = 1 then ⟨{0, 1}⟩
    else ⟨{2}⟩
  interior p :=
    if p = 0 then Finset.univ
    else if p = 1 then {0, 1}
    else {2}
  interior_inside_region := by native_decide
  children p := if p = 0 then {1, 2} else ∅
  rank p := if p = 0 then 1 else 0
  root_is_global := by native_decide
  child_inside_parent := by native_decide
  child_rank_lt := by native_decide
  children_cover_parent := by native_decide
  child_interiors_disjoint := by native_decide
  deterministicRuleId := "three-coordinate-top-down-v1"

local instance : Fintype tree.Node := tree.nodeFintype
local instance : DecidableEq tree.Node := tree.nodeDecEq

def rootNode : tree.Node := tree.root

def leftNode : tree.Node := by
  change Fin 3
  exact 1

def rightNode : tree.Node := by
  change Fin 3
  exact 2

/-- The leaf cut is an exact cover with disjoint interiors. -/
abbrev partition : GlobalAvalanchePartition tree where
  nodes := {leftNode, rightNode}
  globalCover := by native_decide
  pairwiseInteriorDisjoint := by native_decide
  sharedInterface _ _ := ∅
  sharedInterface_left := by simp
  sharedInterface_right := by simp
  depth := 1

/-- The same cut, now certified as the deterministic depth-one frontier. -/
abbrev deterministicPartition : DeterministicGlobalAvalanchePartition tree where
  toGlobalAvalanchePartition := partition
  selected_by_rule := by native_decide

example : (tree.region tree.root).coordinates = Finset.univ :=
  tree.root_is_global

example : (tree.region leftNode).coordinates = {0, 1} := by
  native_decide

example : (tree.region rightNode).coordinates = {2} := by
  native_decide

example : tree.Child leftNode rootNode := by
  change leftNode ∈ tree.children rootNode
  native_decide

example : tree.Child rightNode rootNode := by
  change rightNode ∈ tree.children rootNode
  native_decide

example : ¬ tree.Child rootNode leftNode := by
  change rootNode ∉ tree.children leftNode
  native_decide

example : tree.rank leftNode < tree.rank rootNode :=
  tree.child_rank_decreases (by
    change leftNode ∈ tree.children rootNode
    native_decide)

example : WellFounded tree.Child :=
  tree.child_wellFounded

example (node : tree.Node) : ¬ tree.Child node node :=
  tree.no_child_cycle node

example (coordinate : global.Coord) :
    coordinate ∈ (tree.region tree.root).coordinates :=
  tree.root_covers_every_coordinate coordinate

example (coordinate : global.Coord) :
    ∃ node, node ∈ partition.nodes ∧
      coordinate ∈ (tree.region node).coordinates :=
  partition.globalCover coordinate

example : partition.nodes = ({leftNode, rightNode} : Finset tree.Node) := by
  native_decide

example :
    deterministicPartition.nodes =
      tree.frontierAtDepth deterministicPartition.depth :=
  deterministicPartition.nodes_eq_frontier

end DAF.Integration.AvalanchePartitionTests
```
