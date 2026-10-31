/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import Mathlib

/-!
# Energy-safe finite-mode drape dynamics

Local attribution: grwtsk contributors.

This is an exact-real finite-dimensional rotation/diffusion update, not a
convergence claim about a general Navier--Stokes numerical solver. The phase
may be any nonlinear function of all current modes. An orthogonal rotation
preserves each pair's squared energy, and 1/(1+viscosity*stepWidth) contracts
it for nonnegative viscosity and step width.

The theorem below proves energy cannot increase at any natural-number frame,
even with fully state-dependent phase coupling. Browser floating-point
execution remains a separate implementation/refinement obligation.

Status: LEAN_BUILD_NOT_RUN, KERNEL_NOT_RUN, AXIOM_AUDIT_NOT_RUN.
-/

namespace GRWTSK.NumericalAnalysis.FiniteModeDrapeEnergy

/-- Squared Euclidean energy for one real two-component Fourier mode. -/
noncomputable def pairEnergy (z : ℝ × ℝ) : ℝ := z.1 ^ 2 + z.2 ^ 2

theorem pairEnergy_nonneg (z : ℝ × ℝ) : 0 ≤ pairEnergy z := by
  dsimp [pairEnergy]
  positivity

/-- Exact orthogonal rotation of a two-component mode. -/
noncomputable def rotate (θ : ℝ) (z : ℝ × ℝ) : ℝ × ℝ :=
  (Real.cos θ * z.1 - Real.sin θ * z.2,
   Real.sin θ * z.1 + Real.cos θ * z.2)

theorem rotate_energy (θ : ℝ) (z : ℝ × ℝ) :
    pairEnergy (rotate θ z) = pairEnergy z := by
  have ht : Real.cos θ ^ 2 + Real.sin θ ^ 2 = (1 : ℝ) := by
    nlinarith [Real.sin_sq_add_cos_sq θ]
  change (Real.cos θ * z.1 - Real.sin θ * z.2) ^ 2 +
    (Real.sin θ * z.1 + Real.cos θ * z.2) ^ 2 = z.1 ^ 2 + z.2 ^ 2
  calc
    (Real.cos θ * z.1 - Real.sin θ * z.2) ^ 2 +
        (Real.sin θ * z.1 + Real.cos θ * z.2) ^ 2 =
      (Real.cos θ ^ 2 + Real.sin θ ^ 2) * (z.1 ^ 2 + z.2 ^ 2) := by ring
    _ = z.1 ^ 2 + z.2 ^ 2 := by rw [ht]; ring

/-- Contractive rotation, including the inviscid boundary q=1. -/
noncomputable def step (q θ : ℝ) (z : ℝ × ℝ) : ℝ × ℝ :=
  (q * (rotate θ z).1, q * (rotate θ z).2)

theorem step_energy_le (q θ : ℝ) (z : ℝ × ℝ)
    (hq0 : 0 ≤ q) (hq1 : q ≤ 1) :
    pairEnergy (step q θ z) ≤ pairEnergy z := by
  have hq2 : q ^ 2 ≤ (1 : ℝ) := by
    nlinarith [mul_nonneg hq0 (sub_nonneg.mpr hq1)]
  calc
    pairEnergy (step q θ z) = q ^ 2 * pairEnergy (rotate θ z) := by
      dsimp [pairEnergy, step]
      ring
    _ = q ^ 2 * pairEnergy z := by rw [rotate_energy]
    _ ≤ 1 * pairEnergy z := mul_le_mul_of_nonneg_right hq2 (pairEnergy_nonneg z)
    _ = pairEnergy z := one_mul _

/-- Backward-Euler damping coefficient: no vanishing denominator for ν,h>=0. -/
noncomputable def damping (ν h : ℝ) : ℝ := 1 / (1 + ν * h)

theorem damping_unit (ν h : ℝ) (hν : 0 ≤ ν) (hh : 0 ≤ h) :
    0 ≤ damping ν h ∧ damping ν h ≤ 1 := by
  have hp : 0 ≤ ν * h := mul_nonneg hν hh
  have hd : 0 < 1 + ν * h := by linarith
  constructor
  · unfold damping
    exact div_nonneg (by norm_num) hd.le
  · unfold damping
    exact (div_le_iff₀ hd).2 (by linarith)

/-- Sum of energies over any finite collection of real mode pairs. -/
noncomputable def modalEnergy {m : ℕ} (z : Fin m → ℝ × ℝ) : ℝ :=
  ∑ i : Fin m, pairEnergy (z i)

theorem modalEnergy_nonneg {m : ℕ} (z : Fin m → ℝ × ℝ) :
    0 ≤ modalEnergy z := by
  unfold modalEnergy
  apply Finset.sum_nonneg
  intro i hi
  exact pairEnergy_nonneg (z i)

/--
Each mode rotates by a phase that can depend nonlinearly on every other mode.
The proof does not silently set an unproved transport defect to zero.
-/
noncomputable def advance {m : ℕ} (q : ℝ)
    (phase : (Fin m → ℝ × ℝ) → Fin m → ℝ)
    (z : Fin m → ℝ × ℝ) : Fin m → ℝ × ℝ :=
  fun i => step q (phase z i) (z i)

theorem advance_energy_le {m : ℕ} (q : ℝ)
    (phase : (Fin m → ℝ × ℝ) → Fin m → ℝ)
    (z : Fin m → ℝ × ℝ)
    (hq0 : 0 ≤ q) (hq1 : q ≤ 1) :
    modalEnergy (advance q phase z) ≤ modalEnergy z := by
  unfold modalEnergy advance
  apply Finset.sum_le_sum
  intro i hi
  exact step_energy_le q (phase z i) (z i) hq0 hq1

/-- The exact recurrence used to bound an arbitrarily long finite-mode trace. -/
noncomputable def evolve {m : ℕ} (ν h : ℝ)
    (phase : (Fin m → ℝ × ℝ) → Fin m → ℝ)
    (initial : Fin m → ℝ × ℝ) : ℕ → Fin m → ℝ × ℝ
  | 0 => initial
  | n + 1 => advance (damping ν h) phase (evolve ν h phase initial n)

/-- All frame energies stay below the initial energy, for every n. -/
theorem evolve_energy_le {m : ℕ} (ν h : ℝ)
    (phase : (Fin m → ℝ × ℝ) → Fin m → ℝ)
    (initial : Fin m → ℝ × ℝ)
    (hν : 0 ≤ ν) (hh : 0 ≤ h) (n : ℕ) :
    modalEnergy (evolve ν h phase initial n) ≤ modalEnergy initial := by
  obtain ⟨hq0, hq1⟩ := damping_unit ν h hν hh
  induction n with
  | zero => simp [evolve]
  | succ n ih =>
      change modalEnergy
        (advance (damping ν h) phase (evolve ν h phase initial n)) ≤
          modalEnergy initial
      exact (advance_energy_le (damping ν h) phase
        (evolve ν h phase initial n) hq0 hq1).trans ih

end GRWTSK.NumericalAnalysis.FiniteModeDrapeEnergy
