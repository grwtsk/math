# Complete source: GRWTSK.Algebra.LinearAlgebra.Permanent.Variant990cf7719a0448942df3eed79a88a692f9dfa440c965900d98b1785a0a9e2906

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `14084f0346a906fc6a9b4720ad236f9374d1ad10` · SHA-256 `8bd716f3f8f24de28aa22e8c6eb4e15d9ee91e1088ae9386da4b23150dac9275`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.LinearAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.LinearAlgebra.Permanent.Variant454bd5ba3fe5c2aa7982cd0d52d784d6128097375ab09c59e9df347747170ecb","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"454bd5ba3fe5c2aa7982cd0d52d784d6128097375ab09c59e9df347747170ecb","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.MixedSubjects.SourceCorpus.Permanent.Variant454bd5ba3fe5c2aa7982cd0d52d784d6128097375ab09c59e9df347747170ecb","mathematical_subject":"Foundations.MixedSubjects","original_sha256":"454bd5ba3fe5c2aa7982cd0d52d784d6128097375ab09c59e9df347747170ecb","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/LinearAlgebra/Matrix/Permanent.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Moritz Firsching. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Moritz Firsching
-/
module

public import Mathlib.Data.Fintype.Perm
public import Mathlib.LinearAlgebra.Matrix.RowCol
/-!
# Permanent of a matrix

This file defines the permanent of a matrix, `Matrix.permanent`, and some of its properties.

## Main definitions

* `Matrix.permanent`: the permanent of a square matrix, as a sum over permutations

-/


namespace GRWTSK.Algebra.LinearAlgebra.Permanent.Variant454bd5ba3fe5c2aa7982cd0d52d784d6128097375ab09c59e9df347747170ecb

@[expose] public section

open Equiv Fintype Finset

namespace Matrix

variable {n : Type*} [DecidableEq n] [Fintype n]
variable {R : Type*} [CommSemiring R]

/-- The permanent of a square matrix defined as a sum over all permutations. This is analogous to
the determinant but without alternating signs. -/
def permanent (M : Matrix n n R) : R := ∑ σ : Perm n, ∏ i, M (σ i) i

@[simp]
theorem permanent_diagonal {d : n → R} : permanent (diagonal d) = ∏ i, d i := by
  refine (sum_eq_single 1 (fun σ _ hσ ↦ ?_) (fun h ↦ (h <| mem_univ _).elim)).trans ?_
  · match not_forall.mp (mt Equiv.ext hσ) with
    | ⟨x, hx⟩ => exact Finset.prod_eq_zero (mem_univ x) (ite_eq_right hx)
  · simp only [Perm.one_apply, diagonal_apply_eq]

@[simp]
theorem permanent_zero [Nonempty n] : permanent (0 : Matrix n n R) = 0 := by simp [permanent]

@[simp]
theorem permanent_one : permanent (1 : Matrix n n R) = 1 := by
  rw [← diagonal_one]; simp [-diagonal_one]

theorem permanent_isEmpty [IsEmpty n] {A : Matrix n n R} : permanent A = 1 := by simp [permanent]

theorem permanent_eq_one_of_card_eq_zero {A : Matrix n n R} (h : card n = 0) : permanent A = 1 :=
  haveI : IsEmpty n := card_eq_zero_iff.mp h
  permanent_isEmpty

/-- If `n` has only one element, the permanent of an `n` by `n` matrix is just that element.
Although `Unique` implies `DecidableEq` and `Fintype`, the instances might
not be syntactically equal. Thus, we need to fill in the args explicitly. -/
@[simp]
theorem permanent_unique {n : Type*} [Unique n] [DecidableEq n] [Fintype n] (A : Matrix n n R) :
    permanent A = A default default := by simp [permanent, univ_unique]

theorem permanent_eq_elem_of_subsingleton [Subsingleton n] (A : Matrix n n R) (k : n) :
    permanent A = A k k := by
  have := uniqueOfSubsingleton k
  convert! permanent_unique A

theorem permanent_eq_elem_of_card_eq_one {A : Matrix n n R} (h : card n = 1) (k : n) :
    permanent A = A k k :=
  haveI : Subsingleton n := card_le_one_iff_subsingleton.mp h.le
  permanent_eq_elem_of_subsingleton _ _

/-- Transposing a matrix preserves the permanent. -/
@[simp]
theorem permanent_transpose (M : Matrix n n R) : Mᵀ.permanent = M.permanent := by
  refine sum_bijective _ inv_involutive.bijective _ _ ?_
  intro σ
  apply Fintype.prod_equiv σ
  simp

/-- Permuting the columns does not change the permanent. -/
theorem permanent_permute_cols (σ : Perm n) (M : Matrix n n R) :
    (M.submatrix σ id).permanent = M.permanent :=
  (Group.mulLeft_bijective σ).sum_comp fun τ ↦ ∏ i : n, M (τ i) i

/-- Permuting the rows does not change the permanent. -/
theorem permanent_permute_rows (σ : Perm n) (M : Matrix n n R) :
    (M.submatrix id σ).permanent = M.permanent := by
  rw [← permanent_transpose, transpose_submatrix, permanent_permute_cols, permanent_transpose]

@[simp]
theorem permanent_smul (M : Matrix n n R) (c : R) :
    permanent (c • M) = c ^ Fintype.card n * permanent M := by
  simp only [permanent, smul_apply, smul_eq_mul, Finset.mul_sum]
  congr
  ext
  rw [mul_comm]
  conv in ∏ _, c * _ => simp [mul_comm c];
  exact prod_mul_pow_card.symm

@[simp]
theorem permanent_updateCol_smul (M : Matrix n n R) (j : n) (c : R) (u : n → R) :
    permanent (updateCol M j <| c • u) = c * permanent (updateCol M j u) := by
  simp only [permanent, ← mul_prod_erase _ _ (mem_univ j), updateCol_self, Pi.smul_apply,
    smul_eq_mul, mul_sum, ← mul_assoc]
  congr 1 with p
  rw [Finset.prod_congr rfl (fun i hi ↦ ?_)]
  simp only [ne_eq, ne_of_mem_erase hi, not_false_eq_true, updateCol_ne]

@[simp]
theorem permanent_updateRow_smul (M : Matrix n n R) (j : n) (c : R) (u : n → R) :
    permanent (updateRow M j <| c • u) = c * permanent (updateRow M j u) := by
  rw [← permanent_transpose, ← updateCol_transpose, permanent_updateCol_smul,
    updateCol_transpose, permanent_transpose]

end Matrix
```
