/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import Mathlib.Tactic

set_option autoImplicit false

/-! Exact weighted two-coordinate obstruction for centered diagonal samples.
The actual prime labels, exponential masses and full-vector/tail
identifications remain explicit application steps. SOURCE_PROOF_CANDIDATES / NOT_RUN. -/
namespace GRWTSK.NumberTheory.Zeta.Riemann.CenteredTwoCoordinateResidualFloor

def twoCoordinateResidual (w₀ w₁ d x y : ℝ) : ℝ :=
  w₀ * (x ^ 2 + y ^ 2) + w₁ * ((d - x) ^ 2 + y ^ 2)

theorem exact_weighted_square (w₀ w₁ d x y : ℝ) :
    (w₀ + w₁) * twoCoordinateResidual w₀ w₁ d x y - w₀ * w₁ * d ^ 2 =
      ((w₀ + w₁) * x - w₁ * d) ^ 2 + (w₀ + w₁) ^ 2 * y ^ 2 := by
  unfold twoCoordinateResidual
  ring

theorem weighted_residual_floor (w₀ w₁ d x y : ℝ) (hw : 0 < w₀ + w₁) :
    w₀ * w₁ * d ^ 2 / (w₀ + w₁) ≤ twoCoordinateResidual w₀ w₁ d x y := by
  apply (div_le_iff₀ hw).mpr
  have h := add_nonneg (sq_nonneg ((w₀ + w₁) * x - w₁ * d))
    (mul_nonneg (sq_nonneg (w₀ + w₁)) (sq_nonneg y))
  rw [← exact_weighted_square] at h
  nlinarith

theorem floor_positive (w₀ w₁ d : ℝ) (h₀ : 0 < w₀) (h₁ : 0 < w₁)
    (hd : d ≠ 0) : 0 < w₀ * w₁ * d ^ 2 / (w₀ + w₁) := by
  exact div_pos (mul_pos (mul_pos h₀ h₁) (sq_pos_of_ne_zero hd)) (add_pos h₀ h₁)

/-- Retain an upper bound on the COMPLETE vector norm in normalization. -/
theorem full_normalization_bound (C Z normSq residualSq : ℝ)
    (hC : 0 ≤ C) (hZ : 0 ≤ Z) (hn : normSq ≤ Z) (hr : C ≤ residualSq) :
    C * normSq ≤ Z * residualSq := by
  exact (mul_le_mul_of_nonneg_left hn hC).trans
    (by simpa [mul_comm] using mul_le_mul_of_nonneg_left hr hZ)

end GRWTSK.NumberTheory.Zeta.Riemann.CenteredTwoCoordinateResidualFloor
