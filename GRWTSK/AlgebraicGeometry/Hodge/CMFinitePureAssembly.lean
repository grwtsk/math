import GRWTSK.LinearAlgebra.TensorProduct.FiniteCMCanonicalAssembly
import Mathlib.NumberTheory.NumberField.CMField
import Mathlib.FieldTheory.Galois

/-!
# Finite CM fourfold assembly: extracted algebraic owner

Source provenance: GRWTSK/AlgebraicGeometry/Hodge/CMFourFactorSwitchGeometry.lean
at ff6ef4a8adb033f2c0e454f19a4c3f23f8d8fb14.
This moves the original carrier and finite assembly declaration names to a
single pure-algebra owner. No actual H1, Hodge, or algebraic-cycle structures
are imported.

The archived CMFiniteFourCoefficientMultiplication used lTensor twice on
left-associated tensors and was ill-typed; both operations are corrected to
rTensor, as in the independently checked mathematical assembly.
-/

set_option autoImplicit false

namespace GRWTSK.AlgebraicGeometry.Hodge.CMFourFactorSwitchGeometry

open _root_.TensorProduct
open GRWTSK.LinearAlgebra.TensorProduct.FourPairedShuffle
open GRWTSK.LinearAlgebra.TensorProduct.FiniteCMCanonicalAssembly

noncomputable section

abbrev AlgebraicNumbers := algebraicClosure ℚ ℂ

/-- Original finite Galois CM carrier, retained under its original name. -/
structure CMGaloisIntermediateField where
  carrier : FiniteGaloisIntermediateField ℚ AlgebraicNumbers
  [isCMField : IsCMField carrier]

instance (E : CMGaloisIntermediateField) : IsCMField E.carrier :=
  E.isCMField

abbrev CMFiniteCanonicalVectorTarget (E : CMGaloisIntermediateField) :=
  (((E.carrier ⊗[ℚ] E.carrier) ⊗[ℚ] E.carrier) ⊗[ℚ] E.carrier)

abbrev CMFiniteFourCoefficientTensor (E : CMGaloisIntermediateField) :=
  (((E.carrier ⊗[ℚ] E.carrier) ⊗[ℚ] E.carrier) ⊗[ℚ] E.carrier)

abbrev CMFiniteFourPairedTensor (E : CMGaloisIntermediateField) :=
  (((E.carrier ⊗[ℚ] E.carrier) ⊗[ℚ]
      (E.carrier ⊗[ℚ] E.carrier)) ⊗[ℚ]
      (E.carrier ⊗[ℚ] E.carrier)) ⊗[ℚ]
      (E.carrier ⊗[ℚ] E.carrier)

/-- Original coefficient multiplication owner, using the checked supplier. -/
def CMFiniteCoefficientMultiplication (E : CMGaloisIntermediateField) :
    E.carrier ⊗[ℚ] E.carrier →ₗ[ℚ] E.carrier :=
  coefficientMul E.carrier

/-- Original fourfold multiplication, corrected to rTensor for the
left-associated fourfold coefficient carrier. -/
def CMFiniteFourCoefficientMultiplication (E : CMGaloisIntermediateField) :
    CMFiniteFourCoefficientTensor E →ₗ[ℚ] E.carrier :=
  CMFiniteCoefficientMultiplication E ∘ₗ
    ((CMFiniteCoefficientMultiplication E ∘ₗ
      (CMFiniteCoefficientMultiplication E).rTensor E.carrier).rTensor
        E.carrier)

theorem CMFiniteFourCoefficientMultiplication_eq_checked
    (E : CMGaloisIntermediateField) :
    CMFiniteFourCoefficientMultiplication E =
      coefficientMulFour E.carrier := rfl

/-- Original separated algebraic assembly, with unchanged source and target. -/
def CMFiniteSeparatedCanonicalAssembly (E : CMGaloisIntermediateField) :
    (CMFiniteFourCoefficientTensor E ⊗[ℚ]
      CMFiniteCanonicalVectorTarget E) →ₗ[ℚ]
        (E.carrier ⊗[ℚ] CMFiniteCanonicalVectorTarget E) :=
  (CMFiniteFourCoefficientMultiplication E).rTensor
    (CMFiniteCanonicalVectorTarget E)

abbrev CMFiniteFourTensorShuffle (E : CMGaloisIntermediateField) :
    CMFiniteFourPairedTensor E ≃ₗ[ℚ]
      (CMFiniteFourCoefficientTensor E ⊗[ℚ]
        CMFiniteCanonicalVectorTarget E) :=
  shuffleFour ℚ E.carrier

/-- Actual archived declaration name and target, now owned in the isolated
finite-CM algebraic module. -/
def CMFiniteCanonicalPairedAssembly (E : CMGaloisIntermediateField) :
    CMFiniteFourPairedTensor E →ₗ[ℚ]
      (E.carrier ⊗[ℚ] CMFiniteCanonicalVectorTarget E) :=
  CMFiniteSeparatedCanonicalAssembly E ∘ₗ
    (CMFiniteFourTensorShuffle E).toLinearMap

/-- The authentic named finite-CM assembly equals the independently replayed
canonical algebraic specialization, on precisely its original carrier. -/
theorem CMFiniteCanonicalPairedAssembly_eq_checked
    (E : CMGaloisIntermediateField) :
    CMFiniteCanonicalPairedAssembly E = pairedAssembly E.carrier := by
  apply pairedAssembly_unique E.carrier
  intro a₁ x₁ a₂ x₂ a₃ x₃ a₄ x₄
  exact pairedAssembly_pure E.carrier a₁ x₁ a₂ x₂ a₃ x₃ a₄ x₄

end
end GRWTSK.AlgebraicGeometry.Hodge.CMFourFactorSwitchGeometry
