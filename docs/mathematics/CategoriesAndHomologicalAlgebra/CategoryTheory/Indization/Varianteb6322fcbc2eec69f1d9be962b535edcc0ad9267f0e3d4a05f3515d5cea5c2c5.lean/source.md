# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Indization.Varianteb6322fcbc2eec69f1d9be962b535edcc0ad9267f0e3d4a05f3515d5cea5c2c5

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `27fc0e6ce51847b2ddb5c33d6352feff3f02f834` · SHA-256 `eb6322fcbc2eec69f1d9be962b535edcc0ad9267f0e3d4a05f3515d5cea5c2c5`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2025 Markus Himmel. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Markus Himmel
-/
import Mathlib.CategoryTheory.Preadditive.Indization
import Mathlib.CategoryTheory.Abelian.FunctorCategory
import Mathlib.CategoryTheory.Limits.Preserves.Shapes.AbelianImages

/-!
# The category of ind-objects is abelian

We show that if `C` is a small abelian category, then `Ind C` is an abelian category.

In the file `Mathlib/CategoryTheory/Abelian/GrothendieckAxioms/Indization.lean`, we show that in
this situation `Ind C` is in fact Grothendieck abelian.
-/

universe v

open CategoryTheory.Abelian

namespace CategoryTheory

variable {C : Type v} [SmallCategory C] [Abelian C]

instance {X Y : Ind C} (f : X ⟶ Y) : IsIso (Abelian.coimageImageComparison f) := by
  obtain ⟨I, _, _, F, G, ϕ, ⟨i⟩⟩ := Ind.exists_nonempty_arrow_mk_iso_ind_lim (f := f)
  let i' := coimageImageComparisonFunctor.mapIso i
  dsimp only [coimageImageComparisonFunctor_obj, Arrow.mk_left, Arrow.mk_right, Arrow.mk_hom] at i'
  rw [Arrow.isIso_iff_isIso_of_isIso i'.hom,
    Arrow.isIso_iff_isIso_of_isIso (PreservesCoimageImageComparison.iso (Ind.lim I) ϕ).inv]
  infer_instance

noncomputable instance : Abelian (Ind C) :=
  .ofCoimageImageComparisonIsIso

end CategoryTheory
```
