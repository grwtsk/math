# Complete source: GRWTSK.Algebra.ExtendToLocalization.Variant94071c399e3c0fc17d5541436593bce7ec6990fd2748f51ca35f5d597d43c77b

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b8fb59bded8147af980fd72021c6d1cb8cd0c945` · SHA-256 `203ff0e4aee32d49253578e643392c1a68fc81a606d6f4e687e0e0fe0146592b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.ValuationExtendToLocalization.Variantf8317a5d16860eca1a1b143183f1fc063450f9be57990d07babc81b5329a8785","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"f8317a5d16860eca1a1b143183f1fc063450f9be57990d07babc81b5329a8785","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.RingsAndFields.SourceCorpus.ValuationExtendToLocalization.Variantf8317a5d16860eca1a1b143183f1fc063450f9be57990d07babc81b5329a8785","mathematical_subject":"Algebra.RingsAndFields","original_sha256":"f8317a5d16860eca1a1b143183f1fc063450f9be57990d07babc81b5329a8785","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/RingTheory/Valuation/ExtendToLocalization.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Adam Topaz. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Adam Topaz
-/
import Mathlib.RingTheory.Localization.Defs
import Mathlib.RingTheory.Valuation.Basic

/-!

# Extending valuations to a localization

We show that, given a valuation `v` taking values in a linearly ordered commutative *group*
with zero `Γ`, and a submonoid `S` of `v.supp.primeCompl`, the valuation `v` can be naturally
extended to the localization `S⁻¹A`.

-/



namespace GRWTSK.Algebra.ValuationExtendToLocalization.Variantf8317a5d16860eca1a1b143183f1fc063450f9be57990d07babc81b5329a8785

variable {A : Type*} [CommRing A] {Γ : Type*} [LinearOrderedCommGroupWithZero Γ]
  (v : Valuation A Γ) {S : Submonoid A} (hS : S ≤ v.supp.primeCompl) (B : Type*) [CommRing B]
  [Algebra A B] [IsLocalization S B]

/-- We can extend a valuation `v` on a ring to a localization at a submonoid of
the complement of `v.supp`. -/
noncomputable def Valuation.extendToLocalization : Valuation B Γ :=
  let f := IsLocalization.toLocalizationMap S B
  let h : ∀ s : S, IsUnit (v.1.toMonoidHom s) := fun s => isUnit_iff_ne_zero.2 (hS s.2)
  { f.lift h with
    map_zero' := by convert f.lift_eq (P := Γ) _ 0 <;> simp [f]
    map_add_le_max' := fun x y => by
      obtain ⟨a, b, s, rfl, rfl⟩ : ∃ (a b : A) (s : S), f.mk' a s = x ∧ f.mk' b s = y := by
        obtain ⟨a, s, rfl⟩ := f.mk'_surjective x
        obtain ⟨b, t, rfl⟩ := f.mk'_surjective y
        use a * t, b * s, s * t
        constructor <;>
          · rw [f.mk'_eq_iff_eq, Submonoid.coe_mul]
            ring_nf
      convert_to f.lift h (f.mk' (a + b) s) ≤ max (f.lift h _) (f.lift h _)
      · refine congr_arg (f.lift h) (IsLocalization.eq_mk'_iff_mul_eq.2 ?_)
        rw [add_mul, map_add]
        rw [← IsLocalization.toLocalizationMap_toMap_apply S B, f.mk'_spec, f.mk'_spec,
          IsLocalization.toLocalizationMap_toMap_apply,
          IsLocalization.toLocalizationMap_toMap_apply]
      iterate 3 rw [f.lift_mk']
      rw [max_mul_mul_right]
      apply mul_le_mul_right' (v.map_add a b) }

@[simp]
theorem Valuation.extendToLocalization_mk' (x : A) (y : S) :
    (v.extendToLocalization hS B) (IsLocalization.mk' _ x y) =
      v x * (v y)⁻¹ :=
  (Submonoid.LocalizationMap.lift_mk' _ _ _ _).trans (by simp [IsUnit.coe_liftRight])

@[simp]
theorem Valuation.extendToLocalization_apply_map_apply (a : A) :
    v.extendToLocalization hS B (algebraMap A B a) = v a :=
  Submonoid.LocalizationMap.lift_eq _ _ a
```
