# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.BracketProjection.Variantbb132f283b69b390771a75cc545902d0cb4f874a270ba287783859ab296bc2cb

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `01b47550ce291dd084f4d46850e8cc93bc0e5b39` · SHA-256 `b98078780d2cdfdccf417407366d51d935d32ddca6e5da0089e68d8620fe942f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.SourceAnnotatedShape.Variant5f18ac744ad1b2b7754ed1797e8dd1a437aaf3cfd4efe998d0f0e02c481fb25a","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"5f18ac744ad1b2b7754ed1797e8dd1a437aaf3cfd4efe998d0f0e02c481fb25a","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.SourceAnnotatedShape.Variant5f18ac744ad1b2b7754ed1797e8dd1a437aaf3cfd4efe998d0f0e02c481fb25a","mathematical_subject":"Computation.DataStructures","original_sha256":"5f18ac744ad1b2b7754ed1797e8dd1a437aaf3cfd4efe998d0f0e02c481fb25a","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:1d3eee06cbcaa3b7058edba7/workspace/lib/Surface/Refactor/Syntax/BracketProjection.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
module

public import Surface.Refactor.Syntax.Node
public import Mathlib.Combinatorics.Enumerative.DyckWord

/-!
# Lossy binary-logic projection of ordered syntax trees

`DyckStep.U` is the wire bit `1` (enter a node) and `DyckStep.D` is the
wire bit `0` (leave a node).  The projection preserves ordered unlabeled tree
shape.  It intentionally omits node kinds, labels, tokens, and source bytes.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.SourceAnnotatedShape.Variant5f18ac744ad1b2b7754ed1797e8dd1a437aaf3cfd4efe998d0f0e02c481fb25a

public section

namespace Surface.Refactor.Syntax

open DyckStep

@[simp] theorem dyckWord_toList_zero : (0 : DyckWord).toList = [] :=
  rfl

@[simp] theorem dyckWord_toList_add (left right : DyckWord) :
    (left + right).toList = left.toList ++ right.toList :=
  rfl

@[simp] theorem dyckWord_toList_nest (word : DyckWord) :
    word.nest.toList = U :: word.toList ++ [D] :=
  rfl

/-- A version-one binary logic matrix is a Dyck-step sequence: `U = 1`, `D = 0`. -/
abbrev BinaryLogicMatrix := List DyckStep

@[expose] def binaryLogicBit : DyckStep → Nat
  | U => 1
  | D => 0

/-- Left-child/right-sibling encoding of an ordered syntax forest. -/
@[expose] def orderedForestBinary : List OrderedSyntaxTree → BinaryTree Unit
  | [] => .nil
  | .node _ children :: siblings =>
      .node () (orderedForestBinary children) (orderedForestBinary siblings)

/-- Proof-carrying Dyck projection used to establish the raw-word invariants. -/
@[expose] def bracketProjectionDyck (forest : List OrderedSyntaxTree) : DyckWord :=
  DyckWord.ofTree (orderedForestBinary forest)

/-- Raw preorder projection: enter (`1`), children, leave (`0`), siblings. -/
@[expose] def bracketProjection (forest : List OrderedSyntaxTree) : BinaryLogicMatrix :=
  (bracketProjectionDyck forest).toList

@[surface_novel, surface_published]
theorem bracketProjection_cons (nodeIndex : Nat)
    (children siblings : List OrderedSyntaxTree) :
    bracketProjection (.node nodeIndex children :: siblings) =
      U :: bracketProjection children ++ D :: bracketProjection siblings := by
  simp [bracketProjection, bracketProjectionDyck, orderedForestBinary,
    DyckWord.ofTree, List.append_assoc]

@[surface_novel, surface_published]
theorem orderedForestBinary_numNodes (forest : List OrderedSyntaxTree) :
    (orderedForestBinary forest).numNodes = orderedForestNodeCount forest := by
  induction forest using orderedForestBinary.induct <;>
    (simp_all [orderedForestBinary, orderedForestNodeCount, OrderedSyntaxTree.nodeCount,
      BinaryTree.numNodes] <;> omega)

@[surface_novel, surface_published]
theorem bracketProjectionDyck_semilength_eq_nodeCount
    (forest : List OrderedSyntaxTree) :
    (bracketProjectionDyck forest).semilength = orderedForestNodeCount forest := by
  have decoded := DyckWord.numNodes_toTree (bracketProjectionDyck forest)
  rw [bracketProjectionDyck, DyckWord.toTree_ofTree,
    orderedForestBinary_numNodes] at decoded
  exact decoded.symm

@[surface_novel, surface_published]
theorem bracketProjection_length_eq_twice_nodeCount
    (forest : List OrderedSyntaxTree) :
    (bracketProjection forest).length = 2 * orderedForestNodeCount forest := by
  rw [← bracketProjectionDyck_semilength_eq_nodeCount]
  exact (DyckWord.two_mul_semilength_eq_length
    (p := bracketProjectionDyck forest)).symm

/-- Signed balance of a prefix: opens (`U`) minus closes (`D`). -/
@[expose] def prefixBalance (word : BinaryLogicMatrix) (prefixLength : Nat) : Int :=
  Int.ofNat ((word.take prefixLength).count U) -
    Int.ofNat ((word.take prefixLength).count D)

@[expose] def finalBalance (word : BinaryLogicMatrix) : Int :=
  prefixBalance word word.length

@[expose] def BalancedBracketProjection (word : BinaryLogicMatrix) : Prop :=
  finalBalance word = 0 ∧ ∀ prefixLength, 0 ≤ prefixBalance word prefixLength

@[surface_novel, surface_published]
theorem bracketProjection_prefix_nonnegative
    (forest : List OrderedSyntaxTree) (prefixLength : Nat) :
    0 ≤ prefixBalance (bracketProjection forest) prefixLength := by
  unfold prefixBalance bracketProjection
  have balancedPrefix :=
    (bracketProjectionDyck forest).count_D_le_count_U prefixLength
  exact sub_nonneg.mpr (Int.ofNat_le.mpr balancedPrefix)

@[surface_novel, surface_published]
theorem bracketProjection_final_zero (forest : List OrderedSyntaxTree) :
    finalBalance (bracketProjection forest) = 0 := by
  unfold finalBalance prefixBalance bracketProjection
  rw [List.take_length]
  have equalCounts := (bracketProjectionDyck forest).count_U_eq_count_D
  exact sub_eq_zero.mpr (congrArg Int.ofNat equalCounts)

@[surface_novel, surface_published]
theorem bracketProjection_balanced (forest : List OrderedSyntaxTree) :
    BalancedBracketProjection (bracketProjection forest) :=
  ⟨bracketProjection_final_zero forest,
    bracketProjection_prefix_nonnegative forest⟩

/--
The canonical Dyck decoder recovers exactly the left-child/right-sibling
encoding of the ordered unlabeled forest.
-/
@[surface_novel, surface_published]
theorem bracketProjection_shape_roundtrip (forest : List OrderedSyntaxTree) :
    (bracketProjectionDyck forest).toTree = orderedForestBinary forest :=
  DyckWord.toTree_ofTree _

/-- Parallel bracket-position map. `some i` marks node `i`'s opening bit. -/
@[expose] def bracketToNodeMap : List OrderedSyntaxTree → List (Option Nat)
  | [] => []
  | .node nodeIndex children :: siblings =>
      some nodeIndex :: bracketToNodeMap children ++ none :: bracketToNodeMap siblings

@[surface_novel, surface_published]
theorem bracketToNodeMap_length_eq_projection_length
    (forest : List OrderedSyntaxTree) :
    (bracketToNodeMap forest).length = (bracketProjection forest).length := by
  induction forest using orderedForestBinary.induct with
  | case1 =>
      simp [bracketToNodeMap, bracketProjection, bracketProjectionDyck,
        orderedForestBinary, DyckWord.ofTree]
  | case2 nodeIndex children siblings childrenInduction siblingsInduction =>
      rw [bracketProjection_cons]
      simp [bracketToNodeMap, childrenInduction, siblingsInduction]

/-- Number of little-endian `u64` words required by the packed wire section. -/
@[expose] def bracketPackedWordCount (word : BinaryLogicMatrix) : Nat :=
  (word.length + 63) / 64

/-- The version-one wire map stores only node-open positions.  Its order is
exactly the preorder node order; close positions carry no node entry. -/
@[expose] def bracketOpenNodeIndices
    (forest : List OrderedSyntaxTree) : List Nat :=
  orderedForestPreorderIndices forest

@[surface_novel, surface_published]
theorem bracketOpenNodeIndices_eq_preorder
    (forest : List OrderedSyntaxTree) :
    bracketOpenNodeIndices forest = orderedForestPreorderIndices forest :=
  rfl

@[surface_novel, surface_published]
theorem bracketOpenNodeIndices_length_of_canonical_preorder
    (forest : List OrderedSyntaxTree) (nodeCount : Nat)
    (canonical : orderedForestPreorderIndices forest = List.range nodeCount) :
    (bracketOpenNodeIndices forest).length = nodeCount := by
  simp [bracketOpenNodeIndices, canonical]

@[surface_novel]
structure SourceAnnotatedShape where
  source : String
  forest : List OrderedSyntaxTree
deriving Repr

@[expose] def SourceAnnotatedShape.binaryProjection
    (shape : SourceAnnotatedShape) : BinaryLogicMatrix :=
  bracketProjection shape.forest

/-- Two different source states can have the same tree-shape projection. -/
@[surface_novel, surface_published]
theorem bracketProjection_is_not_source_complete :
    ∃ left right : SourceAnnotatedShape,
      left ≠ right ∧ left.binaryProjection = right.binaryProjection := by
  let forest : List OrderedSyntaxTree := [.node 0 []]
  let left : SourceAnnotatedShape := ⟨"x", forest⟩
  let right : SourceAnnotatedShape := ⟨"y", forest⟩
  refine ⟨left, right, ?_, rfl⟩
  intro equal
  have sourceEqual := congrArg SourceAnnotatedShape.source equal
  simp [left, right] at sourceEqual

end Surface.Refactor.Syntax
```
