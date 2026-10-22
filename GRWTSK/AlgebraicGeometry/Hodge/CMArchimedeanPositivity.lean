/- Copyright (c) 2026 R.A. Jacob Martone. MIT.
Human mathematical direction: R.A. Jacob Martone.
Formalization assistance: OpenAI.
External manuscript source:
openai/math@1581d4cbdd69a0faf34b2089614fe2a814316a6a,
The rational Hodge conjecture for CM abelian varieties,
build/sections/02-tensors.tex.
This file formalizes only the finite coordinate positivity consequence of the
prescribed archimedean sign profile. -/
import GRWTSK.AlgebraicGeometry.Hodge.CMTracePolarization

/-!
# Archimedean CM sign-profile positivity

The manuscript chooses xi so that, for every Galois embedding label sigma,

  sign(Im sigma(xi)) = -v(sigma).

Equivalently, the real coefficient

  -(v(sigma)) * Im sigma(xi)

is strictly positive. This file packages that exact input and proves that the
resulting diagonal coordinate energy is positive definite.

This is the finite positivity calculation only. It does not prove existence
of such xi and does not identify the energy with i*psi_xi(u,conj u).
-/

set_option autoImplicit false

namespace GRWTSK.AlgebraicGeometry.Hodge.CMArchimedeanPositivity

open CMNumberFieldIndex
open CMTracePolarization
open GRWTSK.AlgebraicGeometry.Hodge.CMFourBalance

noncomputable section

variable (E : Type*) [Field E] [NumberField E] [IsCMField E] [IsGalois ℚ E]

/-- One chosen complex embedding used to enumerate the Galois conjugates. -/
noncomputable def baseComplexEmbedding : E →+* ℂ :=
  Classical.choice (inferInstance : Nonempty (E →+* ℂ))

/-- Complex embedding obtained from the chosen base embedding and one rational
Galois automorphism. -/
noncomputable def complexEmbeddingAt (σ : E ≃ₐ[ℚ] E) : E →+* ℂ :=
  (baseComplexEmbedding E).comp σ.toRingHom

/-- Imaginary coordinate of xi at one Galois embedding. -/
def imagAt (xi : E) (σ : E ≃ₐ[ℚ] E) : ℝ :=
  (complexEmbeddingAt E σ xi).im

/-- Exact archimedean sign condition needed by the manuscript polarization
argument. The inequality form avoids introducing a separate sign function on
real numbers. -/
structure SignControlledXi (v : CMNumberFieldIndex.OddSignRow E) where
  xi : E
  antiInvariant : galoisComplexConj E xi = -xi
  coefficient_pos : ∀ σ : E ≃ₐ[ℚ] E,
    0 < -(v.value σ : ℝ) * imagAt E xi σ

/-- Positive diagonal coefficient attached to one embedding coordinate. -/
def SignControlledXi.coeff
    {v : CMNumberFieldIndex.OddSignRow E}
    (X : SignControlledXi E v) (σ : E ≃ₐ[ℚ] E) : ℝ :=
  -(v.value σ : ℝ) * imagAt E X.xi σ

theorem SignControlledXi.coeff_pos
    {v : CMNumberFieldIndex.OddSignRow E}
    (X : SignControlledXi E v) (σ : E ≃ₐ[ℚ] E) :
    0 < X.coeff σ :=
  X.coefficient_pos σ

/-- The sign-profile condition in particular forces xi to be nonzero. -/
theorem SignControlledXi.xi_ne_zero
    {v : CMNumberFieldIndex.OddSignRow E}
    (X : SignControlledXi E v) :
    X.xi ≠ 0 := by
  intro h
  have hp := X.coefficient_pos (1 : E ≃ₐ[ℚ] E)
  simp [h, imagAt, complexEmbeddingAt] at hp

/-- A sign-controlled xi supplies the algebraic trace-polarization data. -/
def SignControlledXi.toTracePolarizationData
    {v : CMNumberFieldIndex.OddSignRow E}
    (X : SignControlledXi E v) :
    CMTracePolarization.TracePolarizationData E where
  xi := X.xi
  xi_ne_zero := X.xi_ne_zero
  antiInvariant := X.antiInvariant

/-- A sign-controlled xi automatically gives an alternating, nondegenerate
rational trace pairing. -/
theorem SignControlledXi.tracePairing_alternating_nondegenerate
    {v : CMNumberFieldIndex.OddSignRow E}
    (X : SignControlledXi E v) :
    (∀ x : E, CMTracePolarization.tracePairing E X.xi x x = 0) ∧
      (∀ x : E,
        (∀ y : E, CMTracePolarization.tracePairing E X.xi x y = 0) → x = 0) ∧
      (∀ y : E,
        (∀ x : E, CMTracePolarization.tracePairing E X.xi x y = 0) → y = 0) :=
  CMTracePolarization.tracePairing_alternating_nondegenerate
    E X.toTracePolarizationData
/-- CM conjugation becomes ordinary complex conjugation under every selected
complex embedding. -/
theorem complexEmbeddingAt_galoisComplexConj
    (σ : E ≃ₐ[ℚ] E) (x : E) :
    complexEmbeddingAt E σ (galoisComplexConj E x) =
      conj (complexEmbeddingAt E σ x) := by
  change (baseComplexEmbedding E).comp σ.toRingHom
      (IsCMField.complexConj E x) = _
  exact IsCMField.complexEmbedding_complexConj
    E ((baseComplexEmbedding E).comp σ.toRingHom) x

/-- Anti-invariance of xi makes every embedded value purely imaginary. -/
theorem SignControlledXi.embedding_re_zero
    {v : CMNumberFieldIndex.OddSignRow E}
    (X : SignControlledXi E v) (σ : E ≃ₐ[ℚ] E) :
    (complexEmbeddingAt E σ X.xi).re = 0 := by
  have h := congrArg Complex.re
    (show conj (complexEmbeddingAt E σ X.xi) =
        - complexEmbeddingAt E σ X.xi by
      rw [← complexEmbeddingAt_galoisComplexConj E σ X.xi, X.antiInvariant, map_neg])
  simp only [Complex.conj_re, Complex.neg_re] at h
  linarith

/-- Formal Weil factor attached to a sign label. -/
def weilFactor
    (v : CMNumberFieldIndex.OddSignRow E)
    (σ : E ≃ₐ[ℚ] E) : ℂ :=
  (v.value σ : ℂ) * Complex.I

/-- Embedded xi times the formal Weil factor is exactly the positive real
coordinate coefficient. -/
theorem SignControlledXi.embedding_mul_weilFactor
    {v : CMNumberFieldIndex.OddSignRow E}
    (X : SignControlledXi E v) (σ : E ≃ₐ[ℚ] E) :
    complexEmbeddingAt E σ X.xi * weilFactor E v σ =
      (X.coeff σ : ℂ) := by
  apply Complex.ext
  · simp [weilFactor, SignControlledXi.coeff, imagAt,
      Complex.mul_re, Complex.mul_im, X.embedding_re_zero σ]
    ring
  · simp [weilFactor, Complex.mul_re, Complex.mul_im,
      X.embedding_re_zero σ]

/-- Coordinate realization of the Weil-twisted trace coefficient. This is
still a coordinate formula; equality with the base-changed rational trace
pairing is a separate theorem boundary. -/
def SignControlledXi.coordinateWeilForm
    {v : CMNumberFieldIndex.OddSignRow E}
    (X : SignControlledXi E v)
    (z : (E ≃ₐ[ℚ] E) → ℂ) : ℂ :=
  ∑ σ,
    (complexEmbeddingAt E σ X.xi * weilFactor E v σ) *
      (Complex.normSq (z σ) : ℂ)

/-- Coordinate Hodge energy associated with the sign-controlled xi. -/
def SignControlledXi.energy
    {v : CMNumberFieldIndex.OddSignRow E}
    (X : SignControlledXi E v)
    (z : (E ≃ₐ[ℚ] E) → ℂ) : ℝ :=
  ∑ σ, X.coeff σ * Complex.normSq (z σ)

/-- The coordinate Weil form is exactly the real positive energy, embedded
in C. -/
theorem SignControlledXi.coordinateWeilForm_eq_energy
    {v : CMNumberFieldIndex.OddSignRow E}
    (X : SignControlledXi E v)
    (z : (E ≃ₐ[ℚ] E) → ℂ) :
    X.coordinateWeilForm z = (X.energy z : ℂ) := by
  unfold SignControlledXi.coordinateWeilForm SignControlledXi.energy
  rw [Complex.ofReal_sum]
  apply Finset.sum_congr rfl
  intro σ _
  rw [X.embedding_mul_weilFactor]
  simp [SignControlledXi.coeff]

theorem SignControlledXi.energy_nonneg
    {v : CMNumberFieldIndex.OddSignRow E}
    (X : SignControlledXi E v)
    (z : (E ≃ₐ[ℚ] E) → ℂ) :
    0 ≤ X.energy z := by
  unfold SignControlledXi.energy
  exact Finset.sum_nonneg fun σ _ =>
    mul_nonneg (X.coeff_pos σ).le (Complex.normSq_nonneg _)

/-- The diagonal coordinate energy is positive definite. -/
theorem SignControlledXi.energy_pos
    {v : CMNumberFieldIndex.OddSignRow E}
    (X : SignControlledXi E v)
    {z : (E ≃ₐ[ℚ] E) → ℂ}
    (hz : z ≠ 0) :
    0 < X.energy z := by
  obtain ⟨σ, hσ⟩ := Function.ne_iff.mp hz
  unfold SignControlledXi.energy
  apply Finset.sum_pos'
  · intro τ _
    exact mul_nonneg (X.coeff_pos τ).le (Complex.normSq_nonneg _)
  · refine ⟨σ, Finset.mem_univ _, ?_⟩
    exact mul_pos (X.coeff_pos σ) (Complex.normSq_pos.mpr hσ)

/-- Vanishing of the energy detects the zero coordinate vector. -/
theorem SignControlledXi.energy_eq_zero_iff
    {v : CMNumberFieldIndex.OddSignRow E}
    (X : SignControlledXi E v)
    (z : (E ≃ₐ[ℚ] E) → ℂ) :
    X.energy z = 0 ↔ z = 0 := by
  constructor
  · intro h
    by_contra hz
    exact (ne_of_gt (X.energy_pos hz)) h
  · rintro rfl
    simp [SignControlledXi.energy]

end

end GRWTSK.AlgebraicGeometry.Hodge.CMArchimedeanPositivity
