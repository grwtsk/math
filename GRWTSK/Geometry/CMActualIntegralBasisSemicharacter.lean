/- Copyright (c) 2026 grwtsk contributors. MIT.
Mathematical direction: grwtsk contributors. Formalization assistance: OpenAI.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN / EXPECTED_TYPES_NOT_RUN /
FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN. -/
import GRWTSK.Geometry.CMActualIntegralPeriodResidueLinks
import GRWTSK.Geometry.CMRiemannSemicharacter
import Mathlib.LinearAlgebra.FreeModule.Finite.Basic
import Mathlib.Tactic

/-!
# Source-exact Appell-Humbert semicharacter on THE ring of integers O_E

The input lattice is NOT the older arbitrary-Q-basis integer span. We use
Mathlib's genuine finite free Z-module `𝓞 E` and reindex its integral basis
through a finite ordered `Fin` type. The coordinates and their integer matrix
come from the *original* O_E period Riemann form, via
`CMActualIntegralPeriodResidueLinks.actualIntegerPeriodFlux`.

Its alternating source form E satisfies, for the chosen integral basis b_i,
  E(a,b) = sum_(i,j) a_i E(b_i,b_j) b_j.
Set q(a)=sum_(i<j) a_i E(b_i,b_j) a_j. Then the source half-character
  alpha(a)=(-1)^q(a)
is unit modulus and satisfies the actual Appell-Humbert semicharacter law
  alpha(a+b) = alpha(a)*alpha(b)*(-1)^E(a,b).

The basis order is an EXPLICIT choice. The resulting alpha can change by an
ordinary unitary character under reindexing; the actual polarization does
NOT change. This is a line-bundle cocycle input, not a constructed physical
Chern connection or a map to the user's particular original CM variety.
-/
set_option autoImplicit false
noncomputable section
open scoped BigOperators _root_.NumberField

namespace GRWTSK.Geometry.AlgebraicGeometry.Hodge.CMActualIntegralBasisSemicharacter

open OAI.AlgebraicGeometry.ComplexMultiplication.CM
open GRWTSK.Geometry.AlgebraicGeometry.Hodge.CMRiemannSemicharacter
open GRWTSK.Geometry.AlgebraicGeometry.Hodge.CMActualIntegralPeriodResidueLinks

variable (E : Type*) [Field E] [NumberField E] [Algebra ℚ E]
  [IsCMField E] [IsGalois ℚ E]

/-- The actual finite free integral-basis index for O_E, not a Q-basis. -/
abbrev IntegralIndex : Type :=
  Fin (Fintype.card (Module.Free.ChooseBasisIndex ℤ (𝓞 E)))

/-- One explicit ordered Z-basis of the ring of integers. -/
def actualIntegralBasis : Basis (IntegralIndex E) ℤ (𝓞 E) :=
  (Module.Free.chooseBasis ℤ (𝓞 E)).reindex
    (Fintype.equivFin (Module.Free.ChooseBasisIndex ℤ (𝓞 E)))

/-- Original coefficients in O_E; conversion preserves every integer. -/
def actualIntegralCoords (a : 𝓞 E) : IntegralIndex E → ℤ :=
  fun i => (actualIntegralBasis E).repr a i

/-- Reconstruct the full ring-of-integers element, without residue quotient. -/
theorem actualIntegralCoords_reconstruct (a : 𝓞 E) :
    (∑ i : IntegralIndex E,
      actualIntegralCoords E a i • actualIntegralBasis E i) = a :=
  (actualIntegralBasis E).sum_repr a

/-- The actual period form is additive in the first argument. -/
theorem actualFlux_add_left
    (epsilon : TypeHodgeStructure.CMEmbeddingType E)
    (a b c : 𝓞 E) :
    actualIntegerPeriodFlux E epsilon (a+b) c =
      actualIntegerPeriodFlux E epsilon a c +
        actualIntegerPeriodFlux E epsilon b c := by
  apply Int.cast_injective (α := ℝ)
  simp only [Int.cast_add, actualIntegerPeriodFlux_eq_periodForm]
  change epsilon.periodRiemannForm
      (epsilon.periodEmbedding (((a+b : 𝓞 E) : E)))
      (epsilon.periodEmbedding (c : E)) = _
  simp

/-- The actual period form is additive in the second argument. -/
theorem actualFlux_add_right
    (epsilon : TypeHodgeStructure.CMEmbeddingType E)
    (a b c : 𝓞 E) :
    actualIntegerPeriodFlux E epsilon a (b+c) =
      actualIntegerPeriodFlux E epsilon a b +
        actualIntegerPeriodFlux E epsilon a c := by
  apply Int.cast_injective (α := ℝ)
  simp only [Int.cast_add, actualIntegerPeriodFlux_eq_periodForm]
  change epsilon.periodRiemannForm (epsilon.periodEmbedding (a : E))
      (epsilon.periodEmbedding (((b+c : 𝓞 E) : E))) = _
  simp

/-- Integer scaling in the first integral-lattice argument is source-linear. -/
theorem actualFlux_zsmul_left
    (epsilon : TypeHodgeStructure.CMEmbeddingType E)
    (k : ℤ) (a b : 𝓞 E) :
    actualIntegerPeriodFlux E epsilon (k • a) b =
      k * actualIntegerPeriodFlux E epsilon a b := by
  apply Int.cast_injective (α := ℝ)
  simp only [Int.cast_mul, actualIntegerPeriodFlux_eq_periodForm]
  simp [map_zsmul, zsmul_eq_mul, smul_eq_mul]

/-- Integer scaling in the second integral-lattice argument. -/
theorem actualFlux_zsmul_right
    (epsilon : TypeHodgeStructure.CMEmbeddingType E)
    (k : ℤ) (a b : 𝓞 E) :
    actualIntegerPeriodFlux E epsilon a (k • b) =
      k * actualIntegerPeriodFlux E epsilon a b := by
  apply Int.cast_injective (α := ℝ)
  simp only [Int.cast_mul, actualIntegerPeriodFlux_eq_periodForm]
  simp [map_zsmul, zsmul_eq_mul, smul_eq_mul]

/-- Finite additivity of the period form, extracted from its REAL source. -/
theorem actualFlux_sum_left
    (epsilon : TypeHodgeStructure.CMEmbeddingType E)
    {ι : Type*} [Fintype ι]
    (f : ι → 𝓞 E) (b : 𝓞 E) :
    actualIntegerPeriodFlux E epsilon (∑ i, f i) b =
      ∑ i, actualIntegerPeriodFlux E epsilon (f i) b := by
  classical
  let S : Finset ι := Finset.univ
  change actualIntegerPeriodFlux E epsilon (∑ i ∈ S, f i) b = _
  induction S using Finset.induction_on with
  | empty =>
      have hz : actualIntegerPeriodFlux E epsilon (0 : 𝓞 E) b = 0 := by
        have h := actualFlux_add_left E epsilon (0 : 𝓞 E) 0 b
        omega
      simpa using hz
  | @insert i s hi ih =>
      simp only [Finset.sum_insert hi]
      rw [actualFlux_add_left, ih]

/-- Finite additivity in the second source argument. -/
theorem actualFlux_sum_right
    (epsilon : TypeHodgeStructure.CMEmbeddingType E)
    {ι : Type*} [Fintype ι]
    (a : 𝓞 E) (f : ι → 𝓞 E) :
    actualIntegerPeriodFlux E epsilon a (∑ i, f i) =
      ∑ i, actualIntegerPeriodFlux E epsilon a (f i) := by
  classical
  let S : Finset ι := Finset.univ
  change actualIntegerPeriodFlux E epsilon a (∑ i ∈ S, f i) = _
  induction S using Finset.induction_on with
  | empty =>
      have hz : actualIntegerPeriodFlux E epsilon a (0 : 𝓞 E) = 0 := by
        have h := actualFlux_add_right E epsilon a (0 : 𝓞 E) 0
        omega
      simpa using hz
  | @insert i s hi ih =>
      simp only [Finset.sum_insert hi]
      rw [actualFlux_add_right, ih]

/-- This is the ACTUAL integral period matrix, not a chosen bilinear form. -/
def actualIntegralPeriodMatrix
    (epsilon : TypeHodgeStructure.CMEmbeddingType E) :
    IntegralIndex E → IntegralIndex E → ℤ :=
  fun i j => actualIntegerPeriodFlux E epsilon
    (actualIntegralBasis E i) (actualIntegralBasis E j)

/-- Every source matrix coefficient is genuinely alternating. -/
theorem actualIntegralPeriodMatrix_skew
    (epsilon : TypeHodgeStructure.CMEmbeddingType E)
    (i j : IntegralIndex E) :
    actualIntegralPeriodMatrix E epsilon j i =
      -actualIntegralPeriodMatrix E epsilon i j :=
  actualIntegerPeriodFlux_skew E epsilon _ _

theorem actualIntegralPeriodMatrix_diag
    (epsilon : TypeHodgeStructure.CMEmbeddingType E)
    (i : IntegralIndex E) :
    actualIntegralPeriodMatrix E epsilon i i = 0 :=
  actualIntegerPeriodFlux_self E epsilon _

/-- Completes the independent Z-bilinearity bridge: ALL entries of the true
ring-of-integers CM period form are recovered from its integral-basis matrix.
The original ring-of-integers label remains recoverable. -/
theorem matrixPeriod_eq_actualFlux
    (epsilon : TypeHodgeStructure.CMEmbeddingType E)
    (a b : 𝓞 E) :
    matrixPairing (actualIntegralPeriodMatrix E epsilon)
      (actualIntegralCoords E a) (actualIntegralCoords E b) =
      actualIntegerPeriodFlux E epsilon a b := by
  classical
  let basis := actualIntegralBasis E
  have ha := (basis.sum_repr a).symm
  have hb := (basis.sum_repr b).symm
  calc
    matrixPairing (actualIntegralPeriodMatrix E epsilon)
        (actualIntegralCoords E a) (actualIntegralCoords E b) =
      ∑ i : IntegralIndex E, ∑ j : IntegralIndex E,
        actualIntegralCoords E a i *
          actualIntegerPeriodFlux E epsilon (basis i) (basis j) *
          actualIntegralCoords E b j := rfl
    _ = actualIntegerPeriodFlux E epsilon
          (∑ i : IntegralIndex E, actualIntegralCoords E a i • basis i)
          (∑ j : IntegralIndex E, actualIntegralCoords E b j • basis j) := by
      rw [actualFlux_sum_left]
      apply Finset.sum_congr rfl
      intro i _
      rw [actualFlux_zsmul_left, actualFlux_sum_right]
      rw [Finset.mul_sum]
      apply Finset.sum_congr rfl
      intro j _
      rw [actualFlux_zsmul_right]
      ring
    _ = actualIntegerPeriodFlux E epsilon a b := by
      rw [actualIntegralCoords_reconstruct, actualIntegralCoords_reconstruct]

/-- The true integral ring-of-integers refinement, not the arbitrary-Q-basis one. -/
def actualIntegralQuadraticRefinement
    (epsilon : TypeHodgeStructure.CMEmbeddingType E)
    (a : 𝓞 E) : ℤ :=
  quadraticRefinement (actualIntegralPeriodMatrix E epsilon)
    (actualIntegralCoords E a)

/-- A SOURCE-DERIVED unit-modulus Appell-Humbert semicharacter on O_E. -/
def actualIntegralSemicharacter
    (epsilon : TypeHodgeStructure.CMEmbeddingType E)
    (a : 𝓞 E) : ℂ :=
  semicharacter (actualIntegralPeriodMatrix E epsilon)
    (actualIntegralCoords E a)

@[simp] theorem actualIntegralSemicharacter_zero
    (epsilon : TypeHodgeStructure.CMEmbeddingType E) :
    actualIntegralSemicharacter E epsilon 0 = 1 := by
  have hzero : actualIntegralCoords E (0 : 𝓞 E) = 0 := by
    funext i
    simp [actualIntegralCoords]
  unfold actualIntegralSemicharacter
  rw [hzero]
  exact semicharacter_zero _

theorem actualIntegralSemicharacter_norm_one
    (epsilon : TypeHodgeStructure.CMEmbeddingType E) (a : 𝓞 E) :
    ‖actualIntegralSemicharacter E epsilon a‖ = 1 := by
  exact semicharacter_norm_one _ _

/-- The exact Appell-Humbert twisted-addition law, with ORIGINAL sourced
integral flux and no freely postulated semicharacter. -/
theorem actualIntegralSemicharacter_add
    (epsilon : TypeHodgeStructure.CMEmbeddingType E)
    (a b : 𝓞 E) :
    actualIntegralSemicharacter E epsilon (a + b) =
      actualIntegralSemicharacter E epsilon a *
        actualIntegralSemicharacter E epsilon b *
          (-1 : ℂ) ^ (actualIntegerPeriodFlux E epsilon a b) := by
  have hcoords : actualIntegralCoords E (a + b) =
      actualIntegralCoords E a + actualIntegralCoords E b := by
    funext i
    simp [actualIntegralCoords]
  unfold actualIntegralSemicharacter
  rw [hcoords]
  rw [semicharacter_add
    (actualIntegralPeriodMatrix E epsilon)
      (actualIntegralPeriodMatrix_skew E epsilon)
      (actualIntegralPeriodMatrix_diag E epsilon)]
  rw [matrixPeriod_eq_actualFlux]

end GRWTSK.Geometry.AlgebraicGeometry.Hodge.CMActualIntegralBasisSemicharacter
