# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Types.Variantfd25a00aa572f2b5e18048e4d22999b61c4ec034bbb47bf739d7f79010611ca5

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `bd03e23c0380b43c84023eefe95bc5d80291c8ba` · SHA-256 `fd25a00aa572f2b5e18048e4d22999b61c4ec034bbb47bf739d7f79010611ca5`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2025 Vilim Lendvaj. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Vilim Lendvaj
-/
module

public import Mathlib.CategoryTheory.Monoidal.Functor
public import Mathlib.CategoryTheory.Monoidal.Types.Basic
public import Mathlib.CategoryTheory.Types.Basic
public import Mathlib.Tactic.Simps
public import Mathlib.Control.Basic

/-!
# Convert from `Applicative` to `CategoryTheory.Functor.LaxMonoidal`

This allows us to use Lean's `Type`-based applicative functors in category theory.

-/

public section

namespace CategoryTheory

section

variable (F : Type* → Type*) [Applicative F] [LawfulApplicative F]

set_option backward.defeqAttrib.useBackward true in
attribute [local simp] map_seq seq_map_assoc types_tensorObj_def types_tensorUnit_def
  LawfulApplicative.pure_seq LawfulApplicative.seq_assoc in
/-- A lawful `Applicative` gives a category theory `LaxMonoidal` functor
between categories of types. -/
@[simps]
instance : (ofTypeFunctor F).LaxMonoidal where
  ε := ↾fun _ ↦ (pure PUnit.unit : F _)
  μ _ _ := ↾fun p ↦ (Prod.mk <$> p.1 <*> p.2 : F _)

end

end CategoryTheory
```
