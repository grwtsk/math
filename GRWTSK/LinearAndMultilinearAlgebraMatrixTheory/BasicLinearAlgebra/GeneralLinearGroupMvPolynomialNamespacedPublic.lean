-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.CommutativeAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.CommutativeAlgebra.EqOfEvalEqOnGl.Variantfe69b3f24574a5b17ae2055b417d69b1e1e4e598e4f2d56ea6e8259bf435701f","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"fe69b3f24574a5b17ae2055b417d69b1e1e4e598e4f2d56ea6e8259bf435701f","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.Polynomials.SourceCorpus.EqOfEvalEqOnGl.Variantfe69b3f24574a5b17ae2055b417d69b1e1e4e598e4f2d56ea6e8259bf435701f","mathematical_subject":"Algebra.Polynomials","original_sha256":"fe69b3f24574a5b17ae2055b417d69b1e1e4e598e4f2d56ea6e8259bf435701f","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/LinearAlgebra/Matrix/GeneralLinearGroup/MvPolynomial.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2026 Kim Morrison. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kim Morrison
-/
module

public import Mathlib.Algebra.MvPolynomial.Funext
public import Mathlib.LinearAlgebra.Matrix.GeneralLinearGroup.Defs

/-!
# Polynomial identities from evaluation at invertible matrices

We prove `MvPolynomial.eq_of_eval_eq_on_gl`: two polynomials in `MvPolynomial (m × m) k` over an
infinite field `k` are equal if their evaluations agree at every invertible matrix. The proof
uses that the set of invertible matrices is Zariski-dense in `Matrix m m k`.
-/


namespace GRWTSK.Algebra.CommutativeAlgebra.EqOfEvalEqOnGl.Variantfe69b3f24574a5b17ae2055b417d69b1e1e4e598e4f2d56ea6e8259bf435701f

public section

namespace MvPolynomial

/-- Two polynomials in `MvPolynomial (m × m) k` over an infinite field `k` are equal if their
evaluations agree at every invertible matrix.

The proof considers `(p - q) * det(X)`, where `det(X) := Matrix.det (Matrix.mvPolynomialX m m k)`
is the generic determinant polynomial. Evaluated at any `s : m × m → k`, this product vanishes:
if `det (Matrix.of fun i j => s (i, j)) = 0` the determinant factor kills it; otherwise the
matrix is invertible and the hypothesis applies. By `MvPolynomial.funext` the product is zero,
and since `det(X) ≠ 0` and `MvPolynomial _ k` is an integral domain, `p = q`. -/
theorem eq_of_eval_eq_on_gl {m k : Type*} [Fintype m] [DecidableEq m] [Field k] [Infinite k]
    {p q : MvPolynomial (m × m) k}
    (h : ∀ g : Matrix.GeneralLinearGroup m k,
           MvPolynomial.eval (fun ij : m × m => (g : Matrix m m k) ij.1 ij.2) p =
           MvPolynomial.eval (fun ij : m × m => (g : Matrix m m k) ij.1 ij.2) q) :
    p = q := by
  have hprod : (p - q) * Matrix.det (Matrix.mvPolynomialX m m k) = 0 := by
    apply MvPolynomial.funext
    intro s
    rw [map_mul, map_sub, map_zero, Matrix.eval_det_mvPolynomialX]
    by_cases hs_det : Matrix.det (Matrix.of fun i j : m => s (i, j)) = 0
    · rw [hs_det, mul_zero]
    · have hh : (eval s) p = (eval s) q :=
        h (Matrix.GeneralLinearGroup.mkOfDetNeZero
          (Matrix.of fun i j : m => s (i, j)) hs_det)
      rw [hh, sub_self, zero_mul]
  exact sub_eq_zero.mp
    ((mul_eq_zero.mp hprod).resolve_right (Matrix.det_mvPolynomialX_ne_zero m k))

end MvPolynomial
