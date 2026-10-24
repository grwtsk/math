# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Over.Variant03b4b6c4b69e9778c0d769bb08035a0f4d9ffbd9a63287121bad59d9f919d891

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5ad204e5179b65223d880d1b4c4c6e8f0f8b012b` · SHA-256 `03b4b6c4b69e9778c0d769bb08035a0f4d9ffbd9a63287121bad59d9f919d891`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2025 Andrew Yang. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Andrew Yang
-/
module

public import Mathlib.CategoryTheory.Limits.Preserves.Filtered

/-!

# Forgetful functor from `Over X` preserves cofiltered limits

Note that `Over.forget X : Over X ⥤ C` already preserves all colimits because it is a left adjoint.
See `Mathlib/CategoryTheory/Comma/Over/Pullback.lean`

-/

public section

namespace CategoryTheory.Limits

variable {C : Type*} [Category* C]

attribute [local instance] IsFiltered.nonempty IsCofiltered.nonempty

set_option backward.defeqAttrib.useBackward true in
instance {X : C} : PreservesCofilteredLimitsOfSize (Over.forget X) := by
  refine ⟨fun J hJ hJ' ↦ ⟨fun {F} ↦ ⟨fun {c} hc ↦ ⟨.ofExistsUnique fun s ↦ ?_⟩⟩⟩⟩
  obtain i := Nonempty.some ((inferInstance : Nonempty J))
  let s' : Cone F := ⟨Over.mk (s.π.app i ≫ (F.obj i).hom), fun j ↦ Over.homMk (s.π.app j) (by
    obtain ⟨k, hik, hjk, -⟩ := IsCofilteredOrEmpty.cone_objs i j
    simp only [Functor.const_obj_obj, Over.mk_left, Over.mk_hom,
      ← s.w hjk, ← s.w hik]
    simp), fun j k e ↦ by ext; simpa using (s.w e).symm⟩
  refine ⟨(hc.lift s').left, fun j ↦ congr($(hc.fac s' j).left), fun f hf ↦ ?_⟩
  dsimp at hf
  exact congr($(hc.uniq s' (Over.homMk f (by simp [s', ← hf]))
    fun j ↦ Over.OverMorphism.ext (hf j)).left)

set_option backward.isDefEq.respectTransparency.types false in
set_option backward.defeqAttrib.useBackward true in
instance {X : C} : PreservesFilteredColimitsOfSize (Under.forget X) := by
  refine ⟨fun J hJ hJ' ↦ ⟨fun {F} ↦ ⟨fun {c} hc ↦ ⟨.ofExistsUnique fun s ↦ ?_⟩⟩⟩⟩
  obtain i := Nonempty.some ((inferInstance : Nonempty J))
  let s' : Cocone F := ⟨Under.mk ((F.obj i).hom ≫ s.ι.app i), fun j ↦ Under.homMk (s.ι.app j) (by
    obtain ⟨k, hik, hjk, -⟩ := IsFilteredOrEmpty.cocone_objs i j
    simp only [Functor.const_obj_obj, Under.mk_right, Under.mk_hom,
      ← s.w hjk, ← s.w hik]
    simp), fun j k e ↦ by ext; simpa using s.w e⟩
  refine ⟨(hc.desc s').right, fun j ↦ congr($(hc.fac s' j).right), fun f hf ↦ ?_⟩
  dsimp at hf
  exact congr($(hc.uniq s' (Under.homMk f (by simp [s', ← hf]))
    fun j ↦ Under.UnderMorphism.ext (hf j)).right)

end CategoryTheory.Limits
```
