# Complete source: GRWTSK.Algebra.LinearAlgebra.CrossedProductOperator.Variant2170b8d2a45ff85c0521ad05f134d0c8c524694bb550a95fea406d7278343c43

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `eae0ded6c6bead1ca67230ab9bfdc18d83b747ac` · SHA-256 `c0aa70ddee44806e1bcf76ed328b680a8961c16d793475b15b1a7d66a46ee660`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.LinearAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.LinearAlgebra.SelfAdjointCrossedProductOperator.Variantf8abe0cde1f51e56cd1c3fa592eb78f1cae558a9ac50c2df601671bbdf130209","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"f8abe0cde1f51e56cd1c3fa592eb78f1cae558a9ac50c2df601671bbdf130209","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.LinearAlgebra.SourceCorpus.SelfAdjointCrossedProductOperator.Variantf8abe0cde1f51e56cd1c3fa592eb78f1cae558a9ac50c2df601671bbdf130209","mathematical_subject":"Algebra.LinearAlgebra","original_sha256":"f8abe0cde1f51e56cd1c3fa592eb78f1cae558a9ac50c2df601671bbdf130209","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/ConnesBitfield/CrossedProductOperator.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.ConnesBitfield.CrossedProduct

/-!
# Self-adjoint crossed-product spectral operator

The full operator acts on the finite supported bitfield Hilbert carrier.  Its
transport coefficients are paired by adjoint, and a unitary involutive
grading supplies the `λ ↔ -λ` symmetry.
-/


namespace GRWTSK.Algebra.LinearAlgebra.SelfAdjointCrossedProductOperator.Variantf8abe0cde1f51e56cd1c3fa592eb78f1cae558a9ac50c2df601671bbdf130209

namespace Mathematics.ConnesBitfield

open scoped ComplexConjugate

universe u

structure SelfAdjointCrossedProductOperator
    {system : RandomBitfieldSystem}
    (model : FiniteCrossedProductModel system)
    (rank : Nat) where
  fiberContribution :
    Matrix
      (BitfieldHilbertIndex system rank)
      (BitfieldHilbertIndex system rank)
      ℂ
  transportCoefficient :
    model.Automorphism →
      Matrix
        (BitfieldHilbertIndex system rank)
        (BitfieldHilbertIndex system rank)
        ℂ
  transportAdjointPairing :
    ∀ automorphism,
      transportCoefficient automorphism⁻¹ =
        (transportCoefficient automorphism)ᴴ
  operator :
    Matrix
      (BitfieldHilbertIndex system rank)
      (BitfieldHilbertIndex system rank)
      ℂ
  assembledFromFiberAndTransport : Prop
  assembledFromFiberAndTransportProof :
    assembledFromFiberAndTransport
  selfAdjoint :
    operator.IsHermitian
  grading :
    Matrix
      (BitfieldHilbertIndex system rank)
      (BitfieldHilbertIndex system rank)
      ℂ
  gradingUnitary :
    gradingᴴ * grading = 1
  gradingInvolutive :
    grading * grading = 1
  gradingAnticommutes :
    grading * operator * grading = -operator

structure CrossedProductSemisimplicityCertificate
    {system : RandomBitfieldSystem}
    {model : FiniteCrossedProductModel system}
    {rank : Nat}
    (operator :
      SelfAdjointCrossedProductOperator model rank) where
  eigenvalue :
    BitfieldHilbertIndex system rank → ℝ
  diagonalizer :
    Matrix
      (BitfieldHilbertIndex system rank)
      (BitfieldHilbertIndex system rank)
      ℂ
  diagonalizerUnitary :
    diagonalizerᴴ * diagonalizer = 1
  diagonalizes :
    diagonalizerᴴ * operator.operator *
        diagonalizer =
      Matrix.diagonal
        (fun index => (eigenvalue index : ℂ))
  jordanOrder :
    BitfieldHilbertIndex system rank → Nat
  jordanOrderZero :
    ∀ index,
      jordanOrder index = 0

end Mathematics.ConnesBitfield
```
