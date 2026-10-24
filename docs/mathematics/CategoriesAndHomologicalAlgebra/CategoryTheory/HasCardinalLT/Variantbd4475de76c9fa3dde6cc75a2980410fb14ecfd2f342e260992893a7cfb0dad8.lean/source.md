# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.HasCardinalLT.Variantbd4475de76c9fa3dde6cc75a2980410fb14ecfd2f342e260992893a7cfb0dad8

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `fc4f0484adfc39744d3eea64321a91da61b1bc3e` · SHA-256 `bd4475de76c9fa3dde6cc75a2980410fb14ecfd2f342e260992893a7cfb0dad8`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2025 Joël Riou. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Joël Riou
-/
import Mathlib.CategoryTheory.Subobject.Basic
import Mathlib.SetTheory.Cardinal.HasCardinalLT

/-!
# Cardinality of Subobject

If `X ⟶ Y` is a monomorphism, and the cardinality of `Subobject Y`
is `< κ`, then the cardinality of `Subobject X` is also `< κ`.

-/

universe w v u

namespace CategoryTheory.Subobject

variable {C : Type u} [Category.{v} C]

lemma hasCardinalLT_of_mono {Y : C} {κ : Cardinal.{w}}
    (h : HasCardinalLT (Subobject Y) κ) {X : C} (f : X ⟶ Y) [Mono f] :
    HasCardinalLT (Subobject X) κ :=
  h.of_injective _ (map_obj_injective f)

end CategoryTheory.Subobject
```
