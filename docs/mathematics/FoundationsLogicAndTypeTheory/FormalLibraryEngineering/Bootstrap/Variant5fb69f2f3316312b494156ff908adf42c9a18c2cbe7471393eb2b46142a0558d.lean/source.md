# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Bootstrap.Variant5fb69f2f3316312b494156ff908adf42c9a18c2cbe7471393eb2b46142a0558d

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `51656aff087292f1234528f5385dc70fd023892e` · SHA-256 `1fdabe9ed448293e8f5236f55ea01d0b7fb7714c9eb8dd058cd6bc918d1decf8`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.TestBitToNat.Variant49db8d5b516adb515f727a67929b0dd6b39d58224b12df0ffc0be3b56a92004d","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"49db8d5b516adb515f727a67929b0dd6b39d58224b12df0ffc0be3b56a92004d","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.TestBitToNat.Variant49db8d5b516adb515f727a67929b0dd6b39d58224b12df0ffc0be3b56a92004d","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"49db8d5b516adb515f727a67929b0dd6b39d58224b12df0ffc0be3b56a92004d","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Init/Data/BitVec/Bootstrap.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2023 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Joe Hendrix, Harun Khan, Alex Keizer, Abdalrhman M Mohamed, Siddharth Bhat
-/
module

prelude
public import Init.Data.BitVec.Basic
import all Init.Data.BitVec.Basic
import Init.Ext
import Init.ByCases
import Init.Data.Nat.Div.Lemmas
import Init.TacticsExtra


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.TestBitToNat.Variant49db8d5b516adb515f727a67929b0dd6b39d58224b12df0ffc0be3b56a92004d

public section

namespace BitVec

theorem testBit_toNat (x : BitVec w) : x.toNat.testBit i = x.getLsbD i := rfl

@[simp, grind =] theorem getLsbD_ofFin (x : Fin (2^n)) (i : Nat) :
    getLsbD (BitVec.ofFin x) i = x.val.testBit i := rfl

@[simp, grind =] theorem getLsbD_of_ge (x : BitVec w) (i : Nat) (ge : w ≤ i) : getLsbD x i = false := by
  let ⟨x, x_lt⟩ := x
  simp only [getLsbD_ofFin]
  apply Nat.testBit_lt_two_pow
  have p : 2^w ≤ 2^i := Nat.pow_le_pow_right (by omega) ge
  omega

/-- Prove equality of bitvectors in terms of nat operations. -/
theorem eq_of_toNat_eq {n} : ∀ {x y : BitVec n}, x.toNat = y.toNat → x = y
  | ⟨_, _⟩, ⟨_, _⟩, rfl => rfl

theorem eq_of_getLsbD_eq {x y : BitVec w}
    (pred : ∀ i, i < w → x.getLsbD i = y.getLsbD i) : x = y := by
  apply eq_of_toNat_eq
  apply Nat.eq_of_testBit_eq
  intro i
  if i_lt : i < w then
    exact pred i i_lt
  else
    have p : i ≥ w := Nat.le_of_not_gt i_lt
    simp [testBit_toNat, getLsbD_of_ge _ _ p]

@[simp, bitvec_to_nat, grind =]
theorem toNat_ofNat (x w : Nat) : (BitVec.ofNat w x).toNat = x % 2^w := by
  simp [BitVec.toNat, BitVec.ofNat, Fin.ofNat]

@[ext, grind ext] theorem eq_of_getElem_eq {x y : BitVec n} :
        (∀ i (hi : i < n), x[i] = y[i]) → x = y :=
  fun h => BitVec.eq_of_getLsbD_eq (h ↑·)

@[simp, grind =] theorem toNat_append (x : BitVec m) (y : BitVec n) :
    (x ++ y).toNat = x.toNat <<< n ||| y.toNat :=
  rfl

@[simp, grind =] theorem toNat_ofBool (b : Bool) : (ofBool b).toNat = b.toNat := by
  cases b <;> rfl

@[simp, bitvec_to_nat, grind =]
theorem toNat_cast (h : w = v) (x : BitVec w) : (x.cast h).toNat = x.toNat := rfl

@[simp, bitvec_to_nat, grind =]
theorem toNat_ofFin (x : Fin (2^n)) : (BitVec.ofFin x).toNat = x.val := rfl

-- The `[grind =]` attribute is attached in `Init.Data.BitVec.Lemmas` because the pattern must
-- be normalized with respect to the `grind` normalization theorem `ofNatLT_eq_ofNat`, which is
-- only activated in `Init.Grind.Norm`.
@[simp] theorem toNat_ofNatLT (x : Nat) (p : x < 2^w) : (x#'p).toNat = x := rfl

@[simp, grind =] theorem toNat_cons (b : Bool) (x : BitVec w) :
    (cons b x).toNat = (b.toNat <<< w) ||| x.toNat := by
  let ⟨x, _⟩ := x
  simp only [cons, toNat_cast, toNat_append, toNat_ofBool, toNat_ofFin]

@[grind =]
theorem getElem_cons {b : Bool} {n} {x : BitVec n} {i : Nat} (h : i < n + 1) :
    (cons b x)[i] = if h : i = n then b else x[i] := by
  simp only [getElem_eq_testBit_toNat, toNat_cons, Nat.testBit_or]
  rw [Nat.testBit_shiftLeft]
  rcases Nat.lt_trichotomy i n with i_lt_n | i_eq_n | n_lt_i
  · have p1 : ¬(n ≤ i) := by omega
    have p2 : i ≠ n := by omega
    simp [p1, p2]
  · simp only [i_eq_n, ge_iff_le, Nat.le_refl, decide_true, Nat.sub_self, Nat.testBit_zero,
    Bool.true_and, testBit_toNat, getLsbD_of_ge, Bool.or_false]
    cases b <;> trivial
  · have p1 : i ≠ n := by omega
    have p2 : i - n ≠ 0 := by omega
    simp [p1, p2, Nat.testBit_bool_toNat]

private theorem lt_two_pow_of_le {x m n : Nat} (lt : x < 2 ^ m) (le : m ≤ n) : x < 2 ^ n :=
  Nat.lt_of_lt_of_le lt (Nat.pow_le_pow_right (by trivial : 0 < 2) le)

@[simp, bitvec_to_nat, grind =]
theorem toNat_setWidth' {m n : Nat} (p : m ≤ n) (x : BitVec m) :
    (setWidth' p x).toNat = x.toNat := by
  simp only [setWidth', toNat_ofNatLT]

@[simp, bitvec_to_nat, grind =]
theorem toNat_setWidth (i : Nat) (x : BitVec n) :
    (setWidth i x).toNat = x.toNat % 2^i := by
  let ⟨x, lt_n⟩ := x
  simp only [setWidth]
  if n_le_i : n ≤ i then
    have x_lt_two_i : x < 2 ^ i := lt_two_pow_of_le lt_n n_le_i
    simp [n_le_i, Nat.mod_eq_of_lt, x_lt_two_i]
  else
    simp [n_le_i, toNat_ofNat]

@[simp, grind =]
theorem ofNat_toNat (m : Nat) (x : BitVec n) : BitVec.ofNat m x.toNat = setWidth m x := by
  apply eq_of_toNat_eq
  simp only [toNat_ofNat, toNat_setWidth]

@[grind =]
theorem getElem_setWidth' (x : BitVec w) (i : Nat) (h : w ≤ v) (hi : i < v) :
    (setWidth' h x)[i] = x.getLsbD i := by
  rw [getElem_eq_testBit_toNat, toNat_setWidth', getLsbD]

@[simp, grind =]
theorem getElem_setWidth (m : Nat) (x : BitVec n) (i : Nat) (h : i < m) :
    (setWidth m x)[i] = x.getLsbD i := by
  rw [setWidth]
  split
  · rw [getElem_setWidth']
  · simp only [ofNat_toNat, getElem_eq_testBit_toNat, toNat_setWidth, Nat.testBit_mod_two_pow,
      getLsbD, Bool.and_eq_right_iff_imp, decide_eq_true_eq]
    omega

-- Later this is provable by `grind`, so doesn't need an annotation.
@[simp] theorem cons_msb_setWidth (x : BitVec (w+1)) : (cons x.msb (x.setWidth w)) = x := by
  ext i
  simp only [getElem_cons]
  split <;> rename_i h
  · simp [BitVec.msb, getMsbD, h]
  · by_cases h' : i < w
    · simp_all only [getElem_setWidth, getLsbD_eq_getElem]
    · omega

@[simp, bitvec_to_nat, grind =]
theorem toNat_neg (x : BitVec n) : (- x).toNat = (2^n - x.toNat) % 2^n := by
  simp [Neg.neg, BitVec.neg]

@[simp, grind =]
theorem setWidth_neg_of_le {x : BitVec v} (h : w ≤ v) : BitVec.setWidth w (-x) = -BitVec.setWidth w x := by
  apply BitVec.eq_of_toNat_eq
  simp only [toNat_setWidth, toNat_neg]
  rw [Nat.mod_mod_of_dvd _ (Nat.pow_dvd_pow 2 h)]
  rw [Nat.mod_eq_mod_iff]
  rw [Nat.mod_def]
  refine ⟨1 + x.toNat / 2^w, 2^(v-w), ?_⟩
  rw [← Nat.pow_add]
  have : v - w + w = v := by omega
  rw [this]
  rw [Nat.add_mul, Nat.one_mul, Nat.mul_comm (2^w)]
  have sub_sub : ∀ (a : Nat) {b c : Nat} (h : c ≤ b), a - (b - c) = a + c - b := by omega
  rw [sub_sub _ (Nat.div_mul_le_self x.toNat (2 ^ w))]
  have : x.toNat / 2 ^ w * 2 ^ w ≤ x.toNat := Nat.div_mul_le_self x.toNat (2 ^ w)
  have : x.toNat < 2 ^w ∨ x.toNat - 2 ^ w < x.toNat / 2 ^ w * 2 ^ w := by
    have := Nat.lt_div_mul_add (a := x.toNat) (b := 2 ^ w) (Nat.two_pow_pos w)
    omega
  omega

@[induction_eliminator, elab_as_elim]
theorem cons_induction {motive : (w : Nat) → BitVec w → Prop} (nil : motive 0 .nil)
    (cons : ∀ {w : Nat} (b : Bool) (bv : BitVec w), motive w bv → motive (w + 1) (.cons b bv)) :
    ∀ {w : Nat} (x : BitVec w), motive w x := by
  intros w x
  induction w
  case zero =>
    simp only [BitVec.eq_nil x, nil]
  case succ wl ih =>
    rw [← cons_msb_setWidth x]
    apply cons
    apply ih

theorem ofNatLT_eq_ofNat {w : Nat} {n : Nat} (hn) : BitVec.ofNatLT n hn = BitVec.ofNat w n :=
  eq_of_toNat_eq (by simp [Nat.mod_eq_of_lt hn])

end BitVec
```
