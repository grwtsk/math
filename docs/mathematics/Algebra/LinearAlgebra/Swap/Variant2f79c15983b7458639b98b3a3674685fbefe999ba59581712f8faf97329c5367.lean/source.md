# Complete source: GRWTSK.Algebra.LinearAlgebra.Swap.Variant2f79c15983b7458639b98b3a3674685fbefe999ba59581712f8faf97329c5367

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `53f4d762516f88e1c83266b0265e65f30103cd8a` · SHA-256 `7b3827d293839a3b6eecc92f3a21e36a2bfeacab658eb47c6d837904609bb845`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.LinearAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.LinearAlgebra.Swap.Variant7ea1688730fdfaccc2c604047f6c6d569cd7ae349225469ed9b10573e550ff74","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"7ea1688730fdfaccc2c604047f6c6d569cd7ae349225469ed9b10573e550ff74","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.LinearAlgebra.SourceCorpus.Swap.Variant7ea1688730fdfaccc2c604047f6c6d569cd7ae349225469ed9b10573e550ff74","mathematical_subject":"Algebra.LinearAlgebra","original_sha256":"7ea1688730fdfaccc2c604047f6c6d569cd7ae349225469ed9b10573e550ff74","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/LinearAlgebra/Matrix/Swap.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Judith Ludwig, Christian Merten. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Judith Ludwig, Christian Merten
-/
import Mathlib.LinearAlgebra.Matrix.GeneralLinearGroup.Defs
import Mathlib.LinearAlgebra.Matrix.Permutation
import Mathlib.Data.Matrix.PEquiv

/-!
# Swap matrices

A swap matrix indexed by `i` and `j` is the matrix that, when multiplying another matrix
on the left (resp. on the right), swaps the `i`-th row with the `j`-th row
(resp. the `i`-th column with the `j`-th column).

Swap matrices are a special case of *elementary matrices*. For transvections see
`Mathlib/LinearAlgebra/Matrix/Transvection.lean`.

## Implementation detail

This is a thin wrapper around `(Equiv.swap i j).permMatrix`.
-/


namespace GRWTSK.Algebra.LinearAlgebra.Swap.Variant7ea1688730fdfaccc2c604047f6c6d569cd7ae349225469ed9b10573e550ff74

namespace Matrix

section Def
variable {R n : Type*} [Zero R] [One R] [DecidableEq n]

variable (R) in
/-- The swap matrix `swap R i j` is the identity matrix with the
`i`-th and `j`-th rows modified such that multiplying by it on the
left (resp. right) corresponds to swapping the `i`-th and `j`-th row (resp. column). -/
def swap (i j : n) : Matrix n n R :=
  (Equiv.swap i j).permMatrix R

lemma swap_comm (i j : n) :
    swap R i j = swap R j i := by
  simp only [swap, Equiv.swap_comm]

@[simp]
lemma transpose_swap (i j : n) : (swap R i j).transpose = swap R i j := by
  simp [swap]

@[simp]
lemma conjTranspose_swap {R : Type*} [NonAssocSemiring R] [StarRing R] (i j : n) :
    (swap R i j).conjTranspose = swap R i j := by
  simp [swap]

end Def

section
variable {R n m : Type*} [Semiring R] [DecidableEq n]

@[simp]
lemma map_swap {S : Type*} [NonAssocSemiring S] (f : R →+* S) (i j : n) :
    (swap R i j).map f = swap S i j := by
  simp [swap]

variable [Fintype n]

lemma swap_mulVec (i j : n) (a : n → R) :
    swap R i j *ᵥ a = a ∘ Equiv.swap i j := by
  simp [swap, PEquiv.toMatrix_toPEquiv_mulVec]

lemma vecMul_swap (i j : n) (a : n → R) :
    a ᵥ* swap R i j = a ∘ Equiv.swap i j := by
  simp [swap, PEquiv.vecMul_toMatrix_toPEquiv]

@[simp]
lemma swap_mulVec_apply (i j : n) (a : n → R) :
    (swap R i j *ᵥ a) i = a j := by
  simp [swap, PEquiv.toMatrix_toPEquiv_mulVec]

@[simp]
lemma vecMul_swap_apply (i j : n) (a : n → R) :
    (a ᵥ* swap R i j) i = a j := by
  simp [swap, PEquiv.vecMul_toMatrix_toPEquiv]

/-- Multiplying with `swap R i j` on the left swaps the `i`-th row with the `j`-th row. -/
@[simp]
lemma swap_mul_apply_left (i j : n) (a : m) (g : Matrix n m R) :
    (swap R i j * g) i a = g j a := by
  simp [swap, PEquiv.toMatrix_toPEquiv_mul]

/-- Multiplying with `swap R i j` on the left swaps the `j`-th row with the `i`-th row. -/
@[simp]
lemma swap_mul_apply_right (i j : n) (a : m) (g : Matrix n m R) :
    (swap R i j * g) j a = g i a := by
  rw [swap_comm, swap_mul_apply_left]

lemma swap_mul_of_ne {i j a : n} {b : m} (hai : a ≠ i) (haj : a ≠ j) (g : Matrix n m R) :
    (swap R i j * g) a b = g a b := by
  simp [swap, PEquiv.toMatrix_toPEquiv_mul, Equiv.swap_apply_of_ne_of_ne hai haj]

/-- Multiplying with `swap R i j` on the right swaps the `i`-th column with the `j`-th column. -/
@[simp]
lemma mul_swap_apply_left (i j : n) (a : m) (g : Matrix m n R) :
    (g * swap R i j) a i = g a j := by
  simp [swap, PEquiv.mul_toMatrix_toPEquiv]

/-- Multiplying with `swap R i j` on the right swaps the `j`-th column with the `i`-th column. -/
@[simp]
lemma mul_swap_apply_right (i j : n) (a : m) (g : Matrix m n R) :
    (g * swap R i j) a j = g a i := by
  rw [swap_comm, mul_swap_apply_left]

lemma mul_swap_of_ne {i j b : n} {a : m} (hbi : b ≠ i) (hbj : b ≠ j) (g : Matrix m n R) :
    (g * swap R i j) a b = g a b := by
  simp [swap, PEquiv.mul_toMatrix_toPEquiv, Equiv.swap_apply_of_ne_of_ne hbi hbj]

/-- Swap matrices are self inverse. -/
lemma swap_mul_self (i j : n) : swap R i j * swap R i j = 1 := by
  simp only [swap]
  rw [← Equiv.swap_inv, Equiv.Perm.inv_def]
  simp [← PEquiv.toMatrix_trans, ← Equiv.toPEquiv_trans]

end

namespace GeneralLinearGroup
variable (R : Type*) {n : Type*} [CommRing R] [DecidableEq n] [Fintype n]

/-- `Matrix.swap` as an element of `GL n R`. -/
@[simps]
def swap (i j : n) : GL n R where
  val := Matrix.swap R i j
  inv := Matrix.swap R i j
  val_inv := swap_mul_self i j
  inv_val := swap_mul_self i j

variable {R} {S : Type*} [CommRing S] (f : R →+* S)

@[simp]
lemma map_swap (i j : n) : (swap R i j).map f = swap S i j := by
  ext : 1
  simp [swap]

end GeneralLinearGroup

end Matrix
```
