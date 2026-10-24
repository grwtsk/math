# Complete source: GRWTSK.Algebra.CommutativeAlgebra.Univ.Variantee4b82ae60786249fc42bffcc22614425493bc7d41cfeaf659b16f128220d656

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f026d3c269dffe477a8acd88079f03a43353d53b` · SHA-256 `ee75f392f00526593177d8d7f457969d295a0ea5cca79744a1fd5ca81b787eee`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.CommutativeAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.CommutativeAlgebra.Univ.Variantc9a1d4517d7fd9e532ded7ba5a8994b0463a314646471ce7d4d803c30c2e483f","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"c9a1d4517d7fd9e532ded7ba5a8994b0463a314646471ce7d4d803c30c2e483f","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.Polynomials.SourceCorpus.Univ.Variantc9a1d4517d7fd9e532ded7ba5a8994b0463a314646471ce7d4d803c30c2e483f","mathematical_subject":"Algebra.Polynomials","original_sha256":"c9a1d4517d7fd9e532ded7ba5a8994b0463a314646471ce7d4d803c30c2e483f","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/LinearAlgebra/Matrix/Charpoly/Univ.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Johan Commelin. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Johan Commelin
-/
import Mathlib.Algebra.MvPolynomial.Equiv
import Mathlib.LinearAlgebra.Matrix.Charpoly.Coeff
import Mathlib.RingTheory.MvPolynomial.Homogeneous

/-!
# The universal characteristic polynomial

In this file we define the universal characteristic polynomial `Matrix.charpoly.univ`,
which is the charactistic polynomial of the matrix with entries `Xᵢⱼ`,
and hence has coefficients that are multivariate polynomials.

It is universal in the sense that one obtains the characteristic polynomial of a matrix `M`
by evaluating the coefficients of `univ` at the entries of `M`.

We use it to show that the coefficients of the characteristic polynomial
of a matrix are homogeneous polynomials in the matrix entries.

## Main results

* `Matrix.charpoly.univ`: the universal characteristic polynomial
* `Matrix.charpoly.univ_map_eval₂Hom`: evaluating `univ` on the entries of a matrix `M`
  gives the characteristic polynomial of `M`.
* `Matrix.charpoly.univ_coeff_isHomogeneous`:
  the `i`-th coefficient of `univ` is a homogeneous polynomial of degree `n - i`.
-/


namespace GRWTSK.Algebra.CommutativeAlgebra.Univ.Variantc9a1d4517d7fd9e532ded7ba5a8994b0463a314646471ce7d4d803c30c2e483f

namespace Matrix.charpoly

variable {R S : Type*} (n : Type*) [CommRing R] [CommRing S] [Fintype n] [DecidableEq n]
variable (f : R →+* S)

variable (R) in
/-- The universal characteristic polynomial for `n × n`-matrices,
is the charactistic polynomial of `Matrix.mvPolynomialX n n ℤ` with entries `Xᵢⱼ`.

Its `i`-th coefficient is a homogeneous polynomial of degree `n - i`,
see `Matrix.charpoly.univ_coeff_isHomogeneous`.

By evaluating the coefficients at the entries of a matrix `M`,
one obtains the characteristic polynomial of `M`,
see `Matrix.charpoly.univ_map_eval₂Hom`. -/
noncomputable
abbrev univ : Polynomial (MvPolynomial (n × n) R) :=
  charpoly <| mvPolynomialX n n R

open MvPolynomial RingHomClass in
@[simp]
lemma univ_map_eval₂Hom (M : n × n → S) :
    (univ R n).map (eval₂Hom f M) = charpoly (Matrix.of M.curry) := by
  rw [univ, ← charpoly_map, coe_eval₂Hom, ← mvPolynomialX_map_eval₂ f (Matrix.of M.curry)]
  simp only [of_apply, Function.curry_apply, Prod.mk.eta]

lemma univ_map_map :
    (univ R n).map (MvPolynomial.map f) = univ S n := by
  rw [MvPolynomial.map, univ_map_eval₂Hom]; rfl

@[simp]
lemma univ_coeff_eval₂Hom (M : n × n → S) (i : ℕ) :
    MvPolynomial.eval₂Hom f M ((univ R n).coeff i) =
      (charpoly (Matrix.of M.curry)).coeff i := by
  rw [← univ_map_eval₂Hom n f M, Polynomial.coeff_map]

variable (R)

lemma univ_monic : (univ R n).Monic := charpoly_monic (mvPolynomialX n n R)

lemma univ_natDegree [Nontrivial R] : (univ R n).natDegree = Fintype.card n :=
  charpoly_natDegree_eq_dim (mvPolynomialX n n R)

@[simp]
lemma univ_coeff_card : (univ R n).coeff (Fintype.card n) = 1 := by
  suffices Polynomial.coeff (univ ℤ n) (Fintype.card n) = 1 by
    rw [← univ_map_map n (Int.castRingHom R), Polynomial.coeff_map, this, map_one]
  rw [← univ_natDegree ℤ n]
  exact (univ_monic ℤ n).leadingCoeff

open MvPolynomial in
lemma optionEquivLeft_symm_univ_isHomogeneous :
    ((optionEquivLeft R (n × n)).symm (univ R n)).IsHomogeneous (Fintype.card n) := by
  have aux : Fintype.card n = 0 + ∑ i : n, 1 := by
    simp only [zero_add, Finset.sum_const, smul_eq_mul, mul_one, Fintype.card]
  simp only [aux, univ, charpoly, charmatrix, scalar_apply, RingHom.mapMatrix_apply, det_apply',
    sub_apply, map_apply, of_apply, map_sum, map_mul, map_intCast, map_prod, map_sub,
    optionEquivLeft_symm_apply, Polynomial.aevalTower_C, rename_X, diagonal, mvPolynomialX]
  apply IsHomogeneous.sum
  rintro i -
  apply IsHomogeneous.mul
  · apply isHomogeneous_C
  · apply IsHomogeneous.prod
    rintro j -
    by_cases h : i j = j
    · simp only [h, ↓reduceIte, Polynomial.aevalTower_X, IsHomogeneous.sub, isHomogeneous_X]
    · simp only [h, ↓reduceIte, map_zero, zero_sub, (isHomogeneous_X _ _).neg]

lemma univ_coeff_isHomogeneous (i j : ℕ) (h : i + j = Fintype.card n) :
    ((univ R n).coeff i).IsHomogeneous j :=
  (optionEquivLeft_symm_univ_isHomogeneous R n).coeff_isHomogeneous_of_optionEquivLeft_symm _ _ h

end Matrix.charpoly
```
