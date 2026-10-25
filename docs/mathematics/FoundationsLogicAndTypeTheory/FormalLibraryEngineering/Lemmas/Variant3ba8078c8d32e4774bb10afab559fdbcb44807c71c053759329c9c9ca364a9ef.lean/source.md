# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Lemmas.Variant3ba8078c8d32e4774bb10afab559fdbcb44807c71c053759329c9c9ca364a9ef

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8edf007c7803d02dfe7e1113c554b3c23260957d` · SHA-256 `953badacdba4a0b4dc4c83bb1e54cc40baac10ec20b5d9aee233230127becb60`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.EqOfValEq.Variantc50ecfb9deb48c569ca9ed98c28e480f6633282e15f36a2632f3736556e83ce2","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"c50ecfb9deb48c569ca9ed98c28e480f6633282e15f36a2632f3736556e83ce2","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.EqOfValEq.Variantc50ecfb9deb48c569ca9ed98c28e480f6633282e15f36a2632f3736556e83ce2","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"c50ecfb9deb48c569ca9ed98c28e480f6633282e15f36a2632f3736556e83ce2","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Init/Data/Char/Lemmas.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Amazon.com, Inc. or its affiliates. All Rights Reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module

prelude
import all Init.Data.Char.Basic
public import Init.Data.Char.Basic
public import Init.Ext
import Init.Data.UInt.Lemmas


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.EqOfValEq.Variantc50ecfb9deb48c569ca9ed98c28e480f6633282e15f36a2632f3736556e83ce2

public section

namespace Char

@[deprecated Char.ext (since := "2025-10-26")]
protected theorem eq_of_val_eq : {a b : Char} → a.val = b.val → a = b
  | ⟨_,_⟩, ⟨_,_⟩, rfl => rfl

theorem le_def {a b : Char} : a ≤ b ↔ a.1 ≤ b.1 := .rfl
theorem lt_def {a b : Char} : a < b ↔ a.1 < b.1 := .rfl

@[deprecated lt_def (since := "2025-10-26")]
theorem lt_iff_val_lt_val {a b : Char} : a < b ↔ a.val < b.val := Iff.rfl

@[simp] protected theorem not_le {a b : Char} : ¬ a ≤ b ↔ b < a := UInt32.not_le
@[simp] protected theorem not_lt {a b : Char} : ¬ a < b ↔ b ≤ a := UInt32.not_lt
@[simp] protected theorem le_refl (a : Char) : a ≤ a := by simp [le_def]
@[simp] protected theorem lt_irrefl (a : Char) : ¬ a < a := by simp
protected theorem le_trans {a b c : Char} : a ≤ b → b ≤ c → a ≤ c := UInt32.le_trans
protected theorem lt_trans {a b c : Char} : a < b → b < c → a < c := UInt32.lt_trans
protected theorem le_total (a b : Char) : a ≤ b ∨ b ≤ a := UInt32.le_total a.1 b.1
protected theorem le_antisymm {a b : Char} : a ≤ b → b ≤ a → a = b :=
  fun h₁ h₂ => Char.ext (UInt32.le_antisymm h₁ h₂)
protected theorem lt_asymm {a b : Char} (h : a < b) : ¬ b < a := UInt32.lt_asymm h
protected theorem ne_of_lt {a b : Char} (h : a < b) : a ≠ b := Char.ne_of_val_ne (UInt32.ne_of_lt h)

instance ltIrrefl : Std.Irrefl (· < · : Char → Char → Prop) where
  irrefl := Char.lt_irrefl

instance leRefl : Std.Refl (· ≤ · : Char → Char → Prop) where
  refl := Char.le_refl

instance leTrans : Trans (· ≤ · : Char → Char → Prop) (· ≤ ·) (· ≤ ·) where
  trans := Char.le_trans

instance ltTrans : Trans (· < · : Char → Char → Prop) (· < ·) (· < ·) where
  trans := Char.lt_trans

-- This instance is useful while setting up instances for `String`.
@[instance_reducible]
def notLTTrans : Trans (¬ · < · : Char → Char → Prop) (¬ · < ·) (¬ · < ·) where
  trans h₁ h₂ := by simpa using Char.le_trans (by simpa using h₂) (by simpa using h₁)

instance leAntisymm : Std.Antisymm (· ≤ · : Char → Char → Prop) where
  antisymm _ _ := Char.le_antisymm

-- This instance is useful while setting up instances for `String`.
instance ltTrichotomous : Std.Trichotomous (· < · : Char → Char → Prop) where
  trichotomous _ _ h₁ h₂ := Char.le_antisymm (by simpa using h₂) (by simpa using h₁)

@[deprecated ltTrichotomous (since := "2025-10-27")]
theorem notLTAntisymm : Std.Antisymm (¬ · < · : Char → Char → Prop) where
  antisymm := Char.ltTrichotomous.trichotomous

instance ltAsymm : Std.Asymm (· < · : Char → Char → Prop) where
  asymm _ _ := Char.lt_asymm

instance leTotal : Std.Total (· ≤ · : Char → Char → Prop) where
  total := Char.le_total

-- This instance is useful while setting up instances for `String`.
@[deprecated ltAsymm (since := "2025-08-01")]
theorem notLTTotal : Std.Total (¬ · < · : Char → Char → Prop) where
  total := fun x y => by simpa using Char.le_total y x

@[simp] theorem ofNat_toNat (c : Char) : Char.ofNat c.toNat = c := by
  rw [Char.ofNat, dif_pos]
  rfl

@[simp]
theorem toUInt8_val {c : Char} : c.val.toUInt8 = c.toUInt8 := rfl

@[simp]
theorem toString_eq_singleton {c : Char} : c.toString = String.singleton c := rfl

@[simp]
theorem toNat_val {c : Char} : c.val.toNat = c.toNat := rfl

theorem val_inj {c d : Char} : c.val = d.val ↔ c = d :=
  Char.ext_iff.symm

theorem toNat_inj {c d : Char} : c.toNat = d.toNat ↔ c = d := by
  simp [← toNat_val, ← val_inj, ← UInt32.toNat_inj]

theorem isDigit_iff_toNat {c : Char} : c.isDigit ↔ '0'.toNat ≤ c.toNat ∧ c.toNat ≤ '9'.toNat := by
  simp [isDigit, UInt32.le_iff_toNat_le]

@[simp]
theorem toNat_mk {val : UInt32} {h} : (Char.mk val h).toNat = val.toNat := by
  simp [← toNat_val]

end Char
```
