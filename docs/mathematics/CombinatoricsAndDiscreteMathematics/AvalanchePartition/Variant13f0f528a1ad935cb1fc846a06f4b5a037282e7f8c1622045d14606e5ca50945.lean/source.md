# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.AvalanchePartition.Variant13f0f528a1ad935cb1fc846a06f4b5a037282e7f8c1622045d14606e5ca50945

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d162cc32d4cc63bf274fb00cdb35887d876ab19f` · SHA-256 `75e062023c1250b62bb7a64be03254f73ee0684dfdd69e8adb3bb721b1f764b1`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.AvalanchePartitionTree.Variant897786ef80b07c84e5c712e53bd1354bfe204ff778f300e076868810aee19b32","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"897786ef80b07c84e5c712e53bd1354bfe204ff778f300e076868810aee19b32","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.FiniteCombinatorics.SourceCorpus.AvalanchePartitionTree.Variant897786ef80b07c84e5c712e53bd1354bfe204ff778f300e076868810aee19b32","mathematical_subject":"Combinatorics.FiniteCombinatorics","original_sha256":"897786ef80b07c84e5c712e53bd1354bfe204ff778f300e076868810aee19b32","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/DAF/Terrain/AvalanchePartition.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import DAF.Terrain.AbsoluteRegion

/-!
# Deterministic top-down terrain avalanche partitions

These partitions are finite fractures of one fixed maximal coordinate set.
They are unrelated to Boolean derivatives and SAC statistics.  The child rank
strictly decreases, yielding a machine-checked well-founded traversal.  Cover
and interior-disjointness are separate fields so shared interfaces are not
hidden inside the word "partition".
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.AvalanchePartitionTree.Variant897786ef80b07c84e5c712e53bd1354bfe204ff778f300e076868810aee19b32

universe u v

namespace DAF.Terrain

/-- A finite, well-ranked deterministic fracture tree in absolute coordinates. -/
structure AvalanchePartitionTree
    {State : Type u} (G : KnownMaximalState State) where
  Node : Type v
  nodeFintype : Fintype Node
  nodeDecEq : DecidableEq Node
  root : Node
  region : Node → AbsoluteRegion G
  interior : Node → Finset G.Coord
  interior_inside_region :
    letI := G.coordDecEq
    ∀ p, interior p ⊆ (region p).coordinates
  children : Node → Finset Node
  rank : Node → Nat
  root_is_global :
    letI := G.coordFintype
    letI := G.coordDecEq
    (region root).coordinates = Finset.univ
  child_inside_parent :
    letI := nodeDecEq
    letI := G.coordDecEq
    ∀ p c, c ∈ children p →
      (region c).coordinates ⊆ (region p).coordinates
  child_rank_lt :
    letI := nodeDecEq
    ∀ p c, c ∈ children p → rank c < rank p
  children_cover_parent :
    letI := nodeDecEq
    letI := G.coordDecEq
    ∀ p, children p ≠ ∅ → ∀ x,
      x ∈ (region p).coordinates ↔
        ∃ c, c ∈ children p ∧ x ∈ (region c).coordinates
  child_interiors_disjoint :
    letI := nodeDecEq
    letI := G.coordDecEq
    ∀ p c d,
      c ∈ children p → d ∈ children p → c ≠ d →
        Disjoint (interior c) (interior d)
  deterministicRuleId : String

namespace AvalanchePartitionTree

variable {State : Type u} {G : KnownMaximalState State}

/-- The directed child relation, with the tree's carried equality installed locally. -/
def Child (T : AvalanchePartitionTree G) (child parent : T.Node) : Prop := by
  letI : DecidableEq T.Node := T.nodeDecEq
  exact child ∈ T.children parent

theorem child_rank_decreases (T : AvalanchePartitionTree G)
    {child parent : T.Node} (h : T.Child child parent) :
    T.rank child < T.rank parent := by
  letI : DecidableEq T.Node := T.nodeDecEq
  exact T.child_rank_lt parent child h

/-- Strict rank decrease proves that top-down traversal cannot contain a cycle. -/
theorem child_wellFounded (T : AvalanchePartitionTree G) :
    WellFounded T.Child := by
  apply Subrelation.wf
    (r := InvImage (fun a b : Nat => a < b) T.rank)
  · intro child parent h
    exact T.child_rank_decreases h
  · exact InvImage.wf T.rank wellFounded_lt

theorem no_child_cycle (T : AvalanchePartitionTree G)
    (node : T.Node) : ¬ T.Child node node := by
  intro h
  exact (Nat.lt_irrefl (T.rank node)) (T.child_rank_decreases h)

theorem root_covers_every_coordinate (T : AvalanchePartitionTree G)
    (c : G.Coord) :
    c ∈ (T.region T.root).coordinates := by
  letI : Fintype G.Coord := G.coordFintype
  letI : DecidableEq G.Coord := G.coordDecEq
  rw [T.root_is_global]
  exact Finset.mem_univ c

end AvalanchePartitionTree

namespace AvalanchePartitionTree

variable {State : Type u} {G : KnownMaximalState State}

/--
The deterministic frontier obtained after exactly `depth` top-down expansion
steps.  A leaf remains in the frontier; a non-leaf is replaced by all of its
children.  The definition depends only on the certified tree data and depth.
-/
def frontierAtDepth (T : AvalanchePartitionTree G) : Nat → Finset T.Node
  | 0 => by
      letI : DecidableEq T.Node := T.nodeDecEq
      exact {T.root}
  | depth + 1 => by
      letI : Fintype T.Node := T.nodeFintype
      letI : DecidableEq T.Node := T.nodeDecEq
      exact Finset.univ.filter fun node =>
        ∃ parent ∈ T.frontierAtDepth depth,
          node ∈ if T.children parent = ∅ then {parent} else T.children parent

@[simp]
theorem frontierAtDepth_zero (T : AvalanchePartitionTree G) :
    T.frontierAtDepth 0 = {T.root} := by
  simp [frontierAtDepth]

theorem frontierAtDepth_succ (T : AvalanchePartitionTree G) (depth : Nat) :
    letI : Fintype T.Node := T.nodeFintype
    letI : DecidableEq T.Node := T.nodeDecEq
    T.frontierAtDepth (depth + 1) =
        Finset.univ.filter fun node =>
          ∃ parent ∈ T.frontierAtDepth depth,
            node ∈ if T.children parent = ∅ then {parent} else T.children parent := by
  rfl

/-- Selection is independent of cache contents, query order, and scheduling. -/
theorem frontierAtDepth_runtime_independent
    (T : AvalanchePartitionTree G)
    (depth : Nat)
    {Runtime : Type*}
    (_left _right : Runtime) :
    T.frontierAtDepth depth = T.frontierAtDepth depth :=
  rfl

end AvalanchePartitionTree

/-- One finite cut through an avalanche tree, with exact cover and interfaces. -/
structure GlobalAvalanchePartition
    {State : Type u} {G : KnownMaximalState State}
    (tree : AvalanchePartitionTree G) where
  nodes : Finset tree.Node
  globalCover :
    letI := tree.nodeDecEq
    letI := G.coordDecEq
    ∀ x, ∃ node, node ∈ nodes ∧ x ∈ (tree.region node).coordinates
  pairwiseInteriorDisjoint :
    letI := tree.nodeDecEq
    letI := G.coordDecEq
    ∀ a, a ∈ nodes → ∀ b, b ∈ nodes → a ≠ b →
      Disjoint (tree.interior a) (tree.interior b)
  sharedInterface : tree.Node → tree.Node → Finset G.Coord
  sharedInterface_left :
    letI := G.coordDecEq
    ∀ a b, sharedInterface a b ⊆ (tree.region a).coordinates
  sharedInterface_right :
    letI := G.coordDecEq
    ∀ a b, sharedInterface a b ⊆ (tree.region b).coordinates
  depth : Nat

/--
A certified partition whose selected nodes are exactly the deterministic
top-down frontier.  Cover and interface laws still come from the underlying
`GlobalAvalanchePartition`; this record adds the missing selection theorem.
-/
structure DeterministicGlobalAvalanchePartition
    {State : Type u} {G : KnownMaximalState State}
    (tree : AvalanchePartitionTree G)
    extends GlobalAvalanchePartition tree where
  selected_by_rule :
    nodes = tree.frontierAtDepth depth

namespace DeterministicGlobalAvalanchePartition

variable {State : Type u} {G : KnownMaximalState State}
variable {tree : AvalanchePartitionTree G}

theorem nodes_eq_frontier
    (partition : DeterministicGlobalAvalanchePartition tree) :
    partition.nodes = tree.frontierAtDepth partition.depth :=
  partition.selected_by_rule

/-- The chosen cut is a function only of the fixed tree and declared depth. -/
theorem deterministic
    (partition : DeterministicGlobalAvalanchePartition tree)
    {Runtime : Type*}
    (_cache₁ _cache₂ : Runtime) :
    partition.nodes = tree.frontierAtDepth partition.depth :=
  partition.selected_by_rule

end DeterministicGlobalAvalanchePartition

end DAF.Terrain
```
