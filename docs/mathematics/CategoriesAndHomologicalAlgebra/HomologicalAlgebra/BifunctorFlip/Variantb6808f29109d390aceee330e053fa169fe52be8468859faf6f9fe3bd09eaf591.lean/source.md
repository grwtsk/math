# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.HomologicalAlgebra.BifunctorFlip.Variantb6808f29109d390aceee330e053fa169fe52be8468859faf6f9fe3bd09eaf591

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8caee67bdf8469e28ae4a24fc12e21e4d6d24cd8` · SHA-256 `ce124d3af30c9dededac6962aec4067fa43a207af7f00bd7449a2adc07885efc`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.HomologicalAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.HomologicalAlgebra.HasMapBifunctorFlipIff.Variant82ed60223be1275b48585caba3a8bf75ed42618b519580e3de888c7f907eab81","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"82ed60223be1275b48585caba3a8bf75ed42618b519580e3de888c7f907eab81","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.HomologicalAlgebra.SourceCorpus.HasMapBifunctorFlipIff.Variant82ed60223be1275b48585caba3a8bf75ed42618b519580e3de888c7f907eab81","mathematical_subject":"Algebra.HomologicalAlgebra","original_sha256":"82ed60223be1275b48585caba3a8bf75ed42618b519580e3de888c7f907eab81","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/Algebra/Homology/BifunctorFlip.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Joël Riou. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Joël Riou
-/
module

public import Mathlib.Algebra.Homology.Bifunctor
public import Mathlib.Algebra.Homology.TotalComplexSymmetry

/-!
# Action of the flip of a bifunctor on homological complexes

Given `K₁ : HomologicalComplex C₁ c₁`, `K₂ : HomologicalComplex C₂ c₂`,
a bifunctor `F : C₁ ⥤ C₂ ⥤ D`, and a complex shape `c` with
`[TotalComplexShape c₁ c₂ c]` and `[TotalComplexShape c₂ c₁ c]`, we define
an isomorphism `mapBifunctor K₂ K₁ F.flip c ≅ mapBifunctor K₁ K₂ F c`
under the additional assumption `[TotalComplexShapeSymmetry c₁ c₂ c]`.

-/


namespace GRWTSK.CategoriesAndHomologicalAlgebra.HomologicalAlgebra.HasMapBifunctorFlipIff.Variant82ed60223be1275b48585caba3a8bf75ed42618b519580e3de888c7f907eab81

@[expose] public section

open CategoryTheory Limits

variable {C₁ C₂ D : Type*} [Category* C₁] [Category* C₂] [Category* D]

namespace HomologicalComplex

variable {I₁ I₂ J : Type*} {c₁ : ComplexShape I₁} {c₂ : ComplexShape I₂}
  [HasZeroMorphisms C₁] [HasZeroMorphisms C₂] [Preadditive D]
  (K₁ L₁ : HomologicalComplex C₁ c₁) (φ₁ : K₁ ⟶ L₁)
  (K₂ L₂ : HomologicalComplex C₂ c₂) (φ₂ : K₂ ⟶ L₂)
  (F : C₁ ⥤ C₂ ⥤ D) [F.PreservesZeroMorphisms] [∀ X₁, (F.obj X₁).PreservesZeroMorphisms]
  (c : ComplexShape J) [TotalComplexShape c₁ c₂ c] [TotalComplexShape c₂ c₁ c]
  [TotalComplexShapeSymmetry c₁ c₂ c]

lemma hasMapBifunctor_flip_iff :
    HasMapBifunctor K₂ K₁ F.flip c ↔ HasMapBifunctor K₁ K₂ F c :=
  (((F.mapBifunctorHomologicalComplex c₁ c₂).obj K₁).obj K₂).flip_hasTotal_iff c

variable [DecidableEq J] [HasMapBifunctor K₁ K₂ F c] [HasMapBifunctor L₁ L₂ F c]

instance : HasMapBifunctor K₂ K₁ F.flip c := by
  rw [hasMapBifunctor_flip_iff]
  infer_instance

/-- The canonical isomorphism `mapBifunctor K₂ K₁ F.flip c ≅ mapBifunctor K₁ K₂ F c`. -/
noncomputable def mapBifunctorFlipIso :
    mapBifunctor K₂ K₁ F.flip c ≅ mapBifunctor K₁ K₂ F c :=
  (((F.mapBifunctorHomologicalComplex c₁ c₂).obj K₁).obj K₂).totalFlipIso c

@[reassoc (attr := simp)]
lemma ι_mapBifunctorFlipIso_hom (i₁ : I₁) (i₂ : I₂) (j : J) (hj : c₂.π c₁ c (i₂, i₁) = j) :
    ιMapBifunctor K₂ K₁ F.flip c i₂ i₁ j hj ≫ (mapBifunctorFlipIso K₁ K₂ F c).hom.f j =
      c₁.σ c₂ c i₁ i₂ • ιMapBifunctor K₁ K₂ F c i₁ i₂ j
        (by rw [← ComplexShape.π_symm c₁ c₂ c i₁ i₂, hj]) :=
  HomologicalComplex₂.ιTotal_totalFlipIso_f_hom
    (((F.mapBifunctorHomologicalComplex c₁ c₂).obj K₁).obj K₂) c i₁ i₂ j hj

@[reassoc (attr := simp)]
lemma ι_mapBifunctorFlipIso_inv (i₁ : I₁) (i₂ : I₂) (j : J) (hj : c₁.π c₂ c (i₁, i₂) = j) :
    ιMapBifunctor K₁ K₂ F c i₁ i₂ j hj ≫ (mapBifunctorFlipIso K₁ K₂ F c).inv.f j =
      c₁.σ c₂ c i₁ i₂ • ιMapBifunctor K₂ K₁ F.flip c i₂ i₁ j
        (by rw [ComplexShape.π_symm c₁ c₂ c i₁ i₂, hj]) :=
  HomologicalComplex₂.ιTotal_totalFlipIso_f_inv
    (((F.mapBifunctorHomologicalComplex c₁ c₂).obj K₁).obj K₂) c i₁ i₂ j hj

lemma mapBifunctorFlipIso_flip
    [TotalComplexShapeSymmetry c₂ c₁ c] [TotalComplexShapeSymmetrySymmetry c₁ c₂ c] :
    mapBifunctorFlipIso K₂ K₁ F.flip c = (mapBifunctorFlipIso K₁ K₂ F c).symm :=
  (((F.mapBifunctorHomologicalComplex c₁ c₂).obj K₁).obj K₂).flip_totalFlipIso c

variable {K₁ K₂ L₁ L₂} in
@[reassoc (attr := simp)]
lemma mapBifunctorFlipIso_hom_naturality :
      mapBifunctorMap φ₂ φ₁ F.flip c ≫ (mapBifunctorFlipIso L₁ L₂ F c).hom =
    (mapBifunctorFlipIso K₁ K₂ F c).hom ≫ mapBifunctorMap φ₁ φ₂ F c := by
  cat_disch

end HomologicalComplex
```
