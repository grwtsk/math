# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Images.Variantdba0c38b664bb29aa1adfa9d1df162a328415f9254669faeb36c47e126a2737f

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `cad628e997de18f0346b437a4164c775fc7a6a7a` · SHA-256 `e23d9a5ff882652570425434a0a26441e6a5d6f291f0bfc1ecdc8a643c4b67df`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Iso.Variant127100ff4d0eaf03f0b58fbac020370213a32aceedb309121e16876149bdf809","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"127100ff4d0eaf03f0b58fbac020370213a32aceedb309121e16876149bdf809","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.Iso.Variant127100ff4d0eaf03f0b58fbac020370213a32aceedb309121e16876149bdf809","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"127100ff4d0eaf03f0b58fbac020370213a32aceedb309121e16876149bdf809","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/CategoryTheory/Limits/Preserves/Shapes/Images.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Jujian Zhang. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jujian Zhang
-/
import Mathlib.CategoryTheory.Limits.Shapes.Images
import Mathlib.CategoryTheory.Limits.Constructions.EpiMono

/-!
# Preserving images

In this file, we show that if a functor preserves span and cospan, then it preserves images.
-/



namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Iso.Variant127100ff4d0eaf03f0b58fbac020370213a32aceedb309121e16876149bdf809

noncomputable section

namespace CategoryTheory

namespace PreservesImage

open CategoryTheory

open CategoryTheory.Limits

universe u₁ u₂ v₁ v₂

variable {A : Type u₁} {B : Type u₂} [Category.{v₁} A] [Category.{v₂} B]
variable [HasEqualizers A] [HasImages A]
variable [StrongEpiCategory B] [HasImages B]
variable (L : A ⥤ B)
variable [∀ {X Y Z : A} (f : X ⟶ Z) (g : Y ⟶ Z), PreservesLimit (cospan f g) L]
variable [∀ {X Y Z : A} (f : X ⟶ Y) (g : X ⟶ Z), PreservesColimit (span f g) L]

/-- If a functor preserves span and cospan, then it preserves images.
-/
@[simps!]
def iso {X Y : A} (f : X ⟶ Y) : image (L.map f) ≅ L.obj (image f) :=
  let aux1 : StrongEpiMonoFactorisation (L.map f) :=
    { I := L.obj (Limits.image f)
      m := L.map <| Limits.image.ι _
      m_mono := preserves_mono_of_preservesLimit _ _
      e := L.map <| factorThruImage _
      e_strong_epi := @strongEpi_of_epi B _ _ _ _ _ (preserves_epi_of_preservesColimit L _)
      fac := by rw [← L.map_comp, Limits.image.fac] }
  IsImage.isoExt (Image.isImage (L.map f)) aux1.toMonoIsImage

@[reassoc]
theorem factorThruImage_comp_hom {X Y : A} (f : X ⟶ Y) :
    factorThruImage (L.map f) ≫ (iso L f).hom = L.map (factorThruImage f) := by simp

@[reassoc]
theorem hom_comp_map_image_ι {X Y : A} (f : X ⟶ Y) :
    (iso L f).hom ≫ L.map (image.ι f) = image.ι (L.map f) := by rw [iso_hom, image.lift_fac]

@[reassoc]
theorem inv_comp_image_ι_map {X Y : A} (f : X ⟶ Y) :
    (iso L f).inv ≫ image.ι (L.map f) = L.map (image.ι f) := by simp

end PreservesImage

end CategoryTheory
```
