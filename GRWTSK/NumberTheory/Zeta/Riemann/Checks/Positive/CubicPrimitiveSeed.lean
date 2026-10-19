/- Copyright (c) 2026 R.A. Jacob Martone. MIT.
Human mathematical direction: R.A. Jacob Martone. Formalization assistance: OpenAI.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripFiveHeightSeed

set_option autoImplicit false

namespace GRWTSK.RiemannHypothesis.Checks.CubicPrimitiveSeed

open Complex Set
open GRWTSK.RiemannHypothesis.CriticalStripHeightDescent
open GRWTSK.RiemannHypothesis.CriticalStripHeightDescent.CenteredMellin.CubicPrimitive

noncomputable section

example (u : ℝ) (hu : 0 ≤ u) (hu1 : u ≤ 1) :
    |u * (u - 1) * (2 * u - 1) / 12| ≤ (1 / 120 : ℝ) := cubic_unit_bound hu hu1
example (t : ℝ) : ‖kernel t‖ ≤ (1 / 120 : ℝ) := kernel_norm_le t
example (n : ℕ) : kernel (n : ℝ) = 0 := kernel_nat n

-- Values and first polynomial jets glue; second jets jump.
example (n : ℕ) : cell n ((n + 1 : ℕ) : ℝ) = cell (n + 1) ((n + 1 : ℕ) : ℝ) := by simp
example (n : ℕ) : cellDerivative n ((n + 1 : ℕ) : ℝ) =
    cellDerivative (n + 1) ((n + 1 : ℕ) : ℝ) := by simp
example : ((2 : ℂ) - 1 - 1 / 2) ≠ ((2 : ℂ) - 2 - 1 / 2) := by norm_num

-- The cubic primitive is signed; it is not a positive Hodge metric.
example : kernel (5 / 4 : ℝ) = (1 / 128 : ℂ) := by
  norm_num [kernel, realKernel, realFractionalKernel]
example : kernel (7 / 4 : ℝ) = -(1 / 128 : ℂ) := by
  norm_num [kernel, realKernel, realFractionalKernel]
-- In particular a noninteger cutoff does not have a generally zero boundary term.
example : kernel (5 / 4 : ℝ) ≠ 0 := by
  norm_num [kernel, realKernel, realFractionalKernel]

example {s : ℂ} (hs : 0 < s.re) :
    poleNormalizedZeta s = reference s - multiplier s * tail 1 s := source_identity hs

example {N : ℕ} {s : ℂ} (hN : 1 ≤ N) (hs : 0 < s.re) :
    poleNormalizedZeta s - finiteModel N s = -multiplier s * tail N s :=
  finiteModel_residual hN hs

-- Positive cutoff and real-part hypotheses cannot be supplied by totalized division.
example : ¬ (1 ≤ (0 : ℕ)) := by decide
example : ¬ (0 < (0 : ℝ)) := by norm_num
-- Omitting the mean correction changes the reference even at an exact real point.
example : reference (1 / 2 : ℂ) ≠ ((1 / 2 : ℂ) + 1) / 2 := by norm_num [reference]
example : reference (1 : ℂ) = 1 := by norm_num [reference]

example {s : ℂ} (hx : (1 / 2 : ℝ) ≤ s.re) (hx1 : s.re ≤ 1)
    (hy : |s.im| ≤ (5 : ℝ)) :
    (21 / 320 : ℝ) ≤ ‖poleNormalizedZeta s‖ := poleNormalized_norm_lower_fiveHeight hx hx1 hy
example {z : ℂ} (hz : NontrivialZetaZero z) :
    (5 : ℝ) < |ZetaCommutatorRoot.root.heightAt z| := nontrivialZetaZero_height_gt_five hz
example : WindowRH 3 := windowRH_three
example : WindowRH 4 := windowRH_four
example : WindowRH 5 := windowRH_five
example : ShellRH 2 := shellRH_two
example : ShellRH 3 := shellRH_three
example : ShellRH 4 := shellRH_four
example (h : ShellRH 5) : WindowRH 6 := window_six_of_shell h

-- Exact constants, no transcendental evaluation.
example : (1 / (120 * (1 / 2 + 2 : ℝ))) = 1 / 300 := by norm_num
example : (26 : ℝ) * (7 / 8) = 91 / 4 := by norm_num
example : (1 / 12 : ℝ) - 91 / 1200 = 3 / 400 := by norm_num
example : (3 / 400 : ℝ) * (5 / 2) * (7 / 2) = 21 / 320 := by norm_num
example : 0 < (21 / 320 : ℝ) := by norm_num
example (v : ℝ) : 5 * v ^ 3 - 5 * v + 2 =
    5 * (v - 3 / 5) ^ 2 * (v + 6 / 5) + (2 / 5) * (v - 2 / 5) := by ring

-- The geometric constants do not extend unchanged to height six.
example : ¬ ((1 : ℝ) ^ 2 + 6 ^ 2 ≤ 26) := by norm_num
-- A time parameter outside [0,1] can cross zero, even with a smaller-than-reference error.
example : (1 + (2 : ℂ) * (-(1 / 2)) : ℂ) = 0 := by norm_num

example {s : ℂ} {t : ℝ} (hx : (1 / 2 : ℝ) ≤ s.re) (hx1 : s.re ≤ 1)
    (hy : |s.im| ≤ (5 : ℝ)) (ht : 0 ≤ t) (ht1 : t ≤ 1) :
    (21 / 320 : ℝ) ≤ ‖deformation t s‖ := deformation_norm_lower_fiveHeight hx hx1 hy ht ht1

-- Higher shells remain an explicit premise, not a generated consequence of the seed.
example (hstep : ∀ N : ℕ, 5 ≤ N → WindowRH N → ShellRH N) : _root_.RiemannHypothesis :=
  rh_of_above_five hstep

end
end GRWTSK.RiemannHypothesis.Checks.CubicPrimitiveSeed
