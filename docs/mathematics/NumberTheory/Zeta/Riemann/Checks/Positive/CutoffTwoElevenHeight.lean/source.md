# Complete source: GRWTSK.NumberTheory.Zeta.Riemann.Checks.Positive.CutoffTwoElevenHeight

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9d5c8c5e4ed5bb44fd843e10549dc70e9c3cfa1c` · SHA-256 `8c65a7a97c95daf167597bc36869d0a510318bc89160705d76593ad2be1e9b7a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripElevenHeightSeed

set_option autoImplicit false
namespace GRWTSK.RiemannHypothesis.Checks.CutoffTwoElevenHeight
open Complex Set
open GRWTSK.RiemannHypothesis.CriticalStripHeightDescent
open CenteredMellin.SexticPrimitive CutoffTwo
noncomputable section

example (s : ℂ) : CenteredMellin.SexticPrimitive.finiteModel 2 s =
    (s-1)+power s*coefficient s := finiteModel_two s
example {s : ℂ} (hs : 0 < s.re) :
    poleNormalizedZeta s-((s-1)+power s*coefficient s) =
      -CenteredMellin.SexticPrimitive.multiplier s*CenteredMellin.SexticPrimitive.tail 2 s :=
  source_residual hs
example (s : ℂ) (k : ℕ) : (2 : ℂ)^(-(s+(k : ℂ))) = power s/(2 : ℂ)^k :=
  negative_shift s k
example {s : ℂ} (hx : (1/2 : ℝ) ≤ s.re) : ‖power s‖^2*(2*s.re+1) ≤ 1 := power_weight hx

example (u v : ℝ) :
    CenteredMellin.QuarticPrimitive.SevenHeightCertificate.tensorValue
      CutoffTwoCertificate.modelCoefficients u v =
      8*CutoffTwoCertificate.modelGap ((1+u)/2) (100+21*v) :=
  CutoffTwoCertificate.model_tensor_identity u v
example (u v : ℝ) :
    CenteredMellin.QuarticPrimitive.SevenHeightCertificate.tensorValue
      CutoffTwoCertificate.tailCoefficients u v =
      8*CutoffTwoCertificate.tailGap ((1+u)/2) (100+21*v) :=
  CutoffTwoCertificate.tail_tensor_identity u v

example : (1953/2000 : ℝ)+7/16 = 707/500 := by norm_num
example : (99/140 : ℝ)*(1953/2000+7/16) = 9999/10000 := by norm_num
example : (1-9999/10000 : ℝ)*10 = 1/1000 := by norm_num
example : (1/2 : ℝ) ≤ (99/140)^2 := by norm_num
example : (1/1000 : ℝ) ≤ 13/3136 := by norm_num

example {s : ℂ} (hx : (1/2 : ℝ) ≤ s.re) (hx1 : s.re ≤ 1)
    (hlo : (10 : ℝ) ≤ |s.im|) (hhi : |s.im| ≤ (11 : ℝ)) :
    ‖poleNormalizedZeta s-(s-1)‖ ≤ (9999/10000 : ℝ)*‖s-1‖ :=
  band_source_error hx hx1 hlo hhi
example {s : ℂ} (hx : (1/2 : ℝ) ≤ s.re) (hx1 : s.re ≤ 1)
    (hhi : |s.im| ≤ (11 : ℝ)) : (1/1000 : ℝ) ≤ ‖poleNormalizedZeta s‖ :=
  poleNormalized_norm_lower_elevenHeight hx hx1 hhi
example {z : ℂ} (hz : NontrivialZetaZero z) :
    (11 : ℝ) < |ZetaCommutatorRoot.root.heightAt z| := nontrivialZetaZero_height_gt_eleven hz
example : WindowRH 11 := windowRH_eleven
example : ShellRH 10 := shellRH_ten
-- The newly constructed shell inhabits the PREVIOUS next-step interface.
example : WindowRH 11 := CenteredMellin.SexticPrimitive.window_eleven_of_shell shellRH_ten

-- Endpoint correction and reference domain cannot be dropped.
example : coefficient (1 : ℂ) = 2 := by
  norm_num [coefficient, CenteredMellin.CubicPrimitive.multiplier,
    CenteredMellin.QuarticPrimitive.multiplier]
example : power (1 : ℂ) = 1/2 := by norm_num [power, Complex.cpow_neg]
example : CutoffTwo.deformation 0 1 = 0 := affine_deformation_not_global_unit
example (s : ℂ) : CenteredMellin.SexticPrimitive.deformation 1 s =
    CutoffTwo.deformation 1 s := old_new_source_endpoint s
-- These are failures of THESE sufficient polynomial bounds, not proposed zeros.
example : CutoffTwoCertificate.modelGap (1/2) 144 < 0 :=
  CutoffTwoCertificate.model_gap_negative_at_twelve
example : CutoffTwoCertificate.tailGap (1/2) 144 < 0 :=
  CutoffTwoCertificate.tail_gap_negative_at_twelve
example : (1-(1 : ℂ)) = 0 := by norm_num
example (h : ShellRH 11) : WindowRH 12 := window_twelve_of_shell h
example (h : ∀ N : ℕ, 11 ≤ N → WindowRH N → ShellRH N) : _root_.RiemannHypothesis :=
  rh_of_above_eleven h
end
end GRWTSK.RiemannHypothesis.Checks.CutoffTwoElevenHeight
```
