/- Copyright (c) 2026 grwtsk contributors. MIT.
Human research direction: grwtsk contributors. Proof drafting assistance: OpenAI ChatGPT.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Chebyshev.TentFiniteResidues
import Mathlib.Tactic.NormNum

set_option autoImplicit false

/-! Synthetic contour controls, not zeta-zero certificates.
SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED. -/

namespace GRWTSK.NumberTheory.Chebyshev.Checks.RectangularResidueControls

open GRWTSK.Analysis.Complex.OrientedRectangle
open GRWTSK.Analysis.Complex.RectangularPoleReduction
open GRWTSK.Analysis.Complex.RectangularCauchyKernel
open GRWTSK.Analysis.Real.CauchyEdgePrimitives

noncomputable section

theorem centered_interior :
    boundaryIntegral (fun z : ℂ => z⁻¹) (-1) 1 1 =
      (((2 * Real.pi : ℝ) : ℂ) * Complex.I) := by
  simpa using boundaryIntegral_cauchy 0 (-1) 1 1 (by norm_num) (by norm_num) (by norm_num)

theorem noncentral_interior :
    boundaryIntegral (fun z : ℂ => (z - ((1 / 3 : ℂ) + (1 / 4 : ℂ) * Complex.I))⁻¹)
      (-1) 1 1 = (((2 * Real.pi : ℝ) : ℂ) * Complex.I) := by
  apply boundaryIntegral_cauchy <;> norm_num

theorem exterior_is_zero :
    boundaryIntegral (fun z : ℂ => (z - 2)⁻¹) (-1) 1 1 = 0 := by
  apply boundaryIntegral_cauchy_exterior <;> norm_num [closedRectangle]

theorem coefficient_minus_two :
    boundaryIntegral (fun z : ℂ => (-2) / z) (-1) 1 1 =
      (((2 * Real.pi : ℝ) : ℂ) * Complex.I) * (-2) := by
  simpa using boundaryIntegral_simple_pole 0 (-2) (-1) 1 1
    (by norm_num) (by norm_num) (by norm_num)

theorem reversed_orientation :
    boundaryIntegral (fun z : ℂ => z⁻¹) 1 (-1) 1 =
      -(((2 * Real.pi : ℝ) : ℂ) * Complex.I) := by
  rw [boundaryIntegral_swap, centered_interior]

theorem boundary_point_not_interior :
    ¬ ((-1 : ℝ) < (1 : ℂ).re ∧ (1 : ℂ).re < 1 ∧ |(1 : ℂ).im| < 1) := by
  norm_num

theorem boundary_point_not_exterior : (1 : ℂ) ∈ closedRectangle (-1) 1 1 := by
  norm_num [closedRectangle]

theorem zero_height_guard : ¬ |(0 : ℂ).im| < (0 : ℝ) := by norm_num

/-- The sign guard in the reciprocal-angle formula must not be dropped. -/
theorem negative_corner_has_opposite_sign :
    Real.arctan ((-1 : ℝ) / 1) + Real.arctan (1 / (-1 : ℝ)) = -Real.pi / 2 := by
  norm_num [Real.arctan_neg, Real.arctan_one] <;> ring

end
end GRWTSK.NumberTheory.Chebyshev.Checks.RectangularResidueControls
