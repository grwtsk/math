# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.VarRename.Variant8587dd06d45d49a0f6e934745c8280d62179cbb08f018483d38e963b3487e948

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `22a6cc1ff3d4bc6c614d85ca197fb2a0ee1a26be` · SHA-256 `8587dd06d45d49a0f6e934745c8280d62179cbb08f018483d38e963b3487e948`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2025 Amazon.com, Inc. or its affiliates. All Rights Reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module
prelude
public import Init.Grind.Ordered.Linarith
public import Lean.Meta.Tactic.Grind.VarRename
namespace Lean.Grind.Linarith
open Lean.Meta.Grind

public def Poly.renameVars (p : Poly) (f : VarRename) : Poly :=
  match p with
  | .nil => p
  | .add k x p => .add k (f x) (renameVars p f)

public def Expr.renameVars (e : Expr) (f : VarRename) : Expr :=
  match e with
  | .zero => e
  | .var x => .var (f x)
  | .neg a => .neg (renameVars a f)
  | .add a b => .add (renameVars a f) (renameVars b f)
  | .sub a b => .sub (renameVars a f) (renameVars b f)
  | .natMul k a => .natMul k (renameVars a f)
  | .intMul k a => .intMul k (renameVars a f)

public def Poly.collectVars (p : Poly) : VarCollector :=
  match p with
  | .nil => id
  | .add _ x p => collectVar x >> p.collectVars

public def Expr.collectVars (e : Expr) : VarCollector :=
  match e with
  | .zero => id
  | .var x => collectVar x
  | .neg a | .natMul _ a | .intMul _ a => a.collectVars
  | .add a b | .sub a b => a.collectVars >> b.collectVars

end Lean.Grind.Linarith
```
