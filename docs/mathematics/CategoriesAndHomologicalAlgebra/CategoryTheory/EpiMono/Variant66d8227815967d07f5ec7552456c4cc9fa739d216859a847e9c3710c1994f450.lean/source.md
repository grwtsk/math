# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.EpiMono.Variant66d8227815967d07f5ec7552456c4cc9fa739d216859a847e9c3710c1994f450

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9c3ee937c1534aa5d34e70cd982bf28f3a55e9ed` · SHA-256 `445de2e61593caaae56b1c84a0ce9206ec0ecf613cfe5130b2a78cd83d1aa854`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.PreservesMonoOfPreservesLimit.Variantf1eb4d7280721652154d12f5f320b02d04ed329c455ea2bf03f85a3bbcfc7097","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"f1eb4d7280721652154d12f5f320b02d04ed329c455ea2bf03f85a3bbcfc7097","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.PreservesMonoOfPreservesLimit.Variantf1eb4d7280721652154d12f5f320b02d04ed329c455ea2bf03f85a3bbcfc7097","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"f1eb4d7280721652154d12f5f320b02d04ed329c455ea2bf03f85a3bbcfc7097","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/CategoryTheory/Limits/Constructions/EpiMono.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2021 Bhavik Mehta. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Bhavik Mehta
-/
import Mathlib.CategoryTheory.Limits.Shapes.BinaryProducts
import Mathlib.CategoryTheory.Limits.Shapes.Pullback.Mono
import Mathlib.CategoryTheory.Limits.Preserves.Shapes.Pullbacks

/-!
# Relating monomorphisms and epimorphisms to limits and colimits

If `F` preserves (resp. reflects) pullbacks, then it preserves (resp. reflects) monomorphisms.

We also provide the dual version for epimorphisms.

-/



namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.PreservesMonoOfPreservesLimit.Variantf1eb4d7280721652154d12f5f320b02d04ed329c455ea2bf03f85a3bbcfc7097

universe v₁ v₂ u₁ u₂

namespace CategoryTheory

open Category Limits

variable {C : Type u₁} {D : Type u₂} [Category.{v₁} C] [Category.{v₂} D]
variable (F : C ⥤ D)

/-- If `F` preserves pullbacks, then it preserves monomorphisms. -/
theorem preserves_mono_of_preservesLimit {X Y : C} (f : X ⟶ Y) [PreservesLimit (cospan f f) F]
    [Mono f] : Mono (F.map f) := by
  have := isLimitPullbackConeMapOfIsLimit F _ (PullbackCone.isLimitMkIdId f)
  simp_rw [F.map_id] at this
  apply PullbackCone.mono_of_isLimitMkIdId _ this

instance (priority := 100) preservesMonomorphisms_of_preservesLimitsOfShape
    [PreservesLimitsOfShape WalkingCospan F] : F.PreservesMonomorphisms where
  preserves f _ := preserves_mono_of_preservesLimit F f

/-- If `F` reflects pullbacks, then it reflects monomorphisms. -/
theorem reflects_mono_of_reflectsLimit {X Y : C} (f : X ⟶ Y) [ReflectsLimit (cospan f f) F]
    [Mono (F.map f)] : Mono f := by
  have := PullbackCone.isLimitMkIdId (F.map f)
  simp_rw [← F.map_id] at this
  apply PullbackCone.mono_of_isLimitMkIdId _ (isLimitOfIsLimitPullbackConeMap F _ this)

instance (priority := 100) reflectsMonomorphisms_of_reflectsLimitsOfShape
    [ReflectsLimitsOfShape WalkingCospan F] : F.ReflectsMonomorphisms where
  reflects f _ := reflects_mono_of_reflectsLimit F f

/-- If `F` preserves pushouts, then it preserves epimorphisms. -/
theorem preserves_epi_of_preservesColimit {X Y : C} (f : X ⟶ Y) [PreservesColimit (span f f) F]
    [Epi f] : Epi (F.map f) := by
  have := isColimitPushoutCoconeMapOfIsColimit F _ (PushoutCocone.isColimitMkIdId f)
  simp_rw [F.map_id] at this
  apply PushoutCocone.epi_of_isColimitMkIdId _ this

instance (priority := 100) preservesEpimorphisms_of_preservesColimitsOfShape
    [PreservesColimitsOfShape WalkingSpan F] : F.PreservesEpimorphisms where
  preserves f _ := preserves_epi_of_preservesColimit F f

/-- If `F` reflects pushouts, then it reflects epimorphisms. -/
theorem reflects_epi_of_reflectsColimit {X Y : C} (f : X ⟶ Y) [ReflectsColimit (span f f) F]
    [Epi (F.map f)] : Epi f := by
  have := PushoutCocone.isColimitMkIdId (F.map f)
  simp_rw [← F.map_id] at this
  apply
    PushoutCocone.epi_of_isColimitMkIdId _
      (isColimitOfIsColimitPushoutCoconeMap F _ this)

instance (priority := 100) reflectsEpimorphisms_of_reflectsColimitsOfShape
    [ReflectsColimitsOfShape WalkingSpan F] : F.ReflectsEpimorphisms where
  reflects f _ := reflects_epi_of_reflectsColimit F f

end CategoryTheory
```
