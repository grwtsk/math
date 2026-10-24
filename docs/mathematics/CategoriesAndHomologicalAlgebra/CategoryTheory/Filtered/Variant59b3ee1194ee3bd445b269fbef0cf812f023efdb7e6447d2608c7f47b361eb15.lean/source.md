# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Filtered.Variant59b3ee1194ee3bd445b269fbef0cf812f023efdb7e6447d2608c7f47b361eb15

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a8a72b02350cf7dc6a54adb854a192b4476d2d8d` · SHA-256 `59b3ee1194ee3bd445b269fbef0cf812f023efdb7e6447d2608c7f47b361eb15`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2022 Markus Himmel. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Markus Himmel
-/
import Mathlib.CategoryTheory.Filtered
import Mathlib.CategoryTheory.Limits.HasLimits

#align_import category_theory.limits.filtered from "leanprover-community/mathlib"@"e4ee4e30418efcb8cf304ba76ad653aeec04ba6e"

/-!
# Possession of filtered colimits
-/


universe w' w v u

noncomputable section

open CategoryTheory

variable {C : Type u} [Category.{v} C]

namespace CategoryTheory.Limits

section

variable (C)

/-- Class for having all cofiltered limits of a given size. -/
@[pp_with_univ]
class HasCofilteredLimitsOfSize : Prop where
  /-- For all filtered types of size `w`, we have limits -/
  HasLimitsOfShape : ∀ (I : Type w) [Category.{w'} I] [IsCofiltered I], HasLimitsOfShape I C
#align category_theory.limits.has_cofiltered_limits_of_size CategoryTheory.Limits.HasCofilteredLimitsOfSize

/-- Class for having all filtered colimits of a given size. -/
@[pp_with_univ]
class HasFilteredColimitsOfSize : Prop where
  /-- For all filtered types of a size `w`, we have colimits -/
  HasColimitsOfShape : ∀ (I : Type w) [Category.{w'} I] [IsFiltered I], HasColimitsOfShape I C
#align category_theory.limits.has_filtered_colimits_of_size CategoryTheory.Limits.HasFilteredColimitsOfSize

end

instance (priority := 100) hasLimitsOfShape_of_has_cofiltered_limits
    [HasCofilteredLimitsOfSize.{w', w} C] (I : Type w) [Category.{w'} I] [IsCofiltered I] :
    HasLimitsOfShape I C :=
  HasCofilteredLimitsOfSize.HasLimitsOfShape _
#align category_theory.limits.has_limits_of_shape_of_has_cofiltered_limits CategoryTheory.Limits.hasLimitsOfShape_of_has_cofiltered_limits

instance (priority := 100) hasColimitsOfShape_of_has_filtered_colimits
    [HasFilteredColimitsOfSize.{w', w} C] (I : Type w) [Category.{w'} I] [IsFiltered I] :
    HasColimitsOfShape I C :=
  HasFilteredColimitsOfSize.HasColimitsOfShape _
#align category_theory.limits.has_colimits_of_shape_of_has_filtered_colimits CategoryTheory.Limits.hasColimitsOfShape_of_has_filtered_colimits

end CategoryTheory.Limits
```
