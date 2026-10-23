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

/-- Original coefficient multiplication pure-tensor lemma, restored in its
single algebraic owner after migration from the geometric consumer. -/
@[simp] theorem CMFiniteCoefficientMultiplication_tmul
    (E : CMGaloisIntermediateField) (a b : E.carrier) :
    CMFiniteCoefficientMultiplication E (a ⊗ₜ[ℚ] b) = a * b :=
  coefficientMul_tmul E.carrier a b

/-- The finite coefficient multiplication map sends the unit pure
tensor to the unit of the CM field. -/
@[simp]
theorem CMFiniteCoefficientMultiplication_one
    (E : CMGaloisIntermediateField) :
    CMFiniteCoefficientMultiplication E
        ((1 : E.carrier) ⊗ₜ[ℚ] (1 : E.carrier)) = 1 := by
  simp

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

/-- The authentic original fourfold coefficient multiplication has the
same pure formula as the independently checked algebraic supplier. -/
@[simp] theorem CMFiniteFourCoefficientMultiplication_pure
    (E : CMGaloisIntermediateField) (a b c d : E.carrier) :
    CMFiniteFourCoefficientMultiplication E
      (((a ⊗ₜ[ℚ] b) ⊗ₜ[ℚ] c) ⊗ₜ[ℚ] d) =
      a * b * c * d := by
  rw [CMFiniteFourCoefficientMultiplication_eq_checked]
  exact coefficientMulFour_pure E.carrier a b c d

/-- The original separated assembly evaluated on the original separated
pure tensor, without importing a geometric realization. -/
@[simp] theorem CMFiniteSeparatedCanonicalAssembly_pure
    (E : CMGaloisIntermediateField)
    (a₁ x₁ a₂ x₂ a₃ x₃ a₄ x₄ : E.carrier) :
    CMFiniteSeparatedCanonicalAssembly E
      (CMFiniteFourSeparatedPure E a₁ x₁ a₂ x₂ a₃ x₃ a₄ x₄) =
      canonicalFinitePureAssembly E a₁ x₁ a₂ x₂ a₃ x₃ a₄ x₄ := by
  change separatedAssembly E.carrier
      (separatedPure ℚ E.carrier a₁ x₁ a₂ x₂ a₃ x₃ a₄ x₄) =
      (a₁ * a₂ * a₃ * a₄) ⊗ₜ[ℚ]
        (((x₁ ⊗ₜ[ℚ] x₂) ⊗ₜ[ℚ] x₃) ⊗ₜ[ℚ] x₄)
  simp [separatedAssembly, separatedPure, coefficientMulFour_pure]

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

/-- Any two maps on the original finite-CM paired tensor carrier
satisfying the original pure shuffle formula coincide. The proof now uses
the independently checked generic uniqueness theorem. -/
theorem CMFiniteFourTensorShuffle_unique
    (E : CMGaloisIntermediateField)
    (F G : CMFiniteFourPairedTensor E →ₗ[ℚ]
      (CMFiniteFourCoefficientTensor E ⊗[ℚ]
        CMFiniteCanonicalVectorTarget E))
    (hF : ∀ a₁ x₁ a₂ x₂ a₃ x₃ a₄ x₄ : E.carrier,
      F (CMFiniteFourPairedPure E a₁ x₁ a₂ x₂ a₃ x₃ a₄ x₄) =
        CMFiniteFourSeparatedPure E a₁ x₁ a₂ x₂ a₃ x₃ a₄ x₄)
    (hG : ∀ a₁ x₁ a₂ x₂ a₃ x₃ a₄ x₄ : E.carrier,
      G (CMFiniteFourPairedPure E a₁ x₁ a₂ x₂ a₃ x₃ a₄ x₄) =
        CMFiniteFourSeparatedPure E a₁ x₁ a₂ x₂ a₃ x₃ a₄ x₄) :
    F = G := by
  have hF' :
      F = (GRWTSK.LinearAlgebra.TensorProduct.FourPairedShuffle.shuffleFour
        ℚ E.carrier).toLinearMap := by
    apply GRWTSK.LinearAlgebra.TensorProduct.FourPairedShuffle.shuffleFour_unique
    intro a₁ x₁ a₂ x₂ a₃ x₃ a₄ x₄
    exact hF a₁ x₁ a₂ x₂ a₃ x₃ a₄ x₄
  have hG' :
      G = (GRWTSK.LinearAlgebra.TensorProduct.FourPairedShuffle.shuffleFour
        ℚ E.carrier).toLinearMap := by
    apply GRWTSK.LinearAlgebra.TensorProduct.FourPairedShuffle.shuffleFour_unique
    intro a₁ x₁ a₂ x₂ a₃ x₃ a₄ x₄
    exact hG a₁ x₁ a₂ x₂ a₃ x₃ a₄ x₄
  exact hF'.trans hG'.symm


/-- The two-pair specialization of the generic checked shuffle. -/
def CMFiniteTwoTensorShuffle (E : CMGaloisIntermediateField) :
    ((E.carrier ⊗[ℚ] E.carrier) ⊗[ℚ]
      (E.carrier ⊗[ℚ] E.carrier)) ≃ₗ[ℚ]
    ((E.carrier ⊗[ℚ] E.carrier) ⊗[ℚ]
      (E.carrier ⊗[ℚ] E.carrier)) :=
  GRWTSK.LinearAlgebra.TensorProduct.FourPairedShuffle.shuffleTwo ℚ E.carrier

/-- The three-pair specialization of the generic checked shuffle. -/
def CMFiniteThreeTensorShuffle (E : CMGaloisIntermediateField) :
    (((E.carrier ⊗[ℚ] E.carrier) ⊗[ℚ]
      (E.carrier ⊗[ℚ] E.carrier)) ⊗[ℚ]
      (E.carrier ⊗[ℚ] E.carrier)) ≃ₗ[ℚ]
    (((E.carrier ⊗[ℚ] E.carrier) ⊗[ℚ] E.carrier) ⊗[ℚ]
      ((E.carrier ⊗[ℚ] E.carrier) ⊗[ℚ] E.carrier)) :=
  GRWTSK.LinearAlgebra.TensorProduct.FourPairedShuffle.shuffleThree ℚ E.carrier


/-- Diagonal rational-linear action on the finite tensor square: both
factors are conjugated by the same field automorphism. -/
def CMFiniteDiagonalScalarConjugate
    (E : CMGaloisIntermediateField)
    (σ : E.carrier ≃ₐ[ℚ] E.carrier) :
    (E.carrier ⊗[ℚ] E.carrier) →ₗ[ℚ]
      (E.carrier ⊗[ℚ] E.carrier) :=
  σ.toLinearMap.lTensor E.carrier ∘ₗ
    σ.toLinearMap.rTensor E.carrier

/-- The diagonal action conjugates both entries of a pure tensor. -/
@[simp]
theorem CMFiniteDiagonalScalarConjugate_tmul
    (E : CMGaloisIntermediateField)
    (σ : E.carrier ≃ₐ[ℚ] E.carrier)
    (a b : E.carrier) :
    CMFiniteDiagonalScalarConjugate E σ (a ⊗ₜ[ℚ] b) =
      (σ a) ⊗ₜ[ℚ] (σ b) := by
  simp [CMFiniteDiagonalScalarConjugate, LinearMap.comp_apply]

/-- Multiplication is equivariant under the diagonal action, not under
the action on only one tensor factor. -/
theorem CMFiniteCoefficientMultiplication_diagonal_equivariant
    (E : CMGaloisIntermediateField)
    (σ : E.carrier ≃ₐ[ℚ] E.carrier)
    (t : E.carrier ⊗[ℚ] E.carrier) :
    CMFiniteCoefficientMultiplication E
        (CMFiniteDiagonalScalarConjugate E σ t) =
      σ (CMFiniteCoefficientMultiplication E t) := by
  induction t with
  | tmul a b =>
      simp [CMFiniteDiagonalScalarConjugate_tmul,
        CMFiniteCoefficientMultiplication_tmul, map_mul]
  | add x y hx hy =>
      simp [map_add, hx, hy]

/-- The rational tensor target for four coefficient entries, with the
same parenthesization as the canonical four-vector target. -/

/-- Iterated finite-CM coefficient multiplication. The construction uses
the existing two-factor multiplication map and rational tensor functoriality,
without postulating a fourfold multiplication operation. -/

/-- Evaluation on a fourfold pure tensor is ordinary field multiplication. -/
/-- Diagonal action on a threefold coefficient tensor: conjugate every
coefficient entry, not merely the outermost tensor factor. -/
def CMFiniteTripleCoefficientConjugate
    (E : CMGaloisIntermediateField)
    (σ : E.carrier ≃ₐ[ℚ] E.carrier) :
    ((E.carrier ⊗[ℚ] E.carrier) ⊗[ℚ] E.carrier) →ₗ[ℚ]
      ((E.carrier ⊗[ℚ] E.carrier) ⊗[ℚ] E.carrier) :=
  σ.toLinearMap.lTensor (E.carrier ⊗[ℚ] E.carrier) ∘ₗ
    (CMFiniteDiagonalScalarConjugate E σ).rTensor E.carrier

/-- Diagonal action on all four coefficient factors. -/
def CMFiniteFourCoefficientConjugate
    (E : CMGaloisIntermediateField)
    (σ : E.carrier ≃ₐ[ℚ] E.carrier) :
    CMFiniteFourCoefficientTensor E →ₗ[ℚ]
      CMFiniteFourCoefficientTensor E :=
  σ.toLinearMap.lTensor
      ((E.carrier ⊗[ℚ] E.carrier) ⊗[ℚ] E.carrier) ∘ₗ
    (CMFiniteTripleCoefficientConjugate E σ).rTensor E.carrier

/-- Explicit evaluation of the diagonal fourfold action on pure tensors. -/
@[simp]
theorem CMFiniteFourCoefficientConjugate_pure
    (E : CMGaloisIntermediateField)
    (σ : E.carrier ≃ₐ[ℚ] E.carrier)
    (a b c d : E.carrier) :
    CMFiniteFourCoefficientConjugate E σ
      (((a ⊗ₜ[ℚ] b) ⊗ₜ[ℚ] c) ⊗ₜ[ℚ] d) =
        (((σ a ⊗ₜ[ℚ] σ b) ⊗ₜ[ℚ] σ c) ⊗ₜ[ℚ] σ d) := by
  simp [CMFiniteFourCoefficientConjugate,
    CMFiniteTripleCoefficientConjugate,
    CMFiniteDiagonalScalarConjugate, LinearMap.comp_apply]

/-- Iterated multiplication commutes with diagonal Galois transport of all
four coefficient entries. -/
theorem CMFiniteFourCoefficientMultiplication_equivariant
    (E : CMGaloisIntermediateField)
    (σ : E.carrier ≃ₐ[ℚ] E.carrier)
    (t : CMFiniteFourCoefficientTensor E) :
    CMFiniteFourCoefficientMultiplication E
        (CMFiniteFourCoefficientConjugate E σ t) =
      σ (CMFiniteFourCoefficientMultiplication E t) := by
  induction t with
  | tmul t d =>
      induction t with
      | tmul t c =>
          induction t with
          | tmul a b =>
              simp [CMFiniteFourCoefficientConjugate_pure,
                CMFiniteFourCoefficientMultiplication_pure, map_mul]
          | add x y hx hy =>
              simp [map_add, hx, hy]
      | add x y hx hy =>
          simp [map_add, hx, hy]
  | add x y hx hy =>
      simp [map_add, hx, hy]

/-- Canonical finite-CM pure-factor formula, prior to extension of
coefficients into algebraic numbers. The coefficient entries multiply in
E while the four vector entries remain a rational tensor. -/

/-- The canonical finite switched pure tensor factors through the
constructed rational-linear fourfold coefficient multiplication map.
This is the first explicit link between the coefficient construction and
the final finite assembly formula, without geometric assumptions. -/
theorem canonicalFinitePureAssembly_eq_coefficientMultiplication
    (E : CMGaloisIntermediateField)
    (a₁ x₁ a₂ x₂ a₃ x₃ a₄ x₄ : E.carrier) :
    canonicalFinitePureAssembly E a₁ x₁ a₂ x₂ a₃ x₃ a₄ x₄ =
      (CMFiniteFourCoefficientMultiplication E
        (((a₁ ⊗ₜ[ℚ] a₂) ⊗ₜ[ℚ] a₃) ⊗ₜ[ℚ] a₄)) ⊗ₜ[ℚ]
        (((x₁ ⊗ₜ[ℚ] x₂) ⊗ₜ[ℚ] x₃) ⊗ₜ[ℚ] x₄) := by
  simp [canonicalFinitePureAssembly,
    CMFiniteFourCoefficientMultiplication_pure]

/-- Coefficient multiplication commutes with diagonal finite Galois
transport in the canonical pure assembly. The rational vector entries
are deliberately unchanged by the coefficient-only transport. -/
theorem canonicalFinitePureAssembly_eq_conjugatedCoefficientProduct
    (E : CMGaloisIntermediateField)
    (σ : E.carrier ≃ₐ[ℚ] E.carrier)
    (a₁ x₁ a₂ x₂ a₃ x₃ a₄ x₄ : E.carrier) :
    canonicalFinitePureAssembly E
        (σ a₁) x₁ (σ a₂) x₂ (σ a₃) x₃ (σ a₄) x₄ =
      (σ (CMFiniteFourCoefficientMultiplication E
        (((a₁ ⊗ₜ[ℚ] a₂) ⊗ₜ[ℚ] a₃) ⊗ₜ[ℚ] a₄))) ⊗ₜ[ℚ]
        (((x₁ ⊗ₜ[ℚ] x₂) ⊗ₜ[ℚ] x₃) ⊗ₜ[ℚ] x₄) := by
  simp [canonicalFinitePureAssembly,
    CMFiniteFourCoefficientMultiplication_pure, map_mul]


/-- Rational balancing in coefficient/vector pair 1 of the canonical
finite pure-factor assembly. -/
theorem canonicalFinitePureAssembly_balance_1
    (E : CMGaloisIntermediateField) (q : ℚ)
    (a1 x1 a2 x2 a3 x3 a4 x4 : E.carrier) :
    canonicalFinitePureAssembly E (q • a1) x1 a2 x2 a3 x3 a4 x4 =
      canonicalFinitePureAssembly E a1 (q • x1) a2 x2 a3 x3 a4 x4 := by
  simp [canonicalFinitePureAssembly, Algebra.smul_def,
    TensorProduct.smul_tmul', TensorProduct.tmul_smul, mul_assoc,
    mul_left_comm, mul_comm]

/-- Rational balancing in coefficient/vector pair 2 of the canonical
finite pure-factor assembly. -/
theorem canonicalFinitePureAssembly_balance_2
    (E : CMGaloisIntermediateField) (q : ℚ)
    (a1 x1 a2 x2 a3 x3 a4 x4 : E.carrier) :
    canonicalFinitePureAssembly E a1 x1 (q • a2) x2 a3 x3 a4 x4 =
      canonicalFinitePureAssembly E a1 x1 a2 (q • x2) a3 x3 a4 x4 := by
  simp [canonicalFinitePureAssembly, Algebra.smul_def,
    TensorProduct.smul_tmul', TensorProduct.tmul_smul, mul_assoc,
    mul_left_comm, mul_comm]

/-- Rational balancing in coefficient/vector pair 3 of the canonical
finite pure-factor assembly. -/
theorem canonicalFinitePureAssembly_balance_3
    (E : CMGaloisIntermediateField) (q : ℚ)
    (a1 x1 a2 x2 a3 x3 a4 x4 : E.carrier) :
    canonicalFinitePureAssembly E a1 x1 a2 x2 (q • a3) x3 a4 x4 =
      canonicalFinitePureAssembly E a1 x1 a2 x2 a3 (q • x3) a4 x4 := by
  simp [canonicalFinitePureAssembly, Algebra.smul_def,
    TensorProduct.smul_tmul', TensorProduct.tmul_smul, mul_assoc,
    mul_left_comm, mul_comm]

/-- Rational balancing in coefficient/vector pair 4 of the canonical
finite pure-factor assembly. -/
theorem canonicalFinitePureAssembly_balance_4
    (E : CMGaloisIntermediateField) (q : ℚ)
    (a1 x1 a2 x2 a3 x3 a4 x4 : E.carrier) :
    canonicalFinitePureAssembly E a1 x1 a2 x2 a3 x3 (q • a4) x4 =
      canonicalFinitePureAssembly E a1 x1 a2 x2 a3 x3 a4 (q • x4) := by
  simp [canonicalFinitePureAssembly, Algebra.smul_def,
    TensorProduct.smul_tmul', TensorProduct.tmul_smul, mul_assoc,
    mul_left_comm, mul_comm]


end
end GRWTSK.AlgebraicGeometry.Hodge.CMFourFactorSwitchGeometry
