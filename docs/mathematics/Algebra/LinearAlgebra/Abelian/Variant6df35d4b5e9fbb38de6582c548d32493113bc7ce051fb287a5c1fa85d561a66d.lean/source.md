# Complete source: GRWTSK.Algebra.LinearAlgebra.Abelian.Variant6df35d4b5e9fbb38de6582c548d32493113bc7ce051fb287a5c1fa85d561a66d

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e932ec6d5942f13c26cdce5c7e6db0d7e85eade6` · SHA-256 `635f6c04e62d4a47a904d073d046c37a1e21197f1559e0eb0bf4f3eaa1a81c93`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

````lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.LinearAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.LinearAlgebra.NormalMono.Variantb2c581d33c2abb1bc3f16de8408e704791c43e2205bc3c8f562db15c22f8b7fc","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"b2c581d33c2abb1bc3f16de8408e704791c43e2205bc3c8f562db15c22f8b7fc","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.LinearAlgebra.SourceCorpus.NormalMono.Variantb2c581d33c2abb1bc3f16de8408e704791c43e2205bc3c8f562db15c22f8b7fc","mathematical_subject":"Algebra.LinearAlgebra","original_sha256":"b2c581d33c2abb1bc3f16de8408e704791c43e2205bc3c8f562db15c22f8b7fc","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Algebra/Category/ModuleCat/Abelian.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2020 Markus Himmel. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Markus Himmel
-/
import Mathlib.LinearAlgebra.Isomorphisms
import Mathlib.Algebra.Category.ModuleCat.Kernels
import Mathlib.Algebra.Category.ModuleCat.Limits
import Mathlib.CategoryTheory.Abelian.Basic

/-!
# The category of left R-modules is abelian.

Additionally, two linear maps are exact in the categorical sense iff `range f = ker g`.
-/



namespace GRWTSK.Algebra.LinearAlgebra.NormalMono.Variantb2c581d33c2abb1bc3f16de8408e704791c43e2205bc3c8f562db15c22f8b7fc

open CategoryTheory

open CategoryTheory.Limits

noncomputable section

universe w v u

namespace ModuleCat

variable {R : Type u} [Ring R] {M N : ModuleCat.{v} R} (f : M ⟶ N)

/-- In the category of modules, every monomorphism is normal. -/
def normalMono (hf : Mono f) : NormalMono f where
  Z := of R (N ⧸ LinearMap.range f.hom)
  g := ofHom (LinearMap.range f.hom).mkQ
  w := hom_ext <| LinearMap.range_mkQ_comp _
  isLimit :=
    /- The following [invalid Lean code](https://github.com/leanprover-community/lean/issues/341)
        might help you understand what's going on here:
        ```
        calc
        M   ≃ₗ[R] f.ker.quotient  : (Submodule.quotEquivOfEqBot _ (ker_eq_bot_of_mono _)).symm
        ... ≃ₗ[R] f.range         : LinearMap.quotKerEquivRange f
        ... ≃ₗ[R] r.range.mkQ.ker : LinearEquiv.ofEq _ _ (Submodule.ker_mkQ _).symm
        ```
      -/
        IsKernel.isoKernel _ _ (kernelIsLimit _)
          (LinearEquiv.toModuleIso
            ((Submodule.quotEquivOfEqBot _ (ker_eq_bot_of_mono _)).symm ≪≫ₗ
              (LinearMap.quotKerEquivRange f.hom ≪≫ₗ
              LinearEquiv.ofEq _ _ (Submodule.ker_mkQ _).symm))) <| by ext; rfl

/-- In the category of modules, every epimorphism is normal. -/
def normalEpi (hf : Epi f) : NormalEpi f where
  W := of R (LinearMap.ker f.hom)
  g := ofHom (LinearMap.ker f.hom).subtype
  w := hom_ext <| LinearMap.comp_ker_subtype _
  isColimit :=
    /- The following invalid Lean code might help you understand what's going on here:
        ```
        calc f.ker.subtype.range.quotient
            ≃ₗ[R] f.ker.quotient : Submodule.quotEquivOfEq _ _ (Submodule.range_subtype _)
        ... ≃ₗ[R] f.range        : LinearMap.quotKerEquivRange f
        ... ≃ₗ[R] N              : LinearEquiv.ofTop _ (range_eq_top_of_epi _)
        ```
      -/
        IsCokernel.cokernelIso _ _ (cokernelIsColimit _)
          (LinearEquiv.toModuleIso
            (Submodule.quotEquivOfEq _ _ (Submodule.range_subtype _) ≪≫ₗ
                LinearMap.quotKerEquivRange f.hom ≪≫ₗ
              LinearEquiv.ofTop _ (range_eq_top_of_epi _))) <| by ext; rfl

/-- The category of R-modules is abelian. -/
instance abelian : Abelian (ModuleCat.{v} R) where
  has_cokernels := hasCokernels_moduleCat
  normalMonoOfMono f hf := ⟨normalMono f hf⟩
  normalEpiOfEpi f hf := ⟨normalEpi f hf⟩

section ReflectsLimits

/-- Add this instance to help Lean with universe levels. -/
instance : HasLimitsOfSize.{v,v} (ModuleCat.{max v w} R) :=
  ModuleCat.hasLimitsOfSize.{v, v, max v w}

/- We need to put this in this weird spot because we need to know that the category of modules
    is balanced. -/
instance forget_reflectsLimitsOfSize :
    ReflectsLimitsOfSize.{v, v} (forget (ModuleCat.{max v w} R)) :=
  reflectsLimits_of_reflectsIsomorphisms

instance forget₂_reflectsLimitsOfSize :
    ReflectsLimitsOfSize.{v, v} (forget₂ (ModuleCat.{max v w} R) AddCommGrp.{max v w}) :=
  reflectsLimits_of_reflectsIsomorphisms

instance forget_reflectsLimits : ReflectsLimits (forget (ModuleCat.{v} R)) :=
  ModuleCat.forget_reflectsLimitsOfSize.{v, v}

instance forget₂_reflectsLimits : ReflectsLimits (forget₂ (ModuleCat.{v} R) AddCommGrp.{v}) :=
  ModuleCat.forget₂_reflectsLimitsOfSize.{v, v}

end ReflectsLimits

end ModuleCat
````
