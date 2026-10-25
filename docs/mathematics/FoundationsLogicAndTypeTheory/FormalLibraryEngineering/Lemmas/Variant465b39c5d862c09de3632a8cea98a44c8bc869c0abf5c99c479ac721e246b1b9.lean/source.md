# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Lemmas.Variant465b39c5d862c09de3632a8cea98a44c8bc869c0abf5c99c479ac721e246b1b9

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c1feaf6974c552e907d9a39b52c5176bb6a94976` · SHA-256 `0b15345398acda356c7a505662a142b6526b10d936caa16906a35aed46f8f0c4`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.NeSelf.Variant042e1a85c7d8140062137d1dab0f0a65783650845745d4dd5373372cdbe2b829","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"042e1a85c7d8140062137d1dab0f0a65783650845745d4dd5373372cdbe2b829","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.NeSelf.Variant042e1a85c7d8140062137d1dab0f0a65783650845745d4dd5373372cdbe2b829","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"042e1a85c7d8140062137d1dab0f0a65783650845745d4dd5373372cdbe2b829","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Init/Sym/Lemmas.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2026 Amazon.com, Inc. or its affiliates. All Rights Reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module
prelude
public import Init.Data.Rat.Basic
public import Init.Data.SInt.Basic
public import Init.Data.Int.DivMod.Lemmas
public import Init.Data.Nat.Dvd
public import Init.Data.String.Basic
import Init.Data.BitVec.Lemmas
import Init.Data.Int.Order
import Init.Data.UInt.Lemmas

namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.NeSelf.Variant042e1a85c7d8140062137d1dab0f0a65783650845745d4dd5373372cdbe2b829

public section
namespace Lean.Sym

theorem ne_self (a : α) : (a ≠ a) = False := by simp
theorem not_true_eq : (¬ True) = False := by simp
theorem not_false_eq : (¬ False) = True := by simp

theorem or_eq_true_left (a b : Prop) (h : a = True) : (a ∨ b) = True := by simp [h]
theorem or_eq_right (a b : Prop) (h : a = False) : (a ∨ b) = b := by simp [h]

theorem and_eq_false_left (a b : Prop) (h : a = False) : (a ∧ b) = False := by simp [h]
theorem and_eq_left (a b : Prop) (h : a = True) : (a ∧ b) = b := by simp [h]

theorem ite_cond_congr {α : Sort u} (c : Prop) {inst : Decidable c} (a b : α)
    (c' : Prop) {inst' : Decidable c'} (h : c = c') : @ite α c inst a b = @ite α c' inst' a b := by
  simp [*]

theorem ite_true {α : Sort u} (c : Prop) {inst : Decidable c} (a b : α) {ht : c} : @ite α c inst a b = a := by
  simp [*]

theorem ite_true_congr {α : Sort u} (c : Prop) {inst : Decidable c} (a b : α) (c' : Prop) (h : c = c') {ht : c'} : @ite α c inst a b = a := by
  simp [*]

theorem ite_false {α : Sort u} (c : Prop) {inst : Decidable c} (a b : α) {ht : ¬ c} : @ite α c inst a b = b := by
  simp [*]

theorem ite_false_congr {α : Sort u} (c : Prop) {inst : Decidable c} (a b : α) (c' : Prop) (h : c = c') {ht : ¬ c'} : @ite α c inst a b = b := by
  simp [*]

theorem dite_true {α : Sort u} (c : Prop) {inst : Decidable c} (a : c → α) (b : ¬ c → α) {ht : c} : @dite α c inst a b = a ht := by
  simp [*]

theorem dite_true_congr {α : Sort u} (c : Prop) {inst : Decidable c} (a : c → α) (b : ¬ c → α) (c' : Prop) (h : c = c') {ht : c'} : @dite α c inst a b = a (h.mpr_prop ht) := by
  subst h; simp [*]

theorem dite_false {α : Sort u} (c : Prop) {inst : Decidable c} (a : c → α) (b : ¬ c → α) {ht : ¬ c} : @dite α c inst a b = b ht := by
  simp [*]

theorem dite_false_congr {α : Sort u} (c : Prop) {inst : Decidable c} (a : c → α) (b : ¬ c → α) (c' : Prop) (h : c = c') {ht : ¬ c'} : @dite α c inst a b = b (h.mpr_not ht) := by
  subst h; simp [*]

theorem dite_cond_congr {α : Sort u} (c : Prop) {inst : Decidable c} (a : c → α) (b : ¬ c → α)
    (c' : Prop) {inst' : Decidable c'} (h : c = c')
    : @dite α c inst a b = @dite α c' inst' (fun h' => a (h.mpr_prop h')) (fun h' => b (h.mpr_not h')) := by
  simp [*]

theorem cond_cond_eq_true {α : Sort u} (c : Bool) (a b : α) (h : c = true) : cond c a b = a := by
  simp [*]

theorem cond_cond_eq_false {α : Sort u} (c : Bool) (a b : α) (h : c = false) : cond c a b = b := by
  simp [*]

theorem cond_cond_congr {α : Sort u} (c : Bool) (a b : α) (c' : Bool) (h : c = c') : cond c a b = cond c' a b := by
  simp [*]

theorem Nat.lt_eq_true (a b : Nat) (h : decide (a < b) = true) : (a < b) = True := by simp_all
theorem Int.lt_eq_true (a b : Int) (h : decide (a < b) = true) : (a < b) = True := by simp_all
theorem Rat.lt_eq_true (a b : Rat) (h : decide (a < b) = true) : (a < b) = True := by simp_all
theorem Int8.lt_eq_true (a b : Int8) (h : decide (a < b) = true) : (a < b) = True := by simp_all
theorem Int16.lt_eq_true (a b : Int16) (h : decide (a < b) = true) : (a < b) = True := by simp_all
theorem Int32.lt_eq_true (a b : Int32) (h : decide (a < b) = true) : (a < b) = True := by simp_all
theorem Int64.lt_eq_true (a b : Int64) (h : decide (a < b) = true) : (a < b) = True := by simp_all
theorem UInt8.lt_eq_true (a b : UInt8) (h : decide (a < b) = true) : (a < b) = True := by simp_all
theorem UInt16.lt_eq_true (a b : UInt16) (h : decide (a < b) = true) : (a < b) = True := by simp_all
theorem UInt32.lt_eq_true (a b : UInt32) (h : decide (a < b) = true) : (a < b) = True := by simp_all
theorem UInt64.lt_eq_true (a b : UInt64) (h : decide (a < b) = true) : (a < b) = True := by simp_all
theorem Fin.lt_eq_true (a b : Fin n) (h : decide (a < b) = true) : (a < b) = True := by simp_all
theorem BitVec.lt_eq_true (a b : BitVec n) (h : decide (a < b) = true) : (a < b) = True := by simp_all
theorem String.lt_eq_true (a b : String) (h : decide (a < b) = true) : (a < b) = True := by simp_all
theorem Char.lt_eq_true (a b : Char) (h : decide (a < b) = true) : (a < b) = True := by simp_all

theorem Nat.lt_eq_false (a b : Nat) (h : decide (a < b) = false) : (a < b) = False := by simp_all
theorem Int.lt_eq_false (a b : Int) (h : decide (a < b) = false) : (a < b) = False := by simp_all
theorem Rat.lt_eq_false (a b : Rat) (h : decide (a < b) = false) : (a < b) = False := by simp_all
theorem Int8.lt_eq_false (a b : Int8) (h : decide (a < b) = false) : (a < b) = False := by simp_all
theorem Int16.lt_eq_false (a b : Int16) (h : decide (a < b) = false) : (a < b) = False := by simp_all
theorem Int32.lt_eq_false (a b : Int32) (h : decide (a < b) = false) : (a < b) = False := by simp_all
theorem Int64.lt_eq_false (a b : Int64) (h : decide (a < b) = false) : (a < b) = False := by simp_all
theorem UInt8.lt_eq_false (a b : UInt8) (h : decide (a < b) = false) : (a < b) = False := by simp_all
theorem UInt16.lt_eq_false (a b : UInt16) (h : decide (a < b) = false) : (a < b) = False := by simp_all
theorem UInt32.lt_eq_false (a b : UInt32) (h : decide (a < b) = false) : (a < b) = False := by simp_all
theorem UInt64.lt_eq_false (a b : UInt64) (h : decide (a < b) = false) : (a < b) = False := by simp_all
theorem Fin.lt_eq_false (a b : Fin n) (h : decide (a < b) = false) : (a < b) = False := by simp_all
theorem BitVec.lt_eq_false (a b : BitVec n) (h : decide (a < b) = false) : (a < b) = False := by simp_all
theorem String.lt_eq_false (a b : String) (h : decide (a < b) = false) : (a < b) = False := by simp_all
theorem Char.lt_eq_false (a b : Char) (h : decide (a < b) = false) : (a < b) = False := by simp_all

theorem Nat.le_eq_true (a b : Nat) (h : decide (a ≤ b) = true) : (a ≤ b) = True := by simp_all
theorem Int.le_eq_true (a b : Int) (h : decide (a ≤ b) = true) : (a ≤ b) = True := by simp_all
theorem Rat.le_eq_true (a b : Rat) (h : decide (a ≤ b) = true) : (a ≤ b) = True := by simp_all
theorem Int8.le_eq_true (a b : Int8) (h : decide (a ≤ b) = true) : (a ≤ b) = True := by simp_all
theorem Int16.le_eq_true (a b : Int16) (h : decide (a ≤ b) = true) : (a ≤ b) = True := by simp_all
theorem Int32.le_eq_true (a b : Int32) (h : decide (a ≤ b) = true) : (a ≤ b) = True := by simp_all
theorem Int64.le_eq_true (a b : Int64) (h : decide (a ≤ b) = true) : (a ≤ b) = True := by simp_all
theorem UInt8.le_eq_true (a b : UInt8) (h : decide (a ≤ b) = true) : (a ≤ b) = True := by simp_all
theorem UInt16.le_eq_true (a b : UInt16) (h : decide (a ≤ b) = true) : (a ≤ b) = True := by simp_all
theorem UInt32.le_eq_true (a b : UInt32) (h : decide (a ≤ b) = true) : (a ≤ b) = True := by simp_all
theorem UInt64.le_eq_true (a b : UInt64) (h : decide (a ≤ b) = true) : (a ≤ b) = True := by simp_all
theorem Fin.le_eq_true (a b : Fin n) (h : decide (a ≤ b) = true) : (a ≤ b) = True := by simp_all
theorem BitVec.le_eq_true (a b : BitVec n) (h : decide (a ≤ b) = true) : (a ≤ b) = True := by simp_all
theorem String.le_eq_true (a b : String) (h : decide (a ≤ b) = true) : (a ≤ b) = True := by simp_all
theorem Char.le_eq_true (a b : Char) (h : decide (a ≤ b) = true) : (a ≤ b) = True := by simp_all

theorem Nat.le_eq_false (a b : Nat) (h : decide (a ≤ b) = false) : (a ≤ b) = False := by simp_all
theorem Int.le_eq_false (a b : Int) (h : decide (a ≤ b) = false) : (a ≤ b) = False := by simp_all
theorem Rat.le_eq_false (a b : Rat) (h : decide (a ≤ b) = false) : (a ≤ b) = False := by simp_all
theorem Int8.le_eq_false (a b : Int8) (h : decide (a ≤ b) = false) : (a ≤ b) = False := by simp_all
theorem Int16.le_eq_false (a b : Int16) (h : decide (a ≤ b) = false) : (a ≤ b) = False := by simp_all
theorem Int32.le_eq_false (a b : Int32) (h : decide (a ≤ b) = false) : (a ≤ b) = False := by simp_all
theorem Int64.le_eq_false (a b : Int64) (h : decide (a ≤ b) = false) : (a ≤ b) = False := by simp_all
theorem UInt8.le_eq_false (a b : UInt8) (h : decide (a ≤ b) = false) : (a ≤ b) = False := by simp_all
theorem UInt16.le_eq_false (a b : UInt16) (h : decide (a ≤ b) = false) : (a ≤ b) = False := by simp_all
theorem UInt32.le_eq_false (a b : UInt32) (h : decide (a ≤ b) = false) : (a ≤ b) = False := by simp_all
theorem UInt64.le_eq_false (a b : UInt64) (h : decide (a ≤ b) = false) : (a ≤ b) = False := by simp_all
theorem Fin.le_eq_false (a b : Fin n) (h : decide (a ≤ b) = false) : (a ≤ b) = False := by simp_all
theorem BitVec.le_eq_false (a b : BitVec n) (h : decide (a ≤ b) = false) : (a ≤ b) = False := by simp_all
theorem String.le_eq_false (a b : String) (h : decide (a ≤ b) = false) : (a ≤ b) = False := by simp_all
theorem Char.le_eq_false (a b : Char) (h : decide (a ≤ b) = false) : (a ≤ b) = False := by simp_all

theorem Nat.eq_eq_true (a b : Nat) (h : decide (a = b) = true) : (a = b) = True := by simp_all
theorem Int.eq_eq_true (a b : Int) (h : decide (a = b) = true) : (a = b) = True := by simp_all
theorem Rat.eq_eq_true (a b : Rat) (h : decide (a = b) = true) : (a = b) = True := by simp_all
theorem Int8.eq_eq_true (a b : Int8) (h : decide (a = b) = true) : (a = b) = True := by simp_all
theorem Int16.eq_eq_true (a b : Int16) (h : decide (a = b) = true) : (a = b) = True := by simp_all
theorem Int32.eq_eq_true (a b : Int32) (h : decide (a = b) = true) : (a = b) = True := by simp_all
theorem Int64.eq_eq_true (a b : Int64) (h : decide (a = b) = true) : (a = b) = True := by simp_all
theorem UInt8.eq_eq_true (a b : UInt8) (h : decide (a = b) = true) : (a = b) = True := by simp_all
theorem UInt16.eq_eq_true (a b : UInt16) (h : decide (a = b) = true) : (a = b) = True := by simp_all
theorem UInt32.eq_eq_true (a b : UInt32) (h : decide (a = b) = true) : (a = b) = True := by simp_all
theorem UInt64.eq_eq_true (a b : UInt64) (h : decide (a = b) = true) : (a = b) = True := by simp_all
theorem Fin.eq_eq_true (a b : Fin n) (h : decide (a = b) = true) : (a = b) = True := by simp_all
theorem BitVec.eq_eq_true (a b : BitVec n) (h : decide (a = b) = true) : (a = b) = True := by simp_all
theorem String.eq_eq_true (a b : String) (h : decide (a = b) = true) : (a = b) = True := by simp_all
theorem Char.eq_eq_true (a b : Char) (h : decide (a = b) = true) : (a = b) = True := by simp_all

theorem Nat.eq_eq_false (a b : Nat) (h : decide (a = b) = false) : (a = b) = False := by simp_all
theorem Int.eq_eq_false (a b : Int) (h : decide (a = b) = false) : (a = b) = False := by simp_all
theorem Rat.eq_eq_false (a b : Rat) (h : decide (a = b) = false) : (a = b) = False := by simp_all
theorem Int8.eq_eq_false (a b : Int8) (h : decide (a = b) = false) : (a = b) = False := by simp_all
theorem Int16.eq_eq_false (a b : Int16) (h : decide (a = b) = false) : (a = b) = False := by simp_all
theorem Int32.eq_eq_false (a b : Int32) (h : decide (a = b) = false) : (a = b) = False := by simp_all
theorem Int64.eq_eq_false (a b : Int64) (h : decide (a = b) = false) : (a = b) = False := by simp_all
theorem UInt8.eq_eq_false (a b : UInt8) (h : decide (a = b) = false) : (a = b) = False := by simp_all
theorem UInt16.eq_eq_false (a b : UInt16) (h : decide (a = b) = false) : (a = b) = False := by simp_all
theorem UInt32.eq_eq_false (a b : UInt32) (h : decide (a = b) = false) : (a = b) = False := by simp_all
theorem UInt64.eq_eq_false (a b : UInt64) (h : decide (a = b) = false) : (a = b) = False := by simp_all
theorem Fin.eq_eq_false (a b : Fin n) (h : decide (a = b) = false) : (a = b) = False := by simp_all
theorem BitVec.eq_eq_false (a b : BitVec n) (h : decide (a = b) = false) : (a = b) = False := by simp_all
theorem String.eq_eq_false (a b : String) (h : decide (a = b) = false) : (a = b) = False := by simp_all
theorem Char.eq_eq_false (a b : Char) (h : decide (a = b) = false) : (a = b) = False := by simp_all

theorem Nat.dvd_eq_true (a b : Nat) (h : decide (a ∣ b) = true) : (a ∣ b) = True := by simp_all
theorem Int.dvd_eq_true (a b : Int) (h : decide (a ∣ b) = true) : (a ∣ b) = True := by simp_all

theorem Nat.dvd_eq_false (a b : Nat) (h : decide (a ∣ b) = false) : (a ∣ b) = False := by simp_all
theorem Int.dvd_eq_false (a b : Int) (h : decide (a ∣ b) = false) : (a ∣ b) = False := by simp_all

theorem decide_isTrue (p : Prop) {inst : Decidable p} {h : p} : decide p = true := by simp [*]
theorem decide_isTrue_congr (p p' : Prop) (heq : p = p') {inst : Decidable p} {hp : p'} : decide p = true := by simp [*]

theorem decide_isFalse (p : Prop) {inst : Decidable p} {h : ¬p} : decide p = false := by simp [*]
theorem decide_isFalse_congr (p p' : Prop) (heq : p = p') {inst : Decidable p} {hnp : ¬p'} : decide p = false := by simp [*]

theorem decide_prop_eq_true (p : Prop) {inst : Decidable p} (h : p = True) : decide p = true := by simp [*]
theorem decide_prop_eq_false (p : Prop) {inst : Decidable p} (h : p = False) : decide p = false := by simp [*]

end Lean.Sym
```
