# Complete source: GRWTSK.Algebra.LinearAlgebra.Parsing.Variant8f3d183fe9286a48c1c28e7121155a1afc7458ba96925dad2fd82d08bc654e2d

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `4725f29acefb1a51636f628ad39672782e3b3c0b` · SHA-256 `8f3d183fe9286a48c1c28e7121155a1afc7458ba96925dad2fd82d08bc654e2d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2026 Rao Xiaojia. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Rao Xiaojia
-/
module

public meta import Mathlib.LinearAlgebra.Matrix.Notation -- shake: keep (!![] elaboration)
public import Mathlib.Data.Fin.VecNotation
public import Mathlib.Data.Finset.Attr
public import Mathlib.LinearAlgebra.Matrix.Defs
public import Mathlib.Tactic.Bound.Init
public import Mathlib.Tactic.ContinuousFunctionalCalculus
public import Mathlib.Tactic.SetLike

/-!
# Parsing matrix literals

Parsers matching `!![…]` matrix literal expressions into their dimensions, element type,
and entry expressions, for tactics evaluating functions of a concrete matrix.

TODO: `!![…]` still elaborates to `Matrix.of` applied to `Matrix.vecCons` chains; but there is
a wip draft PR that switches it to the merged `Matrix.ofArray`.

This files needs a corresponding adaptation if that is merged -- but in the best case, the entirety
of this file can be gone.

## Main definitions

- `matchMatrixLit?`: match a closed matrix literal.
-/

public meta section

open Lean Meta

namespace Mathlib.Tactic.Echelon

/-- Match a closed `Fin`-indexed matrix literal: its dimensions, element type, and rows of
entries. -/
def matchMatrixLit? (A : Expr) : MetaM (Option (Nat × Nat × Expr × Array (Array Expr))) := do
  -- closedness: a literal with free variables (hypothesis- or let-bound) or metavariables
  -- is not evaluable here; unfold or substitute such variables before calling the tactic
  if A.hasFVar || A.hasMVar then return none
  let_expr Matrix finM finN R := ← inferType A | return none
  let_expr Fin mE := finM | return none
  let_expr Fin nE := finN | return none
  let some m ← getNatValue? mE | return none
  let some n ← getNatValue? nE | return none
  let_expr DFunLike.coe _ _ _ _ f v := A | return none
  let_expr Matrix.of _ _ _ := f | return none
  let (rows, _, _) ← Matrix.matchVecConsPrefix mE v
  unless rows.length == m do return none
  let entries ← rows.toArray.mapM fun row => do
    let (es, _, _) ← Matrix.matchVecConsPrefix nE row
    return es.toArray
  unless entries.all (·.size == n) do return none
  return some (m, n, R, entries)

end Mathlib.Tactic.Echelon
```
