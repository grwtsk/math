/- Copyright (c) 2026 R.A. Jacob Martone. MIT.
Human mathematical direction: R.A. Jacob Martone.
Formalization assistance: OpenAI.
Mathlib retains its upstream authorship and Apache-2.0 license. -/
import GRWTSK.AlgebraicGeometry.Hodge.CMLatticePolarization

/-!
# Riemann-form data for the weight-one CM coordinate model

This file assembles the local hypotheses that feed the classical Riemann
bilinear criterion:

* a real structure on the complex embedding-coordinate space;
* a complex structure J with J^2 = -1 preserving that real form;
* the scalar-extended rational alternating trace pairing;
* J-invariance of the pairing;
* strict positivity of E(Jz,z) on nonzero real vectors;
* a full integer-coordinate lattice with one denominator-clearing scale;
* integrality and alternation of the scaled lattice pairing.

Mathlib currently has no complex-torus / abelian-variety Riemann existence
theorem to consume these data.  Consequently this module stops at an exact
pre-Riemann certificate and makes no abelian-variety realization claim.
-/

set_option autoImplicit false

namespace GRWTSK.AlgebraicGeometry.Hodge.CMRiemannForm

open CMNumberFieldIndex
open CMTracePolarization
open CMArchimedeanPositivity
open CMCoordinateHodge
open CMLatticePolarization

noncomputable section

variable (E : Type*) [Field E] [NumberField E] [IsCMField E] [IsGalois ℚ E]

local notation "G" => (E ≃ₐ[ℚ] E)
local notation "n" => Module.finrank ℚ E

/-- The real form inside the embedding-coordinate complex vector space. -/
def IsRealCoordinate (z : G → ℂ) : Prop :=
  realConj (centralInvolution E) z = z

/-- The scalar-extended rational alternating form, read as a real-valued form
on the real fixed locus.  Outside the fixed locus this is only the real part
of the complexified bilinear form. -/
def riemannForm
    {v : OddSignRow E}
    (X : SignControlledXi E v)
    (z w : G → ℂ) : ℝ :=
  (X.complexifiedTracePairing z w).re

/-- The sign-defined Weil operator preserves the real fixed locus. -/
theorem weilOperator_preserves_real
    {v : OddSignRow E}
    (z : G → ℂ)
    (hz : IsRealCoordinate E z) :
    IsRealCoordinate E (weilOperator v z) := by
  unfold IsRealCoordinate at hz ⊢
  rw [realConj_weilOperator]
  rw [hz]

/-- The local Weil operator is a genuine complex structure. -/
theorem weilOperator_sq_neg
    {v : OddSignRow E}
    (z : G → ℂ) :
    weilOperator v (weilOperator v z) = -z :=
  weilOperator_sq v z

/-- Label conjugation is an involutive equivalence of the finite Galois
indexing set. -/
def conjugationEquiv : G ≃ G where
  toFun := (centralInvolution E).conj
  invFun := (centralInvolution E).conj
  left_inv := (centralInvolution E).conj_involutive
  right_inv := (centralInvolution E).conj_involutive

/-- Anti-invariance of xi becomes a sign change after moving to the conjugate
embedding label. -/
theorem embedding_xi_conjLabel
    {v : OddSignRow E}
    (X : SignControlledXi E v)
    (σ : G) :
    complexEmbeddingAt E ((centralInvolution E).conj σ) X.xi =
      - complexEmbeddingAt E σ X.xi := by
  simp [complexEmbeddingAt, centralInvolution_conj_apply,
    AlgEquiv.mul_apply, galoisComplexConj_commute_apply,
    X.antiInvariant]

/-- The complexified rational trace pairing is genuinely skew-symmetric on the
entire coordinate space. -/
theorem complexifiedTracePairing_skew
    {v : OddSignRow E}
    (X : SignControlledXi E v)
    (z w : G → ℂ) :
    X.complexifiedTracePairing w z =
      - X.complexifiedTracePairing z w := by
  classical
  unfold SignControlledXi.complexifiedTracePairing
  let f : G → ℂ := fun σ =>
    complexEmbeddingAt E σ X.xi * w σ *
      z ((centralInvolution E).conj σ)
  calc
    (∑ σ, f σ) =
        ∑ σ, f (conjugationEquiv E σ) := by
          exact (Equiv.sum_comp (conjugationEquiv E) f).symm
    _ = ∑ σ,
        -(complexEmbeddingAt E σ X.xi * z σ *
          w ((centralInvolution E).conj σ)) := by
      apply Finset.sum_congr rfl
      intro σ _
      simp [f, conjugationEquiv, embedding_xi_conjLabel E X,
        (centralInvolution E).conj_involutive]
      ring
    _ = - ∑ σ,
        complexEmbeddingAt E σ X.xi * z σ *
          w ((centralInvolution E).conj σ) := by
      rw [Finset.sum_neg_distrib]

/-- In characteristic zero, skew-symmetry makes the complexified pairing
alternating globally. -/
theorem complexifiedTracePairing_self
    {v : OddSignRow E}
    (X : SignControlledXi E v)
    (z : G → ℂ) :
    X.complexifiedTracePairing z z = 0 := by
  have h := complexifiedTracePairing_skew E X z z
  exact CharZero.eq_neg_self_iff.mp h

/-- The real-valued Riemann form is therefore alternating on the entire
coordinate space, hence in particular on its real fixed locus. -/
theorem riemannForm_self
    {v : OddSignRow E}
    (X : SignControlledXi E v)
    (z : G → ℂ) :
    riemannForm E X z z = 0 := by
  unfold riemannForm
  rw [complexifiedTracePairing_self E X z]
  rfl

/-- The complexified trace pairing is invariant when the Weil operator is
applied to both arguments. -/
theorem complexifiedTracePairing_weil_invariant
    {v : OddSignRow E}
    (X : SignControlledXi E v)
    (z w : G → ℂ) :
    X.complexifiedTracePairing
        (weilOperator v z) (weilOperator v w) =
      X.complexifiedTracePairing z w := by
  unfold SignControlledXi.complexifiedTracePairing
  apply Finset.sum_congr rfl
  intro σ _
  have hc := v.odd σ
  rcases v.isSign σ with hσ | hσ
  · have hcs : v.value ((centralInvolution E).conj σ) = -1 := by
      rw [hc, hσ]
      norm_num
    simp [weilOperator, hσ, hcs]
    ring
  · have hcs : v.value ((centralInvolution E).conj σ) = 1 := by
      rw [hc, hσ]
      norm_num
    simp [weilOperator, hσ, hcs]
    ring

/-- Consequently the real Riemann form is J-invariant. -/
theorem riemannForm_weil_invariant
    {v : OddSignRow E}
    (X : SignControlledXi E v)
    (z w : G → ℂ) :
    riemannForm E X (weilOperator v z) (weilOperator v w) =
      riemannForm E X z w := by
  unfold riemannForm
  exact congrArg Complex.re
    (complexifiedTracePairing_weil_invariant E X z w)

/-- On a real vector, E(Jz,z) is exactly the positive coordinate energy. -/
theorem riemannForm_weil_self_eq_energy
    {v : OddSignRow E}
    (X : SignControlledXi E v)
    (z : G → ℂ)
    (hz : IsRealCoordinate E z) :
    riemannForm E X (weilOperator v z) z = X.energy z := by
  unfold riemannForm IsRealCoordinate at hz
  have h :=
    X.complexifiedTracePairing_weil_realConj_eq_energy z
  rw [hz] at h
  have hre := congrArg Complex.re h
  simpa using hre

/-- The Riemann positivity inequality is strict on every nonzero real vector. -/
theorem riemannForm_weil_self_pos
    {v : OddSignRow E}
    (X : SignControlledXi E v)
    {z : G → ℂ}
    (hzreal : IsRealCoordinate E z)
    (hz : z ≠ 0) :
    0 < riemannForm E X (weilOperator v z) z := by
  rw [riemannForm_weil_self_eq_energy E X z hzreal]
  exact X.energy_pos hz

/-- Coordinates of one integer lattice vector. -/
def latticeCoordinates (a : Fin n → ℤ) : G → ℂ :=
  fieldCoordinates E (latticeVector E a)

/-- The rational embedding-coordinate map is injective. -/
theorem fieldCoordinates_injective :
    Function.Injective (fieldCoordinates E) := by
  intro x y h
  have h1 := DFunLike.congr_fun h (1 : G)
  exact (complexEmbeddingAt E (1 : G)).injective h1

/-- Hence the integer-coordinate lattice remains injective after embedding into
the complex coordinate model. -/
theorem latticeCoordinates_injective :
    Function.Injective (latticeCoordinates E) :=
  (fieldCoordinates_injective E).comp (latticeVector_injective E)

/-- Every lattice vector lies in the real fixed locus. -/
theorem latticeCoordinates_real
    (a : Fin n → ℤ) :
    IsRealCoordinate E (latticeCoordinates E a) := by
  unfold IsRealCoordinate latticeCoordinates
  exact fieldCoordinates_realConj E (latticeVector E a)

/-- On lattice coordinates, the real Riemann form is exactly the rational
trace pairing, cast to the reals. -/
theorem riemannForm_lattice_eq_trace
    {v : OddSignRow E}
    (X : SignControlledXi E v)
    (a b : Fin n → ℤ) :
    riemannForm E X (latticeCoordinates E a) (latticeCoordinates E b) =
      (tracePairing E X.xi (latticeVector E a) (latticeVector E b) : ℝ) := by
  unfold riemannForm latticeCoordinates
  rw [X.complexifiedTracePairing_fieldCoordinates]
  simp [baseComplexEmbedding]

/-- The same denominator-clearing scale from the rational lattice certificate
makes the Riemann form integer-valued on every pair of lattice vectors. -/
theorem scaled_riemannForm_lattice_integral
    {v : OddSignRow E}
    (X : SignControlledXi E v)
    (a b : Fin n → ℤ) :
    (latticeScale E X : ℝ) *
        riemannForm E X (latticeCoordinates E a) (latticeCoordinates E b) =
      (integralPairing E X a b : ℝ) := by
  rw [riemannForm_lattice_eq_trace E X]
  exact_mod_cast scaled_tracePairing_lattice_integral E X a b

/-- Alternation is visible on the complete integer-coordinate lattice. -/
theorem riemannForm_lattice_self
    {v : OddSignRow E}
    (X : SignControlledXi E v)
    (a : Fin n → ℤ) :
    riemannForm E X (latticeCoordinates E a) (latticeCoordinates E a) = 0 := by
  rw [riemannForm_lattice_eq_trace E X]
  exact_mod_cast tracePairing_self E X.toTracePolarizationData (latticeVector E a)

/-- Exact local package preceding a classical Riemann existence theorem.

The record deliberately contains no field named "abelian variety", "complex
torus", or "H1 realization": those remain downstream mathematical theorems. -/
structure PreRiemannBilinearData
    (v : OddSignRow E)
    (X : SignControlledXi E v) where
  real : (G → ℂ) → Prop
  J : (G → ℂ) →ₗ[ℂ] (G → ℂ)
  J_sq : ∀ z, J (J z) = -z
  J_preserves_real : ∀ {z}, real z → real (J z)
  form : (G → ℂ) → (G → ℂ) → ℝ
  alternating : ∀ z, form z z = 0
  J_invariant : ∀ z w, form (J z) (J w) = form z w
  positive : ∀ {z}, real z → z ≠ 0 → 0 < form (J z) z
  lattice : (Fin n → ℤ) → (G → ℂ)
  lattice_injective : Function.Injective lattice
  lattice_real : ∀ a, real (lattice a)
  scale : ℕ
  scale_ne_zero : scale ≠ 0
  integralPairing : (Fin n → ℤ) → (Fin n → ℤ) → ℤ
  integral_on_lattice :
    ∀ a b,
      (scale : ℝ) * form (lattice a) (lattice b) =
        (integralPairing a b : ℝ)
  alternating_on_lattice : ∀ a, form (lattice a) (lattice a) = 0

/-- Canonical pre-Riemann certificate assembled entirely from local source. -/
noncomputable def canonicalPreRiemannBilinearData
    {v : OddSignRow E}
    (X : SignControlledXi E v) :
    PreRiemannBilinearData E v X where
  real := IsRealCoordinate E
  J := weilOperator v
  J_sq := weilOperator_sq_neg E
  J_preserves_real := fun {z} hz => weilOperator_preserves_real E z hz
  form := riemannForm E X
  alternating := riemannForm_self E X
  J_invariant := riemannForm_weil_invariant E X
  positive := fun {z} hzreal hz =>
    riemannForm_weil_self_pos E X hzreal hz
  lattice := latticeCoordinates E
  lattice_injective := latticeCoordinates_injective E
  lattice_real := latticeCoordinates_real E
  scale := latticeScale E X
  scale_ne_zero := latticeScale_ne_zero E X
  integralPairing := integralPairing E X
  integral_on_lattice := scaled_riemannForm_lattice_integral E X
  alternating_on_lattice := riemannForm_lattice_self E X

end

end GRWTSK.AlgebraicGeometry.Hodge.CMRiemannForm
