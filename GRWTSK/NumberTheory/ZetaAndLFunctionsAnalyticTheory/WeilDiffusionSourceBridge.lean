/-
Copyright (c) 2026 grwtsk contributors. MIT.
Authors: grwtsk contributors.
SOURCE_PROOF_CANDIDATE. Pinned Lean v4.34.1 / Mathlib d13f23b7.
Elaboration, transitive axiom audit, kernel replay and independent Lean checker:
NOT_RUN (the available environment has no Lean/Lake toolchain).
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilWindowFilterLedger
import Mathlib.LinearAlgebra.FiniteDimensional.Basic

/-!
# Finite Weil-source quadratic forms under invertible diffusion

The source is the EXISTING complex ordered pairing, which preserves the signed
prime, gamma and pole contributions when its kernel has been calculated from
the actual complete arithmetic Weil formula. This file proves a small but
necessary obstruction: invertible finite heat cannot turn an indefinite
source form into a nonnegative one by coordinate smoothing.

The parameter D is a complex linear equivalence. To instantiate it with
exp(-t L), a separate theorem must establish the heat matrix, its
invertibility and, where relevant, preservation of test constraints.
No RH theorem and no zeta zeros are imported. Positivity of the actual
arithmetic source and its all-window limit remain OPEN independently.
-/

set_option autoImplicit false
noncomputable section

namespace GRWTSK.NumberTheory.WeilQuadraticForm.WeilDiffusionSourceBridge

open GRWTSK.NumberTheory.WeilQuadraticForm.WindowFilterLedger
open scoped BigOperators

/-- The real-valued diagonal of the existing signed complex source pairing.
The complete arithmetic/source kernel must be supplied by its consumer. -/
def signedSourceQuadratic (N : ℕ) (kernel : Fin N → Fin N → ℂ)
    (v : Fin N → ℂ) : ℝ :=
  (orderedPairing (Finset.univ : Finset (Fin N)) kernel v v).re

/-- Universal nonnegativity is a property of the original source form,
not of the data representation. -/
def SourceNonnegative (N : ℕ) (kernel : Fin N → Fin N → ℂ) : Prop :=
  ∀ v : Fin N → ℂ, 0 ≤ signedSourceQuadratic N kernel v

/-- Finite invertible heat/diffusion preserves positivity in BOTH directions.
This does not assert that every proposed smoothing matrix is invertible. -/
theorem nonnegative_iff_invertible_diffusion (N : ℕ)
    (kernel : Fin N → Fin N → ℂ)
    (D : (Fin N → ℂ) ≃ₗ[ℂ] (Fin N → ℂ)) :
    (∀ v : Fin N → ℂ, 0 ≤ signedSourceQuadratic N kernel (D v)) ↔
      SourceNonnegative N kernel := by
  constructor
  · intro h v
    have hv := h (D.symm v)
    simpa only [LinearEquiv.apply_symm_apply] using hv
  · intro h v
    exact h (D v)

/-- A negative direction cannot disappear under an invertible diffusion.
It reappears at the inverse-diffused test. -/
theorem negative_witness_survives_diffusion (N : ℕ)
    (kernel : Fin N → Fin N → ℂ)
    (D : (Fin N → ℂ) ≃ₗ[ℂ] (Fin N → ℂ))
    (v : Fin N → ℂ) (hv : signedSourceQuadratic N kernel v < 0) :
    ∃ w : Fin N → ℂ, signedSourceQuadratic N kernel (D w) < 0 := by
  refine ⟨D.symm v, ?_⟩
  simpa only [LinearEquiv.apply_symm_apply] using hv

/-- A positive direction is likewise preserved by the exact inverse map. -/
theorem positive_witness_survives_diffusion (N : ℕ)
    (kernel : Fin N → Fin N → ℂ)
    (D : (Fin N → ℂ) ≃ₗ[ℂ] (Fin N → ℂ))
    (v : Fin N → ℂ) (hv : 0 < signedSourceQuadratic N kernel v) :
    ∃ w : Fin N → ℂ, 0 < signedSourceQuadratic N kernel (D w) := by
  refine ⟨D.symm v, ?_⟩
  simpa only [LinearEquiv.apply_symm_apply] using hv

/-- An actual source-negative witness refutes the universal positivity
of every invertibly diffused finite source matrix. -/
theorem not_diffused_nonnegative_of_negative (N : ℕ)
    (kernel : Fin N → Fin N → ℂ)
    (D : (Fin N → ℂ) ≃ₗ[ℂ] (Fin N → ℂ))
    (v : Fin N → ℂ) (hv : signedSourceQuadratic N kernel v < 0) :
    ¬ (∀ w : Fin N → ℂ, 0 ≤ signedSourceQuadratic N kernel (D w)) := by
  intro h
  obtain ⟨w, hw⟩ := negative_witness_survives_diffusion N kernel D v hv
  exact (not_lt_of_ge (h w)) hw

end GRWTSK.NumberTheory.WeilQuadraticForm.WeilDiffusionSourceBridge
