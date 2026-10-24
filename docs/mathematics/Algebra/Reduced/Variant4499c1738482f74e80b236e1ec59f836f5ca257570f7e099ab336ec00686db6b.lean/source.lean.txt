-- corpus-organization-transform:v1
-- Mathematical subject: Algebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.IsReducedLocalizationPreserves.Variantc6faeef95409b1c240f603b182aaa4057afc59046e8f9a8634126b671f2a975a","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"c6faeef95409b1c240f603b182aaa4057afc59046e8f9a8634126b671f2a975a","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.RingsAndFields.SourceCorpus.IsReducedLocalizationPreserves.Variantc6faeef95409b1c240f603b182aaa4057afc59046e8f9a8634126b671f2a975a","mathematical_subject":"Algebra.RingsAndFields","original_sha256":"c6faeef95409b1c240f603b182aaa4057afc59046e8f9a8634126b671f2a975a","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/RingTheory/LocalProperties/Reduced.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2021 Andrew Yang. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Andrew Yang
-/
import Mathlib.RingTheory.LocalProperties.Basic
import Mathlib.RingTheory.Nilpotent.Defs

/-!
# `IsReduced` is a local property

In this file, we prove that `IsReduced` is a local property.

## Main results

Let `R` be a commutative ring, `M` be a submonoid of `R`.

* `isReduced_localizationPreserves` :  `M⁻¹R` is reduced if `R` is reduced.
* `isReduced_ofLocalizationMaximal` : `R` is reduced if `Rₘ` is reduced for all maximal ideal `m`.

-/


namespace GRWTSK.Algebra.IsReducedLocalizationPreserves.Variantc6faeef95409b1c240f603b182aaa4057afc59046e8f9a8634126b671f2a975a

/-- `M⁻¹R` is reduced if `R` is reduced. -/
theorem isReduced_localizationPreserves : LocalizationPreserves fun R _ => IsReduced R := by
  introv R _ _
  constructor
  rintro x ⟨_ | n, e⟩
  · simpa using congr_arg (· * x) e
  obtain ⟨⟨y, m⟩, hx⟩ := IsLocalization.surj M x
  dsimp only at hx
  let hx' := congr_arg (· ^ n.succ) hx
  simp only [mul_pow, e, zero_mul, ← RingHom.map_pow] at hx'
  rw [← (algebraMap R S).map_zero] at hx'
  obtain ⟨m', hm'⟩ := (IsLocalization.eq_iff_exists M S).mp hx'
  apply_fun (· * (m' : R) ^ n) at hm'
  simp only [mul_assoc, zero_mul, mul_zero] at hm'
  rw [← mul_left_comm, ← pow_succ', ← mul_pow] at hm'
  replace hm' := IsNilpotent.eq_zero ⟨_, hm'.symm⟩
  rw [← (IsLocalization.map_units S m).mul_left_inj, hx, zero_mul,
    IsLocalization.map_eq_zero_iff M]
  exact ⟨m', by rw [← hm', mul_comm]⟩

instance {R : Type*} [CommRing R] (M : Submonoid R) [IsReduced R] : IsReduced (Localization M) :=
  isReduced_localizationPreserves M _ inferInstance

/-- `R` is reduced if `Rₘ` is reduced for all maximal ideal `m`. -/
theorem isReduced_ofLocalizationMaximal : OfLocalizationMaximal fun R _ => IsReduced R := by
  introv R h
  constructor
  intro x hx
  apply eq_zero_of_localization
  intro J hJ
  specialize h J hJ
  exact (hx.map <| algebraMap R <| Localization.AtPrime J).eq_zero
