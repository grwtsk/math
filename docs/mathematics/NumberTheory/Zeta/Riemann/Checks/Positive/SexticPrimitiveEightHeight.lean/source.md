# Complete source: GRWTSK.NumberTheory.Zeta.Riemann.Checks.Positive.SexticPrimitiveEightHeight

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `445a7e4f6af3a83dbdef3f9d68cc3820dc7ef9f9` · SHA-256 `b19db2c9e3a858e09cae98be75b39affdab41c2071fd2f768fbdd3086b8ca981`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripEightHeightSeed

set_option autoImplicit false

namespace GRWTSK.RiemannHypothesis.Checks.SexticPrimitiveEightHeight
open Complex Set
open GRWTSK.RiemannHypothesis
open GRWTSK.RiemannHypothesis.CriticalStripHeightDescent
open CenteredMellin.SexticPrimitive
open scoped Topology
noncomputable section

-- Actual kernel proofs, including the centering constant and its two signs.
example {u : ℝ} (hu : 0 ≤ u) (hu1 : u ≤ 1) : |fifth u| ≤ (1 / 720 : ℝ) :=
  fifth_unit_bound hu hu1
example {u : ℝ} (hu : 0 ≤ u) (hu1 : u ≤ 1) :
    |sixthRaw u + 1 / 30240| ≤ (1 / 30240 : ℝ) := sixth_centered_unit_bound hu hu1
example : (∫ u : ℝ in (0 : ℝ)..1, sixthRaw u) = -(1 / 30240 : ℝ) := sixthRaw_unit_mean
example : sixthRaw 0 + 1 / 30240 = (1 / 30240 : ℝ) := by norm_num [sixthRaw]
example : sixthRaw (1 / 2) + 1 / 30240 = -(31 / 967680 : ℝ) := by norm_num [sixthRaw]
example : fifth (1 / 4) ≠ 0 := by norm_num [fifth]
example : sixthRaw (1 / 2) ≠ 0 := by norm_num [sixthRaw]

-- Both integration steps are concrete records, not new theorem hypotheses.
example : MellinPrimitiveStep.CellPrimitive quarticKernel fifthKernel := quarticToFifth
example : MellinPrimitiveStep.CellPrimitive fifthKernel sixthRawKernel := fifthToSixth
example (n : ℕ) : fifthCell n (n : ℝ) = 0 := quarticToFifth.left_zero n
example (n : ℕ) : sixthCell n ((n + 1 : ℕ) : ℝ) = 0 := fifthToSixth.right_zero n

example {N : ℕ} {s : ℂ} (hN : 1 ≤ N) (hs : 0 < s.re) :
    CenteredMellin.QuarticPrimitive.centeredTail N s =
      -(s + 4) * (N : ℂ) ^ (-(s + 5)) / 30240 + (s + 4) * (s + 5) * tail N s :=
  quartic_tail_identity hN hs

example {s : ℂ} (hs : 0 < s.re) :
    poleNormalizedZeta s = reference s - multiplier s * tail 1 s := source_identity hs
example : reference (1 : ℂ) = 1 := by norm_num [reference, quadraticFactor]
example : reference (-2 : ℂ) = 0 := by norm_num [reference]
-- The B6 correction cannot be dropped or attached to the old model unchanged.
example : finiteModel 1 (2 : ℂ) - CenteredMellin.QuarticPrimitive.finiteModel 1 2 = 1 / 42 := by
  norm_num [finiteModel, CenteredMellin.QuarticPrimitive.multiplier,
    CenteredMellin.CubicPrimitive.multiplier]

example (u v : ℝ) :
    CenteredMellin.QuarticPrimitive.SevenHeightCertificate.tensorValue
      EightHeightCertificate.coefficients u v =
        1024 * EightHeightCertificate.gap ((1 + u) / 2) (64 * v) :=
  EightHeightCertificate.tensor_identity u v

example {s : ℂ} (hx : (1 / 2 : ℝ) ≤ s.re) (hx1 : s.re ≤ 1) (hy : |s.im| ≤ (8 : ℝ)) :
    (65 / 3584 : ℝ) ≤ ‖poleNormalizedZeta s‖ := poleNormalized_norm_lower_eightHeight hx hx1 hy
example {z : ℂ} (hz : NontrivialZetaZero z) :
    (8 : ℝ) < |ZetaCommutatorRoot.root.heightAt z| := nontrivialZetaZero_height_gt_eight hz
example : WindowRH 8 := windowRH_eight
example : ShellRH 7 := shellRH_seven
-- Inhabit the PREVIOUS next-step port without changing its statement.
example : WindowRH 8 := CenteredMellin.QuarticPrimitive.window_eight_of_shell shellRH_seven

example {s : ℂ} {t : ℝ} (hx : (1 / 2 : ℝ) ≤ s.re) (hx1 : s.re ≤ 1) (hy : |s.im| ≤ (8 : ℝ))
    (ht : 0 ≤ t) (ht1 : t ≤ 1) : (65 / 3584 : ℝ) ≤ ‖deformation t s‖ :=
  deformation_norm_lower_eightHeight hx hx1 hy ht ht1
example {N : ℕ} {s : ℂ} (hN : 1 ≤ N) (hx : (1 / 2 : ℝ) ≤ s.re)
    (hx1 : s.re ≤ 1) (hy : |s.im| ≤ (8 : ℝ)) :
    ‖poleNormalizedZeta s - finiteModel N s‖ ≤
      (31 / 32 : ℝ) * ‖reference s‖ * (N : ℝ) ^ (-(s.re + 5)) :=
  finiteModel_relative_error_eightHeight hN hx hx1 hy

example : (1 - (31 / 32 : ℝ)) * (65 / 112) = 65 / 3584 := by norm_num
example : (0 : ℝ) < 65 / 3584 := by norm_num
example : EightHeightCertificate.gap (1 / 2) 81 < 0 := EightHeightCertificate.height_nine_gap_negative
-- Wrong homotopy interval or a non-strict reference/error comparison may cross zero.
example : (1 - (2 : ℂ) * (1 / 2)) = 0 := by norm_num
example : (1 - (1 : ℂ)) = 0 := by norm_num
example (h : ShellRH 8) : WindowRH 9 := window_nine_of_shell h
example (h : ∀ N : ℕ, 8 ≤ N → WindowRH N → ShellRH N) : _root_.RiemannHypothesis :=
  rh_of_above_eight h

end
end GRWTSK.RiemannHypothesis.Checks.SexticPrimitiveEightHeight
```
