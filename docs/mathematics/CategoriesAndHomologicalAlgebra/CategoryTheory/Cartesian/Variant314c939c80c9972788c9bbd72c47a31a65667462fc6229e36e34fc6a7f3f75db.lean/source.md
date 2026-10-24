# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Cartesian.Variant314c939c80c9972788c9bbd72c47a31a65667462fc6229e36e34fc6a7f3f75db

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1e96def091189af3f23fa04f5294ea8211a2f7b4` · SHA-256 `314c939c80c9972788c9bbd72c47a31a65667462fc6229e36e34fc6a7f3f75db`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2025 Jacob Reinhold. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jacob Reinhold
-/
module

public import Mathlib.CategoryTheory.CopyDiscardCategory.Basic
public import Mathlib.CategoryTheory.CopyDiscardCategory.Deterministic
public import Mathlib.CategoryTheory.Monoidal.Cartesian.Comon_
public import Mathlib.CategoryTheory.Monoidal.Cartesian.Basic

/-!
# Cartesian Categories as Copy-Discard Categories

Every cartesian monoidal category is a copy-discard category where:
- Copy is the diagonal map
- Discard is the unique map to terminal

## Main results

* `CopyDiscardCategory` instance for cartesian monoidal categories
* All morphisms in cartesian categories are deterministic

## Tags

cartesian, copy-discard, comonoid, symmetric monoidal
-/

public section

universe v u

namespace CategoryTheory

variable {C : Type u} [Category.{v} C] [CartesianMonoidalCategory.{v} C]

namespace CartesianCopyDiscard

/-- Provide `ComonObj` instances using the canonical cartesian comonoid structure. -/
abbrev instComonObjOfCartesian (X : C) : ComonObj X :=
  ((cartesianComon C).obj X).comon

attribute [local instance] instComonObjOfCartesian

variable [BraidedCategory C]

/-- Every object in a cartesian category has commutative comonoid structure. -/
instance instIsCommComonObjOfCartesian (X : C) : IsCommComonObj X where

/-- Cartesian categories have copy-discard structure. -/
abbrev ofCartesianMonoidalCategory : CopyDiscardCategory C where

attribute [local instance] ofCartesianMonoidalCategory

/-- In cartesian categories, every morphism is deterministic (preserves the comonoid structure). -/
instance instDeterministic {X Y : C} (f : X ⟶ Y) : Deterministic f where

end CartesianCopyDiscard

end CategoryTheory
```
