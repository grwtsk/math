-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.BracketBit.Variantcf568680d497ef2d0e3af12475230f59e8fb8b4f09d6784315c988a0eef143bc","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"cf568680d497ef2d0e3af12475230f59e8fb8b4f09d6784315c988a0eef143bc","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.BracketBit.Variantcf568680d497ef2d0e3af12475230f59e8fb8b4f09d6784315c988a0eef143bc","mathematical_subject":"Computation.DataStructures","original_sha256":"cf568680d497ef2d0e3af12475230f59e8fb8b4f09d6784315c988a0eef143bc","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:0fb42e20fee1ea48f0f02cd1/workspace/lib/SurfaceCore/Surface/Core/NetworkSurgery/Bracket.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
module

public import Surface.Core.NetworkSurgery.Identity
public import Mathlib.Combinatorics.Enumerative.DyckWord

/-!
# Proof-carrying lossy bracket projection

The binary program retains only ordered tree shape.  Labels and all source
material remain in the rich structural packet owned by the refactor layer.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.BracketBit.Variantcf568680d497ef2d0e3af12475230f59e8fb8b4f09d6784315c988a0eef143bc

public section

namespace Surface.Core.NetworkSurgery

open DyckStep
open Surface.Core.Transport

@[surface_novel]
inductive BracketBit where
  | open
  | close
deriving DecidableEq, Repr, BEq

abbrev BracketProgram := List BracketBit

@[expose] def BracketBit.toDyck : BracketBit → DyckStep
  | .open => U
  | .close => D

@[expose] def BracketBit.ofDyck : DyckStep → BracketBit
  | U => .open
  | D => .close

@[simp] theorem BracketBit.toDyck_ofDyck (step : DyckStep) :
    (BracketBit.ofDyck step).toDyck = step := by
  cases step <;> rfl

@[simp] theorem BracketBit.ofDyck_toDyck (bit : BracketBit) :
    BracketBit.ofDyck bit.toDyck = bit := by
  cases bit <;> rfl

@[surface_novel]
inductive FiniteTree where
  | node (label : StableCode) (children : List FiniteTree)
deriving Repr

@[expose] def FiniteTree.nodeCount : FiniteTree → Nat
  | .node _ children => 1 + (children.map FiniteTree.nodeCount).sum

@[expose] def finiteForestNodeCount (forest : List FiniteTree) : Nat :=
  (forest.map FiniteTree.nodeCount).sum

@[expose] def finiteForestBinary : List FiniteTree → BinaryTree Unit
  | [] => .nil
  | .node _ children :: siblings =>
      .node () (finiteForestBinary children) (finiteForestBinary siblings)

@[expose] def projectForestDyck (forest : List FiniteTree) : DyckWord :=
  DyckWord.ofTree (finiteForestBinary forest)

@[expose] def projectForest (forest : List FiniteTree) : BracketProgram :=
  (projectForestDyck forest).toList.map BracketBit.ofDyck

@[expose] def projectTree (tree : FiniteTree) : BracketProgram :=
  projectForest [tree]

@[expose] def prefixDepth (word : BracketProgram) (prefixLength : Nat) : Int :=
  let dyckPrefix := (word.take prefixLength).map BracketBit.toDyck
  Int.ofNat (dyckPrefix.count U) - Int.ofNat (dyckPrefix.count D)

@[expose] def finalDepth (word : BracketProgram) : Int :=
  prefixDepth word word.length

@[expose] def prefixValid (word : BracketProgram) : Prop :=
  ∀ prefixLength ∈ List.range (word.length + 1),
    0 ≤ prefixDepth word prefixLength

@[expose] def balanced (word : BracketProgram) : Prop :=
  prefixValid word ∧ finalDepth word = 0

@[expose] def maxDepth (word : BracketProgram) : Nat :=
  (List.range (word.length + 1)).foldl
    (fun depth prefixLength => max depth (Int.toNat (prefixDepth word prefixLength))) 0

@[expose] def structuralEnergy (word : BracketProgram) : Nat :=
  Int.natAbs (finalDepth word) +
    ((List.range (word.length + 1)).filter
      (fun prefixLength => prefixDepth word prefixLength < 0)).length

@[simp] theorem projectForest_toDyck (forest : List FiniteTree) :
    (projectForest forest).map BracketBit.toDyck =
      (projectForestDyck forest).toList := by
  unfold projectForest
  generalize (projectForestDyck forest).toList = steps
  induction steps with
  | nil => rfl
  | cons step steps inductionHypothesis =>
      simp [inductionHypothesis]

private theorem take_map_local {A B : Type*} (transform : A → B)
    (items : List A) (count : Nat) :
    (items.map transform).take count = (items.take count).map transform := by
  induction items generalizing count with
  | nil => simp
  | cons item items inductionHypothesis =>
      cases count with
      | zero => simp
      | succ count =>
          simp only [List.map_cons, List.take_succ_cons]
          rw [inductionHypothesis]

@[surface_novel, surface_published]
theorem finiteForestBinary_numNodes (forest : List FiniteTree) :
    (finiteForestBinary forest).numNodes = finiteForestNodeCount forest := by
  induction forest using finiteForestBinary.induct <;>
    (simp_all [finiteForestBinary, finiteForestNodeCount, FiniteTree.nodeCount,
      BinaryTree.numNodes] <;> omega)

@[surface_novel, surface_published]
theorem projectForest_semilength_eq_nodeCount (forest : List FiniteTree) :
    (projectForestDyck forest).semilength = finiteForestNodeCount forest := by
  have decoded := DyckWord.numNodes_toTree (projectForestDyck forest)
  rw [projectForestDyck, DyckWord.toTree_ofTree,
    finiteForestBinary_numNodes] at decoded
  exact decoded.symm

@[surface_novel, surface_published]
theorem projectForest_length_eq_twice_nodeCount (forest : List FiniteTree) :
    (projectForest forest).length = 2 * finiteForestNodeCount forest := by
  rw [projectForest, List.length_map,
    ← projectForest_semilength_eq_nodeCount]
  exact (DyckWord.two_mul_semilength_eq_length
    (p := projectForestDyck forest)).symm

@[surface_novel, surface_published]
theorem projectForest_prefixValid (forest : List FiniteTree) :
    prefixValid (projectForest forest) := by
  intro prefixLength _bounded
  unfold prefixDepth
  rw [← take_map_local, projectForest_toDyck]
  have valid := (projectForestDyck forest).count_D_le_count_U prefixLength
  exact sub_nonneg.mpr (Int.ofNat_le.mpr valid)

@[surface_novel, surface_published]
theorem projectForest_finalDepth_zero (forest : List FiniteTree) :
    finalDepth (projectForest forest) = 0 := by
  unfold finalDepth prefixDepth
  rw [List.take_length, projectForest_toDyck]
  have equalCounts := (projectForestDyck forest).count_U_eq_count_D
  exact sub_eq_zero.mpr (congrArg Int.ofNat equalCounts)

@[surface_novel, surface_published]
theorem projectForest_balanced (forest : List FiniteTree) :
    balanced (projectForest forest) :=
  ⟨projectForest_prefixValid forest, projectForest_finalDepth_zero forest⟩

@[surface_novel, surface_published]
theorem projectTree_prefixValid (tree : FiniteTree) :
    prefixValid (projectTree tree) :=
  projectForest_prefixValid [tree]

@[surface_novel, surface_published]
theorem projectTree_finalDepth_zero (tree : FiniteTree) :
    finalDepth (projectTree tree) = 0 :=
  projectForest_finalDepth_zero [tree]

@[surface_novel, surface_published]
theorem projectTree_balanced (tree : FiniteTree) :
    balanced (projectTree tree) :=
  projectForest_balanced [tree]

@[surface_novel, surface_published]
theorem projectTree_length_eq_twice_nodeCount (tree : FiniteTree) :
    (projectTree tree).length = 2 * tree.nodeCount := by
  simpa [projectTree, finiteForestNodeCount] using
    projectForest_length_eq_twice_nodeCount [tree]

@[surface_novel]
structure RichTreeState where
  sourceLabel : String
  tree : FiniteTree
deriving Repr

@[expose] def RichTreeState.binaryLogicProjection
    (state : RichTreeState) : BracketProgram :=
  projectTree state.tree

@[surface_novel, surface_published]
theorem binaryLogicProjection_is_lossy :
    ∃ left right : RichTreeState,
      left ≠ right ∧
        left.binaryLogicProjection = right.binaryLogicProjection := by
  let root : StableCode := ⟨0, by simp [revisionModulus]⟩
  let tree : FiniteTree := .node root []
  let left : RichTreeState := ⟨"left", tree⟩
  let right : RichTreeState := ⟨"right", tree⟩
  refine ⟨left, right, ?_, rfl⟩
  intro equal
  have labelsEqual := congrArg RichTreeState.sourceLabel equal
  simp [left, right] at labelsEqual

end Surface.Core.NetworkSurgery
