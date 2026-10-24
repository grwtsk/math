# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.PresheafOfModules.Variant774a6adaf64eff5adc29b8590553bf04695cd576b4d4da85b05165d67ded49d0

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `db02b36f884af9a5cee1d4aa570d7dd4a204c810` · SHA-256 `774a6adaf64eff5adc29b8590553bf04695cd576b4d4da85b05165d67ded49d0`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2026 Joël Riou. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Joël Riou
-/
module

public import Mathlib.Algebra.Category.Grp.FilteredColimits
public import Mathlib.Algebra.Category.ModuleCat.Presheaf.Generator
public import Mathlib.CategoryTheory.Abelian.GrothendieckCategory.Basic
public import Mathlib.CategoryTheory.Functor.ReflectsIso.Balanced
public import Mathlib.CategoryTheory.Limits.FilteredColimitCommutesFiniteLimit

/-!
# The category of presheaves of modules is Grothendieck abelian

-/

universe u

open CategoryTheory Limits

namespace PresheafOfModules

public instance {C : Type u} [SmallCategory C] (R : Cᵒᵖ ⥤ RingCat.{u}) :
    IsGrothendieckAbelian.{u} (PresheafOfModules.{u} R) where
  hasFilteredColimitsOfSize := ⟨fun _ ↦ ⟨fun _ ↦ inferInstance⟩⟩
  ab5OfSize := ⟨fun J _ _ ↦ ⟨⟨fun K _ _ ↦ ⟨fun {F} ↦
    have : PreservesLimit F (colim (J := J) ⋙ PresheafOfModules.toPresheaf R) :=
      preservesLimit_of_natIso _ (preservesColimitNatIso (toPresheaf R)).symm
    preservesLimit_of_reflects_of_preserves _ (PresheafOfModules.toPresheaf R)⟩⟩⟩⟩

end PresheafOfModules
```
