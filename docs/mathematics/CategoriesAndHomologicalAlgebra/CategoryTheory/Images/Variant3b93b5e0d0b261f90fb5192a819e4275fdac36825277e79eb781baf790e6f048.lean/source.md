# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Images.Variant3b93b5e0d0b261f90fb5192a819e4275fdac36825277e79eb781baf790e6f048

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `32a1e7aac86c2fc320089f03450823a555fe3796` · SHA-256 `f501114c24fc309f5e35b8205074a9099907d834320b8feb68965be4b43cc9b0`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Image.Variant2b9133762697bcddd085092015d454fa50af4fa4096a31cba54ecc8906010355","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"2b9133762697bcddd085092015d454fa50af4fa4096a31cba54ecc8906010355","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.Image.Variant2b9133762697bcddd085092015d454fa50af4fa4096a31cba54ecc8906010355","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"2b9133762697bcddd085092015d454fa50af4fa4096a31cba54ecc8906010355","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Algebra/Category/ModuleCat/Images.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Kim Morrison. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kim Morrison
-/
import Mathlib.Algebra.Category.ModuleCat.Abelian
import Mathlib.CategoryTheory.Limits.Shapes.Images

/-!
# The category of R-modules has images.

Note that we don't need to register any of the constructions here as instances, because we get them
from the fact that `ModuleCat R` is an abelian category.
-/



namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Image.Variant2b9133762697bcddd085092015d454fa50af4fa4096a31cba54ecc8906010355

open CategoryTheory

open CategoryTheory.Limits

universe u v

namespace ModuleCat

variable {R : Type u} [Ring R]
variable {G H : ModuleCat.{v} R} (f : G ⟶ H)

attribute [local ext] Subtype.ext_val

section

-- implementation details of `HasImage` for ModuleCat; use the API, not these
/-- The image of a morphism in `ModuleCat R` is just the bundling of `LinearMap.range f` -/
def image : ModuleCat R :=
  ModuleCat.of R (LinearMap.range f.hom)

/-- The inclusion of `image f` into the target -/
def image.ι : image f ⟶ H :=
  ofHom (LinearMap.range f.hom).subtype

instance : Mono (image.ι f) :=
  ConcreteCategory.mono_of_injective (image.ι f) Subtype.val_injective

/-- The corestriction map to the image -/
def factorThruImage : G ⟶ image f :=
  ofHom f.hom.rangeRestrict

theorem image.fac : factorThruImage f ≫ image.ι f = f :=
  rfl

attribute [local simp] image.fac

variable {f}

/-- The universal property for the image factorisation -/
noncomputable def image.lift (F' : MonoFactorisation f) : image f ⟶ F'.I :=
  ofHom
  { toFun := (fun x => F'.e (Classical.indefiniteDescription _ x.2).1 : image f → F'.I)
    map_add' := fun x y => by
      apply (mono_iff_injective F'.m).1
      · infer_instance
      rw [LinearMap.map_add]
      change (F'.e ≫ F'.m) _ = (F'.e ≫ F'.m) _ + (F'.e ≫ F'.m) _
      simp_rw [F'.fac, (Classical.indefiniteDescription (fun z => f z = _) _).2]
      rfl
    map_smul' := fun c x => by
      apply (mono_iff_injective F'.m).1
      · infer_instance
      rw [LinearMap.map_smul]
      change (F'.e ≫ F'.m) _ = _ • (F'.e ≫ F'.m) _
      simp_rw [F'.fac, (Classical.indefiniteDescription (fun z => f z = _) _).2]
      rfl }

theorem image.lift_fac (F' : MonoFactorisation f) : image.lift F' ≫ F'.m = image.ι f := by
  ext x
  change (F'.e ≫ F'.m) _ = _
  rw [F'.fac, (Classical.indefiniteDescription _ x.2).2]
  rfl

end

/-- The factorisation of any morphism in `ModuleCat R` through a mono. -/
def monoFactorisation : MonoFactorisation f where
  I := image f
  m := image.ι f
  e := factorThruImage f

/-- The factorisation of any morphism in `ModuleCat R` through a mono has the universal property of
the image. -/
noncomputable def isImage : IsImage (monoFactorisation f) where
  lift := image.lift
  lift_fac := image.lift_fac

/-- The categorical image of a morphism in `ModuleCat R` agrees with the linear algebraic range. -/
noncomputable def imageIsoRange {G H : ModuleCat.{v} R} (f : G ⟶ H) :
    Limits.image f ≅ ModuleCat.of R (LinearMap.range f.hom) :=
  IsImage.isoExt (Image.isImage f) (isImage f)

@[simp, reassoc, elementwise]
theorem imageIsoRange_inv_image_ι {G H : ModuleCat.{v} R} (f : G ⟶ H) :
    (imageIsoRange f).inv ≫ Limits.image.ι f = ModuleCat.ofHom (LinearMap.range f.hom).subtype :=
  IsImage.isoExt_inv_m _ _

@[simp, reassoc, elementwise]
theorem imageIsoRange_hom_subtype {G H : ModuleCat.{v} R} (f : G ⟶ H) :
    (imageIsoRange f).hom ≫ ModuleCat.ofHom (LinearMap.range f.hom).subtype = Limits.image.ι f := by
  rw [← imageIsoRange_inv_image_ι f, Iso.hom_inv_id_assoc]

end ModuleCat
```
