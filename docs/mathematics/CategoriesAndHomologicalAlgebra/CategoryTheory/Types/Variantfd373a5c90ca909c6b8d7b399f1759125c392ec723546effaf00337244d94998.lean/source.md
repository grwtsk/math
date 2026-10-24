# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Types.Variantfd373a5c90ca909c6b8d7b399f1759125c392ec723546effaf00337244d94998

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ab970a9f07bfd4067ba04735d3299fb5b1f84ab1` · SHA-256 `37624e7d8315a01ac16bd1b1816ab4eaa300c1b504811758381d620e46e959b1`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.TypesTensorProductAdjunction.Variant40a32fe87748f8ff21b9455354d707a1e3cf8d33a9b57c01e01e6ab6f75880a1","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"40a32fe87748f8ff21b9455354d707a1e3cf8d33a9b57c01e01e6ab6f75880a1","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.TypesTensorProductAdjunction.Variant40a32fe87748f8ff21b9455354d707a1e3cf8d33a9b57c01e01e6ab6f75880a1","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"40a32fe87748f8ff21b9455354d707a1e3cf8d33a9b57c01e01e6ab6f75880a1","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/CategoryTheory/Closed/Types.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2020 Bhavik Mehta. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Bhavik Mehta
-/
import Mathlib.CategoryTheory.Closed.Cartesian
import Mathlib.CategoryTheory.Limits.Presheaf
import Mathlib.CategoryTheory.Monoidal.Cartesian.FunctorCategory
import Mathlib.CategoryTheory.Monoidal.Types.Basic

/-!
# Cartesian closure of Type

Show that `Type u₁` is cartesian closed, and `C ⥤ Type u₁` is cartesian closed for `C` a small
category in `Type u₁`.
Note this implies that the category of presheaves on a small category `C` is cartesian closed.
-/



namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.TypesTensorProductAdjunction.Variant40a32fe87748f8ff21b9455354d707a1e3cf8d33a9b57c01e01e6ab6f75880a1

namespace CategoryTheory

noncomputable section

open Category Limits MonoidalCategory

universe v₁ v₂ u₁ u₂

variable {C : Type v₂} [Category.{v₁} C]

section CartesianClosed

/-- The adjunction `tensorLeft.obj X ⊣ coyoneda.obj (Opposite.op X)`
for any `X : Type v₁`. -/
def Types.tensorProductAdjunction (X : Type v₁) :
    tensorLeft X ⊣ coyoneda.obj (Opposite.op X) where
  unit := { app := fun Z (z : Z) x => ⟨x, z⟩ }
  counit := { app := fun _ xf => xf.2 xf.1 }

instance (X : Type v₁) : (tensorLeft X).IsLeftAdjoint :=
  ⟨_, ⟨Types.tensorProductAdjunction X⟩⟩

instance : CartesianClosed (Type v₁) := CartesianClosed.mk _
  (fun X => Exponentiable.mk _ _ (Types.tensorProductAdjunction X))

instance {C : Type v₁} [SmallCategory C] : CartesianClosed (C ⥤ Type v₁) :=
  CartesianClosed.mk _
    (fun F => by
      haveI : ∀ X : Type v₁, PreservesColimits (tensorLeft X) := by infer_instance
      letI : PreservesColimits (tensorLeft F) := ⟨by infer_instance⟩
      have := Presheaf.isLeftAdjoint_of_preservesColimits (tensorLeft F)
      exact Exponentiable.mk _ _ (Adjunction.ofIsLeftAdjoint (tensorLeft F)))

-- TODO: once we have `MonoidalClosed` instances for functor categories into general monoidal
-- closed categories, replace this with that, as it will be a more explicit construction.
/-- This is not a good instance because of the universe levels. Below is the instance where the
target category is `Type (max u₁ v₁)`. -/
def cartesianClosedFunctorToTypes {C : Type u₁} [Category.{v₁} C] :
    CartesianClosed (C ⥤ Type (max u₁ v₁ u₂)) :=
  let e : (ULiftHom.{max u₁ v₁ u₂} (ULift.{max u₁ v₁ u₂} C)) ⥤ Type (max u₁ v₁ u₂) ≌
      C ⥤ Type (max u₁ v₁ u₂) :=
      Functor.asEquivalence ((whiskeringLeft _ _ _).obj
        (ULift.equivalence.trans ULiftHom.equiv).functor)
  cartesianClosedOfEquiv e

-- TODO: once we have `MonoidalClosed` instances for functor categories into general monoidal
-- closed categories, replace this with that, as it will be a more explicit construction.
instance {C : Type u₁} [Category.{v₁} C] : CartesianClosed (C ⥤ Type (max u₁ v₁)) :=
  cartesianClosedFunctorToTypes

-- TODO: once we have `MonoidalClosed` instances for functor categories into general monoidal
-- closed categories, replace this with that, as it will be a more explicit construction.
instance {C : Type u₁} [Category.{v₁} C] [EssentiallySmall.{v₁} C] :
    CartesianClosed (C ⥤ Type v₁) :=
  let e : (SmallModel C) ⥤ Type v₁ ≌ C ⥤ Type v₁ :=
    Functor.asEquivalence ((whiskeringLeft _ _ _).obj (equivSmallModel _).functor)
  cartesianClosedOfEquiv e

end CartesianClosed

end

end CategoryTheory
```
