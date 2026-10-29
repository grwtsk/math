import Surface.Legacy.BinaryLogicMatrix.Core

namespace Surface.Legacy
namespace BinaryLogicMatrix
namespace Tree

/-- Dimension-erased matrix atom. -/
structure SomeBinaryLogicMatrix where
  rows : Nat
  cols : Nat
  matrix : BinaryLogicMatrix rows cols

instance : Repr SomeBinaryLogicMatrix where
  reprPrec M _ :=
    s!"SomeBinaryLogicMatrix(rows := {M.rows}, cols := {M.cols})"

/-- Pre-symbolic atom used before interpretation into words, streams, or sites. -/
inductive BinaryLogicAtom where
  | matrix : SomeBinaryLogicMatrix → BinaryLogicAtom
  | token : String → BinaryLogicAtom
  | modularity : String → BinaryLogicAtom
deriving Repr

/-- Raw finite binary factor tree. -/
inductive BinaryLogicTree where
  | leaf : BinaryLogicAtom → BinaryLogicTree
  | node : BinaryLogicTree → BinaryLogicTree → BinaryLogicTree
deriving Repr

namespace BinaryLogicTree

def size : BinaryLogicTree → Nat
  | leaf _ => 1
  | node l r => 1 + size l + size r

def depth : BinaryLogicTree → Nat
  | leaf _ => 1
  | node l r => 1 + Nat.max (depth l) (depth r)

def compose (a b : BinaryLogicTree) : BinaryLogicTree :=
  node a b

theorem size_pos (t : BinaryLogicTree) :
    t.size > 0 := by
  induction t with
  | leaf _ =>
      simp [size]
  | node l r ihl ihr =>
      simp [size]
      omega

theorem depth_le_size (t : BinaryLogicTree) :
    t.depth ≤ t.size := by
  induction t with
  | leaf _ =>
      simp [depth, size]
  | node l r ihl ihr =>
      have hmax : Nat.max l.depth r.depth ≤ l.size + r.size := by
        exact Nat.max_le.mpr ⟨by omega, by omega⟩
      simp [depth, size]
      omega

theorem raw_node_left_right_visible
    {A B C D : BinaryLogicTree}
    (h : BinaryLogicTree.node A B = BinaryLogicTree.node C D) :
    A = C ∧ B = D := by
  cases h
  exact ⟨rfl, rfl⟩

theorem raw_bracketing_visible
    {A B C D E F : BinaryLogicTree}
    (h :
      BinaryLogicTree.node (BinaryLogicTree.node A B) C =
        BinaryLogicTree.node (BinaryLogicTree.node D E) F) :
    A = D ∧ B = E ∧ C = F := by
  cases h
  exact ⟨rfl, rfl, rfl⟩

/-- Boundary descriptor: no commutativity quotient is installed for raw syntax. -/
def raw_tree_order_not_quotiented : List String := [
  "Raw BinaryLogicTree syntax preserves left and right children.",
  "No commutativity quotient is installed by this layer."
]

/-- Boundary descriptor: no associativity quotient is installed for raw syntax. -/
def raw_tree_bracketing_not_quotiented : List String := [
  "Raw BinaryLogicTree syntax preserves binary bracketing.",
  "No associativity quotient is installed by this layer."
]

end BinaryLogicTree

theorem binaryLogicTree_size_pos (t : BinaryLogicTree) :
    t.size > 0 :=
  BinaryLogicTree.size_pos t

theorem binaryLogicTree_depth_le_size (t : BinaryLogicTree) :
    t.depth ≤ t.size :=
  BinaryLogicTree.depth_le_size t

theorem binaryLogicTree_raw_order_visible
    {A B C D : BinaryLogicTree}
    (h : BinaryLogicTree.node A B = BinaryLogicTree.node C D) :
    A = C ∧ B = D :=
  BinaryLogicTree.raw_node_left_right_visible h

theorem binaryLogicTree_raw_bracketing_visible
    {A B C D E F : BinaryLogicTree}
    (h :
      BinaryLogicTree.node (BinaryLogicTree.node A B) C =
        BinaryLogicTree.node (BinaryLogicTree.node D E) F) :
    A = D ∧ B = E ∧ C = F :=
  BinaryLogicTree.raw_bracketing_visible h

end Tree
end BinaryLogicMatrix
end Surface.Legacy
