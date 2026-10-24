# Complete source: GRWTSK.NumberTheory.Zeta.Riemann.Checks.Positive.CutoffTwoPhaseTwelveHeight

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b008ddd2d46b635c005759c5439b0d5e9f5393e5` · SHA-256 `1a67f9d5102bd6b62e1d8d8868c72e68242e0cd22a5c41bfee974046698c1a9d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripTwelveHeightSeed

set_option autoImplicit false
namespace GRWTSK.RiemannHypothesis.Checks.CutoffTwoPhaseTwelveHeight
open Complex
open CriticalStripHeightDescent
open CriticalStripHeightDescent.CenteredMellin.SexticPrimitive
open CriticalStripHeightDescent.CenteredMellin.SexticPrimitive.CutoffTwo
noncomputable section

example : (11/16 : ℝ) ≤ Real.log 2 ∧ Real.log 2 ≤ 25/36 := Phase.log_two_interval
example {t : ℝ} (hl : 11 ≤ |t|) (hh : |t| ≤ 12) :
    -(1/2 : ℝ) ≤ Real.cos (t*Real.log 2) ∧
      (6/7 : ℝ)*|t| ≤ t*Real.sin (t*Real.log 2) := Phase.signed_height_trig hl hh

example {s : ℂ} (hx : (1/2 : ℝ) ≤ s.re) (hx1 : s.re ≤ 1)
    (hl : (11 : ℝ) ≤ |s.im|) (hh : |s.im| ≤ (12 : ℝ)) :
    0 ≤ ((power s*coefficient s)*(starRingEnd ℂ) (s-1)).re :=
  finite_term_projection_nonneg hx hx1 hl hh

example {s : ℂ} (hx : (1/2 : ℝ) ≤ s.re) (hx1 : s.re ≤ 1)
    (hl : (11 : ℝ) ≤ |s.im|) (hh : |s.im| ≤ (12 : ℝ)) :
    ‖poleNormalizedZeta s-finiteModel 2 s‖ ≤ (9/16 : ℝ)*‖s-1‖ :=
  twelve_tail_error hx hx1 hl hh
example {s : ℂ} (hx : (1/2 : ℝ) ≤ s.re) (hx1 : s.re ≤ 1)
    (hl : (11 : ℝ) ≤ |s.im|) (hh : |s.im| ≤ (12 : ℝ)) :
    (77/16 : ℝ) ≤ ‖poleNormalizedZeta s‖ :=
  poleNormalized_norm_lower_twelveBand hx hx1 hl hh
example {s : ℂ} (hx : (1/2 : ℝ) ≤ s.re) (hx1 : s.re ≤ 1)
    (hh : |s.im| ≤ (12 : ℝ)) : (1/1000 : ℝ) ≤ ‖poleNormalizedZeta s‖ :=
  poleNormalized_norm_lower_twelveHeight hx hx1 hh
example {z : ℂ} (hz : NontrivialZetaZero z) :
    (12 : ℝ) < |ZetaCommutatorRoot.root.heightAt z| :=
  nontrivialZetaZero_height_gt_twelve hz
example : WindowRH 12 := windowRH_twelve
example : ShellRH 11 := shellRH_eleven
-- Inhabit the PREVIOUS next-step port without changing its proposition.
example : WindowRH 12 := window_twelve_of_shell shellRH_eleven

example {s : ℂ} {t : ℝ} (hx : (1/2 : ℝ) ≤ s.re) (hx1 : s.re ≤ 1)
    (hl : (11 : ℝ) ≤ |s.im|) (hh : |s.im| ≤ (12 : ℝ)) (ht : 0 ≤ t) (ht1 : t ≤ 1) :
    (77/16 : ℝ) ≤ ‖deformation t s‖ := deformation_norm_lower_twelveBand hx hx1 hl hh ht ht1

-- One-sided projection is not the earlier relative-error disk condition.
example : (((1 : ℂ)+10*I)*(starRingEnd ℂ) 1).re = 1 := by norm_num
example : ‖((1 : ℂ)+10*I)-1‖ = 10 := by norm_num [norm_mul]
-- Reversing the sine sign reverses a valid cone calculation.
example : (-(1/2 : ℝ)) + (6/7)*11 > 0 := by norm_num
example : (-(1/2 : ℝ)) - (6/7)*11 < 0 := by norm_num
-- A zero reference cannot justify norm cancellation.
example : ‖(0 : ℂ)‖ = 0 := norm_zero
-- The old height12 failure guards still hold for their old sufficient inequalities.
example : CutoffTwoCertificate.modelGap (1/2) 144 < 0 :=
  CutoffTwoCertificate.model_gap_negative_at_twelve
example : CutoffTwoCertificate.tailGap (1/2) 144 < 0 :=
  CutoffTwoCertificate.tail_gap_negative_at_twelve
example : TwelveHeightCertificate.tailGap (1/2) 169 < 0 :=
  TwelveHeightCertificate.tail_gap_negative_at_thirteen
-- Neither positivity of a reference nor this band is globally asserted.
example : CutoffTwo.deformation 0 1 = 0 := affine_deformation_not_global_unit
example : (7/16 : ℝ)*11 = 77/16 := by norm_num
example : (1/1000 : ℝ) ≤ 77/16 := by norm_num
example (h : ShellRH 12) : WindowRH 13 := window_thirteen_of_shell h
example (h : ∀ N : ℕ, 12 ≤ N → WindowRH N → ShellRH N) : _root_.RiemannHypothesis :=
  rh_of_above_twelve h

end
end GRWTSK.RiemannHypothesis.Checks.CutoffTwoPhaseTwelveHeight
```
