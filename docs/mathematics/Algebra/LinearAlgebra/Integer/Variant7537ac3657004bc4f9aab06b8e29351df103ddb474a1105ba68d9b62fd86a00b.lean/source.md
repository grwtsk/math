# Complete source: GRWTSK.Algebra.LinearAlgebra.Integer.Variant7537ac3657004bc4f9aab06b8e29351df103ddb474a1105ba68d9b62fd86a00b

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `86f406e3a9c638fe4f14e50a5019f2584ea63c3e` · SHA-256 `950d17e580689e7bd101661fd264fc3738b10f6902661eee812fac3b23afb609`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.LinearAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.LinearAlgebra.MapMulNatCast.Variant4d98eb7bac22feddf804c3a5ba85f4dc085b714ea32665e51271f1486bc5ded6","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"4d98eb7bac22feddf804c3a5ba85f4dc085b714ea32665e51271f1486bc5ded6","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.LinearAlgebra.SourceCorpus.MapMulNatCast.Variant4d98eb7bac22feddf804c3a5ba85f4dc085b714ea32665e51271f1486bc5ded6","mathematical_subject":"Algebra.LinearAlgebra","original_sha256":"4d98eb7bac22feddf804c3a5ba85f4dc085b714ea32665e51271f1486bc5ded6","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/LinearAlgebra/Matrix/Integer.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 David Loeffler. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: David Loeffler
-/
import Mathlib.Algebra.Algebra.Defs
import Mathlib.Algebra.GCDMonoid.Finset
import Mathlib.Algebra.GCDMonoid.Nat
import Mathlib.Data.Matrix.Mul
import Mathlib.Data.Rat.Cast.CharZero

/-!
# Lemmas on integer matrices

Here we collect some results about matrices over `ℚ` and `ℤ`.

## Main definitions and results

* `Matrix.num`, `Matrix.den`: express a rational matrix `A` as the quotient of an integer matrix
  by a (non-zero) natural.

## TODO

Consider generalizing these constructions to matrices over localizations of rings (or semirings).
-/


namespace GRWTSK.Algebra.LinearAlgebra.MapMulNatCast.Variant4d98eb7bac22feddf804c3a5ba85f4dc085b714ea32665e51271f1486bc5ded6

namespace Matrix

variable {m n : Type*} [Fintype m] [Fintype n]

/-!
## Casts

These results are useful shortcuts because the canonical casting maps out of `ℕ`, `ℤ`, and `ℚ` to
suitable types are bare functions, not ring homs, so we cannot apply `Matrix.map_mul` directly to
them.
-/

lemma map_mul_natCast {α : Type*} [NonAssocSemiring α] (A B : Matrix n n ℕ) :
    map (A * B) ((↑) : ℕ → α) = map A (↑) * map B (↑) :=
  Matrix.map_mul (f := Nat.castRingHom α)

lemma map_mul_intCast {α : Type*} [NonAssocRing α]  (A B : Matrix n n ℤ) :
    map (A * B) ((↑) : ℤ → α) = map A (↑) * map B (↑) :=
  Matrix.map_mul (f := Int.castRingHom α)

lemma map_mul_ratCast {α : Type*} [DivisionRing α] [CharZero α] (A B : Matrix n n ℚ) :
    map (A * B) ((↑) : ℚ → α) = map A (↑) * map B (↑) :=
  Matrix.map_mul (f := Rat.castHom α)

/-!
## Denominator of a rational matrix
-/

/-- The denominator of a matrix of rationals (as a `Nat`, defined as the LCM of the denominators of
the entries). -/
protected def den (A : Matrix m n ℚ) : ℕ := Finset.univ.lcm (fun P : m × n ↦ (A P.1 P.2).den)

/-- The numerator of a matrix of rationals (a matrix of integers, defined so that
`A.num / A.den = A`). -/
protected def num (A : Matrix m n ℚ) : Matrix m n ℤ := ((A.den : ℚ) • A).map Rat.num

lemma den_ne_zero (A : Matrix m n ℚ) : A.den ≠ 0 := by
  simp [Matrix.den, Finset.lcm_eq_zero_iff]

lemma num_eq_zero_iff (A : Matrix m n ℚ) : A.num = 0 ↔ A = 0 := by
  simp [Matrix.num, ← ext_iff, A.den_ne_zero]

lemma den_dvd_iff {A : Matrix m n ℚ} {r : ℕ} :
    A.den ∣ r ↔ ∀ i j, (A i j).den ∣ r := by
  simp [Matrix.den]

lemma num_div_den (A : Matrix m n ℚ) (i : m) (j : n) :
    A.num i j / A.den = A i j := by
  obtain ⟨k, hk⟩ := den_dvd_iff.mp (dvd_refl A.den) i j
  rw [Matrix.num, map_apply, smul_apply, smul_eq_mul, mul_comm,
    div_eq_iff <| Nat.cast_ne_zero.mpr A.den_ne_zero, hk, Nat.cast_mul, ← mul_assoc,
    Rat.mul_den_eq_num, ← Int.cast_natCast k, ← Int.cast_mul, Rat.num_intCast]

lemma inv_denom_smul_num (A : Matrix m n ℚ) :
    (A.den⁻¹ : ℚ) • A.num.map (↑) = A := by
  ext
  simp [← Matrix.num_div_den A, div_eq_inv_mul]

@[simp]
lemma den_neg (A : Matrix m n ℚ) : (-A).den = A.den :=
  eq_of_forall_dvd <| by simp [den_dvd_iff]

@[simp]
lemma num_neg (A : Matrix m n ℚ) : (-A).num = -A.num := by
  ext
  simp [Matrix.num, map_neg]

@[simp] lemma den_transpose (A : Matrix m n ℚ) : (Aᵀ).den = A.den :=
  eq_of_forall_dvd fun _ ↦ by simpa [den_dvd_iff] using forall_comm

@[simp] lemma num_transpose (A : Matrix m n ℚ) : (Aᵀ).num = (A.num)ᵀ := by
  ext; simp [Matrix.num]

/-!
### Compatibility with `map`
-/

@[simp]
lemma den_map_intCast (A : Matrix m n ℤ) : (A.map (↑)).den = 1 := by
  simp [← Nat.dvd_one, Matrix.den_dvd_iff]

@[simp]
lemma num_map_intCast (A : Matrix m n ℤ) : (A.map (↑)).num = A := by
  simp [Matrix.num, Function.comp_def]

@[simp]
lemma den_map_natCast (A : Matrix m n ℕ) : (A.map (↑)).den = 1 := by
  simp [← Nat.dvd_one, Matrix.den_dvd_iff]

@[simp]
lemma num_map_natCast (A : Matrix m n ℕ) : (A.map (↑)).num = A.map (↑) := by
  simp [Matrix.num, Function.comp_def]

/-!
### Casts from scalar types
-/

@[simp]
lemma den_natCast [DecidableEq m] (a : ℕ) : (a : Matrix m m ℚ).den = 1 := by
  simpa [← diagonal_natCast] using den_map_natCast (a : Matrix m m ℕ)

@[simp]
lemma num_natCast [DecidableEq m] (a : ℕ) : (a : Matrix m m ℚ).num = a := by
  simpa [← diagonal_natCast] using num_map_natCast (a : Matrix m m ℕ)

@[simp]
lemma den_ofNat [DecidableEq m] (a : ℕ) [a.AtLeastTwo] :
    (ofNat(a) : Matrix m m ℚ).den = 1 :=
  den_natCast a

@[simp]
lemma num_ofNat [DecidableEq m] (a : ℕ) [a.AtLeastTwo] :
    (ofNat(a) : Matrix m m ℚ).num = a :=
  num_natCast a

@[simp]
lemma den_intCast [DecidableEq m] (a : ℤ) : (a : Matrix m m ℚ).den = 1 := by
  simpa [← diagonal_intCast] using den_map_intCast (a : Matrix m m ℤ)

@[simp]
lemma num_intCast [DecidableEq m] (a : ℤ) : (a : Matrix m m ℚ).num = a := by
  simpa [← diagonal_intCast] using num_map_intCast (a : Matrix m m ℤ)

@[simp]
lemma den_zero : (0 : Matrix m n ℚ).den = 1 :=
  den_map_natCast 0

@[simp]
lemma num_zero : (0 : Matrix m n ℚ).num = 0 :=
  num_map_natCast 0

@[simp]
lemma den_one [DecidableEq m] : (1 : Matrix m m ℚ).den = 1 :=
  den_natCast 1

@[simp]
lemma num_one [DecidableEq m] : (1 : Matrix m m ℚ).num = 1 :=
  num_natCast 1

end Matrix
```
