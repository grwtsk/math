# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.VarRename.Variantf85add7863313764f1909024a6f92e9e2e8e496ae74f5775a1dc4a189b309dec

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `da16f07af4720d5b2e238d67bd451dd024826002` · SHA-256 `f85add7863313764f1909024a6f92e9e2e8e496ae74f5775a1dc4a189b309dec`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2025 Amazon.com, Inc. or its affiliates. All Rights Reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module
prelude
public import Init.Grind.AC
public import Lean.Meta.Tactic.Grind.VarRename
namespace Lean.Grind.AC
open Lean.Meta.Grind

public def Seq.renameVars (s : Seq) (f : VarRename) : Seq :=
  match s with
  | .var x    => .var (f x)
  | .cons x s => .cons (f x) (renameVars s f)

public def Expr.renameVars (e : Expr) (f : VarRename) : Expr :=
  match e with
  | .var x => .var (f x)
  | .op a b => .op (renameVars a f) (renameVars b f)

public def Seq.collectVars (s : Seq) : VarCollector :=
  match s with
  | .var x => collectVar x
  | .cons x s => collectVar x >> s.collectVars

public def Expr.collectVars (e : Expr) : VarCollector :=
  match e with
  | .var x => collectVar x
  | .op a b  => a.collectVars >> b.collectVars

end Lean.Grind.AC
```
