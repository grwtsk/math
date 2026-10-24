# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.SpectralObject.Varianta7e23b9621aa9f319faca67be5f75e64e7359ce803e019e733de109df36e1a9e

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `24e9b69535f4febeadb4a858c01d2c65fe090a69` · SHA-256 `24c71edb825401f8fbcff391bfc1f570edeccbd048229b7c84d763d3d3d0f9dc`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.ComposableArrowsFunctor.Variant2f18f8301371428b65a14b2a1aa3dc4f74442e14569846fcb6a4f5be17dfddc7","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"2f18f8301371428b65a14b2a1aa3dc4f74442e14569846fcb6a4f5be17dfddc7","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.ComposableArrowsFunctor.Variant2f18f8301371428b65a14b2a1aa3dc4f74442e14569846fcb6a4f5be17dfddc7","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"2f18f8301371428b65a14b2a1aa3dc4f74442e14569846fcb6a4f5be17dfddc7","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/Algebra/Homology/HomotopyCategory/SpectralObject.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Joël Riou. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Joël Riou
-/
module

public import Mathlib.Algebra.Homology.HomotopyCategory.Triangulated
public import Mathlib.CategoryTheory.Triangulated.SpectralObject

/-!
# The spectral object with values in the homotopy category

Let `C` be an additive category. In this file, we show that the
mapping cone defines a spectral object with values in the homotopy
category of `ℤ`-indexed cochain complexes `C` that is indexed
by the category `CochainComplex C ℤ`.
(It follows that to any functor `ι ⥤ CochainComplex C ℤ` (e.g. a filtered
complex), there is an associated spectral object indexed by `ι`.)

-/


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.ComposableArrowsFunctor.Variant2f18f8301371428b65a14b2a1aa3dc4f74442e14569846fcb6a4f5be17dfddc7

@[expose] public section

namespace HomotopyCategory

open CategoryTheory Limits Triangulated CochainComplex.mappingCone

variable (C : Type*) [Category* C] [Preadditive C]
  [HasZeroObject C] [HasBinaryBiproducts C]

/-- The functor `ComposableArrows (CochainComplex C ℤ) 1 ⥤ CochainComplex C ℤ` which
sends a morphism of cochain complexes to its mapping cone. -/
@[simps]
noncomputable def composableArrowsFunctor :
    ComposableArrows (CochainComplex C ℤ) 1 ⥤ CochainComplex C ℤ where
  obj f := CochainComplex.mappingCone (f.map' 0 1)
  map φ := map _ _ (φ.app 0) (φ.app 1) (ComposableArrows.naturality' φ 0 1)
  map_id _ := map_id _
  map_comp _ _ := map_comp _ _ _ _ _ _ _ _ _

set_option backward.defeqAttrib.useBackward true in
/-- The spectral object with values in `(HomotopyCategory C (.up ℤ)` that
is indexed by `CochainComplex C ℤ`. -/
@[simps]
noncomputable def spectralObjectMappingCone :
    SpectralObject (HomotopyCategory C (ComplexShape.up ℤ)) (CochainComplex C ℤ) where
  ω₁ := composableArrowsFunctor C ⋙ HomotopyCategory.quotient _ _
  δ'.app D := ((HomotopyCategory.quotient C (ComplexShape.up ℤ)).mapTriangle.obj
    (CochainComplex.mappingConeCompTriangle (D.map' 0 1) (D.map' 1 2))).mor₃
  δ'.naturality D₁ D₂ φ := by
    obtain ⟨_, _, _, f, g, rfl⟩ := ComposableArrows.mk₂_surjective D₁
    obtain ⟨_, _, _, f', g', rfl⟩ := ComposableArrows.mk₂_surjective D₂
    have eq := CochainComplex.mappingConeCompTriangle_mor₃_naturality f g f' g' φ
    dsimp [ComposableArrows.Precomp.map] at eq ⊢
    simp only [Category.assoc, ← Functor.map_comp_assoc]
    simp [eq]
  distinguished' D := by
    obtain ⟨_, _, _, f, g, rfl⟩ := ComposableArrows.mk₂_surjective D
    exact HomotopyCategory.mappingConeCompTriangleh_distinguished f g

end HomotopyCategory
```
