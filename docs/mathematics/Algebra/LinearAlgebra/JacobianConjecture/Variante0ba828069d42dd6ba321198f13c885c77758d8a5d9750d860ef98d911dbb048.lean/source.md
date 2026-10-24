# Complete source: GRWTSK.Algebra.LinearAlgebra.JacobianConjecture.Variante0ba828069d42dd6ba321198f13c885c77758d8a5d9750d860ef98d911dbb048

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `35f29ac29dd352e9c35e65c1bdcea1450ebc4126` · SHA-256 `246d98e74f09ba4e961119bc9689314e728fbb125cef0f5f2ee01f9e286e3949`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.LinearAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.LinearAlgebra.PolynomialMap.Variant281835d4aa3967f36561f26afbaec171b9ac9b8fe3255b91bdada1324f0d97b2","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"281835d4aa3967f36561f26afbaec171b9ac9b8fe3255b91bdada1324f0d97b2","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.LinearAlgebra.SourceCorpus.PolynomialMap.Variant281835d4aa3967f36561f26afbaec171b9ac9b8fe3255b91bdada1324f0d97b2","mathematical_subject":"Algebra.LinearAlgebra","original_sha256":"281835d4aa3967f36561f26afbaec171b9ac9b8fe3255b91bdada1324f0d97b2","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal.publication/20261007/cache-source-audit/source/281835d4aa3967f36561f26afbaec171b9ac9b8fe3255b91bdada1324f0d97b2.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.JacobianConjecture.Basic
import Mathlib.Algebra.MvPolynomial.PDeriv
import Mathlib.Data.Matrix.Basic

/-!
# Algebraic Jacobians and polynomial correction

Rows index output coordinates; columns index input variables. Every Jacobian
entry is the evaluation of a formal partial derivative. These algebraic
definitions make no claims about analytic inverse functions or dynamics.
-/


namespace GRWTSK.Algebra.LinearAlgebra.PolynomialMap.Variant281835d4aa3967f36561f26afbaec171b9ac9b8fe3255b91bdada1324f0d97b2

namespace FormalResearch.JacobianConjecture

noncomputable section

open MvPolynomial

variable {n : ℕ} {R : Type*} [CommRing R]

/-- Evaluate the coordinate polynomials of a finite-dimensional self-map. -/
def polynomialMap (P : Fin n → MvPolynomial (Fin n) R) (x : Fin n → R) : Fin n → R :=
  fun i ↦ eval x (P i)

/-- The algebraic Jacobian: output coordinate first, input variable second. -/
def polynomialJacobian (P : Fin n → MvPolynomial (Fin n) R) (x : Fin n → R) :
    Matrix (Fin n) (Fin n) R :=
  fun i j ↦ eval x (pderiv j (P i))

/-- Coordinate polynomials for `x ↦ x - A (P(x) - y)` in standard coordinates. -/
def correctionPoly (A : Matrix (Fin n) (Fin n) R)
    (P : Fin n → MvPolynomial (Fin n) R) (y : Fin n → R) :
    Fin n → MvPolynomial (Fin n) R :=
  fun i ↦ X i - ∑ k, C (A i k) * (P k - C (y k))

theorem correction_poly_eval (A : Matrix (Fin n) (Fin n) R)
    (P : Fin n → MvPolynomial (Fin n) R) (y x : Fin n → R) :
    polynomialMap (correctionPoly A P y) x = x - A.mulVec (polynomialMap P x - y) := by
  ext i
  simp [polynomialMap, correctionPoly, Matrix.mulVec, dotProduct]

/-- Identity correction agrees with the abstract module transformation. -/
theorem correction_poly_eval_id (P : Fin n → MvPolynomial (Fin n) R) (y : Fin n → R) :
    polynomialMap (correctionPoly 1 P y) =
      fixedPointTransform (LinearMap.id : (Fin n → R) →ₗ[R] (Fin n → R))
        (polynomialMap P) y := by
  funext x
  simp [correction_poly_eval, fixedPointTransform]

/-- The derivative of the correction is derived from its polynomials. -/
theorem correction_poly_jacobian (A : Matrix (Fin n) (Fin n) R)
    (P : Fin n → MvPolynomial (Fin n) R) (y x : Fin n → R) :
    polynomialJacobian (correctionPoly A P y) x = 1 - A * polynomialJacobian P x := by
  ext i j
  simp [polynomialJacobian, correctionPoly, Matrix.mul_apply, Matrix.one_apply, Pi.single_apply]

/-- The algebraic relation `I - JT = A * JF` needs no injectivity hypothesis. -/
theorem one_sub_correction_poly_jacobian (A : Matrix (Fin n) (Fin n) R)
    (P : Fin n → MvPolynomial (Fin n) R) (y x : Fin n → R) :
    1 - polynomialJacobian (correctionPoly A P y) x = A * polynomialJacobian P x := by
  rw [correction_poly_jacobian, sub_sub_cancel]

end

end FormalResearch.JacobianConjecture
```
