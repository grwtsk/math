import Folder.Catalan.Tree

/-!
# Folder.Catalan.FixedPointSyntax

Radiation role: torsion-action
BinaryMatrix spine: This module records torsion, monodromy, or cohomological actions downstream of shell/phase data.
Ontology: catalan.fixed_point_syntax
Pivot role: none
Zero typology: none
Contract boundary: definition
Composite stack role: infrastructure
-/


namespace Folder
namespace Catalan

namespace CTree

def fold (leaf : α) (node : α → α → α) : CTree → α
  | CTree.leaf => leaf
  | CTree.node l r => node (fold leaf node l) (fold leaf node r)

@[simp]
theorem fold_leaf (leaf : α) (node : α → α → α) :
    CTree.fold leaf node CTree.leaf = leaf :=
  rfl

@[simp]
theorem fold_node
    (leaf : α)
    (node : α → α → α)
    (l r : CTree) :
    CTree.fold leaf node (CTree.node l r) =
      node (CTree.fold leaf node l) (CTree.fold leaf node r) :=
  rfl

theorem fold_unique
    (leaf : α)
    (node : α → α → α)
    (f : CTree → α)
    (h_leaf : f CTree.leaf = leaf)
    (h_node : ∀ l r,
      f (CTree.node l r) = node (f l) (f r)) :
    f = CTree.fold leaf node := by
  funext T
  induction T with
  | leaf =>
      exact h_leaf
  | node l r ihl ihr =>
      rw [h_node, fold_node, ihl, ihr]

end CTree
end Catalan
end Folder
