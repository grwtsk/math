# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Sorry.Variant8c14d564743c14e1c4e73bdfd89c77bfaab6095174c4d2cab5ad795669e7a268

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `186eaad6ad5bb831e345bc4f50e7632238a346dc` · SHA-256 `8c14d564743c14e1c4e73bdfd89c77bfaab6095174c4d2cab5ad795669e7a268`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2019 Microsoft Corporation. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module

prelude
public import Lean.Util.FindExpr
public import Lean.Declaration

public section

namespace Lean

/-- Returns `true` if the expression is an application of `sorryAx`. -/
def Expr.isSorry (e : Expr) : Bool :=
  e.isAppOf ``sorryAx

/-- Returns `true` if the expression is of the form `sorryAx _ true ..`. -/
def Expr.isSyntheticSorry (e : Expr) : Bool :=
  e.isAppOf ``sorryAx && e.getAppNumArgs ≥ 2 && (e.getArg! 1).isConstOf ``Bool.true

/-- Returns `true` if the expression is of the form `sorryAx _ false ..`. -/
def Expr.isNonSyntheticSorry (e : Expr) : Bool :=
  e.isAppOf ``sorryAx && e.getAppNumArgs ≥ 2 && (e.getArg! 1).isConstOf ``Bool.false

def Expr.hasSorry (e : Expr) : Bool :=
  Option.isSome <| e.find? (·.isConstOf ``sorryAx)

def Expr.hasSyntheticSorry (e : Expr) : Bool :=
  Option.isSome <| e.find? (·.isSyntheticSorry)

def Expr.hasNonSyntheticSorry (e : Expr) : Bool :=
  Option.isSome <| e.find? (·.isNonSyntheticSorry)

def Declaration.hasSorry (d : Declaration) : Bool := Id.run do
  d.foldExprM (fun r e => r || e.hasSorry) false

def Declaration.hasSyntheticSorry (d : Declaration) : Bool := Id.run do
  d.foldExprM (fun r e => r || e.hasSyntheticSorry) false

def Declaration.hasNonSyntheticSorry (d : Declaration) : Bool := Id.run do
  d.foldExprM (fun r e => r || e.hasNonSyntheticSorry) false

end Lean
```
