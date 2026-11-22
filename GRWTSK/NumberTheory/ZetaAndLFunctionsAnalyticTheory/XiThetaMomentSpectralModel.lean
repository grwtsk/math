/-
Copyright (c) 2026 grwtsk contributors. MIT.
Authors: grwtsk contributors.
SOURCE_PROOF_CANDIDATE, Lean v4.34.1 / Mathlib d13f23b7.
Elaboration / kernel replay / transitive axiom audit: NOT_RUN.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.XiThetaSchurSource
import Mathlib.Tactic

/-!
# Positive spectral moment SOURCE, not a positive Xi determinant

The original Xi has an unconditional positive Riemann-theta cosine
measure Phi(u)du, with moments M_(2n)=integral u^(2n) Phi(u) du.
The full analytical source theorem, the multiplication-operator
spectral theorem, infinite-rank Andreief formula, and spectral-type
obstruction are derived in XiThetaMomentSpectralModel.md but are
NOT yet Lean-formalized.

These small finite QUADRATURE lemmas are an independent check of the
Hankel feature/Gram architecture. They intentionally do not prove
PF-infinity for the different factorial-normalized TOEPLITZ array.
The source Xi itself is inherited unchanged from XiThetaSchurSource.
No zeta zero ordinates, Alpoge final RH proof, or RH assumption enter.
-/

set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.NumberTheory.XiThetaMomentSpectralModel

/-- Finite positive quadrature for a theta-like measure. The actual
continuous theta source is NOT replaced by these finite atoms. -/
def finiteEvenMoment {N : ℕ} (u weight : Fin N → ℝ) (n : ℕ) : ℝ :=
  ∑ t : Fin N, weight t * (u t) ^ (2 * n)

/-- The finite theta moment Hankel matrix has INDEX SUM i+j. -/
def finiteEvenMomentHankel {N k : ℕ}
    (u weight : Fin N → ℝ) (i j : Fin k) : ℝ :=
  finiteEvenMoment u weight (i.val + j.val)

/-- The SAME finite source's feature at index i and theta sample t. -/
def finiteEvenFeature {N k : ℕ}
    (u : Fin N → ℝ) (i : Fin k) (t : Fin N) : ℝ :=
  (u t) ^ (2 * i.val)

/-- Real scalar identity underlying the theta moment Gram factor. -/
theorem even_power_add_identity (u : ℝ) (i j : ℕ) :
    u ^ (2 * (i + j)) = u ^ (2 * i) * u ^ (2 * j) := by
  rw [Nat.mul_add, pow_add]

/-- Every entry of the actual quadrature moment HANKEL matrix is a
weighted feature Gram entry, with no RH or total-positivity premise. -/
theorem finite_hankel_entry_eq_gram {N k : ℕ}
    (u weight : Fin N → ℝ) (i j : Fin k) :
    finiteEvenMomentHankel u weight i j =
      ∑ t : Fin N, weight t *
        finiteEvenFeature u i t * finiteEvenFeature u j t := by
  unfold finiteEvenMomentHankel finiteEvenMoment
  apply Finset.sum_congr rfl
  intro t _
  simp only [finiteEvenFeature]
  rw [even_power_add_identity]

/-- A finite source-positive energy which the moment Gram represents.
The FULL qform=energy theorem is part of the adjacent mathematical
source derivation; only source-positive energy is asserted here. -/
def finiteEvenEnergy {N k : ℕ}
    (u weight : Fin N → ℝ) (coeff : Fin k → ℝ) : ℝ :=
  ∑ t : Fin N, weight t *
    (∑ i : Fin k, coeff i * finiteEvenFeature u i t) ^ 2

theorem finite_even_energy_nonnegative {N k : ℕ}
    (u weight : Fin N → ℝ) (coeff : Fin k → ℝ)
    (hWeight : ∀ t, 0 ≤ weight t) :
    0 ≤ finiteEvenEnergy u weight coeff := by
  unfold finiteEvenEnergy
  apply Finset.sum_nonneg
  intro t _
  exact mul_nonneg (hWeight t)
    (sq_nonneg (∑ i : Fin k, coeff i * finiteEvenFeature u i t))

/-- A genuinely exact rank-two Hankel identity, for two atoms.
Its manifest positivity is NOT a Schur/Toeplitz minor inequality. -/
theorem two_atom_hankel_gap (u v α β : ℝ) :
    (α + β) * (α * u ^ 4 + β * v ^ 4) -
      (α * u ^ 2 + β * v ^ 2) ^ 2 =
      α * β * (u ^ 2 - v ^ 2) ^ 2 := by
  ring

/-- Full positive mass is used; no off-critical xi zero is assumed. -/
theorem two_atom_hankel_gap_nonnegative
    (u v α β : ℝ) (hα : 0 ≤ α) (hβ : 0 ≤ β) :
    0 ≤ (α + β) * (α * u ^ 4 + β * v ^ 4) -
      (α * u ^ 2 + β * v ^ 2) ^ 2 := by
  rw [two_atom_hankel_gap]
  exact mul_nonneg (mul_nonneg hα hβ) (sq_nonneg _)

end GRWTSK.NumberTheory.XiThetaMomentSpectralModel
