# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Kernels.Variant6c31259a635dbe9f3590d918d9d7a32d7b2c13a713880544981e3808b770a105

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `4c41870abe50f2ff84aa3c4b95bb08c6f7f51304` · SHA-256 `4b1021a0a1ea0ed5d1976ec945e26930dcdd37f344ed5f79637ae7047717cd4a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.KerIsKernel.Variant902a16f25cbf3caee920bfcc8f2bfe1b27244584844c0d16a1afd320982b584f","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"902a16f25cbf3caee920bfcc8f2bfe1b27244584844c0d16a1afd320982b584f","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.KerIsKernel.Variant902a16f25cbf3caee920bfcc8f2bfe1b27244584844c0d16a1afd320982b584f","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"902a16f25cbf3caee920bfcc8f2bfe1b27244584844c0d16a1afd320982b584f","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/CategoryTheory/Limits/FunctorCategory/Shapes/Kernels.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Yaël Dillies, Joël Riou. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Yaël Dillies, Joël Riou
-/
module

public import Mathlib.CategoryTheory.Limits.FunctorCategory.Basic
public import Mathlib.CategoryTheory.Limits.Preserves.Shapes.Kernels

/-!
# (Co)kernels in functor categories
-/


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.KerIsKernel.Variant902a16f25cbf3caee920bfcc8f2bfe1b27244584844c0d16a1afd320982b584f

@[expose] public section

namespace CategoryTheory.Limits
variable (J C : Type*) [Category* J] [Category* C] [HasZeroMorphisms C]

/-- The kernel inclusion is itself a kernel in the functor category. -/
noncomputable def kerIsKernel [HasKernels C] :
    IsLimit (KernelFork.ofι (ker.ι C) (ker.condition C)) :=
  evaluationJointlyReflectsLimits _ fun f ↦ (KernelFork.isLimitMapConeEquiv ..).2 <|
    (kernelIsKernel f.hom).ofIsoLimit <| Fork.ext <| .refl _

/-- The cokernel projection is itself a cokernel in the functor category. -/
noncomputable def cokerIsCokernel [HasCokernels C] :
    IsColimit (CokernelCofork.ofπ (coker.π C) (coker.condition C)) :=
  evaluationJointlyReflectsColimits _ fun f ↦ (CokernelCofork.isColimitMapCoconeEquiv ..).2 <|
    (cokernelIsCokernel f.hom).ofIsoColimit <| Cofork.ext <| .refl _

variable {J C} {F₁ F₂ : J ⥤ C} (f : F₁ ⟶ F₂)

lemma hasKernel_of_hasKernel_app [∀ j, HasKernel (f.app j)] : HasKernel f :=
  have (j : J) : HasLimit ((parallelPair f 0).flip.obj j) :=
    hasLimit_of_iso (F := parallelPair (f.app j) 0)
      (parallelPair.ext (Iso.refl _) (Iso.refl _))
  functorCategoryHasLimit _

lemma hasCokernel_of_hasCokernel_app [∀ j, HasCokernel (f.app j)] : HasCokernel f :=
  have (j : J) : HasColimit ((parallelPair f 0).flip.obj j) :=
    hasColimit_of_iso (F := parallelPair (f.app j) 0)
      (parallelPair.ext (Iso.refl _) (Iso.refl _))
  functorCategoryHasColimit _

lemma evaluation_preservesLimit_of_hasKernel_app [∀ j, HasKernel (f.app j)] (j : J) :
    PreservesLimit (parallelPair f 0) ((evaluation _ _).obj j) :=
  have (j : J) : HasLimit ((parallelPair f 0).flip.obj j) :=
    hasLimit_of_iso (F := parallelPair (f.app j) 0)
      (parallelPair.ext (Iso.refl _) (Iso.refl _))
  preservesLimit_of_preserves_limit_cone
    (combinedIsLimit (F := parallelPair f 0)
      (fun j ↦ getLimitCone ((parallelPair f 0).flip.obj j)))
    (limit.isLimit _)

lemma evaluation_preservesColimit_of_hasCokernel_app [∀ j, HasCokernel (f.app j)] (j : J) :
    PreservesColimit (parallelPair f 0) ((evaluation _ _).obj j) :=
  have (j : J) : HasColimit ((parallelPair f 0).flip.obj j) :=
    hasColimit_of_iso (F := parallelPair (f.app j) 0)
      (parallelPair.ext (Iso.refl _) (Iso.refl _))
  preservesColimit_of_preserves_colimit_cocone
    (combinedIsColimit (F := parallelPair f 0)
      (fun j ↦ getColimitCocone ((parallelPair f 0).flip.obj j)))
    (colimit.isColimit _)

end CategoryTheory.Limits
```
