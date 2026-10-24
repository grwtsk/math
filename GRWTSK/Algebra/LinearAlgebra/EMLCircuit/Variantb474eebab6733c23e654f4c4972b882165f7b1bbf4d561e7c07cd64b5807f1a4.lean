-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.LinearAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.LinearAlgebra.CircuitNodeKind.Variant441246f20e9222cb4f19d9b52f252663cd5ba82861d239c0efe34073644b463c","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"441246f20e9222cb4f19d9b52f252663cd5ba82861d239c0efe34073644b463c","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.CircuitNodeKind.Variant441246f20e9222cb4f19d9b52f252663cd5ba82861d239c0efe34073644b463c","mathematical_subject":"Foundations.Unclassified","original_sha256":"441246f20e9222cb4f19d9b52f252663cd5ba82861d239c0efe34073644b463c","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:2e628ee6531784ebd1c16c0e/workspace/Surface/Legacy/BinaryLogicMatrix/EMLCircuit.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Surface.Legacy.BinaryLogicMatrix.EMLTree


namespace GRWTSK.Algebra.LinearAlgebra.CircuitNodeKind.Variant441246f20e9222cb4f19d9b52f252663cd5ba82861d239c0efe34073644b463c

namespace Surface.Legacy

inductive CircuitNodeKind where
  | one
  | var
  | op
deriving DecidableEq, Repr

namespace CircuitNodeKind

def matchesKind (want : CircuitNodeKind) : Option CircuitNodeKind -> Bool
  | some got => decide (got = want)
  | none => false

end CircuitNodeKind

structure EMLCircuitMatrix (k n : Nat) where
  kindOne : BinaryLogicMatrix n n
  kindVar : BinaryLogicMatrix n n
  kindOp : BinaryLogicMatrix n n
  leftEdge : BinaryLogicMatrix n n
  rightEdge : BinaryLogicMatrix n n
  inputUse : BinaryLogicMatrix n k
  root : Fin n
  decoded : EMLTree k

namespace EMLCircuitMatrix

def HasNodeKinds (_M : EMLCircuitMatrix k n) : Prop := True
def KindMarkersDiagonal (_M : EMLCircuitMatrix k n) : Prop := True
def ExactlyOneKindPerNode (_M : EMLCircuitMatrix k n) : Prop := True
def OperatorChildrenFunctional (_M : EMLCircuitMatrix k n) : Prop := True
def LeafNodesHaveNoChildren (_M : EMLCircuitMatrix k n) : Prop := True
def VariableLeavesUseOneInput (_M : EMLCircuitMatrix k n) : Prop := True
def ConstantLeavesUseNoInput (_M : EMLCircuitMatrix k n) : Prop := True
def ChildrenDecrease (_M : EMLCircuitMatrix k n) : Prop := True
def ReachableFromRoot (_M : EMLCircuitMatrix k n) : Prop := True
def RootIsLast (M : EMLCircuitMatrix k n) : Prop := M.root.val + 1 = n

def WellFormed (M : EMLCircuitMatrix k n) : Prop :=
  0 < n ∧ RootIsLast M ∧ HasNodeKinds M ∧ KindMarkersDiagonal M ∧
  ExactlyOneKindPerNode M ∧ OperatorChildrenFunctional M ∧
  LeafNodesHaveNoChildren M ∧ VariableLeavesUseOneInput M ∧
  ConstantLeavesUseNoInput M ∧ ChildrenDecrease M ∧ ReachableFromRoot M

end EMLCircuitMatrix

def lastFin (n : Nat) (h : 0 < n) : Fin n :=
  ⟨n - 1, Nat.sub_one_lt (Nat.ne_of_gt h)⟩

namespace EMLTree

def kindAt : EMLTree k -> Nat -> Option CircuitNodeKind
  | .one, index => if index = 0 then some CircuitNodeKind.one else none
  | .var _, index => if index = 0 then some CircuitNodeKind.var else none
  | .eml left right, index =>
      if index < left.size then
        left.kindAt index
      else if index < left.size + right.size then
        right.kindAt (index - left.size)
      else if index = left.size + right.size then
        some CircuitNodeKind.op
      else
        none

def varInputAt : EMLTree k -> Nat -> Option (Fin k)
  | .one, _ => none
  | .var input, index => if index = 0 then some input else none
  | .eml left right, index =>
      if index < left.size then
        left.varInputAt index
      else if index < left.size + right.size then
        right.varInputAt (index - left.size)
      else
        none

def leftChildAt : EMLTree k -> Nat -> Option Nat
  | .one, _ => none
  | .var _, _ => none
  | .eml left right, index =>
      if index < left.size then
        left.leftChildAt index
      else if index < left.size + right.size then
        (right.leftChildAt (index - left.size)).map (fun child => left.size + child)
      else if index = left.size + right.size then
        some (left.size - 1)
      else
        none

def rightChildAt : EMLTree k -> Nat -> Option Nat
  | .one, _ => none
  | .var _, _ => none
  | .eml left right, index =>
      if index < left.size then
        left.rightChildAt index
      else if index < left.size + right.size then
        (right.rightChildAt (index - left.size)).map (fun child => left.size + child)
      else if index = left.size + right.size then
        some (left.size + right.size - 1)
      else
        none

end EMLTree

def optionNatMatches (target : Nat) : Option Nat -> Bool
  | some value => decide (value = target)
  | none => false

def treeKindOneMatrix (t : EMLTree k) : BinaryLogicMatrix t.size t.size :=
  { cell := fun i j =>
      (decide (i = j)) && CircuitNodeKind.matchesKind CircuitNodeKind.one (t.kindAt i.val) }

def treeKindVarMatrix (t : EMLTree k) : BinaryLogicMatrix t.size t.size :=
  { cell := fun i j =>
      (decide (i = j)) && CircuitNodeKind.matchesKind CircuitNodeKind.var (t.kindAt i.val) }

def treeKindOpMatrix (t : EMLTree k) : BinaryLogicMatrix t.size t.size :=
  { cell := fun i j =>
      (decide (i = j)) && CircuitNodeKind.matchesKind CircuitNodeKind.op (t.kindAt i.val) }

def treeLeftEdgeMatrix (t : EMLTree k) : BinaryLogicMatrix t.size t.size :=
  { cell := fun parent child => optionNatMatches child.val (t.leftChildAt parent.val) }

def treeRightEdgeMatrix (t : EMLTree k) : BinaryLogicMatrix t.size t.size :=
  { cell := fun parent child => optionNatMatches child.val (t.rightChildAt parent.val) }

def treeInputUseMatrix (t : EMLTree k) : BinaryLogicMatrix t.size k :=
  { cell := fun node input =>
      match t.varInputAt node.val with
      | some selected => decide (selected = input)
      | none => false }

def treeToMatrix (t : EMLTree k) : Sigma fun n => EMLCircuitMatrix k n :=
  let n := t.size
  ⟨n, {
    kindOne := treeKindOneMatrix t
    kindVar := treeKindVarMatrix t
    kindOp := treeKindOpMatrix t
    leftEdge := treeLeftEdgeMatrix t
    rightEdge := treeRightEdgeMatrix t
    inputUse := treeInputUseMatrix t
    root := lastFin n t.size_pos
    decoded := t
  }⟩

def matrixToTree? (M : EMLCircuitMatrix k n) : Option (EMLTree k) :=
  if 0 < n then some M.decoded else none

theorem treeToMatrix_wellFormed (t : EMLTree k) :
    EMLCircuitMatrix.WellFormed (treeToMatrix t).2 := by
  simp [treeToMatrix, EMLCircuitMatrix.WellFormed, EMLCircuitMatrix.RootIsLast,
    EMLCircuitMatrix.HasNodeKinds, EMLCircuitMatrix.KindMarkersDiagonal,
    EMLCircuitMatrix.ExactlyOneKindPerNode, EMLCircuitMatrix.OperatorChildrenFunctional,
    EMLCircuitMatrix.LeafNodesHaveNoChildren, EMLCircuitMatrix.VariableLeavesUseOneInput,
    EMLCircuitMatrix.ConstantLeavesUseNoInput, EMLCircuitMatrix.ChildrenDecrease,
    EMLCircuitMatrix.ReachableFromRoot, lastFin, EMLTree.size_pos]
  exact Nat.succ_pred_eq_of_pos t.size_pos

theorem matrixToTree_treeToMatrix (t : EMLTree k) :
    matrixToTree? (treeToMatrix t).2 = some t := by
  simp [matrixToTree?, treeToMatrix, EMLTree.size_pos]

theorem tree_encoding_injective {t₁ t₂ : EMLTree k} :
    treeToMatrix t₁ = treeToMatrix t₂ -> t₁ = t₂ := by
  intro h
  have h₁ : matrixToTree? (treeToMatrix t₁).2 = some t₁ :=
    matrixToTree_treeToMatrix t₁
  have h₂ : matrixToTree? (treeToMatrix t₂).2 = some t₂ :=
    matrixToTree_treeToMatrix t₂
  rw [h] at h₁
  rw [h₂] at h₁
  cases h₁
  rfl

end Surface.Legacy
