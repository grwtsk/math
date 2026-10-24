# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Images.Variant32ee608f977af45493638faeefc657bf1aac0dc900187959ade97d6a60bd31d7

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `479f939d587fdeaae6804ec9f094bf82685502bb` · SHA-256 `7d85d2ba67c34580062f58ac4e00f69b19e8f33ebaa5367d95005530d9c3446a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Image.Variant85710cf9a16e09a03d1ce172c716031971036d3076cf27bebcf79cf9237d41cb","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"85710cf9a16e09a03d1ce172c716031971036d3076cf27bebcf79cf9237d41cb","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.Image.Variant85710cf9a16e09a03d1ce172c716031971036d3076cf27bebcf79cf9237d41cb","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"85710cf9a16e09a03d1ce172c716031971036d3076cf27bebcf79cf9237d41cb","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/Algebra/Category/Grp/Images.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2020 Kim Morrison. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kim Morrison
-/
module

public import Mathlib.Algebra.Category.Grp.Abelian
public import Mathlib.CategoryTheory.Limits.Shapes.Images

/-!
# The category of commutative additive groups has images.

Note that we don't need to register any of the constructions here as instances, because we get them
from the fact that `AddCommGrpCat` is an abelian category.
-/


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Image.Variant85710cf9a16e09a03d1ce172c716031971036d3076cf27bebcf79cf9237d41cb

@[expose] public section

open CategoryTheory Limits

universe u

namespace AddCommGrpCat

-- Note that because `injective_of_mono` is currently only proved in `Type 0`,
-- we restrict to the lowest universe here for now.
variable {G H : AddCommGrpCat.{0}} (f : G ⟶ H)

attribute [local ext] Subtype.ext

section

-- implementation details of `IsImage` for `AddCommGrpCat`; use the API, not these
/-- the image of a morphism in `AddCommGrpCat` is just the bundling of `AddMonoidHom.range f` -/
def image : AddCommGrpCat := ↧f.hom.range

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

set_option backward.isDefEq.respectTransparency.types false in
/-- the universal property for the image factorisation -/
noncomputable def image.lift (F' : MonoFactorisation f) : image f ⟶ F'.I :=
  ofHom
  { toFun := (fun x => F'.e (Classical.indefiniteDescription _ x.2).1 : image f → F'.I)
    map_zero' := by
      have := F'.m_mono
      apply injective_of_mono F'.m
      change (F'.e ≫ F'.m) _ = _
      rw [F'.fac, map_zero]
      exact (Classical.indefiniteDescription (fun y => f y = 0) _).2
    map_add' := by
      intro x y
      have := F'.m_mono
      apply injective_of_mono F'.m
      rw [map_add]
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

/-- the factorisation of any morphism in `AddCommGrpCat` through a mono. -/
def monoFactorisation : MonoFactorisation f where
  I := image f
  m := image.ι f
  e := factorThruImage f

/-- the factorisation of any morphism in `AddCommGrpCat` through a mono has
the universal property of the image. -/
noncomputable def isImage : IsImage (monoFactorisation f) where
  lift := image.lift
  lift_fac := image.lift_fac

/-- The categorical image of a morphism in `AddCommGrpCat`
agrees with the usual group-theoretical range.
-/
noncomputable def imageIsoRange {G H : AddCommGrpCat.{0}} (f : G ⟶ H) :
    Limits.image f ≅ ↧f.hom.range :=
  IsImage.isoExt (Image.isImage f) (isImage f)

end AddCommGrpCat
```
