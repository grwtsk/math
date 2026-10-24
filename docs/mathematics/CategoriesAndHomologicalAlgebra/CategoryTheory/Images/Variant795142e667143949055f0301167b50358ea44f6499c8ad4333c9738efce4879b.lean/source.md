# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Images.Variant795142e667143949055f0301167b50358ea44f6499c8ad4333c9738efce4879b

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d39ea3d6ee4d8dbbd7d7d4f196b36056523acb43` · SHA-256 `b2aa53e417984f7d06c928df24590c4c8333b79562b0127e6b2d2ee25aa46e69`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Image.Variant6f805455715980486c6bbcb451738c6dcca391877d086906a7fd5c8974d4e72b","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"6f805455715980486c6bbcb451738c6dcca391877d086906a7fd5c8974d4e72b","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.Image.Variant6f805455715980486c6bbcb451738c6dcca391877d086906a7fd5c8974d4e72b","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"6f805455715980486c6bbcb451738c6dcca391877d086906a7fd5c8974d4e72b","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Algebra/Category/Grp/Images.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2020 Kim Morrison. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kim Morrison
-/
import Mathlib.Algebra.Category.Grp.Abelian
import Mathlib.CategoryTheory.Limits.Shapes.Images

/-!
# The category of commutative additive groups has images.

Note that we don't need to register any of the constructions here as instances, because we get them
from the fact that `AddCommGrp` is an abelian category.
-/



namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Image.Variant6f805455715980486c6bbcb451738c6dcca391877d086906a7fd5c8974d4e72b

open CategoryTheory

open CategoryTheory.Limits

universe u

namespace AddCommGrp


-- Note that because `injective_of_mono` is currently only proved in `Type 0`,
-- we restrict to the lowest universe here for now.
variable {G H : AddCommGrp.{0}} (f : G ⟶ H)

attribute [local ext] Subtype.ext_val

section

-- implementation details of `IsImage` for `AddCommGrp`; use the API, not these
/-- the image of a morphism in `AddCommGrp` is just the bundling of `AddMonoidHom.range f` -/
def image : AddCommGrp :=
  AddCommGrp.of (AddMonoidHom.range f.hom)

/-- the inclusion of `image f` into the target -/
def image.ι : image f ⟶ H :=
  ofHom f.hom.range.subtype

instance : Mono (image.ι f) :=
  ConcreteCategory.mono_of_injective (image.ι f) Subtype.val_injective

/-- the corestriction map to the image -/
def factorThruImage : G ⟶ image f :=
  ofHom f.hom.rangeRestrict

theorem image.fac : factorThruImage f ≫ image.ι f = f := by
  ext
  rfl

attribute [local simp] image.fac

variable {f}

/-- the universal property for the image factorisation -/
noncomputable def image.lift (F' : MonoFactorisation f) : image f ⟶ F'.I :=
  ofHom
  { toFun := (fun x => F'.e (Classical.indefiniteDescription _ x.2).1 : image f → F'.I)
    map_zero' := by
      haveI := F'.m_mono
      apply injective_of_mono F'.m
      change (F'.e ≫ F'.m) _ = _
      rw [F'.fac, AddMonoidHom.map_zero]
      exact (Classical.indefiniteDescription (fun y => f y = 0) _).2
    map_add' := by
      intro x y
      haveI := F'.m_mono
      apply injective_of_mono F'.m
      rw [AddMonoidHom.map_add]
      change (F'.e ≫ F'.m) _ = (F'.e ≫ F'.m) _ + (F'.e ≫ F'.m) _
      rw [F'.fac]
      rw [(Classical.indefiniteDescription (fun z => f z = _) _).2]
      rw [(Classical.indefiniteDescription (fun z => f z = _) _).2]
      rw [(Classical.indefiniteDescription (fun z => f z = _) _).2]
      rfl }

theorem image.lift_fac (F' : MonoFactorisation f) : image.lift F' ≫ F'.m = image.ι f := by
  ext x
  change (F'.e ≫ F'.m) _ = _
  rw [F'.fac, (Classical.indefiniteDescription _ x.2).2]
  rfl

end

/-- the factorisation of any morphism in `AddCommGrp` through a mono. -/
def monoFactorisation : MonoFactorisation f where
  I := image f
  m := image.ι f
  e := factorThruImage f

/-- the factorisation of any morphism in `AddCommGrp` through a mono has
the universal property of the image. -/
noncomputable def isImage : IsImage (monoFactorisation f) where
  lift := image.lift
  lift_fac := image.lift_fac

/-- The categorical image of a morphism in `AddCommGrp`
agrees with the usual group-theoretical range.
-/
noncomputable def imageIsoRange {G H : AddCommGrp.{0}} (f : G ⟶ H) :
    Limits.image f ≅ AddCommGrp.of f.hom.range :=
  IsImage.isoExt (Image.isImage f) (isImage f)

end AddCommGrp
```
