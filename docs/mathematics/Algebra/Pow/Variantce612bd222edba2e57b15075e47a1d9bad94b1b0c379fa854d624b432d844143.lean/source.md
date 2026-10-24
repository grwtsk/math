# Complete source: GRWTSK.Algebra.Pow.Variantce612bd222edba2e57b15075e47a1d9bad94b1b0c379fa854d624b432d844143

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `4963936c3e86f6c3976c92562431e044f7000033` · SHA-256 `0786f5f6266970d89bd150984407b2c82fc95729ff43184dcc5c103acac4f550`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.OneAddMulLePowPrime.Varianta3675ce4ec6cd1777e719762426f3710c2deb1cff40f7437632abf87907595cd","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"a3675ce4ec6cd1777e719762426f3710c2deb1cff40f7437632abf87907595cd","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.OneAddMulLePowPrime.Varianta3675ce4ec6cd1777e719762426f3710c2deb1cff40f7437632abf87907595cd","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"a3675ce4ec6cd1777e719762426f3710c2deb1cff40f7437632abf87907595cd","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Algebra/Order/Ring/Pow.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2019 Yury Kudryashov. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Yury Kudryashov
-/
import Mathlib.Data.Nat.Cast.Commute
import Mathlib.Data.Nat.Cast.Order.Ring

/-! # Bernoulli's inequality -/


namespace GRWTSK.Algebra.OneAddMulLePowPrime.Varianta3675ce4ec6cd1777e719762426f3710c2deb1cff40f7437632abf87907595cd

variable {R : Type*}

section OrderedSemiring
variable [Semiring R] [PartialOrder R] [IsOrderedRing R] {a : R}

/-- **Bernoulli's inequality**. This version works for semirings but requires
additional hypotheses `0 ≤ a * a` and `0 ≤ (1 + a) * (1 + a)`. -/
lemma one_add_mul_le_pow' (Hsq : 0 ≤ a * a) (Hsq' : 0 ≤ (1 + a) * (1 + a)) (H : 0 ≤ 2 + a) :
    ∀ n : ℕ, 1 + n * a ≤ (1 + a) ^ n
  | 0 => by simp
  | 1 => by simp
  | n + 2 =>
    have : 0 ≤ n * (a * a * (2 + a)) + a * a :=
      add_nonneg (mul_nonneg n.cast_nonneg (mul_nonneg Hsq H)) Hsq
    calc
      _ ≤ 1 + ↑(n + 2) * a + (n * (a * a * (2 + a)) + a * a) := le_add_of_nonneg_right this
      _ = (1 + a) * (1 + a) * (1 + n * a) := by
          simp only [Nat.cast_add, add_mul, mul_add, one_mul, mul_one, ← one_add_one_eq_two,
            Nat.cast_one, add_assoc, add_right_inj]
          simp only [← add_assoc, add_comm _ (↑n * a)]
          simp only [add_assoc, (n.cast_commute (_ : R)).left_comm]
          simp only [add_comm, add_left_comm]
      _ ≤ (1 + a) * (1 + a) * (1 + a) ^ n :=
        mul_le_mul_of_nonneg_left (one_add_mul_le_pow' Hsq Hsq' H _) Hsq'
      _ = (1 + a) ^ (n + 2) := by simp only [pow_succ', mul_assoc]

end OrderedSemiring

section LinearOrderedRing
variable [Ring R] [LinearOrder R] [IsStrictOrderedRing R] {a : R} {n : ℕ}

/-- **Bernoulli's inequality** for `n : ℕ`, `-2 ≤ a`. -/
lemma one_add_mul_le_pow (H : -2 ≤ a) (n : ℕ) : 1 + n * a ≤ (1 + a) ^ n :=
  one_add_mul_le_pow' (mul_self_nonneg _) (mul_self_nonneg _) (neg_le_iff_add_nonneg'.1 H) _

/-- **Bernoulli's inequality** reformulated to estimate `a^n`. -/
lemma one_add_mul_sub_le_pow (H : -1 ≤ a) (n : ℕ) : 1 + n * (a - 1) ≤ a ^ n := by
  have : -2 ≤ a - 1 := by
    rwa [← one_add_one_eq_two, neg_add, ← sub_eq_add_neg, sub_le_sub_iff_right]
  simpa only [add_sub_cancel] using one_add_mul_le_pow this n

end LinearOrderedRing
```
