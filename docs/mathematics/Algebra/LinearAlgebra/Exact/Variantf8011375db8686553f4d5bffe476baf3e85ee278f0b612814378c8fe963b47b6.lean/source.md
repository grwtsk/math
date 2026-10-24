# Complete source: GRWTSK.Algebra.LinearAlgebra.Exact.Variantf8011375db8686553f4d5bffe476baf3e85ee278f0b612814378c8fe963b47b6

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `10b2629f8bc19ef7afa412f8ee2e29a5fe9224e2` · SHA-256 `3d9808d658064c61ea84928b3cb0b4935b706e0d9fcca6006c1a95d42987b1c5`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.LinearAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.LinearAlgebra.LocalizedModuleMapExact.Variantf26cee6d3e7e8f4ae64e1fd7f3e994df8b7598d359f7db9466a85f5045cb582e","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"f26cee6d3e7e8f4ae64e1fd7f3e994df8b7598d359f7db9466a85f5045cb582e","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.LinearAlgebra.SourceCorpus.LocalizedModuleMapExact.Variantf26cee6d3e7e8f4ae64e1fd7f3e994df8b7598d359f7db9466a85f5045cb582e","mathematical_subject":"Algebra.LinearAlgebra","original_sha256":"f26cee6d3e7e8f4ae64e1fd7f3e994df8b7598d359f7db9466a85f5045cb582e","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Algebra/Module/LocalizedModule/Exact.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Jujian Zhang. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Andrew Yang, Jujian Zhang
-/
import Mathlib.Algebra.Exact
import Mathlib.Algebra.Module.LocalizedModule.Basic

/-!
# Localization of modules is an exact functor

## Main definitions

- `LocalizedModule.map_exact`: Localization of modules is an exact functor.
- `IsLocalizedModule.map_exact`: A variant expressed in terms of `IsLocalizedModule`.

-/


namespace GRWTSK.Algebra.LinearAlgebra.LocalizedModuleMapExact.Variantf26cee6d3e7e8f4ae64e1fd7f3e994df8b7598d359f7db9466a85f5045cb582e

section

open IsLocalizedModule Function Submonoid

variable {R : Type*} [CommSemiring R] (S : Submonoid R)
variable {M₀ M₀'} [AddCommMonoid M₀] [AddCommMonoid M₀'] [Module R M₀] [Module R M₀']
variable (f₀ : M₀ →ₗ[R] M₀') [IsLocalizedModule S f₀]
variable {M₁ M₁'} [AddCommMonoid M₁] [AddCommMonoid M₁'] [Module R M₁] [Module R M₁']
variable (f₁ : M₁ →ₗ[R] M₁') [IsLocalizedModule S f₁]
variable {M₂ M₂'} [AddCommMonoid M₂] [AddCommMonoid M₂'] [Module R M₂] [Module R M₂']
variable (f₂ : M₂ →ₗ[R] M₂') [IsLocalizedModule S f₂]

/-- Localization of modules is an exact functor, proven here for `LocalizedModule`.
See `IsLocalizedModule.map_exact` for the more general version. -/
lemma LocalizedModule.map_exact (g : M₀ →ₗ[R] M₁) (h : M₁ →ₗ[R] M₂) (ex : Exact g h) :
    Exact (map S (mkLinearMap S M₀) (mkLinearMap S M₁) g)
    (map S (mkLinearMap S M₁) (mkLinearMap S M₂) h) :=
  fun y ↦ Iff.intro
    (induction_on
      (fun m s hy ↦ by
        rw [map_LocalizedModules, ← zero_mk 1, mk_eq, one_smul, smul_zero] at hy
        obtain ⟨a, aS, ha⟩ := Subtype.exists.1 hy
        rw [smul_zero, mk_smul, ← LinearMap.map_smul, ex (a • m)] at ha
        rcases ha with ⟨x, hx⟩
        use mk x (⟨a, aS⟩ * s)
        rw [map_LocalizedModules, hx, ← mk_cancel_common_left ⟨a, aS⟩ s m, mk_smul])
      y)
    fun ⟨x, hx⟩ ↦ by
      revert hx
      refine induction_on (fun m s hx ↦ ?_) x
      rw [← hx, map_LocalizedModules, map_LocalizedModules, (ex (g m)).2 ⟨m, rfl⟩, zero_mk]

/-- Localization of modules is an exact functor. -/
theorem IsLocalizedModule.map_exact (g : M₀ →ₗ[R] M₁) (h : M₁ →ₗ[R] M₂) (ex : Function.Exact g h) :
    Function.Exact (map S f₀ f₁ g) (map S f₁ f₂ h) :=
  Function.Exact.of_ladder_linearEquiv_of_exact
    (map_iso_commute S f₀ f₁ g) (map_iso_commute S f₁ f₂ h) (LocalizedModule.map_exact S g h ex)

end
```
