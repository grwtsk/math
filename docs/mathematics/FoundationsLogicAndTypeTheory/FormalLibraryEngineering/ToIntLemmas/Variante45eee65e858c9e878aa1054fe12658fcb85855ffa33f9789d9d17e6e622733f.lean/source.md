# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ToIntLemmas.Variante45eee65e858c9e878aa1054fe12658fcb85855ffa33f9789d9d17e6e622733f

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `eedab2b2b70ea27ab5d84550adfa77e5eb32aa27` · SHA-256 `7bedf5e15744014f213d2513b6a8696c8b88a8a3612e9249615d6b67693da6c7`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.OfEqWrapCo.Varianta7d34ddf75bfde5bb4a3ef3c5fd857296e0d90311731631dc9efd8088ba6f723","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"a7d34ddf75bfde5bb4a3ef3c5fd857296e0d90311731631dc9efd8088ba6f723","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.OfEqWrapCo.Varianta7d34ddf75bfde5bb4a3ef3c5fd857296e0d90311731631dc9efd8088ba6f723","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"a7d34ddf75bfde5bb4a3ef3c5fd857296e0d90311731631dc9efd8088ba6f723","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Init/Grind/ToIntLemmas.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["external_root_references_preserved","implicit_eof_scopes","root_references_require_identity_review","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Amazon.com, Inc. or its affiliates. All Rights Reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module

prelude
public import Init.Grind.ToInt
import all Init.Grind.ToInt
public import Init.Data.Option.Basic


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.OfEqWrapCo.Varianta7d34ddf75bfde5bb4a3ef3c5fd857296e0d90311731631dc9efd8088ba6f723

public section

namespace Lean.Grind.ToInt

/-! Wrap -/

theorem of_eq_wrap_co_0 (i : IntInterval) (hi : Int) (h : i = .co 0 hi) {a b : Int} : a = i.wrap b → a = b % hi := by
  revert h
  cases i <;> simp
  intro h₁ h₂; subst h₁ h₂; simp

/-! Asserted propositions -/

theorem of_eq {α i} [ToInt α i] {a b : α} {a' b' : Int}
    (h₁ : toInt a = a') (h₂ : toInt b = b') : a = b → a' = b' := by
  intro h; replace h := congrArg toInt h
  rw [h₁, h₂] at h; assumption

theorem of_diseq {α i} [ToInt α i] {a b : α} {a' b' : Int}
    (h₁ : toInt a = a') (h₂ : toInt b = b') : a ≠ b → a' ≠ b' := by
  intro hne h; rw [← h₁, ← h₂] at h
  replace h := ToInt.toInt_inj _ _ h; contradiction

theorem of_le {α i} [ToInt α i] [_root_.LE α] [ToInt.LE α i] {a b : α} {a' b' : Int}
    (h₁ : toInt a = a') (h₂ : toInt b = b') : a ≤ b → a' ≤ b' := by
  intro h; replace h := ToInt.LE.le_iff _ _ |>.mp h
  rw [h₁, h₂] at h; assumption

theorem of_not_le {α i} [ToInt α i] [_root_.LE α] [ToInt.LE α i] {a b : α} {a' b' : Int}
    (h₁ : toInt a = a') (h₂ : toInt b = b') : ¬ (a ≤ b) → b' + 1 ≤ a' := by
  intro h; have h' := ToInt.LE.le_iff a b
  simp [h, h₁, h₂] at h'; exact h'

theorem of_lt {α i} [ToInt α i] [_root_.LT α] [ToInt.LT α i] {a b : α} {a' b' : Int}
    (h₁ : toInt a = a') (h₂ : toInt b = b') : a < b → a' + 1 ≤ b' := by
  intro h; replace h := ToInt.LT.lt_iff _ _ |>.mp h
  rw [h₁, h₂] at h; assumption

theorem of_not_lt {α i} [ToInt α i] [_root_.LT α] [ToInt.LT α i] {a b : α} {a' b' : Int}
    (h₁ : toInt a = a') (h₂ : toInt b = b') : ¬ (a < b) → b' ≤ a' := by
  intro h; have h' := ToInt.LT.lt_iff a b
  simp [h, h₁, h₂] at h'; assumption

private theorem isNonempty {α i} [ToInt α i] (a : α) : i.nonEmpty = true := by
  have := ToInt.toInt_mem a; simp; split <;> simp
  simp at this; omega

/-! Addition -/

theorem add_congr {α i} [ToInt α i] [_root_.Add α] [ToInt.Add α i] {a b : α} {a' b' : Int}
    (h₁ : toInt a = a') (h₂ : toInt b = b') : toInt (a + b) = i.wrap (a' + b') := by
  rw [ToInt.Add.toInt_add, h₁, h₂]

theorem add_congr.ww {α i} [ToInt α i] [_root_.Add α] [ToInt.Add α i] (h : i.isFinite) {a b : α} {a' b' : Int}
    (h₁ : toInt a = i.wrap a') (h₂ : toInt b = i.wrap b') : toInt (a + b) = i.wrap (a' + b') := by
  rw [add_congr h₁ h₂, ← i.wrap_add h]

theorem add_congr.wr {α i} [ToInt α i] [_root_.Add α] [ToInt.Add α i] (h : i.isFinite) {a b : α} {a' b' : Int}
    (h₁ : toInt a = a') (h₂ : toInt b = i.wrap b') : toInt (a + b) = i.wrap (a' + b') := by
  have h' := isNonempty a
  have := i.wrap_eq_self_iff h' _ |>.mpr (ToInt.toInt_mem a)
  rw [h₁] at this; rw [← this] at h₁; apply add_congr.ww h h₁ h₂

theorem add_congr.wl {α i} [ToInt α i] [_root_.Add α] [ToInt.Add α i] (h : i.isFinite) {a b : α} {a' b' : Int}
    (h₁ : toInt a = i.wrap a') (h₂ : toInt b = b') : toInt (a + b) = i.wrap (a' + b') := by
  have h' := isNonempty a
  have := i.wrap_eq_self_iff h' _ |>.mpr (ToInt.toInt_mem b)
  rw [h₂] at this; rw [← this] at h₂; apply add_congr.ww h h₁ h₂

/-! Multiplication -/

theorem mul_congr {α i} [ToInt α i] [_root_.Mul α] [ToInt.Mul α i] {a b : α} {a' b' : Int}
    (h₁ : toInt a = a') (h₂ : toInt b = b') : toInt (a * b) = i.wrap (a' * b') := by
  rw [ToInt.Mul.toInt_mul, h₁, h₂]

theorem mul_congr.ww {α i} [ToInt α i] [_root_.Mul α] [ToInt.Mul α i] (h : i.isFinite) {a b : α} {a' b' : Int}
    (h₁ : toInt a = i.wrap a') (h₂ : toInt b = i.wrap b') : toInt (a * b) = i.wrap (a' * b') := by
  rw [ToInt.Mul.toInt_mul, h₁, h₂, ← i.wrap_mul]; apply h

theorem mul_congr.wr {α i} [ToInt α i] [_root_.Mul α] [ToInt.Mul α i] (h : i.isFinite) {a b : α} {a' b' : Int}
    (h₁ : toInt a = a') (h₂ : toInt b = i.wrap b') : toInt (a * b) = i.wrap (a' * b') := by
  have h' := isNonempty a
  have := i.wrap_eq_self_iff h' _ |>.mpr (ToInt.toInt_mem a)
  rw [h₁] at this; rw [← this] at h₁; apply mul_congr.ww h h₁ h₂

theorem mul_congr.wl {α i} [ToInt α i] [_root_.Mul α] [ToInt.Mul α i] (h : i.isFinite) {a b : α} {a' b' : Int}
    (h₁ : toInt a = i.wrap a') (h₂ : toInt b = b') : toInt (a * b) = i.wrap (a' * b') := by
  have h' := isNonempty a
  have := i.wrap_eq_self_iff h' _ |>.mpr (ToInt.toInt_mem b)
  rw [h₂] at this; rw [← this] at h₂; apply mul_congr.ww h h₁ h₂

/-! Subtraction -/

theorem sub_congr {α i} [ToInt α i] [_root_.Sub α] [ToInt.Sub α i] {a b : α} {a' b' : Int}
    (h₁ : toInt a = a') (h₂ : toInt b = b') : toInt (a - b) = i.wrap (a' - b') := by
  rw [ToInt.Sub.toInt_sub, h₁, h₂]

/-! Negation -/

theorem neg_congr {α i} [ToInt α i] [_root_.Neg α] [ToInt.Neg α i] {a : α} {a' : Int}
    (h₁ : toInt a = a') : toInt (- a) = i.wrap (- a') := by
  rw [ToInt.Neg.toInt_neg, h₁]

/-! Power -/

theorem pow_congr {α i} [ToInt α i] [HPow α Nat α] [ToInt.Pow α i] {a : α} (k : Nat) (a' : Int)
    (h₁ : toInt a = a') : toInt (a ^ k) = i.wrap (a' ^ k) := by
  rw [ToInt.Pow.toInt_pow, h₁]

/-! Division -/

theorem div_congr {α i} [ToInt α i] [_root_.Div α] [ToInt.Div α i] {a b : α} {a' b' : Int}
    (h₁ : toInt a = a') (h₂ : toInt b = b') : toInt (a / b) = a' / b' := by
  rw [ToInt.Div.toInt_div, h₁, h₂]

/-! Modulo -/

theorem mod_congr {α i} [ToInt α i] [_root_.Mod α] [ToInt.Mod α i] {a b : α} {a' b' : Int}
    (h₁ : toInt a = a') (h₂ : toInt b = b') : toInt (a % b) = a' % b' := by
  rw [ToInt.Mod.toInt_mod, h₁, h₂]

/-! OfNat -/

theorem ofNat_eq {α i} [ToInt α i] [∀ n, _root_.OfNat α n] [ToInt.OfNat α i] (n : Nat)
    : toInt (OfNat.ofNat (α := α) n) = i.wrap n := by
  apply ToInt.OfNat.toInt_ofNat

/-! Zero -/

theorem zero_eq {α i} [ToInt α i] [_root_.Zero α] [ToInt.Zero α i] : toInt (0 : α) = 0 := by
  apply ToInt.Zero.toInt_zero

/-! Lower and upper bounds -/

theorem ge_lower {α i} [ToInt α i] (lo : Int) (h : i.lo? == some lo) (a : α) : -1 * toInt a + lo ≤ 0 := by
  have h' := ToInt.toInt_mem a
  revert h h'; cases i <;> simp [IntInterval.lo?] <;> intro h <;> subst h <;> intros <;> omega

theorem ge_lower0 {α i} [ToInt α i] (h : i.lo? == some 0) (a : α) : -1 * toInt a ≤ 0 := by
  have h' := ToInt.toInt_mem a
  revert h h'; cases i <;> simp [IntInterval.lo?] <;> intro h <;> subst h <;> intros <;> omega

theorem le_upper {α i} [ToInt α i] (hi' : Int) (h : i.hi? == some (-hi' + 1)) (a : α) : toInt a + hi' ≤ 0 := by
  have h' := ToInt.toInt_mem a
  revert h h'; cases i <;> simp [IntInterval.hi?] <;> intro h <;> subst h <;> intros <;> omega

theorem ge_lower' {α i} [ToInt α i] (lo : Int) (h : i.lo? = some lo) (a : α) : lo ≤ toInt a := by
  have h' := ToInt.toInt_mem a
  revert h h'; cases i <;> simp [IntInterval.lo?] <;> intro h <;> subst h <;> intros <;> assumption

theorem le_upper' {α i} [ToInt α i] (hi : Int) (h : i.hi? = some hi) (a : α) : toInt a + 1 ≤ hi := by
  have h' := ToInt.toInt_mem a
  revert h h'; cases i <;> simp [IntInterval.hi?] <;> intro h <;> subst h <;> intros
  next h => exact Int.add_one_le_of_lt h
  next h => exact Int.add_one_le_of_lt h

end Lean.Grind.ToInt
```
