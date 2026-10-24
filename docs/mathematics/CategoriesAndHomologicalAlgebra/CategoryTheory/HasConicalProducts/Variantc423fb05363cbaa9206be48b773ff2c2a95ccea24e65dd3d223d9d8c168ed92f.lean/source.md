# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.HasConicalProducts.Variantc423fb05363cbaa9206be48b773ff2c2a95ccea24e65dd3d223d9d8c168ed92f

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3daad82ef77c0df2513c97a5eeeb003b0a06bc03` · SHA-256 `c423fb05363cbaa9206be48b773ff2c2a95ccea24e65dd3d223d9d8c168ed92f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2025 Jon Eugster. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Dagur Asgeirsson, Jon Eugster, Emily Riehl
-/
import Mathlib.CategoryTheory.Enriched.Limits.HasConicalLimits

/-!
# Existence of conical products
-/

universe w v' v u u'

namespace CategoryTheory.Enriched

open Limits

/-- Has conical products if all discrete diagrams of bounded size have conical products. -/
class HasConicalProducts
    (V : outParam <| Type u') [Category.{v'} V] [MonoidalCategory V]
    (C : Type u) [Category.{v} C] [EnrichedOrdinaryCategory V C] : Prop where
  /-- A family of objects (parametrized by any `J : Type w`) has a conical product. -/
  hasConicalLimitsOfShape : ∀ J : Type w, HasConicalLimitsOfShape (Discrete J) V C := by
    infer_instance

attribute [instance] HasConicalProducts.hasConicalLimitsOfShape

variable (V : Type u') [Category.{v'} V] [MonoidalCategory V]
variable {C : Type u} [Category.{v} C] [EnrichedOrdinaryCategory V C]

/-- An abbreviation for `HasConicalLimit V (Discrete.functor f)`. -/
abbrev HasConicalProduct {I : Type w} (f : I → C) :=
  HasConicalLimit V (Discrete.functor f)

/-- ensure products exists from the existence of conical products -/
example [HasConicalProducts.{w} V C] : HasProducts.{w} C := inferInstance

end CategoryTheory.Enriched
```
