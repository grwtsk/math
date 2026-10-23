/-
Copyright (c) 2026 grwtsk contributors. MIT.
Status: SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
This module records exponent bookkeeping only; it proves no prime-number estimate.
-/
import GRWTSK.NumberTheory.Zeta.Riemann.CenteredMobiusLogBoundaryReduction
import Mathlib.Tactic
set_option autoImplicit false
noncomputable section

namespace GRWTSK.RiemannHypothesis

open GRWTSK.NumberTheory.VonMangoldt.DyadicDiscrepancy

def centeredGreenDyadicMangoldtRawError (X : ℕ) : ℝ :=
  centeredGreenDyadicMangoldtMass X - (X : ℝ)

theorem normalizedMangoldtDiscrepancy_eq_raw_div
    {X : ℕ} (hX : 1 ≤ X) :
    centeredGreenDyadicMangoldtNormalizedDiscrepancy X =
      centeredGreenDyadicMangoldtRawError X / (X : ℝ) := by
  unfold centeredGreenDyadicMangoldtNormalizedDiscrepancy
    centeredGreenDyadicMangoldtRawError
  have hX0 : (X : ℝ) ≠ 0 := by exact_mod_cast (by omega : X ≠ 0)
  field_simp
  ring

/-- Squared normalized rate X^(-1+eta) is exactly raw squared error rate
X^(1+eta), modulo the elementary rpow normalization. -/
theorem normalized_square_bound_iff_raw_square_bound
    {X : ℕ} (hX : 1 ≤ X) (η C : ℝ) :
    centeredGreenDyadicMangoldtNormalizedDiscrepancy X ^ 2 ≤
        C * Real.rpow (X : ℝ) (-1 + η) ↔
      centeredGreenDyadicMangoldtRawError X ^ 2 ≤
        C * Real.rpow (X : ℝ) (1 + η) := by
  rw [normalizedMangoldtDiscrepancy_eq_raw_div hX]
  have hXpos : (0 : ℝ) < X := by exact_mod_cast hX
  have hrpow :
      Real.rpow (X : ℝ) (1 + η) =
        (X : ℝ)^2 * Real.rpow (X : ℝ) (-1 + η) := by
    rw [← Real.rpow_two]
    rw [← Real.rpow_add hXpos.le]
    congr 1
    ring
  rw [hrpow]
  constructor <;> intro h
  · have := mul_le_mul_of_nonneg_left h (sq_nonneg (X : ℝ))
    field_simp at this
    simpa [pow_two, mul_assoc, mul_left_comm, mul_comm] using this
  · apply (div_le_iff₀ (sq_pos_of_pos hXpos)).2
    field_simp
    simpa [pow_two, mul_assoc, mul_left_comm, mul_comm] using h

/-- Package exposing the raw square-root-scale meaning of the boundary
supplier. No claim that this package is inhabited. -/
def AllDyadicRawMangoldtSquareRootPlusEpsilonBound : Prop :=
  ∀ η : ℝ, 0 < η →
    ∃ C : ℝ, 0 ≤ C ∧ ∃ j₀ : ℕ,
      ∀ j ≥ j₀,
        centeredGreenDyadicMangoldtRawError (dyadicScale j)^2 ≤
          C * Real.rpow (dyadicScale j : ℝ) (1 + η)

theorem allDyadicNormalizedMangoldt_iff_rawSquareRoot :
    AllDyadicNormalizedMangoldtDiscrepancySquareBound ↔
      AllDyadicRawMangoldtSquareRootPlusEpsilonBound := by
  constructor
  · intro h η hη
    obtain ⟨C, hC, j0, hb⟩ := h η hη
    refine ⟨C, hC, j0, ?_⟩
    intro j hj
    exact (normalized_square_bound_iff_raw_square_bound
      (by exact (historicalDyadicScale_ge_two j).trans' (by omega))
      η C).mp (hb j hj)
  · intro h η hη
    obtain ⟨C, hC, j0, hb⟩ := h η hη
    refine ⟨C, hC, j0, ?_⟩
    intro j hj
    exact (normalized_square_bound_iff_raw_square_bound
      (by exact (historicalDyadicScale_ge_two j).trans' (by omega))
      η C).mpr (hb j hj)

end GRWTSK.RiemannHypothesis
