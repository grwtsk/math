# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Basic.Variant3aaa8da1ddcdae511a0debc3a08efb69531488efc7151d6ea6b338b5d1cb8e62

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1cad0e2acb8953d99395fc6e38eb061082f59076` · SHA-256 `50fa36d315304ce5938eb6295bee00384453db29a40540a61066a7ee86a9d362`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.StrongRecOfGe.Variantc524836299f9abaa2622e907d6bf008e6c6ce25f386948cb8fda17690bc25095","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"c524836299f9abaa2622e907d6bf008e6c6ce25f386948cb8fda17690bc25095","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.StrongRecOfGe.Variantc524836299f9abaa2622e907d6bf008e6c6ce25f386948cb8fda17690bc25095","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"c524836299f9abaa2622e907d6bf008e6c6ce25f386948cb8fda17690bc25095","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/Data/Int/Basic.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2016 Jeremy Avigad. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jeremy Avigad
-/
module

public import Mathlib.Data.Int.Init
public import Mathlib.Data.Nat.Basic
public import Mathlib.Logic.Function.Basic
public import Mathlib.Tactic.Conv
public import Mathlib.Tactic.Convert
public import Mathlib.Tactic.OfNat

/-!
# Basic operations on the integers

This file builds on `Data.Int.Init` by adding basic lemmas on integers
depending on Mathlib definitions.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.StrongRecOfGe.Variantc524836299f9abaa2622e907d6bf008e6c6ce25f386948cb8fda17690bc25095

public section

open Nat

namespace Int
variable {a b c m n : ℤ}

attribute [gcongr] ofNat_le

instance instNontrivial : Nontrivial ℤ := ⟨⟨0, 1, Int.zero_ne_one⟩⟩

@[simp] lemma ofNat_injective : Function.Injective ofNat := @Int.ofNat.inj

section strongRec

variable {P : ℤ → Sort*} {lt : ∀ n < m, P n} {ge : ∀ n ≥ m, (∀ k < n, P k) → P n}

lemma strongRec_of_ge :
    ∀ hn : m ≤ n, m.strongRec lt ge n = ge n hn fun k _ ↦ m.strongRec lt ge k := by
  refine m.strongRec (fun n hnm hmn ↦ (Int.not_lt.mpr hmn hnm).elim) (fun n _ ih hn ↦ ?_) n
  rw [Int.strongRec, dite_eq_right (Int.not_lt.mpr hn)]
  congr; revert ih
  refine n.inductionOn' m (fun _ ↦ ?_) (fun k hmk ih' ih ↦ ?_) (fun k hkm ih' _ ↦ ?_) <;> ext l hl
  · rw [inductionOn'_self, strongRec_of_lt hl]
  · rw [inductionOn'_add_one hmk]; split_ifs with hlm
    · rw [strongRec_of_lt hlm]
    · rw [ih' fun l hl ↦ ih l (Int.lt_trans hl k.lt_succ), ih _ hl]
  · rw [inductionOn'_sub_one hkm, ih']
    exact fun l hlk hml ↦ (Int.not_lt.mpr hkm <| Int.lt_of_le_of_lt hml hlk).elim

end strongRec

/-! ### nat abs -/

lemma natAbs_surjective : natAbs.Surjective := fun n => ⟨n, natAbs_natCast n⟩

lemma pow_right_injective (h : 1 < a.natAbs) : ((a ^ ·) : ℕ → ℤ).Injective := by
  refine (?_ : (natAbs ∘ (a ^ · : ℕ → ℤ)).Injective).of_comp
  convert! Nat.pow_right_injective h using 2
  rw [Function.comp_apply, natAbs_pow]

/-! ### dvd -/

@[norm_cast] theorem ofNat_dvd_natCast {x y : ℕ} : (ofNat(x) : ℤ) ∣ (y : ℤ) ↔ OfNat.ofNat x ∣ y :=
  natCast_dvd_natCast

@[norm_cast] theorem natCast_dvd_ofNat {x y : ℕ} : (x : ℤ) ∣ (ofNat(y) : ℤ) ↔ x ∣ OfNat.ofNat y :=
  natCast_dvd_natCast

lemma natCast_dvd {m : ℕ} : (m : ℤ) ∣ n ↔ m ∣ n.natAbs := by
  obtain hn | hn := natAbs_eq n <;> rw [hn] <;> simp [← natCast_dvd_natCast, Int.dvd_neg]

lemma dvd_natCast {n : ℕ} : m ∣ (n : ℤ) ↔ m.natAbs ∣ n := by
  obtain hn | hn := natAbs_eq m <;> rw [hn] <;> simp [← natCast_dvd_natCast, Int.neg_dvd]

lemma eq_zero_of_dvd_of_nonneg_of_lt (hm : 0 ≤ m) (hmn : m < n) (hnm : n ∣ m) : m = 0 :=
  eq_zero_of_dvd_of_natAbs_lt_natAbs hnm (natAbs_lt_natAbs_of_nonneg_of_lt hm hmn)

/-- If two integers are congruent to a sufficiently large modulus, they are equal. -/
lemma eq_of_mod_eq_of_natAbs_sub_lt_natAbs {a b c : ℤ} (h1 : a % b = c)
    (h2 : natAbs (a - c) < natAbs b) : a = c :=
  Int.eq_of_sub_eq_zero (eq_zero_of_dvd_of_natAbs_lt_natAbs (dvd_self_sub_of_emod_eq h1) h2)

lemma natAbs_le_of_dvd_ne_zero (hmn : m ∣ n) (hn : n ≠ 0) : natAbs m ≤ natAbs n :=
  not_lt.mp (mt (eq_zero_of_dvd_of_natAbs_lt_natAbs hmn) hn)

theorem gcd_emod (m n : ℤ) : (m % n).gcd n = m.gcd n := by
  conv_rhs => rw [← m.emod_add_mul_ediv n, gcd_add_mul_left_left]

end Int
```
