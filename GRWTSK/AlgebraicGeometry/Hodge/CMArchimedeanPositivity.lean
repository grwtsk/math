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

/-- A sign-controlled xi supplies the algebraic trace-polarization data. -/
def SignControlledXi.toTracePolarizationData
    {v : CMNumberFieldIndex.OddSignRow E}
    (X : SignControlledXi E v) :
    CMTracePolarization.TracePolarizationData E where
  xi := X.xi
  xi_ne_zero := X.xi_ne_zero
  antiInvariant := X.antiInvariant

/-- Coordinate Hodge energy associated with the sign-controlled xi. -/
def SignControlledXi.energy
    {v : CMNumberFieldIndex.OddSignRow E}
    (X : SignControlledXi E v)
    (z : (E ≃ₐ[ℚ] E) → ℂ) : ℝ :=
  ∑ σ, X.coeff σ * Complex.normSq (z σ)

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

/-- The sign-profile condition in particular forces xi to be nonzero. -/
theorem SignControlledXi.xi_ne_zero
    {v : CMNumberFieldIndex.OddSignRow E}
    (X : SignControlledXi E v) :
    X.xi ≠ 0 := by
  intro h
  have hp := X.coefficient_pos (1 : E ≃ₐ[ℚ] E)
  simp [h, imagAt, complexEmbeddingAt] at hp

end

end GRWTSK.AlgebraicGeometry.Hodge.CMArchimedeanPositivity
