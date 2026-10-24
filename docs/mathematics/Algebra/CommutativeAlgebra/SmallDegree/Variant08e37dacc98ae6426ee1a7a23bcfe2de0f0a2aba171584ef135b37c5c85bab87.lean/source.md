# Complete source: GRWTSK.Algebra.CommutativeAlgebra.SmallDegree.Variant08e37dacc98ae6426ee1a7a23bcfe2de0f0a2aba171584ef135b37c5c85bab87

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `485d4681b1bd57d32bd44255f3cce3c960220f8a` · SHA-256 `5db71844298e8eebbcd7a4a886031dc58fc2815f083d6e8ed8cab68589be01d9`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.CommutativeAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.CommutativeAlgebra.EqXAddCOfDegreeLeOne.Variant667bfd62730e5947bc5f9645c1845763218428b42f7ed5f28182ddf6466a9eee","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"667bfd62730e5947bc5f9645c1845763218428b42f7ed5f28182ddf6466a9eee","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.Polynomials.SourceCorpus.EqXAddCOfDegreeLeOne.Variant667bfd62730e5947bc5f9645c1845763218428b42f7ed5f28182ddf6466a9eee","mathematical_subject":"Algebra.Polynomials","original_sha256":"667bfd62730e5947bc5f9645c1845763218428b42f7ed5f28182ddf6466a9eee","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Algebra/Polynomial/Degree/SmallDegree.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2018 Chris Hughes. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Chris Hughes, Johannes Hölzl, Kim Morrison, Jens Wagemaker
-/
import Mathlib.Algebra.Polynomial.Degree.Operations
import Mathlib.Data.Nat.WithBot

/-!
# Results on polynomials of specific small degrees
-/


namespace GRWTSK.Algebra.CommutativeAlgebra.EqXAddCOfDegreeLeOne.Variant667bfd62730e5947bc5f9645c1845763218428b42f7ed5f28182ddf6466a9eee

open Finsupp Finset

open Polynomial

namespace Polynomial

universe u v

variable {R : Type u} {S : Type v} {a b c d : R} {n m : ℕ}

section Semiring

variable [Semiring R] {p q r : R[X]}

theorem eq_X_add_C_of_degree_le_one (h : degree p ≤ 1) : p = C (p.coeff 1) * X + C (p.coeff 0) :=
  ext fun n =>
    Nat.casesOn n (by simp) fun n =>
      Nat.casesOn n (by simp [coeff_C]) fun m => by
        -- Porting note: `by decide` → `Iff.mpr ..`
        have : degree p < m.succ.succ := lt_of_le_of_lt h
          (Iff.mpr WithBot.coe_lt_coe <| Nat.succ_lt_succ <| Nat.zero_lt_succ m)
        simp [coeff_eq_zero_of_degree_lt this, coeff_C, Nat.succ_ne_zero, coeff_X, Nat.succ_inj,
          @eq_comm ℕ 0]

theorem eq_X_add_C_of_degree_eq_one (h : degree p = 1) :
    p = C p.leadingCoeff * X + C (p.coeff 0) :=
  (eq_X_add_C_of_degree_le_one h.le).trans
    (by rw [← Nat.cast_one] at h; rw [leadingCoeff, natDegree_eq_of_degree_eq_some h])

theorem eq_X_add_C_of_natDegree_le_one (h : natDegree p ≤ 1) :
    p = C (p.coeff 1) * X + C (p.coeff 0) :=
  eq_X_add_C_of_degree_le_one <| degree_le_of_natDegree_le h

theorem Monic.eq_X_add_C (hm : p.Monic) (hnd : p.natDegree = 1) : p = X + C (p.coeff 0) := by
  rw [← one_mul X, ← C_1, ← hm.coeff_natDegree, hnd, ← eq_X_add_C_of_natDegree_le_one hnd.le]

theorem exists_eq_X_add_C_of_natDegree_le_one (h : natDegree p ≤ 1) : ∃ a b, p = C a * X + C b :=
  ⟨p.coeff 1, p.coeff 0, eq_X_add_C_of_natDegree_le_one h⟩

end Semiring

section Semiring

variable [Semiring R] {p q : R[X]} {ι : Type*}

theorem zero_le_degree_iff : 0 ≤ degree p ↔ p ≠ 0 := by
  rw [← not_lt, Nat.WithBot.lt_zero_iff, degree_eq_bot]

theorem ne_zero_of_coe_le_degree (hdeg : ↑n ≤ p.degree) : p ≠ 0 :=
  zero_le_degree_iff.mp <| (WithBot.coe_le_coe.mpr n.zero_le).trans hdeg

theorem le_natDegree_of_coe_le_degree (hdeg : ↑n ≤ p.degree) : n ≤ p.natDegree :=
  WithBot.coe_le_coe.mp <| by
    rwa [degree_eq_natDegree <| ne_zero_of_coe_le_degree hdeg] at hdeg

theorem degree_linear_le : degree (C a * X + C b) ≤ 1 :=
  degree_add_le_of_degree_le (degree_C_mul_X_le _) <| le_trans degree_C_le Nat.WithBot.coe_nonneg

theorem degree_linear_lt : degree (C a * X + C b) < 2 :=
  degree_linear_le.trans_lt <| WithBot.coe_lt_coe.mpr one_lt_two

@[simp]
theorem degree_linear (ha : a ≠ 0) : degree (C a * X + C b) = 1 := by
  rw [degree_add_eq_left_of_degree_lt <| degree_C_lt_degree_C_mul_X ha, degree_C_mul_X ha]

theorem natDegree_linear_le : natDegree (C a * X + C b) ≤ 1 :=
  natDegree_le_of_degree_le degree_linear_le

theorem natDegree_linear (ha : a ≠ 0) : natDegree (C a * X + C b) = 1 := by
  rw [natDegree_add_C, natDegree_C_mul_X a ha]

@[simp]
theorem leadingCoeff_linear (ha : a ≠ 0) : leadingCoeff (C a * X + C b) = a := by
  rw [add_comm, leadingCoeff_add_of_degree_lt (degree_C_lt_degree_C_mul_X ha),
    leadingCoeff_C_mul_X]

theorem degree_quadratic_le : degree (C a * X ^ 2 + C b * X + C c) ≤ 2 := by
  simpa only [add_assoc] using
    degree_add_le_of_degree_le (degree_C_mul_X_pow_le 2 a)
      (le_trans degree_linear_le <| WithBot.coe_le_coe.mpr one_le_two)

theorem degree_quadratic_lt : degree (C a * X ^ 2 + C b * X + C c) < 3 :=
  degree_quadratic_le.trans_lt <| WithBot.coe_lt_coe.mpr <| lt_add_one 2

theorem degree_linear_lt_degree_C_mul_X_sq (ha : a ≠ 0) :
    degree (C b * X + C c) < degree (C a * X ^ 2) := by
  simpa only [degree_C_mul_X_pow 2 ha] using degree_linear_lt

@[simp]
theorem degree_quadratic (ha : a ≠ 0) : degree (C a * X ^ 2 + C b * X + C c) = 2 := by
  rw [add_assoc, degree_add_eq_left_of_degree_lt <| degree_linear_lt_degree_C_mul_X_sq ha,
    degree_C_mul_X_pow 2 ha]
  rfl

theorem natDegree_quadratic_le : natDegree (C a * X ^ 2 + C b * X + C c) ≤ 2 :=
  natDegree_le_of_degree_le degree_quadratic_le

theorem natDegree_quadratic (ha : a ≠ 0) : natDegree (C a * X ^ 2 + C b * X + C c) = 2 :=
  natDegree_eq_of_degree_eq_some <| degree_quadratic ha

@[simp]
theorem leadingCoeff_quadratic (ha : a ≠ 0) : leadingCoeff (C a * X ^ 2 + C b * X + C c) = a := by
  rw [add_assoc, add_comm, leadingCoeff_add_of_degree_lt <| degree_linear_lt_degree_C_mul_X_sq ha,
    leadingCoeff_C_mul_X_pow]

theorem degree_cubic_le : degree (C a * X ^ 3 + C b * X ^ 2 + C c * X + C d) ≤ 3 := by
  simpa only [add_assoc] using
    degree_add_le_of_degree_le (degree_C_mul_X_pow_le 3 a)
      (le_trans degree_quadratic_le <| WithBot.coe_le_coe.mpr <| Nat.le_succ 2)

theorem degree_cubic_lt : degree (C a * X ^ 3 + C b * X ^ 2 + C c * X + C d) < 4 :=
  degree_cubic_le.trans_lt <| WithBot.coe_lt_coe.mpr <| lt_add_one 3

theorem degree_quadratic_lt_degree_C_mul_X_cb (ha : a ≠ 0) :
    degree (C b * X ^ 2 + C c * X + C d) < degree (C a * X ^ 3) := by
  simpa only [degree_C_mul_X_pow 3 ha] using degree_quadratic_lt

@[simp]
theorem degree_cubic (ha : a ≠ 0) : degree (C a * X ^ 3 + C b * X ^ 2 + C c * X + C d) = 3 := by
  rw [add_assoc, add_assoc, ← add_assoc (C b * X ^ 2),
    degree_add_eq_left_of_degree_lt <| degree_quadratic_lt_degree_C_mul_X_cb ha,
    degree_C_mul_X_pow 3 ha]
  rfl

theorem natDegree_cubic_le : natDegree (C a * X ^ 3 + C b * X ^ 2 + C c * X + C d) ≤ 3 :=
  natDegree_le_of_degree_le degree_cubic_le

theorem natDegree_cubic (ha : a ≠ 0) : natDegree (C a * X ^ 3 + C b * X ^ 2 + C c * X + C d) = 3 :=
  natDegree_eq_of_degree_eq_some <| degree_cubic ha

@[simp]
theorem leadingCoeff_cubic (ha : a ≠ 0) :
    leadingCoeff (C a * X ^ 3 + C b * X ^ 2 + C c * X + C d) = a := by
  rw [add_assoc, add_assoc, ← add_assoc (C b * X ^ 2), add_comm,
    leadingCoeff_add_of_degree_lt <| degree_quadratic_lt_degree_C_mul_X_cb ha,
    leadingCoeff_C_mul_X_pow]

end Semiring

end Polynomial
```
