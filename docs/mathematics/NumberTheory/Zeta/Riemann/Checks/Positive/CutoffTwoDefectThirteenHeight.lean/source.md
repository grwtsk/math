# Complete source: GRWTSK.NumberTheory.Zeta.Riemann.Checks.Positive.CutoffTwoDefectThirteenHeight

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `0d5ffac271e85c0fa797d95398fe2870b4b983fb` · SHA-256 `6b89e6746116e010df3be33da3bc6414e4d80d0a7fac9b655ae45b4522fcf8e4`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripThirteenHeightSeed

set_option autoImplicit false

/-! Source-level fixtures only: exact elaboration and axiom audit NOT_RUN. -/
namespace GRWTSK.RiemannHypothesis.Checks.CutoffTwoDefectThirteenHeight
open Complex MeasureTheory Set
open CriticalStripHeightDescent CriticalStripHeightDescent.CenteredMellin
open SexticPrimitive SexticPrimitive.CutoffTwo
noncomputable section

example {t : ℝ} (ht : 2 ≤ t) (ht3 : t ≤ 3) :
    sixthKernel.value t = ((KernelDefect.normalized (t - 2) / 30240 : ℝ) : ℂ) :=
  SecondCell.source_on_second_cell ht ht3
example : (1 / 1408 : ℝ) ≤ ∑ i : Fin 16, SecondCell.mass i := SecondCell.total_mass
example : (64 : ℝ) / 1408 = 1 / 22 := by norm_num
example : ((1 / 2 : ℝ) + 5) / 22 = 1 / 4 := by norm_num
example {s : ℂ} (hx : (1 / 2 : ℝ) ≤ s.re) (hx1 : s.re ≤ 1) :
    ‖tail 2 s‖ ≤ (3 / 4 : ℝ) * ((2 : ℝ) ^ (-(s.re + 5)) / (30240 * (s.re + 5))) :=
  SecondCell.tail_improved hx hx1

example {t : ℝ} (hl : 12 ≤ |t|) (hh : |t| ≤ 13) :
    -(37 / 40 : ℝ) ≤ Real.cos (t * Real.log 2) ∧
      (3 / 8 : ℝ) * |t| ≤ t * Real.sin (t * Real.log 2) :=
  ThirteenPhase.signed_height_bounds hl hh
example {t : ℝ} (hl : 12 ≤ |t|) (hh : |t| ≤ 13) :
    (t ^ 2 + 156) / 25 ≤ |t| := ThirteenPhase.height_chord hl hh
example {s : ℂ} (hx : (1 / 2 : ℝ) ≤ s.re) (hx1 : s.re ≤ 1) :
    ‖power s‖ * ThirteenPhase.weightRoot s.re ≤ 1 := ThirteenPhase.weighted_root hx hx1

example : (3 / 4 : ℝ) * (99 / 140) * (10 / 9) = 33 / 56 := by norm_num
example : 1 - (2 / 5 : ℝ) - 33 / 56 = 3 / 280 := by norm_num
example : (3 / 280 : ℝ) * 12 = 9 / 70 := by norm_num
example : (1 / 1000 : ℝ) ≤ 9 / 70 := by norm_num
example {s : ℂ} (hx : (1 / 2 : ℝ) ≤ s.re) (hx1 : s.re ≤ 1)
    (hl : (12 : ℝ) ≤ |s.im|) (hh : |s.im| ≤ (13 : ℝ)) :
    (3 / 280 : ℝ) * ‖s - 1‖ ^ 2 ≤ (poleNormalizedZeta s * (starRingEnd ℂ) (s - 1)).re :=
  thirteen_source_projection hx hx1 hl hh
example {s : ℂ} (hx : (1 / 2 : ℝ) ≤ s.re) (hx1 : s.re ≤ 1)
    (hh : |s.im| ≤ (13 : ℝ)) : (1 / 1000 : ℝ) ≤ ‖poleNormalizedZeta s‖ :=
  poleNormalized_norm_lower_thirteenHeight hx hx1 hh
example {z : ℂ} (hz : NontrivialZetaZero z) :
    (13 : ℝ) < |ZetaCommutatorRoot.root.heightAt z| := nontrivialZetaZero_height_gt_thirteen hz
example : WindowRH 13 := windowRH_thirteen
example : ShellRH 12 := shellRH_twelve
-- The new proof inhabits the PREVIOUS next-step interface.
example : WindowRH 13 := window_thirteen_of_shell shellRH_twelve

example {s : ℂ} {t : ℝ} (hx : (1 / 2 : ℝ) ≤ s.re) (hx1 : s.re ≤ 1)
    (hl : (12 : ℝ) ≤ |s.im|) (hh : |s.im| ≤ (13 : ℝ)) (ht : 0 ≤ t) (ht1 : t ≤ 1) :
    (9 / 70 : ℝ) ≤ ‖CutoffTwo.deformation t s‖ :=
  deformation_norm_lower_thirteenBand hx hx1 hl hh ht ht1

-- A bounded negative contribution is not a nonnegative contribution.
example : -(2 / 5 : ℝ) ≤ -1 / 3 ∧ (-1 / 3 : ℝ) < 0 := by norm_num
-- The old failure guard remains true for its old coefficient bound.
example : TwelveHeightCertificate.tailGap (1 / 2) 169 < 0 :=
  TwelveHeightCertificate.tail_gap_negative_at_thirteen
example : ThirteenHeightCertificate.tailGap (1 / 2) 196 < 0 :=
  ThirteenHeightCertificate.tail_gap_negative_at_fourteen
-- Losing either sign condition in the margin theorem is unsound.
example : 1 - (2 / 5 : ℝ) - 3 / 5 = 0 := by norm_num
example : CutoffTwo.deformation 0 1 = 0 := affine_deformation_not_global_unit
-- Cutoff, reference and time scopes remain separate from the global RH premise.
example (h : ShellRH 13) : WindowRH 14 := window_fourteen_of_shell h
example (h : ∀ N : ℕ, 13 ≤ N → WindowRH N → ShellRH N) : _root_.RiemannHypothesis :=
  rh_of_above_thirteen h
end
end GRWTSK.RiemannHypothesis.Checks.CutoffTwoDefectThirteenHeight
```
