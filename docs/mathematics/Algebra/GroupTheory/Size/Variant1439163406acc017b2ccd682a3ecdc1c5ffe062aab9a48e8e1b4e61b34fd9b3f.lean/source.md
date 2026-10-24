# Complete source: GRWTSK.Algebra.GroupTheory.Size.Variant1439163406acc017b2ccd682a3ecdc1c5ffe062aab9a48e8e1b4e61b34fd9b3f

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `df89534fb943ababe3838234a14f805cc5bb6028` · SHA-256 `05902dd28d96f9e7cad6ea2140f9f7c691c78113b691d3da32500f7a9a715e64`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.GroupTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.GroupTheory.ShiftLeftEqMulPow.Variant6e8f4fe631db3d2ded27c60367fe3bcfc1f3c0e95dd31f228166e1015155f02b","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"6e8f4fe631db3d2ded27c60367fe3bcfc1f3c0e95dd31f228166e1015155f02b","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.Groups.SourceCorpus.ShiftLeftEqMulPow.Variant6e8f4fe631db3d2ded27c60367fe3bcfc1f3c0e95dd31f228166e1015155f02b","mathematical_subject":"Algebra.Groups","original_sha256":"6e8f4fe631db3d2ded27c60367fe3bcfc1f3c0e95dd31f228166e1015155f02b","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Data/Nat/Size.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2014 Floris van Doorn (c) 2016 Microsoft Corporation. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Floris van Doorn, Leonardo de Moura, Jeremy Avigad, Mario Carneiro
-/
import Mathlib.Algebra.Group.Nat.Defs
import Mathlib.Algebra.Group.Basic
import Mathlib.Data.Nat.Bits

/-! Lemmas about `size`. -/


namespace GRWTSK.Algebra.GroupTheory.ShiftLeftEqMulPow.Variant6e8f4fe631db3d2ded27c60367fe3bcfc1f3c0e95dd31f228166e1015155f02b

namespace Nat

/-! ### `shiftLeft` and `shiftRight` -/

section

theorem shiftLeft_eq_mul_pow (m) : ∀ n, m <<< n = m * 2 ^ n := shiftLeft_eq _

theorem shiftLeft'_tt_eq_mul_pow (m) : ∀ n, shiftLeft' true m n + 1 = (m + 1) * 2 ^ n
  | 0 => by simp [shiftLeft', pow_zero, Nat.one_mul]
  | k + 1 => by
    rw [shiftLeft', bit_val, Bool.toNat_true, add_assoc, ← Nat.mul_add_one,
      shiftLeft'_tt_eq_mul_pow m k, mul_left_comm, mul_comm 2, pow_succ]

end

theorem shiftLeft'_ne_zero_left (b) {m} (h : m ≠ 0) (n) : shiftLeft' b m n ≠ 0 := by
  induction n <;> simp [bit_ne_zero, shiftLeft', *]

theorem shiftLeft'_tt_ne_zero (m) : ∀ {n}, (n ≠ 0) → shiftLeft' true m n ≠ 0
  | 0, h => absurd rfl h
  | succ _, _ => by dsimp [shiftLeft', bit]; omega

/-! ### `size` -/


@[simp]
theorem size_zero : size 0 = 0 := by simp [size]

@[simp]
theorem size_bit {b n} (h : bit b n ≠ 0) : size (bit b n) = succ (size n) := by
  unfold size
  conv =>
    lhs
    rw [binaryRec]
    simp [h]

section

@[simp]
theorem size_one : size 1 = 1 :=
  show size (bit true 0) = 1 by rw [size_bit, size_zero]; exact Nat.one_ne_zero

end

@[simp]
theorem size_shiftLeft' {b m n} (h : shiftLeft' b m n ≠ 0) :
    size (shiftLeft' b m n) = size m + n := by
  induction n with
  | zero => simp [shiftLeft']
  | succ n IH =>
    simp only [shiftLeft', ne_eq] at h ⊢
    rw [size_bit h, Nat.add_succ]
    by_cases s0 : shiftLeft' b m n = 0
    case neg => rw [IH s0]
    rw [s0] at h ⊢
    cases b; · exact absurd rfl h
    have : shiftLeft' true m n + 1 = 1 := congr_arg (· + 1) s0
    rw [shiftLeft'_tt_eq_mul_pow] at this
    obtain rfl := succ.inj (eq_one_of_dvd_one ⟨_, this.symm⟩)
    simp only [zero_add, one_mul] at this
    obtain rfl : n = 0 := not_ne_iff.1 fun hn ↦ ne_of_gt (Nat.one_lt_pow hn (by decide)) this
    rw [add_zero]

@[simp]
theorem size_shiftLeft {m} (h : m ≠ 0) (n) : size (m <<< n) = size m + n := by
  simp only [size_shiftLeft' (shiftLeft'_ne_zero_left _ h _), ← shiftLeft'_false]

theorem lt_size_self (n : ℕ) : n < 2 ^ size n := by
  rw [← one_shiftLeft]
  have : ∀ {n}, n = 0 → n < 1 <<< (size n) := by simp
  refine binaryRec ?_ ?_ n
  · apply this rfl
  intro b n IH
  by_cases h : bit b n = 0
  · apply this h
  rw [size_bit h, shiftLeft_succ, shiftLeft_eq, one_mul]
  cases b <;> dsimp [bit] <;> omega

theorem size_le {m n : ℕ} : size m ≤ n ↔ m < 2 ^ n :=
  ⟨fun h => lt_of_lt_of_le (lt_size_self _) (Nat.pow_le_pow_right (by decide) h), by
    rw [← one_shiftLeft]
    induction m using binaryRec generalizing n with
    | z => simp
    | f b m IH =>
      intro h
      by_cases e : bit b m = 0
      · simp [e]
      rw [size_bit e]
      cases n with
      | zero => exact e.elim (Nat.eq_zero_of_le_zero (le_of_lt_succ h))
      | succ n =>
        apply succ_le_succ (IH _)
        apply Nat.lt_of_mul_lt_mul_left (a := 2)
        simp only [shiftLeft_succ] at *
        refine lt_of_le_of_lt ?_ h
        cases b <;> dsimp [bit] <;> omega⟩

theorem lt_size {m n : ℕ} : m < size n ↔ 2 ^ m ≤ n := by
  rw [← not_lt, Decidable.iff_not_comm, not_lt, size_le]

theorem size_pos {n : ℕ} : 0 < size n ↔ 0 < n := by rw [lt_size]; rfl

theorem size_eq_zero {n : ℕ} : size n = 0 ↔ n = 0 := by
  simpa [Nat.pos_iff_ne_zero, not_iff_not] using size_pos

theorem size_pow {n : ℕ} : size (2 ^ n) = n + 1 :=
  le_antisymm (size_le.2 <| Nat.pow_lt_pow_right (by decide) (lt_succ_self _))
    (lt_size.2 <| le_rfl)

theorem size_le_size {m n : ℕ} (h : m ≤ n) : size m ≤ size n :=
  size_le.2 <| lt_of_le_of_lt h (lt_size_self _)

theorem size_eq_bits_len (n : ℕ) : n.bits.length = n.size := by
  induction n using Nat.binaryRec' with
  | z => simp
  | f _ _ h ih =>
    rw [size_bit, bits_append_bit _ _ h]
    · simp [ih]
    · simpa [bit_eq_zero_iff]

end Nat
```
