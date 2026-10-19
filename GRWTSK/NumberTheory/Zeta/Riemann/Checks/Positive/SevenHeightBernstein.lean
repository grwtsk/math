/- Copyright (c) 2026 R.A. Jacob Martone. MIT.
Human mathematical direction: R.A. Jacob Martone. Formalization assistance: OpenAI.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripSevenHeightSeed

set_option autoImplicit false

namespace GRWTSK.RiemannHypothesis.Checks.SevenHeightBernstein

open Complex
open GRWTSK.RiemannHypothesis
open GRWTSK.RiemannHypothesis.CriticalStripHeightDescent
open GRWTSK.RiemannHypothesis.CriticalStripHeightDescent.CenteredMellin.QuarticPrimitive

noncomputable section

example (i : Fin 9) (j : Fin 5) : 0 < SevenHeightCertificate.coefficients i j := by
  fin_cases i <;> fin_cases j <;> norm_num [SevenHeightCertificate.coefficients]

example (u v : ℝ) :
    SevenHeightCertificate.tensorValue SevenHeightCertificate.coefficients u v =
      256 * SevenHeightCertificate.gap ((1 + u) / 2) (49 * v) :=
  SevenHeightCertificate.tensor_identity u v

example {x y : ℝ} (hx : (1 / 2 : ℝ) ≤ x) (hx1 : x ≤ 1) (hy : 0 ≤ y) (hy49 : y ≤ 49) :
    0 ≤ SevenHeightCertificate.gap x y := SevenHeightCertificate.gap_nonneg hx hx1 hy hy49

-- Closed top boundary is included. These are polynomial calculations, not zeta evaluations.
example : SevenHeightCertificate.gap (1 / 2) 49 = 9434036885 / 256 := by
  norm_num [SevenHeightCertificate.gap, SevenHeightCertificate.numerator,
    SevenHeightCertificate.denominator]
example : SevenHeightCertificate.gap (1 / 2) 64 = -(2206009628455 / 256) := by
  norm_num [SevenHeightCertificate.gap, SevenHeightCertificate.numerator,
    SevenHeightCertificate.denominator]
example : SevenHeightCertificate.gap (1 / 2) 64 < 0 :=
  SevenHeightCertificate.height_eight_gap_negative

-- Ordinary power-basis signs outside the unit square cannot certify positivity.
example : SevenHeightCertificate.boxBasis 1 0 (2 : ℝ) < 0 := by
  norm_num [SevenHeightCertificate.boxBasis]

example : SevenHeightCertificate.tensorValue (fun (_ : Fin 9) (_ : Fin 5) => 0) 0 0 ≠
    256 * SevenHeightCertificate.gap (1 / 2) 0 :=
  SevenHeightCertificate.zero_table_is_not_certificate

example {s : ℂ} (hx : (1 / 2 : ℝ) ≤ s.re) (hx1 : s.re ≤ 1) (hy : |s.im| ≤ (7 : ℝ)) :
    ‖poleNormalizedZeta s - reference s‖ ≤ (31 / 32 : ℝ) * ‖reference s‖ :=
  sevenHeight_source_error hx hx1 hy

example {s : ℂ} (hx : (1 / 2 : ℝ) ≤ s.re) (hx1 : s.re ≤ 1) (hy : |s.im| ≤ (7 : ℝ)) :
    (11 / 512 : ℝ) ≤ ‖poleNormalizedZeta s‖ :=
  poleNormalized_norm_lower_sevenHeight hx hx1 hy

example (hz : NontrivialZetaZero (⟨1 / 2, 7⟩ : ℂ)) : False := by
  have h := nontrivialZetaZero_height_gt_seven hz
  norm_num [ZetaCommutatorRoot.heightAt_eq_im] at h

example {z : ℂ} (hz : NontrivialZetaZero z) :
    (7 : ℝ) < |ZetaCommutatorRoot.root.heightAt z| := nontrivialZetaZero_height_gt_seven hz

example : WindowRH 7 := windowRH_seven
example : ShellRH 6 := shellRH_six
-- The newly proved shell inhabits the PREVIOUS explicit next-step interface.
example : WindowRH 7 := window_seven_of_shell shellRH_six

example {N : ℕ} {s : ℂ} (hN : 1 ≤ N) (hx : (1 / 2 : ℝ) ≤ s.re)
    (hx1 : s.re ≤ 1) (hy : |s.im| ≤ (7 : ℝ)) :
    ‖poleNormalizedZeta s - finiteModel N s‖ ≤
      (31 / 32 : ℝ) * ‖reference s‖ * (N : ℝ) ^ (-(s.re + 3)) :=
  finiteModel_relative_error_sevenHeight hN hx hx1 hy

example {s : ℂ} {t : ℝ} (hx : (1 / 2 : ℝ) ≤ s.re) (hx1 : s.re ≤ 1)
    (hy : |s.im| ≤ (7 : ℝ)) (ht : 0 ≤ t) (ht1 : t ≤ 1) :
    (11 / 512 : ℝ) ≤ ‖deformation t s‖ :=
  deformation_norm_lower_sevenHeight hx hx1 hy ht ht1

example : ((31 / 32 : ℝ) ^ 2) = 961 / 1024 := by norm_num
example : (1 - (31 / 32 : ℝ)) * (11 / 16) = 11 / 512 := by norm_num
example : 0 < (11 / 512 : ℝ) := by norm_num
-- The reference is not a global unit, and changing lambda's interval can cross zero.
example : reference (9 : ℂ) = 0 := by norm_num [reference]
example : (1 - (2 : ℂ) * (1 / 2)) = 0 := by norm_num

example (h : ShellRH 7) : WindowRH 8 := window_eight_of_shell h
example (h : ∀ N : ℕ, 7 ≤ N → WindowRH N → ShellRH N) : _root_.RiemannHypothesis :=
  rh_of_above_seven h

end
end GRWTSK.RiemannHypothesis.Checks.SevenHeightBernstein
