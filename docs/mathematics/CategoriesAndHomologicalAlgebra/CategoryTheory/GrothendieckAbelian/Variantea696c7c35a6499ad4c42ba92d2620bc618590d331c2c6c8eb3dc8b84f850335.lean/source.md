# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.GrothendieckAbelian.Variantea696c7c35a6499ad4c42ba92d2620bc618590d331c2c6c8eb3dc8b84f850335

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `51fde08edec034adb7c1e1066f3a2fb6a84b46c5` · SHA-256 `ea696c7c35a6499ad4c42ba92d2620bc618590d331c2c6c8eb3dc8b84f850335`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2024 Joël Riou. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Joël Riou
-/
import Mathlib.CategoryTheory.Abelian.GrothendieckCategory.Basic
import Mathlib.CategoryTheory.Generator.HomologicalComplex
import Mathlib.Algebra.Homology.HomologicalComplexAbelian

/-!
# Homological complexes in a Grothendieck abelian category

Let `c : ComplexShape ι` be a complex shape with no loop, and
such that `Small.{w} ι`. Then, if `C` is a Grothendieck abelian
category (with `IsGrothendieckAbelian.{w} C`), the category
`HomologicalComplex C c` is Grothendieck abelian.

-/

universe w w' t v u

open CategoryTheory Limits

namespace HomologicalComplex

variable (C : Type u) [Category.{v} C] {ι : Type t} (c : ComplexShape ι)

section HasZeroMorphisms

variable [HasZeroMorphisms C]

instance locallySmall [LocallySmall.{w} C] [Small.{w} ι] :
    LocallySmall.{w} (HomologicalComplex C c) where
  hom_small K L := by
    let emb (f : K ⟶ L) (i : Shrink.{w} ι) := (equivShrink.{w} _) (f.f ((equivShrink _).symm i))
    have hemb : Function.Injective emb := fun f g h ↦ by
      ext i
      obtain ⟨i, rfl⟩ := (equivShrink.{w} _).symm.surjective i
      simpa [emb] using congr_fun h i
    apply small_of_injective hemb

instance [HasFilteredColimitsOfSize.{w, w'} C] :
    HasFilteredColimitsOfSize.{w, w'} (HomologicalComplex C c) where
  HasColimitsOfShape J _ _ := by infer_instance

instance hasExactColimitsOfShape (J : Type w) [Category.{w'} J] [HasFiniteLimits C]
    [HasColimitsOfShape J C] [HasExactColimitsOfShape J C] :
    HasExactColimitsOfShape J (HomologicalComplex C c) where
  preservesFiniteLimits :=
    ⟨fun K _ _ ↦ ⟨fun {F} ↦ ⟨fun hc ↦ ⟨isLimitOfEval _ _ (fun i ↦ by
      let e := preservesColimitNatIso (J := J) (eval C c i)
      exact (IsLimit.postcomposeHomEquiv (isoWhiskerLeft F e) _).1
        (IsLimit.ofIsoLimit
          (isLimitOfPreserves ((whiskeringRight J _ _).obj (eval C c i) ⋙ colim) hc)
          (Cones.ext (e.symm.app _) (fun k ↦ (NatIso.naturality_2 e.symm _).symm))))⟩⟩⟩⟩

instance ab5OfSize [HasFilteredColimitsOfSize.{w', w} C] [HasFiniteLimits C]
    [AB5OfSize.{w', w} C] :
    AB5OfSize.{w', w} (HomologicalComplex C c) where
  ofShape J _ _ := by infer_instance

end HasZeroMorphisms

instance isGrothendieckAbelian [Abelian C] [IsGrothendieckAbelian.{w} C]
    [c.HasNoLoop] [Small.{w} ι] :
    IsGrothendieckAbelian.{w} (HomologicalComplex C c) where
  hasSeparator := by
    have : HasCoproductsOfShape ι C :=
      hasColimitsOfShape_of_equivalence (Discrete.equivalence (equivShrink.{w} ι)).symm
    infer_instance

end HomologicalComplex
```
