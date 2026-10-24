# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.AsciiCasing.Variant468280c72f0204dd6a561cd6a73ba4aea3c57b0452db2f4d5dc331ba5f1e7e50

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ec16c190f358609b6949bee529026a98cd664832` · SHA-256 `7f125db05b60245972a518b94fa66b4331c52578af9cd6489b557051246b5638`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

````lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.NotIsLowerOfIsUpper.Variant536973078fa646d865d632708306a32e92d151140e375c4231313be979076323","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"536973078fa646d865d632708306a32e92d151140e375c4231313be979076323","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.NotIsLowerOfIsUpper.Variant536973078fa646d865d632708306a32e92d151140e375c4231313be979076323","mathematical_subject":"Computation.DataStructures","original_sha256":"536973078fa646d865d632708306a32e92d151140e375c4231313be979076323","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/batteries/Batteries/Data/Char/AsciiCasing.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 François G. Dorais. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: François G. Dorais
-/
module

public import Batteries.Data.Char.Basic
public import Batteries.Tactic.Basic


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.NotIsLowerOfIsUpper.Variant536973078fa646d865d632708306a32e92d151140e375c4231313be979076323

@[expose] public section

/-! # Lemmas for ASCII-casing

These facts apply for ASCII characters only. Recall that `isAlpha`, `isLower`, `isUpper`, `toLower`,
`toUpper` do not consider characters outside the ASCII character range (code points less than 128).
-/

namespace Char

theorem not_isLower_of_isUpper {c : Char} : c.isUpper → ¬ c.isLower := by
  simp [isUpper, UInt32.le_iff_toNat_le, isLower]
  omega

theorem not_isUpper_of_isLower {c : Char} : c.isLower → ¬ c.isUpper := by
  simp [isUpper, UInt32.le_iff_toNat_le, isLower]
  omega


theorem toLower_eq_of_not_isUpper {c : Char} (h : ¬ c.isUpper) : c.toLower = c := by
  simp_all [isUpper, UInt32.le_iff_toNat_le, toLower]
  omega

theorem toLower_eq_of_isUpper {c : Char} (h : c.isUpper) : c.toLower = ofNat (c.toNat + 32) := by
  ext
  rw [val_ofNat, UInt32.ofNat_add]
  · simp_all [isUpper, toLower]
  · simp [isUpper, UInt32.le_iff_toNat_le] at h; grind

theorem toUpper_eq_of_not_isLower {c : Char} (h : ¬ c.isLower) : c.toUpper = c := by
  simp only [isLower, Bool.and_eq_true, decide_eq_true_eq] at h
  simp only [toUpper, dite_eq_right h]

theorem toUpper_eq_of_isLower {c : Char} (h : c.isLower) : c.toUpper = ofNat (c.toNat - 32) := by
  ext
  rw [val_ofNat, UInt32.ofNat_sub]
  · simp_all [toUpper, isLower]; grind
  · simp [isLower, UInt32.le_iff_toNat_le] at h; grind
  · simp [isLower, UInt32.le_iff_toNat_le] at h; grind

@[simp] theorem isUpper_toLower_eq_false (c : Char) : c.toLower.isUpper = false := by
  simp only [isUpper, toLower]
  split <;> grind [UInt32.toNat_add, toNat_val]

@[simp] theorem isLower_toUpper_eq_false (c : Char) : c.toUpper.isLower = false := by
  simp only [isLower, toUpper]
  split <;> grind [UInt32.toNat_add, toNat_val]

@[simp] theorem isLower_toLower_eq_isAlpha (c : Char) : c.toLower.isLower = c.isAlpha := by
  rw [Bool.eq_iff_iff]
  by_cases h : c.isUpper
  · simp only [isLower, h, toLower_eq_of_isUpper, ↓Char.isValue, Char.reduceVal, ge_iff_le,
      UInt32.le_iff_toNat_le, UInt32.reduceToNat, toNat_val, Bool.and_eq_true, decide_eq_true_eq,
      isAlpha, Bool.true_or, iff_true]
    simp only [isUpper, ↓Char.isValue, Char.reduceVal, ge_iff_le, UInt32.le_iff_toNat_le,
      UInt32.reduceToNat, toNat_val, Bool.decide_and, Bool.and_eq_true, decide_eq_true_eq] at h
    have : (c.toNat + 32).isValidChar := by omega
    simp [toNat_ofNat, *]
  · simp [toLower_eq_of_not_isUpper, isAlpha, h]

@[simp] theorem isUpper_toUpper_eq_isAlpha (c : Char) : c.toUpper.isUpper = c.isAlpha := by
  rw [Bool.eq_iff_iff]
  by_cases h : c.isLower
  · simp only [isUpper, h, toUpper_eq_of_isLower, ↓Char.isValue, Char.reduceVal, ge_iff_le,
      UInt32.le_iff_toNat_le, UInt32.reduceToNat, toNat_val, Bool.decide_and, Bool.and_eq_true,
      decide_eq_true_eq, isAlpha, Bool.or_true, iff_true]
    simp only [isLower, ↓Char.isValue, Char.reduceVal, ge_iff_le, UInt32.le_iff_toNat_le,
      UInt32.reduceToNat, toNat_val, Bool.and_eq_true, decide_eq_true_eq] at h
    have : (c.toNat - 32).isValidChar := by omega
    have : 32 ≤ c.toNat := by omega
    simp [toNat_ofNat, Nat.le_sub_iff_add_le, *]
  · simp [toUpper_eq_of_not_isLower, isAlpha, h]

@[simp] theorem isAlpha_toLower_eq_isAlpha (c : Char) : c.toLower.isAlpha = c.isAlpha := by
  simp [isAlpha]

@[simp] theorem isAlpha_toUpper_eq_isAlpha (c : Char) : c.toUpper.isAlpha = c.isAlpha := by
  simp [isAlpha]

@[simp] theorem toLower_toLower_eq_toLower (c : Char) : c.toLower.toLower = c.toLower := by
  simp [toLower_eq_of_not_isUpper]

@[simp] theorem toLower_toUpper_eq_toLower (c : Char) : c.toUpper.toLower = c.toLower := by
  by_cases hl : c.isLower
  · have hu : ¬ c.isUpper := not_isUpper_of_isLower hl
    have hu' : c.toUpper.isUpper := by simp [isAlpha, hl]
    have hv : (c.toNat - 32).isValidChar := by
      simp only [isLower, isUpper, UInt32.le_iff_toNat_le, toNat_val] at hl hu
      grind
    have h : 32 ≤ c.toNat := by
      simp only [isLower, ↓Char.isValue, Char.reduceVal, ge_iff_le, UInt32.le_iff_toNat_le,
        UInt32.reduceToNat, toNat_val, Bool.and_eq_true, decide_eq_true_eq, isUpper,
        Bool.decide_and, not_and, Nat.not_le] at hl hu
      omega
    rw [toLower_eq_of_isUpper hu', toUpper_eq_of_isLower hl, toLower_eq_of_not_isUpper hu,
      toNat_ofNat, ite_eq_left hv, Nat.sub_add_cancel h, ofNat_toNat]
  · rw [toUpper_eq_of_not_isLower hl]

@[simp] theorem toUpper_toUpper_eq_toUpper (c : Char) : c.toUpper.toUpper = c.toUpper := by
  simp [toUpper_eq_of_not_isLower]

@[simp] theorem toUpper_toLower_eq_toUpper (c : Char) : c.toLower.toUpper = c.toUpper := by
  by_cases hu : c.isUpper
  · have hl : ¬ c.isLower := not_isLower_of_isUpper hu
    have hl' : c.toLower.isLower := by simp [isAlpha, hu]
    have hv : (c.toNat + 32).isValidChar := by
      simp only [isUpper, ↓Char.isValue, Char.reduceVal, ge_iff_le, UInt32.le_iff_toNat_le,
        UInt32.reduceToNat, toNat_val, Bool.decide_and, Bool.and_eq_true, decide_eq_true_eq,
        isLower, not_and, Nat.not_le] at hu hl
      omega
    rw [toUpper_eq_of_isLower hl', toLower_eq_of_isUpper hu, toUpper_eq_of_not_isLower hl,
      toNat_ofNat, ite_eq_left hv, Nat.add_sub_cancel, ofNat_toNat]
  · rw [toLower_eq_of_not_isUpper hu]

/-- Case folding for ASCII characters only.

Alphabetic ASCII characters are mapped to their lowercase form, all other characters are left
unchanged. This agrees with the Unicode case folding algorithm for ASCII characters.

```
#eval caseFoldAsciiOnly 'A' == 'a'
#eval caseFoldAsciiOnly 'a' == 'a'
#eval caseFoldAsciiOnly 'À' == 'À'
#eval caseFoldAsciiOnly 'à' == 'à'
#eval caseFoldAsciiOnly '$' == '$'
```
-/
abbrev caseFoldAsciiOnly := Char.toLower

/--
Bool-valued comparison of two `Char`s for *ASCII*-case insensitive equality.

```
#eval beqCaseInsensitiveAsciiOnly 'a' 'A' -- true
#eval beqCaseInsensitiveAsciiOnly 'a' 'a' -- true
#eval beqCaseInsensitiveAsciiOnly '$' '$' -- true
#eval beqCaseInsensitiveAsciiOnly 'a' 'b' -- false
#eval beqCaseInsensitiveAsciiOnly 'γ' 'Γ' -- false
#eval beqCaseInsensitiveAsciiOnly 'ä' 'Ä' -- false
```
-/
def beqCaseInsensitiveAsciiOnly (c₁ c₂ : Char) : Bool :=
  c₁.caseFoldAsciiOnly == c₂.caseFoldAsciiOnly

theorem beqCaseInsensitiveAsciiOnly.eqv : Equivalence (beqCaseInsensitiveAsciiOnly · ·) := {
  refl _ := BEq.rfl
  trans _ _ := by simp_all [beqCaseInsensitiveAsciiOnly]
  symm := by simp_all [beqCaseInsensitiveAsciiOnly]}

/--
Setoid structure on `Char` using `beqCaseInsensitiveAsciiOnly`
-/
@[implicit_reducible]
def beqCaseInsensitiveAsciiOnly.isSetoid : Setoid Char:=
  ⟨(beqCaseInsensitiveAsciiOnly · ·), beqCaseInsensitiveAsciiOnly.eqv⟩

/--
ASCII-case insensitive implementation comparison returning an `Ordering`. Useful for sorting.

```
#eval cmpCaseInsensitiveAsciiOnly 'a' 'A' -- eq
#eval cmpCaseInsensitiveAsciiOnly 'a' 'a' -- eq
#eval cmpCaseInsensitiveAsciiOnly '$' '$' -- eq
#eval cmpCaseInsensitiveAsciiOnly 'a' 'b' -- lt
#eval cmpCaseInsensitiveAsciiOnly 'γ' 'Γ' -- gt
#eval cmpCaseInsensitiveAsciiOnly 'ä' 'Ä' -- gt
```
-/
def cmpCaseInsensitiveAsciiOnly (c₁ c₂ : Char) : Ordering :=
  compare c₁.caseFoldAsciiOnly c₂.caseFoldAsciiOnly
````
