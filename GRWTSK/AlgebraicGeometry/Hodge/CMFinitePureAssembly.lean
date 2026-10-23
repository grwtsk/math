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

instance (E : CMGaloisIntermediateField) :
    FiniteDimensional ℚ E.carrier := inferInstance

instance (E : CMGaloisIntermediateField) :
    IsGalois ℚ E.carrier := inferInstance

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

/-- Exact original paired pure generator, preserving the archived
CM declaration name and parenthesization. -/
def CMFiniteFourPairedPure
    (E : CMGaloisIntermediateField)
    (a₁ x₁ a₂ x₂ a₃ x₃ a₄ x₄ : E.carrier) :
    CMFiniteFourPairedTensor E :=
  (((a₁ ⊗ₜ[ℚ] x₁) ⊗ₜ[ℚ] (a₂ ⊗ₜ[ℚ] x₂)) ⊗ₜ[ℚ]
    (a₃ ⊗ₜ[ℚ] x₃)) ⊗ₜ[ℚ] (a₄ ⊗ₜ[ℚ] x₄)

/-- Exact original separated pure generator. -/
def CMFiniteFourSeparatedPure
    (E : CMGaloisIntermediateField)
    (a₁ x₁ a₂ x₂ a₃ x₃ a₄ x₄ : E.carrier) :
    CMFiniteFourCoefficientTensor E ⊗[ℚ]
      CMFiniteCanonicalVectorTarget E :=
  (((a₁ ⊗ₜ[ℚ] a₂) ⊗ₜ[ℚ] a₃) ⊗ₜ[ℚ] a₄) ⊗ₜ[ℚ]
    (((x₁ ⊗ₜ[ℚ] x₂) ⊗ₜ[ℚ] x₃) ⊗ₜ[ℚ] x₄)

@[simp]
theorem CMFiniteFourPairedPure_eq_checked
    (E : CMGaloisIntermediateField)
    (a₁ x₁ a₂ x₂ a₃ x₃ a₄ x₄ : E.carrier) :
    CMFiniteFourPairedPure E a₁ x₁ a₂ x₂ a₃ x₃ a₄ x₄ =
      pairedPure ℚ E.carrier a₁ x₁ a₂ x₂ a₃ x₃ a₄ x₄ := rfl

@[simp]
theorem CMFiniteFourSeparatedPure_eq_checked
    (E : CMGaloisIntermediateField)
    (a₁ x₁ a₂ x₂ a₃ x₃ a₄ x₄ : E.carrier) :
    CMFiniteFourSeparatedPure E a₁ x₁ a₂ x₂ a₃ x₃ a₄ x₄ =
      separatedPure ℚ E.carrier a₁ x₁ a₂ x₂ a₃ x₃ a₄ x₄ := rfl

/-- Archived pure-factor assembly formula, retained under its
original declaration name and exact target. -/
def canonicalFinitePureAssembly
    (E : CMGaloisIntermediateField)
    (a₁ x₁ a₂ x₂ a₃ x₃ a₄ x₄ : E.carrier) :
    E.carrier ⊗[ℚ] CMFiniteCanonicalVectorTarget E :=
  (a₁ * a₂ * a₃ * a₄) ⊗ₜ[ℚ]
    (((x₁ ⊗ₜ[ℚ] x₂) ⊗ₜ[ℚ] x₃) ⊗ₜ[ℚ] x₄)

/-- Exact original pure formula expressed using the archived name. -/
theorem canonicalFinitePureAssembly_eq_checked
    (E : CMGaloisIntermediateField)
    (a₁ x₁ a₂ x₂ a₃ x₃ a₄ x₄ : E.carrier) :
    canonicalFinitePureAssembly E a₁ x₁ a₂ x₂ a₃ x₃ a₄ x₄ =
      (a₁ * a₂ * a₃ * a₄) ⊗ₜ[ℚ]
        (((x₁ ⊗ₜ[ℚ] x₂) ⊗ₜ[ℚ] x₃) ⊗ₜ[ℚ] x₄) := rfl

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

/-- The original finite separated assembly is definitionally the checked one. -/
theorem CMFiniteSeparatedCanonicalAssembly_eq_checked
    (E : CMGaloisIntermediateField) :
    CMFiniteSeparatedCanonicalAssembly E =
      separatedAssembly E.carrier := rfl

/-- The original finite tensor shuffle is definitionally the checked one. -/
theorem CMFiniteFourTensorShuffle_eq_checked
    (E : CMGaloisIntermediateField) :
    CMFiniteFourTensorShuffle E = shuffleFour ℚ E.carrier := rfl

/-- Declaration-level equality of the extracted original finite-CM
assembly and the independently checked canonical specialization. -/
theorem CMFiniteCanonicalPairedAssembly_eq_checked
    (E : CMGaloisIntermediateField) :
    CMFiniteCanonicalPairedAssembly E = pairedAssembly E.carrier := rfl

/-- The authentic original names for both pure tensor models are
transported by the canonical shuffle without a geometric hypothesis. -/
@[simp]
theorem CMFiniteFourTensorShuffle_pure
    (E : CMGaloisIntermediateField)
    (a₁ x₁ a₂ x₂ a₃ x₃ a₄ x₄ : E.carrier) :
    CMFiniteFourTensorShuffle E
      (CMFiniteFourPairedPure E a₁ x₁ a₂ x₂ a₃ x₃ a₄ x₄) =
    CMFiniteFourSeparatedPure E a₁ x₁ a₂ x₂ a₃ x₃ a₄ x₄ := by
  exact shuffleFour_pairedPure ℚ E.carrier a₁ x₁ a₂ x₂ a₃ x₃ a₄ x₄

/-- The original named assembly has precisely the canonical pure tensor
formula, without using geometric or Hodge data. -/
@[simp]
theorem CMFiniteCanonicalPairedAssembly_pure
    (E : CMGaloisIntermediateField)
    (a₁ x₁ a₂ x₂ a₃ x₃ a₄ x₄ : E.carrier) :
    CMFiniteCanonicalPairedAssembly E
      (pairedPure ℚ E.carrier a₁ x₁ a₂ x₂ a₃ x₃ a₄ x₄) =
      (a₁ * a₂ * a₃ * a₄) ⊗ₜ[ℚ]
        (((x₁ ⊗ₜ[ℚ] x₂) ⊗ₜ[ℚ] x₃) ⊗ₜ[ℚ] x₄) := by
  rw [CMFiniteCanonicalPairedAssembly_eq_checked]
  exact pairedAssembly_pure E.carrier a₁ x₁ a₂ x₂ a₃ x₃ a₄ x₄


/-- The authentic original paired pure tensor, rather than its generic
alias, evaluates under the original named assembly by the same formula. -/
theorem CMFiniteCanonicalPairedAssembly_originalPure
    (E : CMGaloisIntermediateField)
    (a₁ x₁ a₂ x₂ a₃ x₃ a₄ x₄ : E.carrier) :
    CMFiniteCanonicalPairedAssembly E
      (CMFiniteFourPairedPure E a₁ x₁ a₂ x₂ a₃ x₃ a₄ x₄) =
      (a₁ * a₂ * a₃ * a₄) ⊗ₜ[ℚ]
        (((x₁ ⊗ₜ[ℚ] x₂) ⊗ₜ[ℚ] x₃) ⊗ₜ[ℚ] x₄) := by
  rw [CMFiniteFourPairedPure_eq_checked]
  exact CMFiniteCanonicalPairedAssembly_pure E a₁ x₁ a₂ x₂ a₃ x₃ a₄ x₄

/-- Original generator formula in the original source's exact notation. -/
theorem CMFiniteCanonicalPairedAssembly_originalFormula
    (E : CMGaloisIntermediateField)
    (a₁ x₁ a₂ x₂ a₃ x₃ a₄ x₄ : E.carrier) :
    CMFiniteCanonicalPairedAssembly E
      (CMFiniteFourPairedPure E a₁ x₁ a₂ x₂ a₃ x₃ a₄ x₄) =
      canonicalFinitePureAssembly E a₁ x₁ a₂ x₂ a₃ x₃ a₄ x₄ := by
  exact CMFiniteCanonicalPairedAssembly_originalPure E
    a₁ x₁ a₂ x₂ a₃ x₃ a₄ x₄

/-- Any candidate map on the authentic original finite-CM carrier with
the prescribed pure formula equals the original named assembly. -/
theorem CMFiniteCanonicalPairedAssembly_unique
    (E : CMGaloisIntermediateField)
    (F : CMFiniteFourPairedTensor E →ₗ[ℚ]
      (E.carrier ⊗[ℚ] CMFiniteCanonicalVectorTarget E))
    (hF : ∀ a₁ x₁ a₂ x₂ a₃ x₃ a₄ x₄ : E.carrier,
      F (CMFiniteFourPairedPure E a₁ x₁ a₂ x₂ a₃ x₃ a₄ x₄) =
        (a₁ * a₂ * a₃ * a₄) ⊗ₜ[ℚ]
          (((x₁ ⊗ₜ[ℚ] x₂) ⊗ₜ[ℚ] x₃) ⊗ₜ[ℚ] x₄)) :
    F = CMFiniteCanonicalPairedAssembly E := by
  rw [CMFiniteCanonicalPairedAssembly_eq_checked]
  apply pairedAssembly_unique E.carrier F
  intro a₁ x₁ a₂ x₂ a₃ x₃ a₄ x₄
  exact hF a₁ x₁ a₂ x₂ a₃ x₃ a₄ x₄

end
end GRWTSK.AlgebraicGeometry.Hodge.CMFourFactorSwitchGeometry
