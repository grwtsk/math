# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.HasConicalTerminal.Variant91128c4d8ad2eb2076628cb8c9f7138c786585c1299cff84bc479d2cfd4b8013

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `728144d0b1c4af68fda217b4592a6cafeaeb8853` · SHA-256 `91128c4d8ad2eb2076628cb8c9f7138c786585c1299cff84bc479d2cfd4b8013`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2025 Jon Eugster. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Dagur Asgeirsson, Jon Eugster, Emily Riehl
-/
import Mathlib.CategoryTheory.Enriched.Limits.HasConicalProducts

/-!
# Existence of conical terminal objects
-/

universe w v' v u u'

namespace CategoryTheory.Enriched

open Limits HasConicalLimit

/-- A category has a conical terminal object
if it has a conical limit over the empty diagram. -/
abbrev HasConicalTerminal := HasConicalLimitsOfShape (Discrete.{0} PEmpty)

variable (V : Type u') [Category.{v'} V] [MonoidalCategory V]
variable (C : Type u) [Category.{v} C] [EnrichedOrdinaryCategory V C]

example [HasConicalTerminal V C] : HasTerminal C := inferInstance

instance HasConicalProducts.hasConicalTerminal [HasConicalProducts.{w} V C] :
    HasConicalTerminal V C :=
  HasConicalLimitsOfShape.of_equiv V C emptyEquivalence.functor

end CategoryTheory.Enriched
```
