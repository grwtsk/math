# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Eqns.Variantf83b02db0f08ddb9451ed94b8fab1cb86c7fc92fc7d3272b6e4dc1f37d2d1dbe

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `00f9cf17337dc2b1ccad9b2ae8d0d3e8e113fe3c` · SHA-256 `f83b02db0f08ddb9451ed94b8fab1cb86c7fc92fc7d3272b6e4dc1f37d2d1dbe`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

````lean
/-
Copyright (c) 2023 Eric Wieser. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Eric Wieser
-/
import Lean.Meta.Eqns
import Mathlib.Lean.Expr
import Std.Lean.NameMapAttribute

/-! # The `@[eqns]` attribute

This file provides the `eqns` attribute as a way of overriding the default equation lemmas. For
example

```lean4
def transpose {m n} (A : m → n → ℕ) : n → m → ℕ
  | i, j => A j i

theorem transpose_apply {m n} (A : m → n → ℕ) (i j) :
  transpose A i j = A j i := rfl

attribute [eqns transpose_apply] transpose

theorem transpose_const {m n} (c : ℕ) :
    transpose (fun (i : m) (j : n) => c) = fun j i => c := by
  funext i j -- the rw below does not work without this line
  rw [transpose]
```
-/
open Lean Elab

syntax (name := eqns) "eqns" (ppSpace ident)* : attr

initialize eqnsAttribute : NameMapExtension (Array Name) ←
  registerNameMapAttribute {
    name  := `eqns
    descr := "Overrides the equation lemmas for a declaration to the provided list"
    add   := fun
    | _, `(attr| eqns $[$names]*) =>
      names.mapM resolveGlobalConstNoOverloadWithInfo
    | _, _ => Lean.Elab.throwUnsupportedSyntax }

initialize Lean.Meta.registerGetEqnsFn (fun name => do
  pure (eqnsAttribute.find? (← getEnv) name))
````
