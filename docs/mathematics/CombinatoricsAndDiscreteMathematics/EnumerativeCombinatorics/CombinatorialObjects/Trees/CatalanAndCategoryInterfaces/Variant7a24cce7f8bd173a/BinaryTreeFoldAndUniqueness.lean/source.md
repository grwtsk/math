# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.EnumerativeCombinatorics.CombinatorialObjects.Trees.CatalanAndCategoryInterfaces.Variant7a24cce7f8bd173a.BinaryTreeFoldAndUniqueness

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `251d76eda28e16d7d4739796796bf4ffcb48247a` · SHA-256 `e6cf4ca0153d0f885a633a898b4216bd4282c12a8c6f6bc9893f8b4efd53fad6`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
BinaryTreeFoldAndUniqueness — exact source component
Attribution: ATTRIBUTION_CLARIFICATION_NEEDED
Issue: https://github.com/grwtsk/math/issues/254
Provisional mathematical ideas and direction: grwtsk contributors.
Provisional composite search, probabilistic symbolic recombination and linearized diffusive computation: OpenAI/Codex.
Cache warming and model sculpting: the countless, often unnamed mathematicians, enthusiasts, and curious minds whose work and questions have helped shape these tools, and who now have new ways to pursue mathematical answers to the endlessly deep question: “Why?”
These are owner-supplied provisional roles; exact contributions and source lineage need clarification.
Original SHA-256: 7a24cce7f8bd173a95dba3729e8c2b11968cd3ff274349fe67013a4d30a5f50f
Organized SHA-256: 6075dcfa9ffaff530356f6b58cd254abf7177503167b1a3737bc7825cb74eea7
PMD: 510.7.010.030.070 trees (editorial navigation only).
Statements, hypotheses and proof bodies are exact source copies. Original whole-file documentation is retained below and may describe other components.
Only containing namespaces and explicit component imports are changed. Distinct historical representations stay distinct.
Uncompiled; no Lean/Lake invocation, public umbrella admission, geometric provider, or new theorem priority claim.
-/

/-
Scope: The complete binary-tree fold, its two computation equations and the uniqueness proof from the supplied leaf and binary-node equations. All quantified functions and equations remain intact. No category or fixed-point theorem beyond these exact recursor equations is asserted. Original namespace blocks are copied unchanged; the physical subject path does not rename declarations or add a logical wrapper. Only explicit same-source public companion imports are added where listed. Historical imported representations remain distinct and unreplayed.
-/

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
```
