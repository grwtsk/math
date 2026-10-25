# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Basic.Variantee341f413563f34f0f4d621f1f3baf70346bd7a791aa794c142ad53d2e7e4301

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e812c69edef79a23d992d1ebce68d7977155b366` · SHA-256 `20f7a6bae340256e594f68c69a7b6bdea763a72f7c0ad21a55d0b96bc97a881f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Lt.Varianteb172f2a018dae3fcfe1f1d13d3a20f95604781e2cd9d2fee496e35141c5b2fe","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"eb172f2a018dae3fcfe1f1d13d3a20f95604781e2cd9d2fee496e35141c5b2fe","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.Lt.Varianteb172f2a018dae3fcfe1f1d13d3a20f95604781e2cd9d2fee496e35141c5b2fe","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"eb172f2a018dae3fcfe1f1d13d3a20f95604781e2cd9d2fee496e35141c5b2fe","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Init/Data/Char/Basic.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2016 Microsoft Corporation. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Author: Leonardo de Moura
-/
module

prelude
public import Init.Data.UInt.BasicAux
import Init.Data.Nat.Div.Basic


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Lt.Varianteb172f2a018dae3fcfe1f1d13d3a20f95604781e2cd9d2fee496e35141c5b2fe

@[expose] public section

/-- Determines if the given integer is a valid [Unicode scalar value](https://www.unicode.org/glossary/#unicode_scalar_value).

Note that values in `[0xd800, 0xdfff]` are reserved for [UTF-16 surrogate pairs](https://en.wikipedia.org/wiki/Universal_Character_Set_characters#Surrogates).
-/
@[inline, reducible] def isValidChar (n : UInt32) : Prop :=
  n < 0xd800 ∨ (0xdfff < n ∧ n < 0x110000)

namespace Char

/--
One character is less than another if its code point is strictly less than the other's.
-/
protected def lt (a b : Char) : Prop := a.val < b.val

/--
One character is less than or equal to another if its code point is less than or equal to the
other's.
-/
protected def le (a b : Char) : Prop := a.val ≤ b.val

instance : LT Char := ⟨Char.lt⟩
instance : LE Char := ⟨Char.le⟩

instance (a b : Char) :  Decidable (a < b) :=
  UInt32.decLt _ _

instance (a b : Char) : Decidable (a ≤ b) :=
  UInt32.decLe _ _

/--
True for natural numbers that are valid [Unicode scalar
values](https://www.unicode.org/glossary/#unicode_scalar_value).
-/
abbrev isValidCharNat (n : Nat) : Prop :=
  n < 0xd800 ∨ (0xdfff < n ∧ n < 0x110000)

theorem isValidUInt32 (n : Nat) (h : isValidCharNat n) : n < UInt32.size := by
  match h with
  | Or.inl h        =>
    apply Nat.lt_trans h
    decide
  | Or.inr ⟨_,  h₂⟩ =>
    apply Nat.lt_trans h₂
    decide

theorem isValidChar_of_isValidCharNat (n : Nat) (h : isValidCharNat n) : isValidChar (UInt32.ofNatLT n (isValidUInt32 n h)) :=
  match h with
  | Or.inl h =>
    Or.inl (UInt32.ofNatLT_lt_of_lt _ (by decide) h)
  | Or.inr ⟨h₁, h₂⟩ =>
    Or.inr ⟨UInt32.lt_ofNatLT_of_lt _ (by decide) h₁, UInt32.ofNatLT_lt_of_lt _ (by decide) h₂⟩

theorem isValidChar_zero : isValidChar 0 :=
  Or.inl (by decide)

/--
The character's Unicode code point as a `Nat`.
-/
@[inline, implicit_reducible] def toNat (c : Char) : Nat :=
  c.val.toNat

/--
Converts a character into a `UInt8` that contains its code point.

If the code point is larger than 255, it is truncated (reduced modulo 256).
-/
@[inline] def toUInt8 (c : Char) : UInt8 :=
  c.val.toUInt8

/--
Converts an 8-bit unsigned integer into a character.

The integer's value is interpreted as a Unicode code point.
-/
def ofUInt8 (n : UInt8) : Char := ⟨n.toUInt32, .inl (Nat.lt_trans n.toBitVec.isLt (by decide))⟩

instance : Inhabited Char where
  default := 'A'

/--
Returns `true` if the character is a space `(' ', U+0020)`, a tab `('\t', U+0009)`, a carriage
return `('\r', U+000D)`, or a newline `('\n', U+000A)`.
-/
@[inline, implicit_reducible] def isWhitespace (c : Char) : Bool :=
  c = ' ' || c = '\t' || c = '\r' || c = '\n'

/--
Returns `true` if the character is a uppercase ASCII letter.

The uppercase ASCII letters are the following: `ABCDEFGHIJKLMNOPQRSTUVWXYZ`.
-/
@[inline, implicit_reducible] def isUpper (c : Char) : Bool :=
  c.val ≥ 'A'.val ∧ c.val ≤ 'Z'.val

/--
Returns `true` if the character is a lowercase ASCII letter.

The lowercase ASCII letters are the following: `abcdefghijklmnopqrstuvwxyz`.
-/
@[inline, implicit_reducible] def isLower (c : Char) : Bool :=
  c.val ≥ 'a'.val && c.val ≤ 'z'.val

/--
Returns `true` if the character is an ASCII letter.

The ASCII letters are the following: `ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz`.
-/
@[inline, implicit_reducible] def isAlpha (c : Char) : Bool :=
  c.isUpper || c.isLower

/--
Returns `true` if the character is an ASCII digit.

The ASCII digits are the following: `0123456789`.
-/
@[inline, implicit_reducible] def isDigit (c : Char) : Bool :=
  c.val ≥ '0'.val && c.val ≤ '9'.val

/--
Returns `true` if the character is an ASCII hexadecimal digit.

The ASCII hexadecimal digits are the following: `0123456789abcdefABCDEF`.
-/
@[inline] def isHexDigit (c : Char) : Bool :=
  c.isDigit || (c.val ≥ 'a'.val && c.val ≤ 'f'.val) || (c.val ≥ 'A'.val && c.val ≤ 'F'.val)

/--
Returns `true` if the character is an ASCII letter or digit.

The ASCII letters are the following: `ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz`.
The ASCII digits are the following: `0123456789`.
-/
@[inline, implicit_reducible] def isAlphanum (c : Char) : Bool :=
  c.isAlpha || c.isDigit

/--
Converts an uppercase ASCII letter to the corresponding lowercase letter. Letters outside the ASCII
alphabet are returned unchanged.

The uppercase ASCII letters are the following: `ABCDEFGHIJKLMNOPQRSTUVWXYZ`.
-/
@[inline, implicit_reducible]
def toLower (c : Char) : Char :=
  if h : c.val ≥ 'A'.val ∧ c.val ≤ 'Z'.val then
    ⟨c.val + ('a'.val - 'A'.val), ?_⟩
  else
    c
where finally
  have h : c.val.toBitVec.toNat + ('a'.val - 'A'.val).toBitVec.toNat < 0xd800 :=
    Nat.add_lt_add_right (Nat.lt_of_le_of_lt h.2 (by decide)) _
  exact .inl (lt_of_eq_of_lt (Nat.mod_eq_of_lt (Nat.lt_trans h (by decide))) h)

/--
Converts a lowercase ASCII letter to the corresponding uppercase letter. Letters outside the ASCII
alphabet are returned unchanged.

The lowercase ASCII letters are the following: `abcdefghijklmnopqrstuvwxyz`.
-/
@[inline, implicit_reducible]
def toUpper (c : Char) : Char :=
  if h : 'a'.val ≤ c.val ∧ c.val ≤ 'z'.val then
    ⟨c.val + ('A'.val - 'a'.val), ?_⟩
  else
    c
where finally
  -- This expression is a ground non-value; generalize for better
  -- control on where it is evaluated.
  generalize hx : 'A'.val - 'a'.val = x
  have h₁ : 2^32 ≤ c.val.toNat + x.toNat :=
    @Nat.add_le_add 'a'.val.toNat _ (2^32 - 'a'.val.toNat) _ h.1 (by rw [← hx]; decide)
  have h₂ : c.val.toBitVec.toNat + x.toNat < 2^32 + 0xd800 :=
    Nat.add_lt_of_lt_sub (Nat.lt_of_le_of_lt h.2 (by rw [← hx]; decide))
  have add_eq {x y : UInt32} : (x + y).toNat = (x.toNat + y.toNat) % 2^32 := id rfl
  replace h₂ := Nat.sub_lt_left_of_lt_add h₁ h₂
  exact .inl <| lt_of_eq_of_lt (add_eq.trans (Nat.mod_eq_sub_mod h₁) |>.trans
    (Nat.mod_eq_of_lt (Nat.lt_trans h₂ (by decide)))) h₂

end Char
```
