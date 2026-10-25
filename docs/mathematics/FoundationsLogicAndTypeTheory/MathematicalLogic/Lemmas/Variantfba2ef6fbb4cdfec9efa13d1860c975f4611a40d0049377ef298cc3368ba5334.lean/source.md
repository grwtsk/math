# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Lemmas.Variantfba2ef6fbb4cdfec9efa13d1860c975f4611a40d0049377ef298cc3368ba5334

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1d795c2c83b35c59a87abda35f0c01aed2e88dc1` · SHA-256 `054cc82bbd690c72af6e29a464b653979d469ccf741013e796e91c7d6b9ca635`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.MathematicalLogic
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.AndLeftComm.Variantc16c1d6b828c7056722eeb251686a205ca7010f6e5b3dfd080fc5b97436ce9a6","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"c16c1d6b828c7056722eeb251686a205ca7010f6e5b3dfd080fc5b97436ce9a6","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Logic.Foundations.SourceCorpus.AndLeftComm.Variantc16c1d6b828c7056722eeb251686a205ca7010f6e5b3dfd080fc5b97436ce9a6","mathematical_subject":"Logic.Foundations","original_sha256":"c16c1d6b828c7056722eeb251686a205ca7010f6e5b3dfd080fc5b97436ce9a6","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/restored-inputs/packages/batteries/Batteries/Data/Nat/Bitwise/Lemmas.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 François G. Dorais. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: François G. Dorais
-/

module


namespace GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.AndLeftComm.Variantc16c1d6b828c7056722eeb251686a205ca7010f6e5b3dfd080fc5b97436ce9a6

@[expose] public section

/-! # Bitwise Lemmas

This module defines properties of the bitwise operations on natural numbers.

This file is complements `Init.Data.Nat.Bitwise.Lemmas` with properties that
are not necessary for the bitvector library.
-/

namespace Nat

/-! ### and -/

@[simp] theorem and_self_left (a b : Nat) : a &&& (a &&& b) = a &&& b := by
  apply Nat.eq_of_testBit_eq; simp

@[simp] theorem and_self_right (a b : Nat) : ((a &&& b) &&& b) = (a &&& b) := by
  apply Nat.eq_of_testBit_eq; simp

theorem and_left_comm (x y z : Nat) : x &&& (y &&& z) = y &&& (x &&& z) := by
  apply Nat.eq_of_testBit_eq; simp [Bool.and_left_comm]

theorem and_right_comm (x y z : Nat) : (x &&& y) &&& z = (x &&& z) &&& y := by
  apply Nat.eq_of_testBit_eq; simp [Bool.and_right_comm]

/-! ### or -/

@[simp] theorem or_self_left (a b : Nat) : a ||| (a ||| b) = a ||| b := by
  apply Nat.eq_of_testBit_eq; simp

@[simp] theorem or_self_right (a b : Nat) : (a ||| b) ||| b = a ||| b := by
  apply Nat.eq_of_testBit_eq; simp

theorem or_left_comm (x y z : Nat) : x ||| (y ||| z) = y ||| (x ||| z) := by
  apply Nat.eq_of_testBit_eq; simp [Bool.or_left_comm]

theorem or_right_comm (x y z : Nat) : (x ||| y) ||| z = (x ||| z) ||| y := by
  apply Nat.eq_of_testBit_eq; simp [Bool.or_right_comm]

/-! ### xor -/

theorem xor_left_comm (x y z : Nat) : x ^^^ (y ^^^ z) = y ^^^ (x ^^^ z) := by
  apply Nat.eq_of_testBit_eq; simp only [testBit_xor, Bool.xor_left_comm, implies_true]

theorem xor_right_comm (x y z : Nat) : (x ^^^ y) ^^^ z = (x ^^^ z) ^^^ y := by
  apply Nat.eq_of_testBit_eq; simp only [testBit_xor, Bool.xor_right_comm, implies_true]

@[simp] theorem xor_xor_cancel_left (x y : Nat) : x ^^^ (x ^^^ y) = y := by
  apply Nat.eq_of_testBit_eq; simp

@[simp] theorem xor_xor_cancel_right (x y : Nat) : (x ^^^ y) ^^^ y = x := by
  apply Nat.eq_of_testBit_eq; simp

theorem eq_of_xor_eq_zero {x y : Nat} : x ^^^ y = 0 → x = y := by
  intro h; rw [← xor_xor_cancel_left x y, h, xor_zero]

@[simp] theorem xor_eq_zero_iff {x y : Nat} : x ^^^ y = 0 ↔ x = y :=
  ⟨eq_of_xor_eq_zero, fun | rfl => Nat.xor_self _⟩

theorem xor_ne_zero_iff {x y : Nat} : x ^^^ y ≠ 0 ↔ x ≠ y := by simp

/-! ### injectivity lemmas -/

theorem xor_right_injective {x : Nat} : Function.Injective (x ^^^ ·) := by
  intro y z h; rw [← xor_xor_cancel_left x y, ← xor_xor_cancel_left x z]; simp only [h]

theorem xor_left_injective {x : Nat} : Function.Injective (· ^^^ x) := by
  intro y z h; rw [← xor_xor_cancel_right y x, ← xor_xor_cancel_right z x]; simp only [h]

@[simp] theorem xor_right_inj {x y z : Nat} : x ^^^ y = x ^^^ z ↔ y = z :=
  ⟨(xor_right_injective ·), fun | rfl => rfl⟩

@[simp] theorem xor_left_inj {x y z : Nat} : x ^^^ z = y ^^^ z ↔ x = y :=
  ⟨(xor_left_injective ·), fun | rfl => rfl⟩

theorem and_or_right_injective {m x y : Nat} : x &&& m = y &&& m → x ||| m = y ||| m → x = y := by
  intro ha ho
  apply Nat.eq_of_testBit_eq
  intro i
  rw [← Bool.and_or_inj_right_iff (m := m.testBit i)]
  simp [← testBit_and, ← testBit_or, ha, ho]

theorem and_or_right_inj {m x y : Nat} : x &&& m = y &&& m ∧ x ||| m = y ||| m ↔ x = y :=
  ⟨fun ⟨ha, ho⟩ => and_or_right_injective ha ho, fun | rfl => ⟨rfl, rfl⟩⟩

theorem and_or_left_injective {m x y : Nat} : m &&& x = m &&& y → m ||| x = m ||| y → x = y := by
  intro ha ho
  apply Nat.eq_of_testBit_eq
  intro i
  rw [← Bool.and_or_inj_left_iff (m := m.testBit i)]
  simp [← testBit_and, ← testBit_or, ha, ho]

theorem and_or_left_inj {m x y : Nat} : m &&& x = m &&& y ∧ m ||| x = m ||| y ↔ x = y :=
  ⟨fun ⟨ha, ho⟩ => and_or_left_injective ha ho, fun | rfl => ⟨rfl, rfl⟩⟩
```
