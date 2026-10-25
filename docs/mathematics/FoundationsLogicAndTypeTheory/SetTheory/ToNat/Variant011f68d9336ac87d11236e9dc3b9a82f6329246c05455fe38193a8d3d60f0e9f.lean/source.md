# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.SetTheory.ToNat.Variant011f68d9336ac87d11236e9dc3b9a82f6329246c05455fe38193a8d3d60f0e9f

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6d55f33ad26f9027d592cc71005a4fabad4d2f4f` · SHA-256 `cd36f23330034d3f6f55cc5f306755a5e28f29c4b3396a1367d9569007f08e00`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.SetTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.SetTheory.ToNat.Variant7b727c9cc0a498d320946a6eb5247a80ea5fb198b7587980108b16df5c1340f8","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"7b727c9cc0a498d320946a6eb5247a80ea5fb198b7587980108b16df5c1340f8","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Logic.SetTheory.SourceCorpus.ToNat.Variant7b727c9cc0a498d320946a6eb5247a80ea5fb198b7587980108b16df5c1340f8","mathematical_subject":"Logic.SetTheory","original_sha256":"7b727c9cc0a498d320946a6eb5247a80ea5fb198b7587980108b16df5c1340f8","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/SetTheory/Cardinal/ToNat.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2021 Aaron Anderson. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Aaron Anderson
-/
import Mathlib.SetTheory.Cardinal.ENat

/-!
# Projection from cardinal numbers to natural numbers

In this file we define `Cardinal.toNat` to be the natural projection `Cardinal → ℕ`,
sending all infinite cardinals to zero.
We also prove basic lemmas about this definition.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.SetTheory.ToNat.Variant7b727c9cc0a498d320946a6eb5247a80ea5fb198b7587980108b16df5c1340f8

assert_not_exists Field

universe u v
open Function Set

namespace Cardinal

variable {α : Type u} {c d : Cardinal.{u}}

/-- This function sends finite cardinals to the corresponding natural, and infinite cardinals
  to 0. -/
noncomputable def toNat : Cardinal →*₀ ℕ :=
  ENat.toNatHom.comp toENat

@[simp] lemma toNat_toENat (a : Cardinal) : ENat.toNat (toENat a) = toNat a := rfl

@[simp]
theorem toNat_ofENat (n : ℕ∞) : toNat n = ENat.toNat n :=
  congr_arg ENat.toNat <| toENat_ofENat n

@[simp, norm_cast] theorem toNat_natCast (n : ℕ) : toNat n = n := toNat_ofENat n

@[simp]
lemma toNat_eq_zero : toNat c = 0 ↔ c = 0 ∨ ℵ₀ ≤ c := by
  rw [← toNat_toENat, ENat.toNat_eq_zero, toENat_eq_zero, toENat_eq_top]

lemma toNat_ne_zero : toNat c ≠ 0 ↔ c ≠ 0 ∧ c < ℵ₀ := by simp [not_or]
@[simp] lemma toNat_pos : 0 < toNat c ↔ c ≠ 0 ∧ c < ℵ₀ := pos_iff_ne_zero.trans toNat_ne_zero

theorem cast_toNat_of_lt_aleph0 {c : Cardinal} (h : c < ℵ₀) : ↑(toNat c) = c := by
  lift c to ℕ using h
  rw [toNat_natCast]

theorem toNat_apply_of_lt_aleph0 {c : Cardinal.{u}} (h : c < ℵ₀) :
    toNat c = Classical.choose (lt_aleph0.1 h) :=
  Nat.cast_injective (R := Cardinal.{u}) <| by
    rw [cast_toNat_of_lt_aleph0 h, ← Classical.choose_spec (lt_aleph0.1 h)]

theorem toNat_apply_of_aleph0_le {c : Cardinal} (h : ℵ₀ ≤ c) : toNat c = 0 := by simp [h]

theorem cast_toNat_of_aleph0_le {c : Cardinal} (h : ℵ₀ ≤ c) : ↑(toNat c) = (0 : Cardinal) := by
  rw [toNat_apply_of_aleph0_le h, Nat.cast_zero]

theorem cast_toNat_eq_iff_lt_aleph0 {c : Cardinal} : (toNat c) = c ↔ c < ℵ₀ := by
  constructor
  · intro h; by_contra h'; rw [not_lt] at h'
    rw [toNat_apply_of_aleph0_le h'] at h; rw [← h] at h'
    absurd h'; rw [not_le]; exact nat_lt_aleph0 0
  · exact fun h ↦ (Cardinal.cast_toNat_of_lt_aleph0 h)

theorem toNat_strictMonoOn : StrictMonoOn toNat (Iio ℵ₀) := by
  simp only [← range_natCast, StrictMonoOn, forall_mem_range, toNat_natCast, Nat.cast_lt]
  exact fun _ _ ↦ id

theorem toNat_monotoneOn : MonotoneOn toNat (Iio ℵ₀) := toNat_strictMonoOn.monotoneOn

theorem toNat_injOn : InjOn toNat (Iio ℵ₀) := toNat_strictMonoOn.injOn

/-- Two finite cardinals are equal
iff they are equal their `Cardinal.toNat` projections are equal. -/
theorem toNat_inj_of_lt_aleph0 (hc : c < ℵ₀) (hd : d < ℵ₀) :
    toNat c = toNat d ↔ c = d :=
  toNat_injOn.eq_iff hc hd

@[deprecated (since := "2024-12-29")] alias toNat_eq_iff_eq_of_lt_aleph0 := toNat_inj_of_lt_aleph0

theorem toNat_le_iff_le_of_lt_aleph0 (hc : c < ℵ₀) (hd : d < ℵ₀) :
    toNat c ≤ toNat d ↔ c ≤ d :=
  toNat_strictMonoOn.le_iff_le hc hd

theorem toNat_lt_iff_lt_of_lt_aleph0 (hc : c < ℵ₀) (hd : d < ℵ₀) :
    toNat c < toNat d ↔ c < d :=
  toNat_strictMonoOn.lt_iff_lt hc hd

@[gcongr]
theorem toNat_le_toNat (hcd : c ≤ d) (hd : d < ℵ₀) : toNat c ≤ toNat d :=
  toNat_monotoneOn (hcd.trans_lt hd) hd hcd

theorem toNat_lt_toNat (hcd : c < d) (hd : d < ℵ₀) : toNat c < toNat d :=
  toNat_strictMonoOn (hcd.trans hd) hd hcd

@[simp]
theorem toNat_ofNat (n : ℕ) [n.AtLeastTwo] :
    Cardinal.toNat ofNat(n) = OfNat.ofNat n :=
  toNat_natCast n

/-- `toNat` has a right-inverse: coercion. -/
theorem toNat_rightInverse : Function.RightInverse ((↑) : ℕ → Cardinal) toNat :=
  toNat_natCast

theorem toNat_surjective : Surjective toNat :=
  toNat_rightInverse.surjective

@[simp]
theorem mk_toNat_of_infinite [h : Infinite α] : toNat #α = 0 := by simp

@[simp]
theorem aleph0_toNat : toNat ℵ₀ = 0 :=
  toNat_apply_of_aleph0_le le_rfl

theorem mk_toNat_eq_card [Fintype α] : toNat #α = Fintype.card α := by simp

@[simp]
theorem zero_toNat : toNat 0 = 0 := map_zero _

theorem one_toNat : toNat 1 = 1 := map_one _

theorem toNat_eq_iff {n : ℕ} (hn : n ≠ 0) : toNat c = n ↔ c = n := by
  rw [← toNat_toENat, ENat.toNat_eq_iff hn, toENat_eq_nat]

/-- A version of `toNat_eq_iff` for literals -/
theorem toNat_eq_ofNat {n : ℕ} [Nat.AtLeastTwo n] :
    toNat c = OfNat.ofNat n ↔ c = OfNat.ofNat n :=
  toNat_eq_iff <| OfNat.ofNat_ne_zero n

@[simp]
theorem toNat_eq_one : toNat c = 1 ↔ c = 1 := by
  rw [toNat_eq_iff one_ne_zero, Nat.cast_one]

theorem toNat_eq_one_iff_unique : toNat #α = 1 ↔ Subsingleton α ∧ Nonempty α :=
  toNat_eq_one.trans eq_one_iff_unique

@[simp]
theorem toNat_lift (c : Cardinal.{v}) : toNat (lift.{u, v} c) = toNat c := by
  simp only [← toNat_toENat, toENat_lift]

theorem toNat_congr {β : Type v} (e : α ≃ β) : toNat #α = toNat #β := by
  -- Porting note: Inserted universe hint below
  rw [← toNat_lift, (lift_mk_eq.{_,_,v}).mpr ⟨e⟩, toNat_lift]

theorem toNat_mul (x y : Cardinal) : toNat (x * y) = toNat x * toNat y := map_mul toNat x y

@[simp]
theorem toNat_add (hc : c < ℵ₀) (hd : d < ℵ₀) : toNat (c + d) = toNat c + toNat d := by
  lift c to ℕ using hc
  lift d to ℕ using hd
  norm_cast

theorem toNat_lift_add_lift {a : Cardinal.{u}} {b : Cardinal.{v}} (ha : a < ℵ₀) (hb : b < ℵ₀) :
    toNat (lift.{v} a + lift.{u} b) = toNat a + toNat b := by
  simp [*]

end Cardinal
```
