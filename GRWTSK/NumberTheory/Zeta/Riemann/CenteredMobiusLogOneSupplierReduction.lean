/-
Copyright (c) 2026 R.A. Jacob Martone. MIT.
Status: SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
This module gives a direct one-premise reduction to the historical dyadic energy.
-/
import GRWTSK.NumberTheory.Zeta.Riemann.CenteredMobiusLogGreenFromPrefix
import Mathlib.Tactic
set_option autoImplicit false
noncomputable section

namespace GRWTSK.RiemannHypothesis

open GRWTSK.NumberTheory.VonMangoldt.DyadicDiscrepancy

/-- Uniform prefix square-root-plus-epsilon control directly supplies the
historical Green L2 energy rate. -/
theorem allDyadicHistoricalGreenEnergyBound_of_prefixMangoldt
    (hprefix : AllDyadicPrefixMangoldtSquareRootPlusEpsilonBound) :
    AllDyadicHistoricalGreenEnergyBound := by
  intro η hη
  obtain ⟨C, hC, j0, hb⟩ := hprefix η hη
  refine ⟨32 * (1 + C), by positivity, j0, ?_⟩
  intro j hj
  let X := dyadicScale j
  have hX : 2 ≤ X := historicalDyadicScale_ge_two j
  let A : ℝ := Real.sqrt (C * Real.rpow (X : ℝ) (1 + η))
  have hA0 : 0 ≤ A := Real.sqrt_nonneg _
  have hAt : DyadicPrefixMangoldtBoundAt X A := by
    refine ⟨hA0, ?_⟩
    intro m hm
    have hsquare := hb j hj m hm
    have hinside : 0 ≤ C * Real.rpow (X : ℝ) (1 + η) := by positivity
    have hA2 : A^2 = C * Real.rpow (X : ℝ) (1 + η) :=
      Real.sq_sqrt hinside
    nlinarith [sq_abs (centeredGreenDyadicPrefixMangoldtError X m)]
  have hgreen := greenEnergy_le_of_prefix_bound (by omega) hAt
  have hA2 : A^2 = C * Real.rpow (X : ℝ) (1 + η) :=
    Real.sq_sqrt (by positivity)
  have hXone : (1 : ℝ) ≤ X := by exact_mod_cast (by omega : 1 ≤ X)
  have hdet : 1 / (X : ℝ)^2 ≤ Real.rpow (X : ℝ) (-1 + η) := by
    calc
      1 / (X : ℝ)^2 ≤ 1 / (X : ℝ) := one_div_sq_le_one_div hXone
      _ = Real.rpow (X : ℝ) (-1) := by rw [Real.rpow_neg_one]
      _ ≤ Real.rpow (X : ℝ) (-1 + η) :=
        Real.rpow_le_rpow_of_exponent_le hXone (by linarith)
  have hmain :
      A^2 / (X : ℝ)^2 =
        C * Real.rpow (X : ℝ) (-1 + η) := by
    rw [hA2, ← Real.rpow_two]
    rw [← Real.rpow_sub_natCast (by positivity : (0 : ℝ) ≤ X)]
    ring_nf
  calc
    greenEnergy X ≤ ((4 * A + 4) / (X : ℝ))^2 := hgreen
    _ ≤ 32 * (A^2 + 1) / (X : ℝ)^2 := by
      field_simp
      nlinarith [sq_nonneg (A - 1)]
    _ = 32 * (A^2 / (X : ℝ)^2 + 1 / (X : ℝ)^2) := by ring
    _ ≤ 32 * (C * Real.rpow (X : ℝ) (-1 + η) +
          Real.rpow (X : ℝ) (-1 + η)) := by
      rw [hmain]
      gcongr
    _ = 32 * (1 + C) * Real.rpow (X : ℝ) (-1 + η) := by ring

/-- Single prefix-Mangoldt premise supplies the complete historical augmented
energy bound directly. -/
theorem allDyadicEnergyBound_of_prefixMangoldt
    (hprefix : AllDyadicPrefixMangoldtSquareRootPlusEpsilonBound) :
    AllDyadicEnergyBound := by
  intro η hη
  obtain ⟨CG, hCG, jG, hG⟩ :=
    allDyadicHistoricalGreenEnergyBound_of_prefixMangoldt hprefix η hη
  obtain ⟨C0, hC0, j0, h0⟩ :=
    (allDyadicBoundaryBounds_of_prefixMangoldt hprefix).1 η hη
  obtain ⟨C1, hC1, j1, h1⟩ :=
    (allDyadicBoundaryBounds_of_prefixMangoldt hprefix).2 η hη
  refine ⟨CG + C0 + C1, by positivity, max jG (max j0 j1), ?_⟩
  intro j hj
  have hjG : jG ≤ j := le_trans (le_max_left _ _) hj
  have hj0 : j0 ≤ j := le_trans (le_max_left _ _) (le_trans (le_max_right _ _) hj)
  have hj1 : j1 ≤ j := le_trans (le_max_right _ _) (le_trans (le_max_right _ _) hj)
  unfold augmentedEnergy
  have hGj := hG j hjG
  have h0j := h0 j hj0
  have h1j := h1 j hj1
  nlinarith [Real.rpow_nonneg
    (by positivity : (0 : ℝ) ≤ dyadicScale j) (-1 + η)]

end GRWTSK.RiemannHypothesis
