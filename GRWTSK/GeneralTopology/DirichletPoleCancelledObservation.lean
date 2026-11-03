/- Copyright (c) 2026 grwtsk contributors. MIT.
Mathlib Hurwitz continuation retains upstream authorship and licenses. -/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.DirichletAnalyticObservationError
import Mathlib.Topology.Order.Compact

set_option autoImplicit false
noncomputable section
open scoped BigOperators

/-! Exact common-pole cancellation for zero-sum observations.
Observed zero sum is an explicit premise. Compact conditioning does not
supply bounds uniform in growing modulus or height, nor a cyclic residual.
SOURCE_PROOF_CANDIDATES / NOT_RUN / NOT_KERNEL_AUDITED. -/
namespace GRWTSK.NumberTheory.Zeta.Riemann.DirichletPoleCancelledObservation
open DirichletAnalyticObservationError
variable (N : ℕ) [NeZero N]

def centeredHurwitz (j base : ZMod N) (s : ℂ) : ℂ :=
  HurwitzZeta.hurwitzZeta (ZMod.toAddCircle j) s -
    HurwitzZeta.hurwitzZeta (ZMod.toAddCircle base) s

def centeredConditionMass (base : ZMod N) (s : ℂ) : ℝ :=
  ‖(N : ℂ) ^ (-s)‖ * ∑ j : ZMod N, ‖centeredHurwitz N j base s‖

theorem exact_centered_analytic_difference (χ : DirichletCharacter ℂ N)
    (r : ZMod N → ℂ) (base : ZMod N) (s : ℂ)
    (hχ : (∑ j : ZMod N, χ j) = 0) (hr : (∑ j : ZMod N, r j) = 0) :
    DirichletCharacter.LFunction χ s - ZMod.LFunction r s =
      (N : ℂ) ^ (-s) * ∑ j : ZMod N, (χ j - r j) * centeredHurwitz N j base s := by
  rw [analytic_difference]
  congr 1
  have hz : (∑ j : ZMod N, (χ j - r j)) = 0 := by
    rw [Finset.sum_sub_distrib, hχ, hr, sub_zero]
  unfold centeredHurwitz
  simp_rw [mul_sub]
  rw [Finset.sum_sub_distrib, ← Finset.sum_mul, hz, zero_mul, sub_zero]

theorem centered_analytic_error (χ : DirichletCharacter ℂ N)
    (r : ZMod N → ℂ) (base : ZMod N) (s : ℂ) (δ : ℝ)
    (hχ : (∑ j : ZMod N, χ j) = 0) (hr : (∑ j : ZMod N, r j) = 0)
    (he : ∀ j, ‖χ j - r j‖ ≤ δ) :
    ‖DirichletCharacter.LFunction χ s - ZMod.LFunction r s‖ ≤
      δ * centeredConditionMass N base s := by
  rw [exact_centered_analytic_difference N χ r base s hχ hr, norm_mul]
  calc
    _ ≤ ‖(N : ℂ) ^ (-s)‖ * ∑ j : ZMod N, ‖χ j - r j‖ * ‖centeredHurwitz N j base s‖ := by
      apply mul_le_mul_of_nonneg_left _ (norm_nonneg _)
      simpa only [norm_mul] using norm_sum_le Finset.univ
        (fun j => (χ j - r j) * centeredHurwitz N j base s)
    _ ≤ ‖(N : ℂ) ^ (-s)‖ * ∑ j : ZMod N, δ * ‖centeredHurwitz N j base s‖ := by
      apply mul_le_mul_of_nonneg_left _ (norm_nonneg _)
      exact Finset.sum_le_sum fun j _ => mul_le_mul_of_nonneg_right (he j) (norm_nonneg _)
    _ = δ * centeredConditionMass N base s := by
      rw [← Finset.mul_sum]
      unfold centeredConditionMass
      ring

theorem centeredConditionMass_continuous (base : ZMod N) :
    Continuous (centeredConditionMass N base) := by
  have hp : Continuous (fun s : ℂ => ‖(N : ℂ) ^ (-s)‖) := by
    simp_rw [Complex.cpow_def_of_ne_zero (NeZero.ne (N : ℂ))]
    fun_prop
  have hd : ∀ j : ZMod N, Continuous (fun s => ‖centeredHurwitz N j base s‖) := by
    intro j
    exact (HurwitzZeta.differentiable_hurwitzZeta_sub_hurwitzZeta
      (ZMod.toAddCircle j) (ZMod.toAddCircle base)).continuous.norm
  exact hp.mul (continuous_finset_sum _ fun j _ => hd j)

theorem compact_centered_condition_bound (base : ZMod N) (K : Set ℂ)
    (hK : IsCompact K) : ∃ C : ℝ, 0 ≤ C ∧ ∀ s ∈ K, centeredConditionMass N base s ≤ C := by
  obtain ⟨B, hB⟩ := hK.bddAbove_image (centeredConditionMass_continuous N base).continuousOn
  refine ⟨max 0 B, le_max_left _ _, ?_⟩
  intro s hs
  exact (hB ⟨s, hs, rfl⟩).trans (le_max_right _ _)

end GRWTSK.NumberTheory.Zeta.Riemann.DirichletPoleCancelledObservation
