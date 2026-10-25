# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ExprPtr.Variantcfd1c9e310b006b0832885eb2ffb20dd00cb8465213b928a7edb62f61451f9ed

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a21d640f8552ced73323b8cb4188301fadd6a045` · SHA-256 `cfd1c9e310b006b0832885eb2ffb20dd00cb8465213b928a7edb62f61451f9ed`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2025 Amazon.com, Inc. or its affiliates. All Rights Reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module
prelude
public import Lean.Expr
public section
namespace Lean.Meta.Sym

@[inline] def isSameExpr (a b : Expr) : Bool :=
  -- It is safe to use pointer equality because we hashcons all expressions
  -- inserted into the E-graph
  unsafe ptrEq a b

/--
Key for the `ENodeMap`, `ParentMap`, and other maps and sets.
We use pointer addresses and rely on the fact all internalized expressions
have been hash-consed, i.e., we have applied `shareCommon`.
-/
structure ExprPtr where
  expr : Expr

abbrev hashPtrExpr (e : Expr) : UInt64 :=
  unsafe (ptrAddrUnsafe e >>> 3).toUInt64

instance : Hashable ExprPtr where
  hash k := hashPtrExpr k.expr

instance : BEq ExprPtr where
  beq k₁ k₂ := isSameExpr k₁.expr k₂.expr

end Lean.Meta.Sym
```
