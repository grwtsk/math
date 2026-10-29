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
