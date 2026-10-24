# Complete source: GRWTSK.Algebra.ExtendToLocalization.Varianta1ea9e32abe7cc1c9f12e2adb3932da1f04c56fd188d7dbef4eb53ea9ca2633b

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `bdf42f7692845f4f7b32b96acd5d8964bfef2c64` · SHA-256 `6831f325603974e2f65cfa4e4573d5fffae6c773fe315718278e69bebe862672`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.ValuationExtendToLocalization.Variant6723b0f4b4ac97e90bc39bec59ea31e1a72705fe6b4155fcdf025fd208d485a5","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"6723b0f4b4ac97e90bc39bec59ea31e1a72705fe6b4155fcdf025fd208d485a5","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.RingsAndFields.SourceCorpus.ValuationExtendToLocalization.Variant6723b0f4b4ac97e90bc39bec59ea31e1a72705fe6b4155fcdf025fd208d485a5","mathematical_subject":"Algebra.RingsAndFields","original_sha256":"6723b0f4b4ac97e90bc39bec59ea31e1a72705fe6b4155fcdf025fd208d485a5","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/RingTheory/Valuation/ExtendToLocalization.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Adam Topaz. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Adam Topaz
-/
module

public import Mathlib.RingTheory.Localization.Defs
public import Mathlib.RingTheory.Valuation.Basic

/-!

# Extending valuations to a localization

We show that, given a valuation `v` taking values in a linearly ordered commutative *group*
with zero `Γ`, and a submonoid `S` of `v.supp.primeCompl`, the valuation `v` can be naturally
extended to the localization `S⁻¹A`.

-/


namespace GRWTSK.Algebra.ValuationExtendToLocalization.Variant6723b0f4b4ac97e90bc39bec59ea31e1a72705fe6b4155fcdf025fd208d485a5

@[expose] public section


variable {A : Type*} [CommRing A] {Γ : Type*} [LinearOrderedCommGroupWithZero Γ]
  (v : Valuation A Γ) {S : Submonoid A} (hS : S ≤ v.supp.primeCompl) (B : Type*) [CommRing B]
  [Algebra A B] [IsLocalization S B]

/-- We can extend a valuation `v` on a ring to a localization at a submonoid of
the complement of `v.supp`. -/
noncomputable def Valuation.extendToLocalization : Valuation B Γ :=
  let f := IsLocalization.toLocalizationMap S B
  let h : ∀ s : S, IsUnit (v.1.toMonoidHom s) := fun s => isUnit_iff_ne_zero.2 (hS s.2)
  { f.lift h with
    map_zero' := by convert! f.lift_eq (P := Γ) _ 0 <;> simp [f]
    map_add_le_max' := fun x y => by
      obtain ⟨a, b, s, rfl, rfl⟩ : ∃ (a b : A) (s : S), f.mk' a s = x ∧ f.mk' b s = y := by
        obtain ⟨a, s, rfl⟩ := f.mk'_surjective x
        obtain ⟨b, t, rfl⟩ := f.mk'_surjective y
        use a * t, b * s, s * t
        constructor <;>
          · rw [f.mk'_eq_iff_eq, Submonoid.coe_mul]
            ring_nf
      convert_to! f.lift h (f.mk' (a + b) s) ≤ max (f.lift h _) (f.lift h _)
      · refine congr_arg (f.lift h) (IsLocalization.eq_mk'_iff_mul_eq.2 ?_)
        rw [add_mul, map_add]
        rw [← IsLocalization.toLocalizationMap_apply S B, f.mk'_spec, f.mk'_spec,
          IsLocalization.toLocalizationMap_apply,
          IsLocalization.toLocalizationMap_apply]
      iterate 3 rw [f.lift_mk']
      dsimp
      grw [max_mul_mul_right, v.map_add a b] }

@[simp]
theorem Valuation.extendToLocalization_mk' (x : A) (y : S) :
    (v.extendToLocalization hS B) (IsLocalization.mk' _ x y) = v x * (v y)⁻¹ :=
  (Submonoid.LocalizationMap.lift_mk' _ _ _ _).trans (by
    simp [IsUnit.coe_liftRight (v.toMonoidWithZeroHom.domRestrict S)
      (fun y ↦ isUnit_iff_ne_zero.2 (hS y.2)) y])

@[simp]
theorem Valuation.extendToLocalization_apply_map_apply (a : A) :
    v.extendToLocalization hS B (algebraMap A B a) = v a :=
  Submonoid.LocalizationMap.lift_eq _ _ a
```
