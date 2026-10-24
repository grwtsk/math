# Complete source: GRWTSK.Algebra.UniversalAlgebra.Cast.Variant35e4946f09525e8eee25fdfb69daa989f176873ba1a27ca62dac54271abf24ea

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6bc2d36b29921dcfe0b7f89ac917583e6807de07` · SHA-256 `71cdd846d8c50908c30cd137c37faedc66c2c20482dc7da26f9fd6d0c036d98c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.UniversalAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.UniversalAlgebra.CastMono.Variant3f85d33a43e7ed29583eec50d5b6de26c2c22efc5648e34ff550de8d1a5718ad","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"3f85d33a43e7ed29583eec50d5b6de26c2c22efc5648e34ff550de8d1a5718ad","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.GeneralAlgebra.SourceCorpus.CastMono.Variant3f85d33a43e7ed29583eec50d5b6de26c2c22efc5648e34ff550de8d1a5718ad","mathematical_subject":"Algebra.GeneralAlgebra","original_sha256":"3f85d33a43e7ed29583eec50d5b6de26c2c22efc5648e34ff550de8d1a5718ad","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/Algebra/Order/Ring/Cast.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["external_root_references_preserved","implicit_eof_scopes","root_references_require_identity_review","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2017 Mario Carneiro. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Mario Carneiro
-/
module

public import Mathlib.Algebra.Order.Group.Abs
public import Mathlib.Algebra.Order.Ring.Int
public import Mathlib.Data.Nat.Cast.Order.Ring

/-!
# Order properties of cast of integers

This file proves additional properties about the *canonical* homomorphism from
the integers into an additive group with a one (`Int.cast`),
particularly results involving algebraic homomorphisms or the order structure on `ℤ`
which were not available in the import dependencies of `Mathlib/Data/Int/Cast/Basic.lean`.

## TODO

Move order lemmas about `Nat.cast`, `Rat.cast`, `NNRat.cast` here.
-/


namespace GRWTSK.Algebra.UniversalAlgebra.CastMono.Variant3f85d33a43e7ed29583eec50d5b6de26c2c22efc5648e34ff550de8d1a5718ad

public section

open Nat

variable {R : Type*}

namespace Int
section OrderedAddCommGroupWithOne

variable [AddCommGroupWithOne R] [PartialOrder R] [AddLeftMono R]
variable [ZeroLEOneClass R]

@[gcongr]
lemma cast_mono : Monotone (Int.cast : ℤ → R) := by
  intro m n h
  rw [← sub_nonneg] at h
  lift n - m to ℕ using h with k hk
  rw [← sub_nonneg, ← cast_sub, ← hk, cast_natCast]
  exact k.cast_nonneg'

@[simp] lemma cast_nonneg : ∀ {n : ℤ}, 0 ≤ n → (0 : R) ≤ n | (n : ℕ), _ => by simp

variable [NeZero (1 : R)] {m n : ℤ}

@[simp] lemma cast_nonneg_iff : ∀ {n : ℤ}, (0 : R) ≤ n ↔ 0 ≤ n
  | (n : ℕ) => by simp
  | -[n+1] => by
    have : -(n : R) < 1 := lt_of_le_of_lt (by simp) zero_lt_one
    simpa [(negSucc_lt_zero n).not_ge, ← sub_eq_add_neg, le_neg] using this.not_ge

@[simp, norm_cast] lemma cast_le : (m : R) ≤ n ↔ m ≤ n := by
  rw [← sub_nonneg, ← cast_sub, cast_nonneg_iff, sub_nonneg]

lemma cast_strictMono : StrictMono (fun x : ℤ => (x : R)) :=
  strictMono_of_le_iff_le fun _ _ => cast_le.symm

@[simp, norm_cast, gcongr] lemma cast_lt : (m : R) < n ↔ m < n := cast_strictMono.lt_iff_lt

@[simp] lemma cast_nonpos : (n : R) ≤ 0 ↔ n ≤ 0 := by rw [← cast_zero, cast_le]

@[simp] lemma cast_pos : (0 : R) < n ↔ 0 < n := by rw [← cast_zero, cast_lt]

@[simp] lemma cast_lt_zero : (n : R) < 0 ↔ n < 0 := by rw [← cast_zero, cast_lt]

end OrderedAddCommGroupWithOne

section LinearOrderedRing
variable [Ring R] [LinearOrder R] [IsStrictOrderedRing R] {a b n : ℤ} {x : R}

@[simp, norm_cast]
lemma cast_min : ↑(min a b) = (min a b : R) := Monotone.map_min cast_mono

@[simp, norm_cast]
lemma cast_max : (↑(max a b) : R) = max (a : R) (b : R) := Monotone.map_max cast_mono

@[simp, norm_cast]
lemma cast_abs : (↑|a| : R) = |(a : R)| := by simp [abs_eq_max_neg]

lemma cast_one_le_of_pos (h : 0 < a) : (1 : R) ≤ a := mod_cast Int.add_one_le_of_lt h

lemma cast_le_neg_one_of_neg (h : a < 0) : (a : R) ≤ -1 := by
  rw [← Int.cast_one, ← Int.cast_neg, cast_le]
  exact Int.le_sub_one_of_lt h

variable (R) in
lemma cast_le_neg_one_or_one_le_cast_of_ne_zero (hn : n ≠ 0) : (n : R) ≤ -1 ∨ 1 ≤ (n : R) :=
  hn.lt_or_gt.imp cast_le_neg_one_of_neg cast_one_le_of_pos

lemma nneg_mul_add_sq_of_abs_le_one (n : ℤ) (hx : |x| ≤ 1) : (0 : R) ≤ n * x + n * n := by
  have hnx : 0 < n → 0 ≤ x + n := fun hn => by
    have := _root_.add_le_add (neg_le_of_abs_le hx) (cast_one_le_of_pos hn)
    rwa [neg_add_cancel] at this
  have hnx' : n < 0 → x + n ≤ 0 := fun hn => by
    have := _root_.add_le_add (le_of_abs_le hx) (cast_le_neg_one_of_neg hn)
    rwa [add_neg_cancel] at this
  rw [← mul_add, mul_nonneg_iff]
  rcases lt_trichotomy n 0 with (h | rfl | h)
  · exact Or.inr ⟨mod_cast h.le, hnx' h⟩
  · simp [le_total 0 x]
  · exact Or.inl ⟨mod_cast h.le, hnx h⟩

end LinearOrderedRing
end Int
```
