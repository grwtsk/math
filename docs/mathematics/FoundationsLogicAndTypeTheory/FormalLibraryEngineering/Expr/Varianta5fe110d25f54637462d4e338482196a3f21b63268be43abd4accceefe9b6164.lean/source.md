# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Expr.Varianta5fe110d25f54637462d4e338482196a3f21b63268be43abd4accceefe9b6164

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `0e6e8a5225eacb7f36a27dbef43769ebed64d784` · SHA-256 `a5fe110d25f54637462d4e338482196a3f21b63268be43abd4accceefe9b6164`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2022 Eric Wieser. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Eric Wieser
-/
import Mathlib.Init
import Qq

/-! # Helpers to invoke functions involving algebra at tactic time

This file provides instances on `x y : Q($α)` such that `x + y = q($x + $y)`.
-/
open Qq

/-- Produce a `One` instance for `Q($α)` such that `1 : Q($α)` is `q(1 : $α)`. -/
def Expr.instOne {u : Lean.Level} (α : Q(Type u)) (_ : Q(One $α)) : One Q($α) where
  one := q(1 : $α)

/-- Produce a `Zero` instance for `Q($α)` such that `0 : Q($α)` is `q(0 : $α)`. -/
def Expr.instZero {u : Lean.Level} (α : Q(Type u)) (_ : Q(Zero $α)) : Zero Q($α) where
  zero := q(0 : $α)

/-- Produce a `Mul` instance for `Q($α)` such that `x * y : Q($α)` is `q($x * $y)`. -/
def Expr.instMul {u : Lean.Level} (α : Q(Type u)) (_ : Q(Mul $α)) : Mul Q($α) where
  mul x y := q($x * $y)

/-- Produce an `Add` instance for `Q($α)` such that `x + y : Q($α)` is `q($x + $y)`. -/
def Expr.instAdd {u : Lean.Level} (α : Q(Type u)) (_ : Q(Add $α)) : Add Q($α) where
  add x y := q($x + $y)
```
