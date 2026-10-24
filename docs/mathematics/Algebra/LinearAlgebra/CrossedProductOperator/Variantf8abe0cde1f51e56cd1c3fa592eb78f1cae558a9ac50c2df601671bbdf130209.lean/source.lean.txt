import Mathematics.ConnesBitfield.CrossedProduct

/-!
# Self-adjoint crossed-product spectral operator

The full operator acts on the finite supported bitfield Hilbert carrier.  Its
transport coefficients are paired by adjoint, and a unitary involutive
grading supplies the `λ ↔ -λ` symmetry.
-/

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
