# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.GaussSum.Variant691fa8a9aa5aa5bd92101afdb17c0e688e9fd71f19635b03562865f6a211044a

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `292fe9d9a6816b35ec81b43de1547cae032fa227` · SHA-256 `1fc05584ef387cef6ee5026fba4757a058117f4f894f70dcf40d670193024b46`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.GaussSumAuxOfMulShift.Variant3d71ceccdee900ae671c5800c805a444933343f52c1d31dfe58c21f84d259324","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"3d71ceccdee900ae671c5800c805a444933343f52c1d31dfe58c21f84d259324","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.LFunctions.SourceCorpus.GaussSumAuxOfMulShift.Variant3d71ceccdee900ae671c5800c805a444933343f52c1d31dfe58c21f84d259324","mathematical_subject":"NumberTheory.LFunctions","original_sha256":"3d71ceccdee900ae671c5800c805a444933343f52c1d31dfe58c21f84d259324","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/NumberTheory/DirichletCharacter/GaussSum.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 David Loeffler. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: David Loeffler
-/
import Mathlib.NumberTheory.DirichletCharacter.Basic
import Mathlib.NumberTheory.GaussSum

/-!
# Gauss sums for Dirichlet characters
-/

namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.GaussSumAuxOfMulShift.Variant3d71ceccdee900ae671c5800c805a444933343f52c1d31dfe58c21f84d259324

variable {N : ℕ} [NeZero N] {R : Type*} [CommRing R] (e : AddChar (ZMod N) R)

open AddChar DirichletCharacter

lemma gaussSum_aux_of_mulShift (χ : DirichletCharacter R N) {d : ℕ}
    (hd : d ∣ N) (he : e.mulShift d = 1) {u : (ZMod N)ˣ} (hu : ZMod.unitsMap hd u = 1) :
    χ u * gaussSum χ e = gaussSum χ e := by
  suffices e.mulShift u = e by conv_lhs => rw [← this, gaussSum_mulShift]
  rw [(by ring : u.val = (u - 1) + 1), ← mulShift_mul, mulShift_one, mul_eq_right]
  rsuffices ⟨a, ha⟩ : (d : ℤ) ∣ (u.val.val - 1 : ℤ)
  · have : u.val - 1 = ↑(u.val.val - 1 : ℤ) := by simp only [ZMod.natCast_val, Int.cast_sub,
      ZMod.intCast_cast, ZMod.cast_id', id_eq, Int.cast_one]
    rw [this, ha]
    ext1 y
    simpa only [Int.cast_mul, Int.cast_natCast, mulShift_apply, mul_assoc, one_apply]
      using DFunLike.ext_iff.mp he (a * y)
  rw [← Units.eq_iff, Units.val_one, ZMod.unitsMap_def, Units.coe_map] at hu
  have : ZMod.castHom hd (ZMod d) u.val = ((u.val.val : ℤ) : ZMod d) := by simp
  rwa [MonoidHom.coe_coe, this, ← Int.cast_one, eq_comm,
    ZMod.intCast_eq_intCast_iff_dvd_sub] at hu

/-- If `gaussSum χ e ≠ 0`, and `d` is such that `e.mulShift d = 1`, then `χ` must factor through
`d`. (This will be used to show that Gauss sums vanish when `χ` is primitive and `e` is not.) -/
lemma factorsThrough_of_gaussSum_ne_zero [IsDomain R] {χ : DirichletCharacter R N} {d : ℕ}
    (hd : d ∣ N) (he : e.mulShift d = 1) (h_ne : gaussSum χ e ≠ 0) :
    χ.FactorsThrough d := by
  rw [DirichletCharacter.factorsThrough_iff_ker_unitsMap hd]
  intro u hu
  rw [MonoidHom.mem_ker, ← Units.eq_iff, MulChar.coe_toUnitHom]
  simpa only [Units.val_one, ne_eq, h_ne, not_false_eq_true, mul_eq_right₀] using
    gaussSum_aux_of_mulShift e χ hd he hu

/-- If `χ` is primitive, but `e` is not, then `gaussSum χ e = 0`. -/
lemma gaussSum_eq_zero_of_isPrimitive_of_not_isPrimitive [IsDomain R]
    {χ : DirichletCharacter R N} (hχ : IsPrimitive χ) (he : ¬IsPrimitive e) :
    gaussSum χ e = 0 := by
  contrapose! hχ
  rcases e.exists_divisor_of_not_isPrimitive he with ⟨d, hd₁, hd₂, hed⟩
  have : χ.conductor ≤ d := Nat.sInf_le <| factorsThrough_of_gaussSum_ne_zero e hd₁ hed hχ
  exact (this.trans_lt hd₂).ne

/-- If `χ` is a primitive character, then the function `a ↦ gaussSum χ (e.mulShift a)`, for any
fixed additive character `e`, is a constant multiple of `χ⁻¹`. -/
lemma gaussSum_mulShift_of_isPrimitive [IsDomain R] {χ : DirichletCharacter R N}
    (hχ : IsPrimitive χ) (a : ZMod N) :
    gaussSum χ (e.mulShift a) = χ⁻¹ a * gaussSum χ e := by
  by_cases ha : IsUnit a
  · conv_rhs => rw [← gaussSum_mulShift χ e ha.unit]
    rw [IsUnit.unit_spec, MulChar.inv_apply_eq_inv, Ring.inverse_mul_cancel_left _ _ (ha.map χ)]
  · rw [MulChar.map_nonunit _ ha, zero_mul]
    exact gaussSum_eq_zero_of_isPrimitive_of_not_isPrimitive _ hχ (not_isPrimitive_mulShift e ha)
```
