/- Copyright (c) 2026 grwtsk contributors. MIT.
Mathematical direction: grwtsk contributors; formalization assistance: OpenAI.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN / EXPECTED_TYPES_NOT_RUN /
FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN. -/
import GRWTSK.Geometry.CMRiemannResidueHolonomy
import Mathlib.Tactic

/-!
# Source CM trace lattice: explicit Appell-Humbert semicharacter

The existing actual CM trace B_ξ is alternating and integer-valued after
its source denominator clearing. The ordered integer lattice basis gives
  q(a) = sum_(i<j) B_ξ(eᵢ,eⱼ) aᵢ aⱼ.
The exact polarization identity is
  q(a+b) = q(a)+q(b)+B_ξ(a,b)+2 upperB_ξ(b,a),
so alpha(a)=(-1)^q(a) obeys
  alpha(a+b)=alpha(a)*alpha(b)*(-1)^B_ξ(a,b).

This supplies a genuine source-derived semicharacter, including arbitrary
even forms (which may have trivial mod-two phase). The ordered basis choice
is explicit: alpha is not canonical for an unspecified CM variety.

A quotient complex torus, an ample Appell-Humbert line bundle, a Chern
connection, and the period identification with the particular original CM
variety remain separate geometric obligations. These are source proof
candidates, not Lean kernel acceptance receipts.
-/
set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.Geometry.AlgebraicGeometry.Hodge.CMRiemannSemicharacter

open GRWTSK.Geometry.AlgebraicGeometry.Hodge.CMNumberFieldIndex
open GRWTSK.Geometry.AlgebraicGeometry.Hodge.CMTracePolarization
open GRWTSK.Geometry.AlgebraicGeometry.Hodge.CMArchimedeanPositivity
open GRWTSK.Geometry.AlgebraicGeometry.Hodge.CMLatticePolarization
open GRWTSK.Geometry.AlgebraicGeometry.Hodge.CMRiemannResidueHolonomy

section FiniteAlternatingMatrix
variable {ι : Type*} [Fintype ι] [LinearOrder ι] [DecidableEq ι]
variable (M : ι → ι → ℤ)

/-- Full integer bilinear form, before reduction modulo 2. -/
def matrixPairing (a b : ι → ℤ) : ℤ :=
  ∑ i : ι, ∑ j : ι, a i * M i j * b j

/-- The original ordered upper-triangular part, not an arbitrary cochain. -/
def upperPairing (a b : ι → ℤ) : ℤ :=
  ∑ i : ι, ∑ j : ι, if i < j then a i * M i j * b j else 0

theorem upperPairing_add_left (a b c : ι → ℤ) :
    upperPairing M (a + b) c =
      upperPairing M a c + upperPairing M b c := by
  unfold upperPairing
  rw [← Finset.sum_add_distrib]
  apply Finset.sum_congr rfl
  intro i _
  rw [← Finset.sum_add_distrib]
  apply Finset.sum_congr rfl
  intro j _
  by_cases h : i < j
  · simp [h, Pi.add_apply]
    ring
  · simp [h]

theorem upperPairing_add_right (a b c : ι → ℤ) :
    upperPairing M a (b + c) =
      upperPairing M a b + upperPairing M a c := by
  unfold upperPairing
  rw [← Finset.sum_add_distrib]
  apply Finset.sum_congr rfl
  intro i _
  rw [← Finset.sum_add_distrib]
  apply Finset.sum_congr rfl
  intro j _
  by_cases h : i < j
  · simp [h, Pi.add_apply]
    ring
  · simp [h]

/-- Splitting above and below the diagonal uses the ACTUAL skew matrix. -/
theorem matrixPairing_eq_upper_sub
    (hskew : ∀ i j : ι, M j i = - M i j)
    (hdiag : ∀ i : ι, M i i = 0)
    (a b : ι → ℤ) :
    matrixPairing M a b = upperPairing M a b - upperPairing M b a := by
  have hswap : upperPairing M b a =
      ∑ i : ι, ∑ j : ι,
        if j < i then b j * M j i * a i else 0 := by
    unfold upperPairing
    rw [Finset.sum_comm]
  calc
    matrixPairing M a b =
      ∑ i : ι, ∑ j : ι,
        ((if i < j then a i * M i j * b j else 0) -
         (if j < i then b j * M j i * a i else 0)) := by
          unfold matrixPairing
          apply Finset.sum_congr rfl
          intro i _
          apply Finset.sum_congr rfl
          intro j _
          rcases lt_trichotomy i j with hij | heq | hji
          · simp [hij, not_lt_of_ge hij.le]
          · subst j
            simp [hdiag i]
          · have hni : ¬ i < j := not_lt_of_ge hji.le
            simp only [if_neg hni, if_pos hji, zero_sub]
            rw [hskew i j]
            ring
    _ = upperPairing M a b - upperPairing M b a := by
      simp only [Finset.sum_sub_distrib]
      rw [hswap]
      rfl

/-- Explicit integer quadratic refinement of an integral alternating form. -/
def quadraticRefinement (a : ι → ℤ) : ℤ := upperPairing M a a

theorem quadraticRefinement_add
    (hskew : ∀ i j : ι, M j i = - M i j)
    (hdiag : ∀ i : ι, M i i = 0)
    (a b : ι → ℤ) :
    quadraticRefinement M (a + b) =
      quadraticRefinement M a + quadraticRefinement M b +
        matrixPairing M a b + 2 * upperPairing M b a := by
  have hpolar := matrixPairing_eq_upper_sub M hskew hdiag a b
  unfold quadraticRefinement
  rw [upperPairing_add_left, upperPairing_add_right,
    upperPairing_add_right]
  rw [hpolar]
  ring

/-- Unit circle semicharacter; NOT an ordinary character when B is odd. -/
def semicharacter (a : ι → ℤ) : ℂ :=
  (-1 : ℂ) ^ quadraticRefinement M a

@[simp] theorem semicharacter_zero : semicharacter M 0 = 1 := by
  simp [semicharacter, quadraticRefinement, upperPairing]

theorem semicharacter_norm_one (a : ι → ℤ) :
    ‖semicharacter M a‖ = 1 := by
  simp [semicharacter]

/-- Classical Appell-Humbert twisted-addition equation, source-constructed. -/
theorem semicharacter_add
    (hskew : ∀ i j : ι, M j i = - M i j)
    (hdiag : ∀ i : ι, M i i = 0)
    (a b : ι → ℤ) :
    semicharacter M (a + b) =
      semicharacter M a * semicharacter M b *
        (-1 : ℂ) ^ (matrixPairing M a b) := by
  have hq := quadraticRefinement_add M hskew hdiag a b
  unfold semicharacter
  rw [hq, zpow_add, zpow_add, zpow_add]
  have heven : (-1 : ℂ) ^ (2 * upperPairing M b a) = 1 := by
    rw [← zpow_mul]
    norm_num
  rw [heven, mul_one]
  ring

end FiniteAlternatingMatrix

section SourceCM
variable (E : Type*) [Field E] [NumberField E] [IsCMField E] [IsGalois ℚ E]
variable {v : OddSignRow E}
local notation "n" => Module.finrank ℚ E

/-- Original canonical integer coordinate of one CM trace basis index. -/
def latticeBasisVector (i : Fin n) : Fin n → ℤ :=
  fun k => if k = i then 1 else 0

theorem integralPairing_basis (X : SignControlledXi E v)
    (i j : Fin n) :
    integralPairing E X (latticeBasisVector E i) (latticeBasisVector E j) =
      integralPairingMatrix E X i j := by
  classical
  simp [integralPairing, latticeBasisVector]

/-- Alternation and skewness of source matrix from actual trace form. -/
theorem sourceMatrix_diagonal (X : SignControlledXi E v) (i : Fin n) :
    integralPairingMatrix E X i i = 0 := by
  rw [← integralPairing_basis E X i i]
  exact integralPairing_self E X (latticeBasisVector E i)

theorem sourceMatrix_skew (X : SignControlledXi E v) (i j : Fin n) :
    integralPairingMatrix E X j i =
      -integralPairingMatrix E X i j := by
  rw [← integralPairing_basis E X j i,
      ← integralPairing_basis E X i j]
  exact integralTracePairing_skew E X _ _

/-- The original denominator-cleared CM matrix defines the quadratic phase. -/
def sourceQuadraticRefinement (X : SignControlledXi E v)
    (a : Fin n → ℤ) : ℤ :=
  quadraticRefinement (integralPairingMatrix E X) a

def sourceSemicharacter (X : SignControlledXi E v)
    (a : Fin n → ℤ) : ℂ :=
  semicharacter (integralPairingMatrix E X) a

/-- Exact original full bilinear trace form in original integer coordinates. -/
theorem sourceMatrixPairing_eq_integral (X : SignControlledXi E v)
    (a b : Fin n → ℤ) :
    matrixPairing (integralPairingMatrix E X) a b =
      integralPairing E X a b := rfl

/-- Complete source-derived Appell-Humbert semicharacter relation.
This algebra is NOT a line bundle realization on a specified original X. -/
theorem sourceSemicharacter_add (X : SignControlledXi E v)
    (a b : Fin n → ℤ) :
    sourceSemicharacter E X (a + b) =
      sourceSemicharacter E X a * sourceSemicharacter E X b *
        integralTracePhase E X a b := by
  unfold sourceSemicharacter integralTracePhase
  rw [semicharacter_add
    (integralPairingMatrix E X)
      (sourceMatrix_skew E X) (sourceMatrix_diagonal E X)]
  rfl

theorem sourceSemicharacter_norm_one
    (X : SignControlledXi E v) (a : Fin n → ℤ) :
    ‖sourceSemicharacter E X a‖ = 1 :=
  semicharacter_norm_one _ _

@[simp] theorem sourceSemicharacter_zero
    (X : SignControlledXi E v) :
    sourceSemicharacter E X 0 = 1 := semicharacter_zero _

/-- A source-bound phase package, NOT a new physical Chern connection. -/
structure SourceAppellHumbertPhase (X : SignControlledXi E v) where
  phase : (Fin n → ℤ) → ℂ
  norm_one : ∀ a, ‖phase a‖ = 1
  phase_zero : phase 0 = 1
  twisted_add : ∀ a b, phase (a + b) =
    phase a * phase b * integralTracePhase E X a b

def canonicalSourceAppellHumbertPhase
    (X : SignControlledXi E v) : SourceAppellHumbertPhase E X where
  phase := sourceSemicharacter E X
  norm_one := sourceSemicharacter_norm_one E X
  phase_zero := sourceSemicharacter_zero E X
  twisted_add := sourceSemicharacter_add E X

end SourceCM

end GRWTSK.Geometry.AlgebraicGeometry.Hodge.CMRiemannSemicharacter
