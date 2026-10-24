# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Limits.Variant0834413e76882a314abcdd84de1eb074df6e5f425ee4b239f1a3c9cf6501d6bc

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `56880b332e2d7af821e34f8f3da5fbebedd5d1fc` · SHA-256 `e93ed74de30474f636c42bf652a1786bc62a13c91517d06d1e3c1b565940c652`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Limit.Variant2b6dbaa0828afee21cafaca17812ef264e57155dc3943e27fe34beaa92d7e93e","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"2b6dbaa0828afee21cafaca17812ef264e57155dc3943e27fe34beaa92d7e93e","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.Limit.Variant2b6dbaa0828afee21cafaca17812ef264e57155dc3943e27fe34beaa92d7e93e","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"2b6dbaa0828afee21cafaca17812ef264e57155dc3943e27fe34beaa92d7e93e","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/CategoryTheory/Monoidal/Internal/Limits.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2020 Kim Morrison. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kim Morrison, Bhavik Mehta
-/
module

public import Mathlib.CategoryTheory.Limits.Creates
public import Mathlib.CategoryTheory.Monoidal.Mon

/-!
# Limits of monoid objects.

If `C` has limits (of a given shape), so does `Mon C`,
and the forgetful functor preserves these limits.

(This could potentially replace many individual constructions for concrete categories,
in particular `MonCat`, `SemiRingCat`, `RingCat`, and `AlgCat R`.)
-/


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Limit.Variant2b6dbaa0828afee21cafaca17812ef264e57155dc3943e27fe34beaa92d7e93e

@[expose] public section


open CategoryTheory Limits MonoidalCategory

universe v u w

noncomputable section

namespace CategoryTheory
namespace Mon

variable {J : Type w} [Category* J]
variable {C : Type u} [Category.{v} C] [MonoidalCategory.{v} C]

open MonObj

set_option backward.defeqAttrib.useBackward true in
set_option backward.isDefEq.respectTransparency false in
/--
We construct the limit object of a functor `F : J ⥤ Mon C` given a limit cone `c` of
`F ⋙ forget C`.
-/
@[simps!]
def limit (F : J ⥤ Mon C) (c : Cone (F ⋙ Mon.forget C)) (hc : IsLimit c) :
    Mon C where
  X := c.pt
  mon.one := hc.lift
    { pt := _
      π.app X := η[(F.obj X).X] }
  mon.mul := hc.lift
    { pt := _
      π.app X := (c.π.app X ⊗ₘ c.π.app X) ≫ μ[(F.obj X).X]
      π.naturality i j f := by have := c.π.naturality f; simp_all }
  mon.one_mul := hc.hom_ext <| by simp [whiskerRight_comp_tensorHom_assoc]
  mon.mul_one := hc.hom_ext <| by simp [whiskerLeft_comp_tensorHom_assoc]
  mon.mul_assoc := by
    apply hc.hom_ext
    simp only [Functor.comp_obj, forget_obj, Functor.const_obj_obj, IsLimit.fac,
      mon_tauto, implies_true]

set_option backward.isDefEq.respectTransparency false in
/-- Implementation of `Mon.hasLimits`: a limiting cone over a functor `F : J ⥤ Mon C`.
-/
@[simps]
def limitCone (F : J ⥤ Mon C) (c : Cone (F ⋙ Mon.forget C)) (hc : IsLimit c) : Cone F where
  pt := limit F c hc
  π.app j := .mk' (c.π.app j)
  π.naturality j j' f := Hom.ext' (c.π.naturality f)

set_option backward.isDefEq.respectTransparency.types false in
set_option backward.defeqAttrib.useBackward true in
/-- The image of the proposed limit cone for `F : J ⥤ Mon C` under the forgetful functor
`forget C : Mon C ⥤ C` is isomorphic to the limit cone of `F ⋙ forget C`.
-/
@[simps!]
def forgetMapConeLimitConeIso (F : J ⥤ Mon C) (c : Cone (F ⋙ Mon.forget C)) (hc : IsLimit c) :
    (forget C).mapCone (limitCone F c hc) ≅ c :=
  Cone.ext (Iso.refl _) (by simp)

set_option backward.defeqAttrib.useBackward true in
set_option backward.isDefEq.respectTransparency false in
/-- Implementation of `Mon.hasLimitsOfShape`:
the proposed cone over a functor `F : J ⥤ Mon C` is a limit cone.
-/
@[simps]
def limitConeIsLimit (F : J ⥤ Mon C) (c : Cone (F ⋙ Mon.forget C)) (hc : IsLimit c) :
    IsLimit (limitCone F c hc) where
  lift s :=
    { hom := hc.lift ((Mon.forget C).mapCone s)
      isMonHom_hom.mul_hom := hc.hom_ext <| by simp
      isMonHom_hom.one_hom := hc.hom_ext <| by simp }
  fac s h := by ext; simp
  uniq s m w := Hom.ext' <| hc.hom_ext fun j ↦ by simpa using congr($(w j).hom)

/--
A helper definition to show that the forgetful functor `forget C : Mon C ⥤ C` creates limits:
given a limit cone `c` of `F ⋙ forget C`, we can lift it to a limit cone of `F`.
-/
def limitConeLiftsToLimit (F : J ⥤ Mon C) (c : Cone (F ⋙ Mon.forget C)) (hc : IsLimit c) :
    LiftsToLimit F (forget C) c hc where
  liftedCone := limitCone F c hc
  validLift := forgetMapConeLimitConeIso _ _ _
  makesLimit := limitConeIsLimit _ _ _

instance (F : J ⥤ Mon C) : CreatesLimit F (forget C) :=
  createsLimitOfReflectsIso (limitConeLiftsToLimit _)

instance : CreatesLimitsOfShape J (forget C) := ⟨inferInstance⟩
instance : CreatesLimitsOfSize.{w} (forget C) := ⟨inferInstance⟩
instance : CreatesLimits (forget C) := ⟨inferInstance⟩

instance [HasLimitsOfShape J C] : HasLimitsOfShape J (Mon C) :=
  hasLimitsOfShape_of_hasLimitsOfShape_createsLimitsOfShape (forget C)

instance [HasLimitsOfShape J C] :
    PreservesLimitsOfShape J (Mon.forget C) :=
  CategoryTheory.preservesLimitOfShape_of_createsLimitsOfShape_and_hasLimitsOfShape _

end Mon
end CategoryTheory
```
