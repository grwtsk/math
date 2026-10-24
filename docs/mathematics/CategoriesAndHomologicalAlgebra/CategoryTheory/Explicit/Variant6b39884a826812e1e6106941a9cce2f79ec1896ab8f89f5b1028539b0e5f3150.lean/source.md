# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Explicit.Variant6b39884a826812e1e6106941a9cce2f79ec1896ab8f89f5b1028539b0e5f3150

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `25891a451e0424eb6dfb04a1b1296e1608eb6406` · SHA-256 `088b6d8fb05882d83aeb21a3e513edcc3c5fb2e1efa6a2d4124de1cbfa41b23c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.OfSheafStonean.Varianta2fce032653a946e0fe45055a0bd15a23a155e2fa6a035b61e5114e934de5b9b","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"a2fce032653a946e0fe45055a0bd15a23a155e2fa6a035b61e5114e934de5b9b","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.OfSheafStonean.Varianta2fce032653a946e0fe45055a0bd15a23a155e2fa6a035b61e5114e934de5b9b","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"a2fce032653a946e0fe45055a0bd15a23a155e2fa6a035b61e5114e934de5b9b","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Condensed/Explicit.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2023 Dagur Asgeirsson. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Dagur Asgeirsson, Riccardo Brasca, Filippo A. E. Nuccio
-/
import Mathlib.Condensed.Module
import Mathlib.Condensed.Equivalence
/-!

# The explicit sheaf condition for condensed sets

We give the following three explicit descriptions of condensed objects:

* `Condensed.ofSheafStonean`: A finite-product-preserving presheaf on `Stonean`.

* `Condensed.ofSheafProfinite`: A finite-product-preserving presheaf on `Profinite`, satisfying
  `EqualizerCondition`.

* `Condensed.ofSheafStonean`: A finite-product-preserving presheaf on `CompHaus`, satisfying
  `EqualizerCondition`.

The property `EqualizerCondition` is defined in `Mathlib/CategoryTheory/Sites/RegularSheaves.lean`
and it says that for any effective epi `X ⟶ B` (in this case that is equivalent to being a
continuous surjection), the presheaf `F` exhibits `F(B)` as the equalizer of the two maps
`F(X) ⇉ F(X ×_B X)`

We also give variants for condensed objects in concrete categories whose forgetful functor
reflects finite limits (resp. products), where it is enough to check the sheaf condition after
postcomposing with the forgetful functor.
-/


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.OfSheafStonean.Varianta2fce032653a946e0fe45055a0bd15a23a155e2fa6a035b61e5114e934de5b9b

universe u

open CategoryTheory Limits Opposite Functor Presheaf regularTopology

namespace Condensed

variable {A : Type*} [Category A]

/-- The condensed object associated to a finite-product-preserving presheaf on `Stonean`. -/
noncomputable def ofSheafStonean
    [∀ X, HasLimitsOfShape (StructuredArrow X Stonean.toCompHaus.op) A]
    (F : Stonean.{u}ᵒᵖ ⥤ A) [PreservesFiniteProducts F] :
    Condensed A :=
  StoneanCompHaus.equivalence A |>.functor.obj {
    val := F
    cond := by
      rw [isSheaf_iff_preservesFiniteProducts_of_projective F]
      exact ⟨fun _ ↦ inferInstance⟩ }

/--
The condensed object associated to a presheaf on `Stonean` whose postcomposition with the
forgetful functor preserves finite products.
-/
noncomputable def ofSheafForgetStonean
    [∀ X, HasLimitsOfShape (StructuredArrow X Stonean.toCompHaus.op) A]
    [HasForget A] [ReflectsFiniteProducts (CategoryTheory.forget A)]
    (F : Stonean.{u}ᵒᵖ ⥤ A) [PreservesFiniteProducts (F ⋙ CategoryTheory.forget A)] :
    Condensed A :=
  StoneanCompHaus.equivalence A |>.functor.obj {
    val := F
    cond := by
      apply isSheaf_coherent_of_projective_of_comp F (CategoryTheory.forget A)
      rw [isSheaf_iff_preservesFiniteProducts_of_projective]
      exact ⟨fun _ ↦ inferInstance⟩ }

/--
The condensed object associated to a presheaf on `Profinite` which preserves finite products and
satisfies the equalizer condition.
-/
noncomputable def ofSheafProfinite
    [∀ X, HasLimitsOfShape (StructuredArrow X profiniteToCompHaus.op) A]
    (F : Profinite.{u}ᵒᵖ ⥤ A) [PreservesFiniteProducts F]
    (hF : EqualizerCondition F) : Condensed A :=
  ProfiniteCompHaus.equivalence A |>.functor.obj {
    val := F
    cond := by
      rw [isSheaf_iff_preservesFiniteProducts_and_equalizerCondition F]
      exact ⟨⟨fun _ ↦ inferInstance⟩, hF⟩ }

/--
The condensed object associated to a presheaf on `Profinite` whose postcomposition with the
forgetful functor preserves finite products and satisfies the equalizer condition.
-/
noncomputable def ofSheafForgetProfinite
    [∀ X, HasLimitsOfShape (StructuredArrow X profiniteToCompHaus.op) A]
    [HasForget A] [ReflectsFiniteLimits (CategoryTheory.forget A)]
    (F : Profinite.{u}ᵒᵖ ⥤ A) [PreservesFiniteProducts (F ⋙ CategoryTheory.forget A)]
    (hF : EqualizerCondition (F ⋙ CategoryTheory.forget A)) :
    Condensed A :=
  ProfiniteCompHaus.equivalence A |>.functor.obj {
    val := F
    cond := by
      apply isSheaf_coherent_of_hasPullbacks_of_comp F (CategoryTheory.forget A)
      rw [isSheaf_iff_preservesFiniteProducts_and_equalizerCondition]
      exact ⟨⟨fun _ ↦ inferInstance⟩, hF⟩ }

/--
The condensed object associated to a presheaf on `CompHaus` which preserves finite products and
satisfies the equalizer condition.
-/
noncomputable def ofSheafCompHaus
    (F : CompHaus.{u}ᵒᵖ ⥤ A) [PreservesFiniteProducts F]
    (hF : EqualizerCondition F) : Condensed A where
  val := F
  cond := by
    rw [isSheaf_iff_preservesFiniteProducts_and_equalizerCondition F]
    exact ⟨⟨fun _ ↦ inferInstance⟩, hF⟩

/--
The condensed object associated to a presheaf on `CompHaus` whose postcomposition with the
forgetful functor preserves finite products and satisfies the equalizer condition.
-/
noncomputable def ofSheafForgetCompHaus
    [HasForget A] [ReflectsFiniteLimits (CategoryTheory.forget A)]
    (F : CompHaus.{u}ᵒᵖ ⥤ A) [PreservesFiniteProducts (F ⋙ CategoryTheory.forget A)]
    (hF : EqualizerCondition (F ⋙ CategoryTheory.forget A)) : Condensed A where
  val := F
  cond := by
    apply isSheaf_coherent_of_hasPullbacks_of_comp F (CategoryTheory.forget A)
    rw [isSheaf_iff_preservesFiniteProducts_and_equalizerCondition]
    exact ⟨⟨fun _ ↦ inferInstance⟩, hF⟩

/-- A condensed object satisfies the equalizer condition. -/
theorem equalizerCondition (X : Condensed A) : EqualizerCondition X.val :=
  isSheaf_iff_preservesFiniteProducts_and_equalizerCondition X.val |>.mp X.cond |>.2

/-- A condensed object preserves finite products. -/
noncomputable instance (X : Condensed A) : PreservesFiniteProducts X.val :=
  isSheaf_iff_preservesFiniteProducts_and_equalizerCondition X.val |>.mp
    X.cond |>.1

/-- A condensed object regarded as a sheaf on `Profinite` preserves finite products. -/
noncomputable instance (X : Sheaf (coherentTopology Profinite.{u}) A) :
    PreservesFiniteProducts X.val :=
  isSheaf_iff_preservesFiniteProducts_and_equalizerCondition X.val |>.mp
    X.cond |>.1

/-- A condensed object regarded as a sheaf on `Profinite` satisfies the equalizer condition. -/
theorem equalizerCondition_profinite (X : Sheaf (coherentTopology Profinite.{u}) A) :
    EqualizerCondition X.val :=
  isSheaf_iff_preservesFiniteProducts_and_equalizerCondition X.val |>.mp X.cond |>.2

/-- A condensed object regarded as a sheaf on `Stonean` preserves finite products. -/
noncomputable instance (X : Sheaf (coherentTopology Stonean.{u}) A) :
    PreservesFiniteProducts X.val :=
  isSheaf_iff_preservesFiniteProducts_of_projective X.val |>.mp X.cond

end Condensed

namespace CondensedSet

/-- A `CondensedSet` version of `Condensed.ofSheafStonean`. -/
noncomputable abbrev ofSheafStonean (F : Stonean.{u}ᵒᵖ ⥤ Type (u + 1)) [PreservesFiniteProducts F] :
    CondensedSet :=
  Condensed.ofSheafStonean F

/-- A `CondensedSet` version of `Condensed.ofSheafProfinite`. -/
noncomputable abbrev ofSheafProfinite (F : Profinite.{u}ᵒᵖ ⥤ Type (u + 1))
    [PreservesFiniteProducts F] (hF : EqualizerCondition F) : CondensedSet :=
  Condensed.ofSheafProfinite F hF

/-- A `CondensedSet` version of `Condensed.ofSheafCompHaus`. -/
noncomputable abbrev ofSheafCompHaus (F : CompHaus.{u}ᵒᵖ ⥤ Type (u + 1))
    [PreservesFiniteProducts F] (hF : EqualizerCondition F) : CondensedSet :=
  Condensed.ofSheafCompHaus F hF

end CondensedSet

namespace CondensedMod

variable (R : Type (u + 1)) [Ring R]

/-- A `CondensedMod` version of `Condensed.ofSheafStonean`. -/
noncomputable abbrev ofSheafStonean (F : Stonean.{u}ᵒᵖ ⥤ ModuleCat.{u + 1} R)
    [PreservesFiniteProducts F] : CondensedMod R :=
  haveI : HasLimitsOfSize.{u, u + 1} (ModuleCat R) :=
    hasLimitsOfSizeShrink.{u, u + 1, u + 1, u + 1} _
  Condensed.ofSheafStonean F

/-- A `CondensedMod` version of `Condensed.ofSheafProfinite`. -/
noncomputable abbrev ofSheafProfinite (F : Profinite.{u}ᵒᵖ ⥤ ModuleCat.{u + 1} R)
    [PreservesFiniteProducts F] (hF : EqualizerCondition F) : CondensedMod R :=
  haveI : HasLimitsOfSize.{u, u + 1} (ModuleCat R) :=
    hasLimitsOfSizeShrink.{u, u + 1, u + 1, u + 1} _
  Condensed.ofSheafProfinite F hF

/-- A `CondensedMod` version of `Condensed.ofSheafCompHaus`. -/
noncomputable abbrev ofSheafCompHaus (F : CompHaus.{u}ᵒᵖ ⥤ ModuleCat.{u + 1} R)
    [PreservesFiniteProducts F] (hF : EqualizerCondition F) : CondensedMod R :=
  Condensed.ofSheafCompHaus F hF

end CondensedMod
```
