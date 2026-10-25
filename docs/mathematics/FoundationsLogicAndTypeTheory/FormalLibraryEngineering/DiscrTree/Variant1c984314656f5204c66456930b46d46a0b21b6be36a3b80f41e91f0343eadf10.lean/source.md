# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.DiscrTree.Variant1c984314656f5204c66456930b46d46a0b21b6be36a3b80f41e91f0343eadf10

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `586b3f28ad8c31b84311a9ad71ab122431192df9` · SHA-256 `1c984314656f5204c66456930b46d46a0b21b6be36a3b80f41e91f0343eadf10`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2023 Kim Morrison. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kim Morrison
-/
import Mathlib.Init
import Lean.Meta.DiscrTree

/-!
# Additions to `Lean.Meta.DiscrTree`
-/

namespace Lean.Meta.DiscrTree

/--
Find keys which match the expression, or some subexpression.

Note that repeated subexpressions will be visited each time they appear,
making this operation potentially very expensive.
It would be good to solve this problem!

Implementation: we reverse the results from `getMatch`,
so that we return lemmas matching larger subexpressions first,
and amongst those we return more specific lemmas first.
-/
partial def getSubexpressionMatches {α : Type}
    (d : DiscrTree α) (e : Expr) : MetaM (Array α) := do
  match e with
  | .bvar _ => return #[]
  | .forallE _ _ _ _ => forallTelescope e (fun args body => do
      args.foldlM (fun acc arg => do
          pure <| acc ++ (← d.getSubexpressionMatches (← inferType arg)))
        (← d.getSubexpressionMatches body).reverse)
  | .lam _ _ _ _
  | .letE _ _ _ _ _ => lambdaLetTelescope e (fun args body => do
      args.foldlM (fun acc arg => do
          pure <| acc ++ (← d.getSubexpressionMatches (← inferType arg)))
        (← d.getSubexpressionMatches body).reverse)
  | _ =>
    e.foldlM (fun a f => do
      pure <| a ++ (← d.getSubexpressionMatches f)) (← d.getMatch e).reverse

/--
Check if a `keys : Array DiscTree.Key` is "specific",
i.e. something other than `[*]` or `[=, *, *, *]`.
-/
def keysSpecific (keys : Array DiscrTree.Key) : Bool :=
  keys != #[Key.star] && keys != #[Key.const ``Eq 3, Key.star, Key.star, Key.star]

end Lean.Meta.DiscrTree
```
