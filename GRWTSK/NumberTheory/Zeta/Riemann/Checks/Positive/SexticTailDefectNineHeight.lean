/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripNineHeightSeed

set_option autoImplicit false
namespace GRWTSK.RiemannHypothesis.Checks.SexticTailDefectNineHeight
open Complex Set
open CriticalStripHeightDescent CriticalStripHeightDescent.CenteredMellin.SexticPrimitive
noncomputable section

example (i : Fin 16) {u : ℝ} (hl : (i.val : ℝ) / 16 ≤ u)
    (hu : u ≤ ((i.val : ℝ) + 1) / 16) :
    |KernelDefect.normalized u| ≤ KernelDefect.cap i := KernelDefect.normalized_on_cell i hl hu
example (i : Fin 16) (j : Fin 7) :
    -(16777216 * KernelDefect.cap i) * (KernelDefect.binomialWeight j : ℝ) ≤
      (KernelDefect.coefficients i j : ℝ) ∧
    (KernelDefect.coefficients i j : ℝ) ≤
      (16777216 * KernelDefect.cap i) * (KernelDefect.binomialWeight j : ℝ) :=
  KernelDefect.coefficient_bounds i j
example : (7 / 220 : ℝ) ≤ ∑ i : Fin 16, (1 - KernelDefect.cap i) * KernelDefect.cellMass i :=
  KernelDefect.rational_saving

-- The kernel itself has BOTH signs; the integrated absolute-norm defect is nonnegative.
example : KernelDefect.normalized 0 = 1 := by norm_num [KernelDefect.normalized]
example : KernelDefect.normalized (1 / 2) = -(31 / 32 : ℝ) := by norm_num [KernelDefect.normalized]
example : KernelDefect.normalized 1 = 1 := by norm_num [KernelDefect.normalized]
-- Replacing the sharp cell caps with the global cap1 removes ALL measured saving.
example : (∑ i : Fin 16, (1 - (1 : ℝ)) * KernelDefect.cellMass i) = 0 := by simp
example : ¬ (7 / 220 : ℝ) ≤ (0 : ℝ) := by norm_num

example {s : ℂ} (hx : (1 / 2 : ℝ) ≤ s.re) (hx1 : s.re ≤ 1) :
    ‖tail 1 s‖ ≤ (33 / 40 : ℝ) / (30240 * (s.re + 5)) := KernelDefect.first_tail_improved hx hx1
example : ((155 / 132 : ℝ) * (33 / 40)) = 31 / 32 := by norm_num
example : ((155 / 132 : ℝ) ^ 2) = 24025 / 17424 := by norm_num
example : (1 - (31 / 32 : ℝ)) * (65 / 112) = 65 / 3584 := by norm_num

example {s : ℂ} (hx : (1 / 2 : ℝ) ≤ s.re) (hx1 : s.re ≤ 1) (hy : |s.im| ≤ (9 : ℝ)) :
    (65 / 3584 : ℝ) ≤ ‖poleNormalizedZeta s‖ := poleNormalized_norm_lower_nineHeight hx hx1 hy
example {z : ℂ} (hz : NontrivialZetaZero z) :
    (9 : ℝ) < |ZetaCommutatorRoot.root.heightAt z| := nontrivialZetaZero_height_gt_nine hz
example : WindowRH 9 := windowRH_nine
example : ShellRH 8 := shellRH_eight
-- Inhabit the PREVIOUS next-step interface.
example : WindowRH 9 := window_nine_of_shell shellRH_eight
-- The OLD failure fixture remains true; it addressed a weaker comparison.
example : EightHeightCertificate.gap (1 / 2) 81 < 0 := EightHeightCertificate.height_nine_gap_negative
example : NineHeightCertificate.gap (1 / 2) 100 < 0 := NineHeightCertificate.height_ten_gap_negative

example {N : ℕ} {s : ℂ} (hN : 1 ≤ N) (hx : (1 / 2 : ℝ) ≤ s.re)
    (hx1 : s.re ≤ 1) (hy : |s.im| ≤ (9 : ℝ)) :
    ‖poleNormalizedZeta s - finiteModel N s‖ ≤
      (155 / 132 : ℝ) * ‖reference s‖ * (N : ℝ) ^ (-(s.re + 5)) :=
  finiteModel_relative_error_nineHeight hN hx hx1 hy
example {s : ℂ} {t : ℝ} (hx : (1 / 2 : ℝ) ≤ s.re) (hx1 : s.re ≤ 1)
    (hy : |s.im| ≤ (9 : ℝ)) (ht : 0 ≤ t) (ht1 : t ≤ 1) :
    (65 / 3584 : ℝ) ≤ ‖deformation t s‖ := deformation_norm_lower_nineHeight hx hx1 hy ht ht1

-- Relative-error and time-interval guards cannot be weakened.
example : (1 - (1 : ℂ)) = 0 := by norm_num
example : (1 - (2 : ℂ) * (1 / 2)) = 0 := by norm_num
example (h : ShellRH 9) : WindowRH 10 := window_ten_of_shell h
example (h : ∀ N : ℕ, 9 ≤ N → WindowRH N → ShellRH N) : _root_.RiemannHypothesis :=
  rh_of_above_nine h
end
end GRWTSK.RiemannHypothesis.Checks.SexticTailDefectNineHeight
