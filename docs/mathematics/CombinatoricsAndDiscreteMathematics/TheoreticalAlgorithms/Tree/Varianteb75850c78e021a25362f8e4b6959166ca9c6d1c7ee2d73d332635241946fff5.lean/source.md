# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Tree.Varianteb75850c78e021a25362f8e4b6959166ca9c6d1c7ee2d73d332635241946fff5

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `512d0835f2ac0c558f9ee17f82d2f1d293102fca` · SHA-256 `eb75850c78e021a25362f8e4b6959166ca9c6d1c7ee2d73d332635241946fff5`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-!
# Boolean expression trees

Object nucleus for finite Boolean expression trees. Evaluation, compilation,
normal forms, encodings, and completeness proofs live in `Boolean.Tree.*`
leaves.
-/

namespace Boolean

universe u

/-- Boolean expression trees with NAND kept as a primitive structural operator. -/
inductive Tree (α : Type u) : Type u where
  | var : α → Tree α
  | falsum : Tree α
  | truth : Tree α
  | neg : Tree α → Tree α
  | conj : Tree α → Tree α → Tree α
  | disj : Tree α → Tree α → Tree α
  | impl : Tree α → Tree α → Tree α
  | eqv : Tree α → Tree α → Tree α
  | nand : Tree α → Tree α → Tree α
deriving Repr, DecidableEq

end Boolean
```
