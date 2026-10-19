/- Copyright (c) 2026 R.A. Jacob Martone. MIT.
Human mathematical direction: R.A. Jacob Martone. Formalization assistance: OpenAI.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripSixHeightSeed

set_option autoImplicit false

namespace GRWTSK.RiemannHypothesis.Checks.QuarticPrimitiveSeed

open Complex MeasureTheory Set Filter
open scoped Topology
open GRWTSK.RiemannHypothesis.CriticalStripHeightDescent
open GRWTSK.RiemannHypothesis.CriticalStripHeightDescent.CenteredMellin
open GRWTSK.RiemannHypothesis.CriticalStripHeightDescent.CenteredMellin.QuarticPrimitive

noncomputable section

example {u : ℝ} (hu : 0 ≤ u) (hu1 : u ≤ 1) :
    0 ≤ u ^ 2 * (u - 1) ^ 2 / 24 ∧ u ^ 2 * (u - 1) ^ 2 / 24 ≤ (1 / 384 : ℝ) :=
  quartic_unit_bounds hu hu1

example : (∫ u : ℝ in (0 : ℝ)..1, u ^ 2 * (u - 1) ^ 2 / 24) = (1 / 720 : ℝ) :=
  quartic_unit_mean

example (t : ℝ) : ‖centeredKernel t‖ ≤ (1 / 720 : ℝ) := centeredKernel_norm_le t
example (n : ℕ) : QuarticPrimitive.kernel (n : ℝ) = 0 := kernel_nat n
example (n : ℕ) : centeredKernel (n : ℝ) = -(1 / 720 : ℂ) := centeredKernel_nat n

-- Raw cell values and first two polynomial jets agree at a seam.
example (n : ℕ) : cell n ((n + 1 : ℕ) : ℝ) = cell (n + 1) ((n + 1 : ℕ) : ℝ) := by simp
example (n : ℕ) : CubicPrimitive.cell n ((n + 1 : ℕ) : ℝ) =
    CubicPrimitive.cell (n + 1) ((n + 1 : ℕ) : ℝ) := by simp
example (n : ℕ) : CubicPrimitive.cellDerivative n ((n + 1 : ℕ) : ℝ) =
    CubicPrimitive.cellDerivative (n + 1) ((n + 1 : ℕ) : ℝ) := by simp
-- The third jets jump; no global C3 claim is supplied.
example : ((2 : ℂ) - 1 - 1 / 2) ≠ ((2 : ℂ) - 2 - 1 / 2) := by norm_num

-- The centered quartic has both signs, and its integer boundary value is nonzero.
example : centeredKernel (1 : ℝ) = -(1 / 720 : ℂ) := by simp
example : centeredKernel (3 / 2 : ℝ) = (7 / 5760 : ℂ) := by
  norm_num [centeredKernel, QuarticPrimitive.kernel, realKernel, realFractionalKernel]
-- Even the RAW primitive has a nonzero noninteger endpoint.
example : QuarticPrimitive.kernel (3 / 2 : ℝ) = (1 / 384 : ℂ) := by
  norm_num [QuarticPrimitive.kernel, realKernel, realFractionalKernel]

example {N : ℕ} {s : ℂ} (hN : 1 ≤ N) (hs : 0 < s.re) :
    CubicPrimitive.tail N s = (N : ℂ) ^ (-(s + 3)) / 720 + (s + 3) * centeredTail N s :=
  cubic_tail_identity hN hs

example {s : ℂ} (hs : 0 < s.re) :
    poleNormalizedZeta s = reference s - multiplier s * centeredTail 1 s := source_identity hs

example {N : ℕ} {s : ℂ} (hN : 1 ≤ N) (hs : 0 < s.re) :
    poleNormalizedZeta s - finiteModel N s = -multiplier s * centeredTail N s :=
  finiteModel_residual hN hs

example : reference (1 : ℂ) = 1 := by norm_num [reference]
-- The polynomial reference is not a global unit: its positive real root is outside the strip.
example : reference (9 : ℂ) = 0 := by norm_num [reference]
example : reference (2 : ℂ) = CubicPrimitive.reference 2 - 1 / 30 := by
  norm_num [reference, CubicPrimitive.reference]

example {s : ℂ} (hx : (1 / 2 : ℝ) ≤ s.re) (hx1 : s.re ≤ 1) (hy : |s.im| ≤ (6 : ℝ)) :
    (253 / 8064 : ℝ) ≤ ‖poleNormalizedZeta s‖ := poleNormalized_norm_lower_sixHeight hx hx1 hy

example {z : ℂ} (hz : NontrivialZetaZero z) :
    (6 : ℝ) < |ZetaCommutatorRoot.root.heightAt z| := nontrivialZetaZero_height_gt_six hz
example : WindowRH 6 := windowRH_six
example : ShellRH 5 := shellRH_five
-- The formerly conditional port is inhabited by the new shell proof.
example : WindowRH 6 := CubicPrimitive.window_six_of_shell shellRH_five
-- The next genuine shell remains a hypothesis.
example (h : ShellRH 6) : WindowRH 7 := window_seven_of_shell h

example : (1 / (720 * (1 / 2 + 3)) : ℝ) = 1 / 2520 := by norm_num
example : (37 * (7 / 9) * (13 / 14) : ℝ) = 481 / 18 := by norm_num
example : ((481 / 18) / (8 * (7 / 2)) : ℝ) = 481 / 504 := by norm_num
example : (481 / 504 : ℝ) < 1 := by norm_num
example : ((5 / 2) * (9 / 2) * (11 / 2) * 8 / 720 : ℝ) = 11 / 16 := by norm_num
example : ((1 - 481 / 504) * (11 / 16) : ℝ) = 253 / 8064 := by norm_num
example : (0 : ℝ) < 253 / 8064 := by norm_num
-- A non-strict comparison is insufficient; extrapolating time can cross zero.
example : (1 - (1 : ℂ) : ℂ) = 0 := by norm_num
example : (1 - (2 : ℂ) * (1 / 2) : ℂ) = 0 := by norm_num

end
end GRWTSK.RiemannHypothesis.Checks.QuarticPrimitiveSeed
