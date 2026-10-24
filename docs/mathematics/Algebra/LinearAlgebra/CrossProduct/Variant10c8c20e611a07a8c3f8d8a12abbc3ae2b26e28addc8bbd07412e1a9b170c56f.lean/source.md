# Complete source: GRWTSK.Algebra.LinearAlgebra.CrossProduct.Variant10c8c20e611a07a8c3f8d8a12abbc3ae2b26e28addc8bbd07412e1a9b170c56f

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f3531f268285c626059d052af73be079d482bbc3` · SHA-256 `a98630184095339a9800393cfa085413e640dd8c10ee4a3d65ef356fb02514d4`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.LinearAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.LinearAlgebra.CrossProduct.Variant4dbaf855822b7b74f2c2b26830ef3a92a12d162543535970ce554650b2c23672","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"4dbaf855822b7b74f2c2b26830ef3a92a12d162543535970ce554650b2c23672","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.LinearAlgebra.SourceCorpus.CrossProduct.Variant4dbaf855822b7b74f2c2b26830ef3a92a12d162543535970ce554650b2c23672","mathematical_subject":"Algebra.LinearAlgebra","original_sha256":"4dbaf855822b7b74f2c2b26830ef3a92a12d162543535970ce554650b2c23672","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/LinearAlgebra/CrossProduct.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2021 Martin Dvorak. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Martin Dvorak, Kyle Miller, Eric Wieser
-/
import Mathlib.Algebra.Lie.Basic
import Mathlib.Data.Matrix.Notation
import Mathlib.LinearAlgebra.BilinearMap
import Mathlib.LinearAlgebra.LinearIndependent.Lemmas
import Mathlib.LinearAlgebra.Matrix.Determinant.Basic

/-!
# Cross products

This module defines the cross product of vectors in $R^3$ for $R$ a commutative ring,
as a bilinear map.

## Main definitions

* `crossProduct` is the cross product of pairs of vectors in $R^3$.

## Main results

* `triple_product_eq_det`
* `cross_dot_cross`
* `jacobi_cross`

## Notation

The locale `Matrix` gives the following notation:

* `×₃` for the cross product

## Tags

crossproduct
-/



namespace GRWTSK.Algebra.LinearAlgebra.CrossProduct.Variant4dbaf855822b7b74f2c2b26830ef3a92a12d162543535970ce554650b2c23672

open Matrix

variable {R : Type*} [CommRing R]

/-- The cross product of two vectors in $R^3$ for $R$ a commutative ring. -/
def crossProduct : (Fin 3 → R) →ₗ[R] (Fin 3 → R) →ₗ[R] Fin 3 → R := by
  apply LinearMap.mk₂ R fun a b : Fin 3 → R =>
      ![a 1 * b 2 - a 2 * b 1, a 2 * b 0 - a 0 * b 2, a 0 * b 1 - a 1 * b 0]
  · intros
    simp_rw [vec3_add, Pi.add_apply]
    apply vec3_eq <;> ring
  · intros
    simp_rw [smul_vec3, Pi.smul_apply, smul_sub, smul_mul_assoc]
  · intros
    simp_rw [vec3_add, Pi.add_apply]
    apply vec3_eq <;> ring
  · intros
    simp_rw [smul_vec3, Pi.smul_apply, smul_sub, mul_smul_comm]

@[inherit_doc] scoped[Matrix] infixl:74 " ×₃ " => crossProduct

theorem cross_apply (a b : Fin 3 → R) :
    a ×₃ b = ![a 1 * b 2 - a 2 * b 1, a 2 * b 0 - a 0 * b 2, a 0 * b 1 - a 1 * b 0] := rfl

section ProductsProperties

@[simp]
theorem cross_anticomm (v w : Fin 3 → R) : -(v ×₃ w) = w ×₃ v := by
  simp [cross_apply, mul_comm]

alias neg_cross := cross_anticomm

@[simp]
theorem cross_anticomm' (v w : Fin 3 → R) : v ×₃ w + w ×₃ v = 0 := by
  rw [add_eq_zero_iff_eq_neg, cross_anticomm]

@[simp]
theorem cross_self (v : Fin 3 → R) : v ×₃ v = 0 := by
  simp [cross_apply, mul_comm]

/-- The cross product of two vectors is perpendicular to the first vector. -/
@[simp]
theorem dot_self_cross (v w : Fin 3 → R) : v ⬝ᵥ v ×₃ w = 0 := by
  rw [cross_apply, vec3_dotProduct]
  dsimp only [Matrix.cons_val]
  ring

/-- The cross product of two vectors is perpendicular to the second vector. -/
@[simp]
theorem dot_cross_self (v w : Fin 3 → R) : w ⬝ᵥ v ×₃ w = 0 := by
  rw [← cross_anticomm, dotProduct_neg, dot_self_cross, neg_zero]

/-- Cyclic permutations preserve the triple product. See also `triple_product_eq_det`. -/
theorem triple_product_permutation (u v w : Fin 3 → R) : u ⬝ᵥ v ×₃ w = v ⬝ᵥ w ×₃ u := by
  simp_rw [cross_apply, vec3_dotProduct]
  dsimp only [Matrix.cons_val]
  ring

/-- The triple product of `u`, `v`, and `w` is equal to the determinant of the matrix
    with those vectors as its rows. -/
theorem triple_product_eq_det (u v w : Fin 3 → R) : u ⬝ᵥ v ×₃ w = Matrix.det ![u, v, w] := by
  rw [vec3_dotProduct, cross_apply, det_fin_three]
  dsimp only [Matrix.cons_val]
  ring

/-- The scalar quadruple product identity, related to the Binet-Cauchy identity. -/
theorem cross_dot_cross (u v w x : Fin 3 → R) :
    u ×₃ v ⬝ᵥ w ×₃ x = u ⬝ᵥ w * v ⬝ᵥ x - u ⬝ᵥ x * v ⬝ᵥ w := by
  simp_rw [cross_apply, vec3_dotProduct]
  dsimp only [Matrix.cons_val]
  ring

end ProductsProperties

section LeibnizProperties

/-- The cross product satisfies the Leibniz lie property. -/
theorem leibniz_cross (u v w : Fin 3 → R) : u ×₃ (v ×₃ w) = u ×₃ v ×₃ w + v ×₃ (u ×₃ w) := by
  simp_rw [cross_apply, vec3_add]
  apply vec3_eq <;> dsimp <;> ring

/-- The three-dimensional vectors together with the operations + and ×₃ form a Lie ring.
    Note we do not make this an instance as a conflicting one already exists
    via `LieRing.ofAssociativeRing`. -/
def Cross.lieRing : LieRing (Fin 3 → R) :=
  { Pi.addCommGroup with
    bracket := fun u v => u ×₃ v
    add_lie := LinearMap.map_add₂ _
    lie_add := fun _ => LinearMap.map_add _
    lie_self := cross_self
    leibniz_lie := leibniz_cross }

attribute [local instance] Cross.lieRing

theorem cross_cross (u v w : Fin 3 → R) : u ×₃ v ×₃ w = u ×₃ (v ×₃ w) - v ×₃ (u ×₃ w) :=
  lie_lie u v w

/-- **Jacobi identity**: For a cross product of three vectors,
    their sum over the three even permutations is equal to the zero vector. -/
theorem jacobi_cross (u v w : Fin 3 → R) : u ×₃ (v ×₃ w) + v ×₃ (w ×₃ u) + w ×₃ (u ×₃ v) = 0 :=
  lie_jacobi u v w

end LeibnizProperties

-- this can also be proved via `dotProduct_eq_zero_iff` and `triple_product_eq_det`, but
-- that would require much heavier imports.
lemma crossProduct_ne_zero_iff_linearIndependent {F : Type*} [Field F] {v w : Fin 3 → F} :
    crossProduct v w ≠ 0 ↔ LinearIndependent F ![v, w] := by
  rw [not_iff_comm]
  by_cases hv : v = 0
  · rw [hv, map_zero, LinearMap.zero_apply, eq_self, iff_true]
    exact fun h ↦ h.ne_zero 0 rfl
  constructor
  · rw [LinearIndependent.pair_iff' hv, not_forall_not]
    rintro ⟨a, rfl⟩
    rw [LinearMap.map_smul, cross_self, smul_zero]
  have hv' : v = ![v 0, v 1, v 2] := by simp [← List.ofFn_inj]
  have hw' : w = ![w 0, w 1, w 2] := by simp [← List.ofFn_inj]
  intro h1 h2
  simp_rw [cross_apply, cons_eq_zero_iff, zero_empty, and_true, sub_eq_zero] at h1
  have h20 := LinearIndependent.pair_iff.mp h2 (- w 0) (v 0)
  have h21 := LinearIndependent.pair_iff.mp h2 (- w 1) (v 1)
  have h22 := LinearIndependent.pair_iff.mp h2 (- w 2) (v 2)
  rw [neg_smul, neg_add_eq_zero, hv', hw', smul_vec3, smul_vec3, ← hv', ← hw'] at h20 h21 h22
  simp only [smul_eq_mul, mul_comm (w 0), mul_comm (w 1), mul_comm (w 2), h1] at h20 h21 h22
  rw [hv', cons_eq_zero_iff, cons_eq_zero_iff, cons_eq_zero_iff, zero_empty] at hv
  exact hv ⟨(h20 trivial).2, (h21 trivial).2, (h22 trivial).2, rfl⟩

/-- The scalar triple product expansion of the vector triple product. -/
theorem cross_cross_eq_smul_sub_smul (u v w : Fin 3 → R) :
    u ×₃ v ×₃ w = (u ⬝ᵥ w) • v - (v ⬝ᵥ w) • u := by
  simp_rw [cross_apply, vec3_dotProduct]
  ext i
  fin_cases i <;>
  · simp only [Fin.isValue, Nat.succ_eq_add_one, Nat.reduceAdd, Fin.reduceFinMk, cons_val,
      Pi.sub_apply, Pi.smul_apply, smul_eq_mul]
    ring

/-- Alternative form of the scalar triple product expansion of the vector triple product. -/
theorem cross_cross_eq_smul_sub_smul' (u v w : Fin 3 → R) :
    u ×₃ (v ×₃ w) = (u ⬝ᵥ w) • v - (v ⬝ᵥ u) • w := by
  simp_rw [cross_apply, vec3_dotProduct]
  ext i
  fin_cases i <;>
  · simp only [Nat.succ_eq_add_one, Nat.reduceAdd, Fin.isValue, cons_val, cons_val_one,
      cons_val_zero, Fin.reduceFinMk, Pi.sub_apply, Pi.smul_apply, smul_eq_mul]
    ring
```
