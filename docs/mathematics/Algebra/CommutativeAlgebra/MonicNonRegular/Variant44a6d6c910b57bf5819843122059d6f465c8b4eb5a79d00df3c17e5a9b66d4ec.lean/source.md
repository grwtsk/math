# Complete source: GRWTSK.Algebra.CommutativeAlgebra.MonicNonRegular.Variant44a6d6c910b57bf5819843122059d6f465c8b4eb5a79d00df3c17e5a9b66d4ec

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8a9be68ffb1f2967c40459b81e66192b957778ad` · SHA-256 `59d57c36ea133779947e091ad592d49d6973da48e3adb58ed06a0a366b3f833a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.CommutativeAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.CommutativeAlgebra.N.Variant6be18f4f6530e5106d72bfeb6b30d6323534f23eebf791e3438a9533e8f60469","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"6be18f4f6530e5106d72bfeb6b30d6323534f23eebf791e3438a9533e8f60469","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.Polynomials.SourceCorpus.N.Variant6be18f4f6530e5106d72bfeb6b30d6323534f23eebf791e3438a9533e8f60469","mathematical_subject":"Algebra.Polynomials","original_sha256":"6be18f4f6530e5106d72bfeb6b30d6323534f23eebf791e3438a9533e8f60469","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Counterexamples/MonicNonRegular.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2023 Damiano Testa. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Damiano Testa
-/

import Mathlib.Algebra.Polynomial.Monic

/-!
# `Monic` does not necessarily imply `IsRegular` in a `Semiring` with no opposites

This counterexample shows that the hypothesis `Ring R` cannot be changed to `Semiring R` in
`Polynomial.Monic.isRegular`.

The example is very simple.

The coefficient Semiring is the Semiring `N₃` of the natural numbers `{0, 1, 2, 3}` where the
standard addition and standard multiplication are truncated at `3`.

The products `(X + 2) * (X + 2)` and `(X + 2) * (X + 3)` are equal to
`X ^ 2 + 4 * X + 4` and `X ^ 2 + 5 * X + 6` respectively.

By truncation, `4, 5, 6` all mean `3` in `N`.
It follows that multiplication by `(X + 2)` is not injective.
-/

namespace GRWTSK.Algebra.CommutativeAlgebra.N.Variant6be18f4f6530e5106d72bfeb6b30d6323534f23eebf791e3438a9533e8f60469

open Polynomial

namespace Counterexample.NonRegular

/-- `N₃` is going to be a `CommSemiring` where addition and multiplication are truncated at `3`. -/
inductive N₃
  | zero
  | one
  | two
  | more

namespace N₃

instance : Zero N₃ := ⟨zero⟩
instance : One N₃ := ⟨one⟩

/-- Truncated addition on `N₃`. -/
instance : Add N₃ where
  add
  | 0, x => x
  | x, 0 => x
  | 1, 1 => two
  | _, _ => more

/-- Truncated multiplication on `N₃`. -/
instance : Mul N₃ where
  mul
  | 1, x => x
  | x, 1 => x
  | 0, _ => 0
  | _, 0 => 0
  | _, _ => more

instance : CommMonoid N₃ where
  mul_assoc := by rintro ⟨⟩ ⟨⟩ ⟨⟩ <;> rfl
  one_mul := by rintro ⟨⟩ <;> rfl
  mul_one := by rintro ⟨⟩ <;> rfl
  mul_comm := by rintro ⟨⟩ ⟨⟩ <;> rfl

instance : CommSemiring N₃ :=
  { (inferInstance : CommMonoid N₃) with
    add_assoc := by rintro ⟨⟩ ⟨⟩ ⟨⟩ <;> rfl
    zero_add  := by rintro ⟨⟩ <;> rfl
    add_zero  := by rintro ⟨⟩ <;> rfl
    add_comm  := by rintro ⟨⟩ ⟨⟩ <;> rfl
    left_distrib := by rintro ⟨⟩ ⟨⟩ ⟨⟩ <;> rfl
    right_distrib := by rintro ⟨⟩ ⟨⟩ ⟨⟩ <;> rfl
    zero_mul := by rintro ⟨⟩ <;> rfl
    mul_zero := by rintro ⟨⟩ <;> rfl
    nsmul := nsmulRec }

theorem X_add_two_mul_X_add_two : (X + C 2 : N₃[X]) * (X + C 2) = (X + C 2) * (X + C 3) := by
  simp only [mul_add, add_mul, X_mul, add_assoc]
  apply congr_arg
  rw [← add_assoc, ← add_mul, ← C_add, ← C_mul, ← C_mul]
  rw [← add_assoc, ← add_mul, ← C_add]
  rfl

/-! The main example: multiplication by the polynomial `X + 2` is not injective,
yet the polynomial is monic. -/

theorem monic_X_add_two : Monic (X + C 2 : N₃[X]) := by
  unfold Monic leadingCoeff
  nontriviality
  rw [natDegree_X_add_C 2]
  simp only [natDegree_X_add_C 2, coeff_C, coeff_add, coeff_X_one, ite_false, add_zero,
    reduceCtorEq]

theorem not_isLeftRegular_X_add_two : ¬ IsLeftRegular (X + C 2 : N₃[X]) := by
  intro h
  have H := h X_add_two_mul_X_add_two
  apply_fun (coeff · 0) at H
  simp only [coeff_add, coeff_X_zero, zero_add, coeff_C, ite_true] at H
  cases H

/-- The statement of the counterexample: not all monic polynomials over semirings are regular. -/
theorem not_monic_implies_isLeftRegular :
    ¬∀ {R : Type} [Semiring R] (p : R[X]), Monic p → IsLeftRegular p :=
  fun h => not_isLeftRegular_X_add_two (h _ monic_X_add_two)

end N₃

end Counterexample.NonRegular
```
