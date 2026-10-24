# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Extensions.Variant9ca7daf87e38208faf1d0c38944831d27e2d374250500b42cc389a0dbbba1752

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1678cb5744d88340daf321a4aece82d47fed4e9f` · SHA-256 `9ca7daf87e38208faf1d0c38944831d27e2d374250500b42cc389a0dbbba1752`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2025 Joël Riou. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Joël Riou
-/
import Mathlib.Algebra.Homology.ShortComplex.ShortExact
import Mathlib.CategoryTheory.ObjectProperty.Basic

/-!
# Properties of objects that are closed under extensions

Given a category `C` and `P : ObjectProperty C`, we define a type
class `P.IsClosedUnderExtensions` expressing that the property
is closed under extensions.

-/

universe v v' u u'

namespace CategoryTheory

open Limits

variable {C : Type u} [Category.{v} C] {D : Type u'} [Category.{v'} D]

namespace ObjectProperty

variable (P : ObjectProperty C)

section

variable [HasZeroMorphisms C]

/-- Given `P : ObjectProperty C`, we say that `P` is closed under extensions
if whenever `0 ⟶ X₁ ⟶ X₂ ⟶ X₃ ⟶ 0` is a short exact short complex,
then `P X₁` and `P X₃` implies `P X₂`. -/
class IsClosedUnderExtensions : Prop where
  prop_X₂_of_shortExact {S : ShortComplex C} (hS : S.ShortExact)
      (h₁ : P S.X₁) (h₃ : P S.X₃) : P S.X₂

lemma prop_X₂_of_shortExact [P.IsClosedUnderExtensions]
    {S : ShortComplex C} (hS : S.ShortExact)
    (h₁ : P S.X₁) (h₃ : P S.X₃) : P S.X₂ :=
  IsClosedUnderExtensions.prop_X₂_of_shortExact hS h₁ h₃

instance : (⊤ : ObjectProperty C).IsClosedUnderExtensions where
  prop_X₂_of_shortExact := by simp

instance : IsClosedUnderExtensions (IsZero (C := C)) where
  prop_X₂_of_shortExact hS h₁ h₃ :=
    hS.exact.isZero_of_both_zeros (h₁.eq_of_src _ _) (h₃.eq_of_tgt _ _)

instance [P.IsClosedUnderExtensions] (F : D ⥤ C)
    [HasZeroMorphisms D] [F.PreservesZeroMorphisms]
    [PreservesFiniteLimits F] [PreservesFiniteColimits F] :
    (P.inverseImage F).IsClosedUnderExtensions where
  prop_X₂_of_shortExact hS h₁ h₃ := by
    have := hS.mono_f
    have := hS.epi_g
    exact P.prop_X₂_of_shortExact (hS.map F) h₁ h₃

end

lemma prop_biprod {X₁ X₂ : C} (h₁ : P X₁) (h₂ : P X₂) [Preadditive C] [HasZeroObject C]
    [P.IsClosedUnderExtensions] [HasBinaryBiproduct X₁ X₂] :
    P (X₁ ⊞ X₂) :=
  P.prop_X₂_of_shortExact
    (ShortComplex.Splitting.ofHasBinaryBiproduct X₁ X₂).shortExact h₁ h₂

end ObjectProperty

end CategoryTheory
```
