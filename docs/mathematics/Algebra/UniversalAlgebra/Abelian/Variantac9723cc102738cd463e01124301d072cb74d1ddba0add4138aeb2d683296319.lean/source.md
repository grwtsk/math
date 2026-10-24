# Complete source: GRWTSK.Algebra.UniversalAlgebra.Abelian.Variantac9723cc102738cd463e01124301d072cb74d1ddba0add4138aeb2d683296319

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `aa5737c918aa7e90095a5a496b799bd6e14fb12c` · SHA-256 `ce80dd4f08251a610e0581bea0b81677c9500a849f883b3482327c8494265972`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.UniversalAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.UniversalAlgebra.Colimits.Variant6cf67ac5992daf3b6d0d823f9c050e58d3004de2920a68643a7094defa6ba28b","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"6cf67ac5992daf3b6d0d823f9c050e58d3004de2920a68643a7094defa6ba28b","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.GeneralAlgebra.SourceCorpus.Colimits.Variant6cf67ac5992daf3b6d0d823f9c050e58d3004de2920a68643a7094defa6ba28b","mathematical_subject":"Algebra.GeneralAlgebra","original_sha256":"6cf67ac5992daf3b6d0d823f9c050e58d3004de2920a68643a7094defa6ba28b","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Algebra/Category/ModuleCat/Presheaf/Abelian.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Joël Riou. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Joël Riou
-/
import Mathlib.Algebra.Category.ModuleCat.Presheaf.Colimits
import Mathlib.Algebra.Category.ModuleCat.Presheaf.Limits
import Mathlib.Algebra.Category.ModuleCat.Abelian
import Mathlib.CategoryTheory.Abelian.Basic

/-!
# The category of presheaves of modules is abelian

-/


namespace GRWTSK.Algebra.UniversalAlgebra.Colimits.Variant6cf67ac5992daf3b6d0d823f9c050e58d3004de2920a68643a7094defa6ba28b

universe v v₁ u₁ u

open CategoryTheory Category Limits

namespace PresheafOfModules

variable {C : Type u₁} [Category.{v₁} C] (R : Cᵒᵖ ⥤ RingCat.{u})

noncomputable instance : IsNormalEpiCategory (PresheafOfModules.{v} R) where
  normalEpiOfEpi p _ := ⟨NormalEpi.mk _ (kernel.ι p) (kernel.condition _)
    (evaluationJointlyReflectsColimits _ _ (fun _ =>
      Abelian.isColimitMapCoconeOfCokernelCoforkOfπ _ _))⟩

noncomputable instance : IsNormalMonoCategory (PresheafOfModules.{v} R) where
  normalMonoOfMono i _ := ⟨NormalMono.mk _ (cokernel.π i) (cokernel.condition _)
    (evaluationJointlyReflectsLimits _ _ (fun _ =>
      Abelian.isLimitMapConeOfKernelForkOfι _ _))⟩

noncomputable instance : Abelian (PresheafOfModules.{v} R) where

end PresheafOfModules
```
