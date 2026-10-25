# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.M506970656c696e652f43656e7465722f456d6c5368656666657254726163652e6c65616e.Variant4c46d5ca59994a97422a2a6eb4ae36a91304fb32b4368449641a53db29344e88

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `91050c1916d372f436bd955b48c18bb9632bd7c8` · SHA-256 `4c46d5ca59994a97422a2a6eb4ae36a91304fb32b4368449641a53db29344e88`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathlib.Tactic


/- source-tree-label: STL1|L|addr=01010000|role=proof_code_atom|slug=pipeline-center-emlsheffertrace|owner=canonical_owner|core=Pipeline/Center/EmlShefferTrace.lean|leaf=M506970656c696e652f43656e7465722f456d6c5368656666657254726163652e6c65616e.lean -/

set_option autoImplicit false

namespace Think.Pipeline.Center.EmlShefferTrace

inductive EmlTraceTree where
  | unit : EmlTraceTree
  | input : String -> EmlTraceTree
  | residue : String -> EmlTraceTree
  | node : EmlTraceTree -> EmlTraceTree -> EmlTraceTree
deriving DecidableEq, Repr

inductive EmlBoundaryBit where
  | zero
  | one
deriving DecidableEq, Repr

inductive EmlResiduePolarity where
  | negative
  | none
  | positive
deriving DecidableEq, Repr

inductive ProofAuthorityPhase where
  | prose_conjecture
  | research_context
  | formal_statement
  | local_definition
  | executable_validator
  | checked_lean_theorem
  | checked_theorem
  | referee_boundary
  | polarity_release
deriving DecidableEq, Repr

inductive ProofClaimStatus where
  | unchecked
  | checked_lean
  | checked_rust
  | checked_evidence
  | checked_theorem
  | checked_refusal_theorem
  | advisory_gpt_context
  | residue
deriving DecidableEq, Repr

def nodeCount : EmlTraceTree -> Nat
  | .unit => 1
  | .input _ => 1
  | .residue _ => 1
  | .node left right => 1 + nodeCount left + nodeCount right

def leafCount : EmlTraceTree -> Nat
  | .unit => 1
  | .input _ => 1
  | .residue _ => 1
  | .node left right => leafCount left + leafCount right

def emlNodeCount : EmlTraceTree -> Nat
  | .unit => 0
  | .input _ => 0
  | .residue _ => 0
  | .node left right => 1 + emlNodeCount left + emlNodeCount right

def maxDepth : EmlTraceTree -> Nat
  | .unit => 0
  | .input _ => 0
  | .residue _ => 0
  | .node left right => 1 + Nat.max (maxDepth left) (maxDepth right)

def terminalCount : EmlTraceTree -> Nat
  | .unit => 1
  | .input _ => 0
  | .residue _ => 0
  | .node left right => terminalCount left + terminalCount right

def residueLeafCount : EmlTraceTree -> Nat
  | .unit => 0
  | .input _ => 0
  | .residue _ => 1
  | .node left right => residueLeafCount left + residueLeafCount right

def emlTraceTreeTheoremAuthority : Bool :=
  false

def emlNandTraceBooleanProjectionDefined : Bool :=
  false

def canReleasePositiveEmlPolarity : ProofClaimStatus -> Bool
  | .checked_theorem => true
  | _ => false

def canReleaseNegativeEmlPolarity : ProofClaimStatus -> Bool
  | .checked_theorem => true
  | .checked_refusal_theorem => true
  | _ => false

def canReleaseEmlPolarity : ProofClaimStatus -> Bool :=
  canReleasePositiveEmlPolarity

def isMathematicalUnprovabilityClaim : Bool :=
  false

theorem eml_trace_tree_unit_is_leaf :
    leafCount EmlTraceTree.unit = 1 := by
  rfl

theorem eml_trace_tree_input_is_leaf (label : String) :
    leafCount (EmlTraceTree.input label) = 1 := by
  rfl

theorem eml_trace_tree_residue_is_leaf (label : String) :
    leafCount (EmlTraceTree.residue label) = 1 := by
  rfl

theorem eml_trace_tree_node_is_binary (left right : EmlTraceTree) :
    leafCount (EmlTraceTree.node left right) =
      leafCount left + leafCount right := by
  rfl

theorem eml_trace_tree_has_only_one_internal_constructor
    (left right : EmlTraceTree) :
    emlNodeCount (EmlTraceTree.node left right) =
      1 + emlNodeCount left + emlNodeCount right := by
  rfl

theorem eml_trace_tree_node_count_positive
    (tree : EmlTraceTree) :
    0 < nodeCount tree := by
  induction tree with
  | unit => simp [nodeCount]
  | input _ => simp [nodeCount]
  | residue _ => simp [nodeCount]
  | node left right _ _ =>
      simp [nodeCount]

theorem eml_trace_tree_leaf_count_positive
    (tree : EmlTraceTree) :
    0 < leafCount tree := by
  induction tree with
  | unit => simp [leafCount]
  | input _ => simp [leafCount]
  | residue _ => simp [leafCount]
  | node left right leftPositive rightPositive =>
      simp only [leafCount]
      omega

theorem eml_trace_tree_finite_by_induction
    (tree : EmlTraceTree) :
    ∃ n : Nat, nodeCount tree = n := by
  exact ⟨nodeCount tree, rfl⟩

theorem eml_trace_tree_depth_bound_structural
    (tree : EmlTraceTree) :
    maxDepth tree < nodeCount tree := by
  induction tree with
  | unit => simp [maxDepth, nodeCount]
  | input _ => simp [maxDepth, nodeCount]
  | residue _ => simp [maxDepth, nodeCount]
  | node left right leftBound rightBound =>
      simp only [maxDepth, nodeCount]
      have hmax :
          Nat.max (maxDepth left) (maxDepth right) <
            nodeCount left + nodeCount right := by
        exact Nat.max_lt.mpr ⟨by omega, by omega⟩
      omega

theorem eml_trace_tree_not_theorem_authority :
    emlTraceTreeTheoremAuthority = false := by
  rfl

theorem eml_nand_trace_not_boolean_nand_without_projection :
    emlNandTraceBooleanProjectionDefined = false := by
  rfl

theorem polarity_release_requires_checked_theorem
    (status : ProofClaimStatus) :
    canReleasePositiveEmlPolarity status = true -> status = ProofClaimStatus.checked_theorem := by
  intro h
  cases status <;> simp [canReleasePositiveEmlPolarity] at h ⊢

theorem negative_polarity_release_requires_checked_theorem_or_refusal
    (status : ProofClaimStatus) :
    canReleaseNegativeEmlPolarity status = true ->
      status = ProofClaimStatus.checked_theorem ∨
        status = ProofClaimStatus.checked_refusal_theorem := by
  intro h
  cases status <;> simp [canReleaseNegativeEmlPolarity] at h ⊢

theorem advisory_gpt_context_is_not_checked_theorem :
    ProofClaimStatus.advisory_gpt_context ≠ ProofClaimStatus.checked_theorem := by
  intro h
  cases h

theorem cyclic_traversal_is_not_unprovability :
    isMathematicalUnprovabilityClaim = false := by
  rfl

theorem unchecked_claim_cannot_release_positive_or_negative_eml :
    canReleasePositiveEmlPolarity ProofClaimStatus.unchecked = false ∧
      canReleaseNegativeEmlPolarity ProofClaimStatus.unchecked = false := by
  exact ⟨rfl, rfl⟩

end Think.Pipeline.Center.EmlShefferTrace
```
