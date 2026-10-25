# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ToExpr.Variant77ef4b4a5d4fc7761abf9b6a65bf0455991208c343c0da3175068e44172852ec

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `97c49687cd69b2b9f273959efe49a9a3b69cce4a` · SHA-256 `77ef4b4a5d4fc7761abf9b6a65bf0455991208c343c0da3175068e44172852ec`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2025 Amazon.com, Inc. or its affiliates. All Rights Reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module
prelude
public import Init.Grind.AC
public import Lean.ToExpr
public section
namespace Lean.Meta.Grind.AC
open Lean.Grind
/-!
`ToExpr` instances for `AC` types.
-/
def ofSeq (m : AC.Seq) : Expr :=
  match m with
  | .var x => mkApp (mkConst ``AC.Seq.var) (toExpr x)
  | .cons x s => mkApp2 (mkConst ``AC.Seq.cons) (toExpr x) (ofSeq s)

instance : ToExpr AC.Seq where
  toExpr := ofSeq
  toTypeExpr := mkConst ``AC.Seq

def ofExpr (m : AC.Expr) : Expr :=
  match m with
  | .var x => mkApp (mkConst ``AC.Expr.var) (toExpr x)
  | .op lhs rhs => mkApp2 (mkConst ``AC.Expr.op) (ofExpr lhs) (ofExpr rhs)

instance : ToExpr AC.Expr where
  toExpr := ofExpr
  toTypeExpr := mkConst ``AC.Expr

end Lean.Meta.Grind.AC
```
