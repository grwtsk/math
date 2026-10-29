-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.LinearAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.LinearAlgebra.KillingFormRestrictRangeAd.Variant6fe46118302d6f1e0c835ff181ac86f316aae33b5ae3eda29db741055e5c86bc","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"6fe46118302d6f1e0c835ff181ac86f316aae33b5ae3eda29db741055e5c86bc","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.LinearAlgebra.SourceCorpus.KillingFormRestrictRangeAd.Variant6fe46118302d6f1e0c835ff181ac86f316aae33b5ae3eda29db741055e5c86bc","mathematical_subject":"Algebra.LinearAlgebra","original_sha256":"6fe46118302d6f1e0c835ff181ac86f316aae33b5ae3eda29db741055e5c86bc","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Algebra/Lie/Derivation/Killing.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["scope_end_name_mismatch","scope_underflow","uncompiled_organization"],"structural_qualification":"structural_issues_retained_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Frédéric Marbach. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Frédéric Marbach
-/
import Mathlib.Algebra.Lie.Derivation.AdjointAction
import Mathlib.Algebra.Lie.Killing
import Mathlib.LinearAlgebra.BilinearForm.Orthogonal

/-!
# Derivations of finite dimensional Killing Lie algebras

This file establishes that all derivations of finite-dimensional Killing Lie algebras are inner.

## Main statements

- `LieDerivation.Killing.ad_mem_orthogonal_of_mem_orthogonal`: if a derivation `D` is in the Killing
orthogonal of the range of the adjoint action, then, for any `x : L`, `ad (D x)` is also in this
orthogonal.
- `LieDerivation.Killing.range_ad_eq_top`: in a finite-dimensional Lie algebra with non-degenerate
Killing form, the range of the adjoint action is full,
- `LieDerivation.Killing.exists_eq_ad`: in a finite-dimensional Lie algebra with non-degenerate
Killing form, any derivation is an inner derivation.
-/


namespace GRWTSK.Algebra.LinearAlgebra.KillingFormRestrictRangeAd.Variant6fe46118302d6f1e0c835ff181ac86f316aae33b5ae3eda29db741055e5c86bc

namespace LieDerivation.IsKilling

section

variable (R L : Type*) [Field R] [LieRing L] [LieAlgebra R L]

/-- A local notation for the set of (Lie) derivations on `L`. -/
local notation "𝔻" => (LieDerivation R L L)

/-- A local notation for the range of `ad`. -/
local notation "𝕀" => (LieHom.range (ad R L))

/-- A local notation for the Killing complement of the ideal range of `ad`. -/
local notation "𝕀ᗮ" => LinearMap.BilinForm.orthogonal (killingForm R 𝔻) 𝕀

lemma killingForm_restrict_range_ad [Module.Finite R L] :
    (killingForm R 𝔻).restrict 𝕀 = killingForm R 𝕀 := by
  rw [← (ad_isIdealMorphism R L).eq, ← LieIdeal.killingForm_eq]
  rfl

/-- The orthogonal complement of the inner derivations is a Lie submodule of all derivations. -/
@[simps!] noncomputable def rangeAdOrthogonal : LieSubmodule R L (LieDerivation R L L) where
  __ := 𝕀ᗮ
  lie_mem := by
    intro x D hD
    have : 𝕀ᗮ = (ad R L).idealRange.killingCompl := by simp [← (ad_isIdealMorphism R L).eq]
    change D ∈ 𝕀ᗮ at hD
    change ⁅x, D⁆ ∈ 𝕀ᗮ
    rw [this] at hD ⊢
    rw [← lie_ad]
    exact lie_mem_right _ _ (ad R L).idealRange.killingCompl _ _ hD

variable {R L}

/-- If a derivation `D` is in the Killing orthogonal of the range of the adjoint action, then, for
any `x : L`, `ad (D x)` is also in this orthogonal. -/
lemma ad_mem_orthogonal_of_mem_orthogonal {D : LieDerivation R L L} (hD : D ∈ 𝕀ᗮ) (x : L) :
    ad R L (D x) ∈ 𝕀ᗮ := by
  simp only [ad_apply_lieDerivation, LieHom.range_toSubmodule, neg_mem_iff]
  exact (rangeAdOrthogonal R L).lie_mem hD

variable [Module.Finite R L]

lemma ad_mem_ker_killingForm_ad_range_of_mem_orthogonal
    {D : LieDerivation R L L} (hD : D ∈ 𝕀ᗮ) (x : L) :
    ad R L (D x) ∈ (LinearMap.ker (killingForm R 𝕀)).map (LieHom.range (ad R L)).subtype := by
  rw [← killingForm_restrict_range_ad]
  exact LinearMap.BilinForm.inf_orthogonal_self_le_ker_restrict
    (LieModule.traceForm_isSymm R 𝔻 𝔻).isRefl ⟨by simp, ad_mem_orthogonal_of_mem_orthogonal hD x⟩

variable (R L)
variable [LieAlgebra.IsKilling R L]

@[simp] lemma ad_apply_eq_zero_iff (x : L) : ad R L x = 0 ↔ x = 0 := by
  refine ⟨fun h ↦ ?_, fun h ↦ by simp [h]⟩
  rwa [← LieHom.mem_ker, ad_ker_eq_center, LieAlgebra.center_eq_bot, LieSubmodule.mem_bot] at h

instance instIsKilling_range_ad : LieAlgebra.IsKilling R 𝕀 :=
  (LieEquiv.ofInjective (ad R L) (injective_ad_of_center_eq_bot <| by simp)).isKilling

/-- The restriction of the Killing form of a finite-dimensional Killing Lie algebra to the range of
the adjoint action is nondegenerate. -/
lemma killingForm_restrict_range_ad_nondegenerate :
    ((killingForm R 𝔻).restrict 𝕀).Nondegenerate := by
  convert LieAlgebra.IsKilling.killingForm_nondegenerate R 𝕀
  exact killingForm_restrict_range_ad R L

/-- The range of the adjoint action on a finite-dimensional Killing Lie algebra is full. -/
@[simp]
lemma range_ad_eq_top : 𝕀 = ⊤ := by
  rw [← LieSubalgebra.toSubmodule_inj]
  apply LinearMap.BilinForm.eq_top_of_restrict_nondegenerate_of_orthogonal_eq_bot
    (LieModule.traceForm_isSymm R 𝔻 𝔻).isRefl (killingForm_restrict_range_ad_nondegenerate R L)
  refine (Submodule.eq_bot_iff _).mpr fun D hD ↦ ext fun x ↦ ?_
  simpa using ad_mem_ker_killingForm_ad_range_of_mem_orthogonal hD x

variable {R L} in
/-- Every derivation of a finite-dimensional Killing Lie algebra is an inner derivation. -/
lemma exists_eq_ad (D : 𝔻) : ∃ x, ad R L x = D := by
  change D ∈ 𝕀
  rw [range_ad_eq_top R L]
  exact Submodule.mem_top

end

end IsKilling

end LieDerivation
