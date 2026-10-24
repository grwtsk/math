# Complete source: GRWTSK.Algebra.CommutativeAlgebra.MvPolynomial.Variant1b230dd2ac39eae71f3106b844ed5827552877f062d335452b8f7daf31287813

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `4801fb22fc35c411f53d831fc7a5fcad8c9c2bc0` · SHA-256 `69c624c3590cf23a357a53779f6a7e618ca869e1c211c92f05c56b5cdbea5a06`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.CommutativeAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.CommutativeAlgebra.MvPolynomialX.Variant506d28f2b04858d7cf23bdc6e0ffbf7c6f5f6de2c6a2ad01ab3dcdbdf907aa04","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"506d28f2b04858d7cf23bdc6e0ffbf7c6f5f6de2c6a2ad01ab3dcdbdf907aa04","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.Polynomials.SourceCorpus.MvPolynomialX.Variant506d28f2b04858d7cf23bdc6e0ffbf7c6f5f6de2c6a2ad01ab3dcdbdf907aa04","mathematical_subject":"Algebra.Polynomials","original_sha256":"506d28f2b04858d7cf23bdc6e0ffbf7c6f5f6de2c6a2ad01ab3dcdbdf907aa04","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/LinearAlgebra/Matrix/MvPolynomial.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2021 Eric Wieser. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Eric Wieser
-/
import Mathlib.Algebra.MvPolynomial.Eval
import Mathlib.Algebra.MvPolynomial.CommRing
import Mathlib.LinearAlgebra.Matrix.Determinant.Basic

/-!
# Matrices of multivariate polynomials

In this file, we prove results about matrices over an mv_polynomial ring.
In particular, we provide `Matrix.mvPolynomialX` which associates every entry of a matrix with a
unique variable.

## Tags

matrix determinant, multivariate polynomial
-/



namespace GRWTSK.Algebra.CommutativeAlgebra.MvPolynomialX.Variant506d28f2b04858d7cf23bdc6e0ffbf7c6f5f6de2c6a2ad01ab3dcdbdf907aa04

variable {m n R S : Type*}

namespace Matrix

variable (m n R)

/-- The matrix with variable `X (i,j)` at location `(i,j)`. -/
noncomputable def mvPolynomialX [CommSemiring R] : Matrix m n (MvPolynomial (m × n) R) :=
  of fun i j => MvPolynomial.X (i, j)

-- TODO: set as an equation lemma for `mv_polynomial_X`, see https://github.com/leanprover-community/mathlib4/pull/3024
@[simp]
theorem mvPolynomialX_apply [CommSemiring R] (i j) :
    mvPolynomialX m n R i j = MvPolynomial.X (i, j) :=
  rfl

variable {m n R}

/-- Any matrix `A` can be expressed as the evaluation of `Matrix.mvPolynomialX`.

This is of particular use when `MvPolynomial (m × n) R` is an integral domain but `S` is
not, as if the `MvPolynomial.eval₂` can be pulled to the outside of a goal, it can be solved in
under cancellative assumptions. -/
theorem mvPolynomialX_map_eval₂ [CommSemiring R] [CommSemiring S] (f : R →+* S) (A : Matrix m n S) :
    (mvPolynomialX m n R).map (MvPolynomial.eval₂ f fun p : m × n => A p.1 p.2) = A :=
  ext fun i j => MvPolynomial.eval₂_X _ (fun p : m × n => A p.1 p.2) (i, j)

/-- A variant of `Matrix.mvPolynomialX_map_eval₂` with a bundled `RingHom` on the LHS. -/
theorem mvPolynomialX_mapMatrix_eval [Fintype m] [DecidableEq m] [CommSemiring R]
    (A : Matrix m m R) :
    (MvPolynomial.eval fun p : m × m => A p.1 p.2).mapMatrix (mvPolynomialX m m R) = A :=
  mvPolynomialX_map_eval₂ _ A

variable (R)

/-- A variant of `Matrix.mvPolynomialX_map_eval₂` with a bundled `AlgHom` on the LHS. -/
theorem mvPolynomialX_mapMatrix_aeval [Fintype m] [DecidableEq m] [CommSemiring R] [CommSemiring S]
    [Algebra R S] (A : Matrix m m S) :
    (MvPolynomial.aeval fun p : m × m => A p.1 p.2).mapMatrix (mvPolynomialX m m R) = A :=
  mvPolynomialX_map_eval₂ _ A

variable (m)

/-- In a nontrivial ring, `Matrix.mvPolynomialX m m R` has non-zero determinant. -/
theorem det_mvPolynomialX_ne_zero [DecidableEq m] [Fintype m] [CommRing R] [Nontrivial R] :
    det (mvPolynomialX m m R) ≠ 0 := by
  intro h_det
  have := congr_arg Matrix.det (mvPolynomialX_mapMatrix_eval (1 : Matrix m m R))
  rw [det_one, ← RingHom.map_det, h_det, RingHom.map_zero] at this
  exact zero_ne_one this

end Matrix
```
