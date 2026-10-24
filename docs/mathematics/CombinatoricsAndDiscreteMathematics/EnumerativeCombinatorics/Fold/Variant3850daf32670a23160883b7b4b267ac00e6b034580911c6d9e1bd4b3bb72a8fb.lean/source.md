# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.EnumerativeCombinatorics.Fold.Variant3850daf32670a23160883b7b4b267ac00e6b034580911c6d9e1bd4b3bb72a8fb

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e12fad4f5489beb2a6309aa117dfbc692ab51859` · SHA-256 `3850daf32670a23160883b7b4b267ac00e6b034580911c6d9e1bd4b3bb72a8fb`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Folder.Catalan.FixedPointSyntax

/-!
# Folder.Theorem.Catalan.Fold

Radiation role: theorem-wrapper
BinaryMatrix spine: This module re-exports proved facts or contract exposures for the BinaryMatrix radiation program.
Ontology: proof.catalan.fold
Pivot role: none
Zero typology: none
Contract boundary: theorem-wrapper
Composite stack role: infrastructure
-/


namespace Folder
namespace Catalan

theorem ctree_fold_leaf (leaf : α) (node : α → α → α) :
    CTree.fold leaf node CTree.leaf = leaf :=
  CTree.fold_leaf leaf node

theorem ctree_fold_node
    (leaf : α)
    (node : α → α → α)
    (l r : CTree) :
    CTree.fold leaf node (CTree.node l r) =
      node (CTree.fold leaf node l) (CTree.fold leaf node r) :=
  CTree.fold_node leaf node l r

theorem ctree_fold_unique
    (leaf : α)
    (node : α → α → α)
    (f : CTree → α)
    (h_leaf : f CTree.leaf = leaf)
    (h_node : ∀ l r,
      f (CTree.node l r) = node (f l) (f r)) :
    f = CTree.fold leaf node :=
  CTree.fold_unique leaf node f h_leaf h_node

end Catalan
end Folder
```
