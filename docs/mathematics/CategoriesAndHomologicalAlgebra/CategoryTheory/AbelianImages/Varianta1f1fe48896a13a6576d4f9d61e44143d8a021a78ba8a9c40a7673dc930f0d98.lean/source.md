# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.AbelianImages.Varianta1f1fe48896a13a6576d4f9d61e44143d8a021a78ba8a9c40a7673dc930f0d98

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `027b0b01ae4d43019ccb4d19c0e48a868289be27` · SHA-256 `90d616e735644d24e65d160f593d8cd12cc4dd891f70aef2729798c9c5c5861b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.PreservesImageIso.Variante036c830e482bdf6732dbffa743f070b1ea559814d287bea3b3fac9c0f46ba9e","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"e036c830e482bdf6732dbffa743f070b1ea559814d287bea3b3fac9c0f46ba9e","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.PreservesImageIso.Variante036c830e482bdf6732dbffa743f070b1ea559814d287bea3b3fac9c0f46ba9e","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"e036c830e482bdf6732dbffa743f070b1ea559814d287bea3b3fac9c0f46ba9e","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/CategoryTheory/Limits/Preserves/Shapes/AbelianImages.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Markus Himmel. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Markus Himmel
-/
import Mathlib.CategoryTheory.Abelian.Images
import Mathlib.CategoryTheory.Limits.Preserves.Shapes.Kernels

/-!
# Preservation of coimage-image comparisons

If a functor preserves kernels and cokernels, then it preserves abelian images, abelian coimages
and coimage-image comparisons.
-/


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.PreservesImageIso.Variante036c830e482bdf6732dbffa743f070b1ea559814d287bea3b3fac9c0f46ba9e

noncomputable section

universe v₁ v₂ u₁ u₂

open CategoryTheory Limits

namespace CategoryTheory.Abelian

variable {C : Type u₁} [Category.{v₁} C] [HasZeroMorphisms C] [HasKernels C] [HasCokernels C]
variable {D : Type u₂} [Category.{v₂} D] [HasZeroMorphisms D] [HasKernels D] [HasCokernels D]
variable (F : C ⥤ D) [F.PreservesZeroMorphisms] [PreservesLimitsOfShape WalkingParallelPair F]
  [PreservesColimitsOfShape WalkingParallelPair F]
variable {X Y : C} (f : X ⟶ Y)

/-- If a functor preserves kernels and cokernels, it preserves abelian images. -/
def PreservesImage.iso : F.obj (Abelian.image f) ≅ Abelian.image (F.map f) :=
  PreservesKernel.iso F _ ≪≫ kernel.mapIso _ _ (Iso.refl _) (PreservesCokernel.iso F _) (by simp)

@[reassoc (attr := simp)]
theorem PreservesImage.iso_hom_ι :
    (PreservesImage.iso F f).hom ≫ Abelian.image.ι (F.map f) = F.map (Abelian.image.ι f) := by
  simp [iso]

@[reassoc (attr := simp)]
theorem PreservesImage.factorThruImage_iso_hom :
    F.map (Abelian.factorThruImage f) ≫ (PreservesImage.iso F f).hom =
      Abelian.factorThruImage (F.map f) := by
  ext; simp [iso]

@[reassoc (attr := simp)]
theorem PreservesImage.iso_inv_ι :
    (PreservesImage.iso F f).inv ≫ F.map (Abelian.image.ι f) = Abelian.image.ι (F.map f) := by
  simp [iso]

@[reassoc (attr := simp)]
theorem PreservesImage.factorThruImage_iso_inv :
    Abelian.factorThruImage (F.map f) ≫ (PreservesImage.iso F f).inv =
      F.map (Abelian.factorThruImage f) := by
  simp [Iso.comp_inv_eq]

/-- If a functor preserves kernels and cokernels, it preserves abelian coimages. -/
def PreservesCoimage.iso : F.obj (Abelian.coimage f) ≅ Abelian.coimage (F.map f) :=
  PreservesCokernel.iso F _ ≪≫ cokernel.mapIso _ _ (PreservesKernel.iso F _) (Iso.refl _) (by simp)

@[reassoc (attr := simp)]
theorem PreservesCoimage.iso_hom_π :
    F.map (Abelian.coimage.π f) ≫ (PreservesCoimage.iso F f).hom = Abelian.coimage.π (F.map f) := by
  simp [iso]

@[reassoc (attr := simp)]
theorem PreservesCoimage.factorThruCoimage_iso_inv :
    (PreservesCoimage.iso F f).inv ≫ F.map (Abelian.factorThruCoimage f)  =
      Abelian.factorThruCoimage (F.map f) := by
  ext; simp [iso]

@[reassoc (attr := simp)]
theorem PreservesCoimage.factorThruCoimage_iso_hom :
    (PreservesCoimage.iso F f).hom ≫ Abelian.factorThruCoimage (F.map f) =
      F.map (Abelian.factorThruCoimage f) := by
  simp [← Iso.eq_inv_comp]

@[reassoc (attr := simp)]
theorem PreservesCoimage.iso_inv_π :
    Abelian.coimage.π (F.map f) ≫ (PreservesCoimage.iso F f).inv = F.map (Abelian.coimage.π f) := by
  simp [Iso.comp_inv_eq]

theorem PreservesCoimage.hom_coimageImageComparison :
    (PreservesCoimage.iso F f).hom ≫ coimageImageComparison (F.map f) =
      F.map (coimageImageComparison f) ≫ (PreservesImage.iso F f).hom := by
  simp [← Functor.map_comp, ← Iso.eq_inv_comp, ← cancel_epi (Abelian.coimage.π (F.map f)),
    ← cancel_mono (Abelian.image.ι (F.map f))]

/-- If a functor preserves kernels and cokernels, it preserves coimage-image comparisons. -/
@[simps!]
def PreservesCoimageImageComparison.iso :
    Arrow.mk (F.map (coimageImageComparison f)) ≅ Arrow.mk (coimageImageComparison (F.map f)) :=
  Arrow.isoMk' _ _ (PreservesCoimage.iso F f) (PreservesImage.iso F f)
    (PreservesCoimage.hom_coimageImageComparison F f)

end CategoryTheory.Abelian
```
