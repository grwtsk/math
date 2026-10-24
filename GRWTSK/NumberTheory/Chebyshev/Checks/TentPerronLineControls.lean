/- Copyright (c) 2026 grwtsk contributors. MIT.
Human research direction: grwtsk contributors. Proof drafting assistance: OpenAI ChatGPT.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Chebyshev.TentPerronLine

set_option autoImplicit false

/-!
# Right-line normalization, endpoint and zero-height controls

Exact control parameters, not zero-list certificates. These declarations have
not been elaborated or executed in Lean. SOURCE_ONLY / NOT_KERNEL_AUDITED.
-/

namespace GRWTSK.NumberTheory.Chebyshev.Checks.TentPerronLineControls

open GRWTSK.Analysis.Real.TentWeight
open GRWTSK.Analysis.ComplexAnalysis.TentMellinKernel
open GRWTSK.Analysis.ComplexAnalysis.TentMellinInversion
open GRWTSK.NumberTheory.LSeries.TentPairing

/-- Zero imaginary height is a regular point of the selected vertical line. -/
theorem rightLine_at_zero : rightLine 0 = 2 := by simp [rightLine]

/-- Totalized inverse-height division would incorrectly give zero at this point. -/
theorem cauchy_not_inverse_height_at_zero :
    ((1 : ℝ) + 0 ^ 2)⁻¹ = 1 ∧ 1 / (0 : ℝ) ^ 2 = 0 := by norm_num

/-- The mathematical inverse retains the left endpoint's zero weight. -/
theorem inversion_left_endpoint :
    mellinInv 2 (tentKernel (13 / 2) (5 / 2)) 4 = (0 : ℂ) := by
  rw [mellinInv_tentKernel (13 / 2) (5 / 2) 4 (by norm_num) (by norm_num) (by norm_num)]
  norm_num [tent]

/-- There is no jump-average convention at a continuous tent endpoint. -/
theorem inversion_right_endpoint :
    mellinInv 2 (tentKernel (13 / 2) (5 / 2)) 9 = (0 : ℂ) := by
  rw [mellinInv_tentKernel (13 / 2) (5 / 2) 9 (by norm_num) (by norm_num) (by norm_num)]
  norm_num [tent]

/-- The normalized peak is one, not the radius. -/
theorem inversion_center :
    mellinInv 2 (tentKernel (13 / 2) (5 / 2)) (13 / 2) = (1 : ℂ) := by
  rw [mellinInv_tentKernel (13 / 2) (5 / 2) (13 / 2)
    (by norm_num) (by norm_num) (by norm_num)]
  norm_num [tent]

/-- The proper power eight survives with its actual weight; inversion does not remove it. -/
theorem inversion_at_eight :
    mellinInv 2 (tentKernel (13 / 2) (5 / 2)) 8 = (2 / 5 : ℂ) := by
  rw [mellinInv_tentKernel (13 / 2) (5 / 2) 8 (by norm_num) (by norm_num) (by norm_num)]
  norm_num [tent]

/-- Inputs outside the interval remain zero after inversion. -/
theorem inversion_outside :
    mellinInv 2 (tentKernel (13 / 2) (5 / 2)) 10 = (0 : ℂ) := by
  rw [mellinInv_tentKernel (13 / 2) (5 / 2) 10 (by norm_num) (by norm_num) (by norm_num)]
  norm_num [tent]

/-- The upstream zero-index convention survives the pairing, even for nonzero f(0). -/
theorem pairedTerm_zero_index (f : ℕ → ℂ) (x h t : ℝ) :
    pairedTerm f x h 0 t = 0 := by simp [pairedTerm]

end GRWTSK.NumberTheory.Chebyshev.Checks.TentPerronLineControls
