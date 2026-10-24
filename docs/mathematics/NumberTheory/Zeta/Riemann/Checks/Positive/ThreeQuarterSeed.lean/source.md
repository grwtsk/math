# Complete source: GRWTSK.NumberTheory.Zeta.Riemann.Checks.Positive.ThreeQuarterSeed

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `4f51a8e1cdb50e55e63595efb61f5a76788cbf21` · SHA-256 `1a938162cdc06624d8ce8f5e907d630276da2cd14a6f975717cd5effd80b49c8`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripThreeQuarterSeed

set_option autoImplicit false

namespace GRWTSK.RiemannHypothesis.Checks.ThreeQuarterSeed

open Complex Set
open CriticalStripHeightDescent CriticalStripHeightDescent.CenteredMellin

noncomputable section

example (t : ℝ) : |kernel t| ≤ (1 / 2 : ℝ) := kernel_abs_le t

example {s : ℂ} (hs : 0 < s.re) :
    value s = fractionalMellin s - (1 / 2 : ℂ) / s := value_eq_sub hs

example {s : ℂ} (hs : 0 < s.re) :
    DifferentiableAt ℂ value s := value_differentiableAt hs

example {T σ : ℝ} {s : ℂ} (hT : 1 ≤ T) (hσ : 0 < σ) (hs : σ ≤ s.re) :
    ‖tail T s‖ ≤ T ^ (-σ) / (2 * σ) := tail_norm_le hT hσ hs

example {s : ℂ} (hs : 0 < s.re) :
    poleNormalizedZeta s = (s + 1) / 2 - s * (s - 1) * value s := source_identity hs

example {N : ℕ} {σ : ℝ} {s : ℂ} (hN : 1 ≤ N) (hσ : 0 < σ) (hs : σ ≤ s.re) :
    ‖poleNormalizedZeta s - finiteModel N s‖ ≤
      ‖s‖ * ‖s - 1‖ * ((N : ℝ) ^ (-σ) / (2 * σ)) := finiteModel_error hN hσ hs

-- The new finite model is not the old one with a better bound pasted onto it.
example : finitePowerPoleModel 1 (2 : ℂ) = 2 := finitePowerPoleModel_cutoff_one 2
example : finiteModel 1 (2 : ℂ) = 3 / 2 := by rw [finiteModel_cutoff_one]; norm_num
example : finiteModel 1 (2 : ℂ) ≠ finitePowerPoleModel 1 (2 : ℂ) := by
  rw [finiteModel_cutoff_one, finitePowerPoleModel_cutoff_one]
  norm_num
example (N : ℕ) : finiteModel N 1 = 1 := finiteModel_at_one N

example (s : ℂ) :
    (s.re * ‖s + 1‖) ^ 2 - (‖s‖ * ‖s - 1‖) ^ 2 = quarticGap s.re s.im :=
  quarticGap_norm_identity s

example : quarticGap (1 / 2) (3 / 4) = (11 / 256 : ℝ) := by norm_num [quarticGap]
example : quarticGap (1 / 2) (1 : ℝ) = -(3 / 4 : ℝ) := by norm_num [quarticGap]

example {s : ℂ} (hx : (1 / 2 : ℝ) ≤ s.re) (hx1 : s.re ≤ 1)
    (hy : |s.im| ≤ (3 / 4 : ℝ)) : (1 / 256 : ℝ) ≤ ‖poleNormalizedZeta s‖ :=
  poleNormalized_norm_lower_threeQuarter hx hx1 hy

example {z : ℂ} (hz : NontrivialZetaZero z) :
    (3 / 4 : ℝ) < |ZetaCommutatorRoot.root.heightAt z| :=
  nontrivialZetaZero_height_gt_three_quarters hz

example : NoTargetZero {z : ℂ |
    |ZetaCommutatorRoot.root.heightAt z| ≤ (3 / 4 : ℝ)} := noTargetZero_threeQuarter_seed

example {z : ℂ} (hz : NontrivialZetaZero z) : quarticGap z.re z.im ≤ 0 :=
  target_quartic_constraint hz

example {s : ℂ} {t : ℝ} (hx : (1 / 2 : ℝ) ≤ s.re) (hx1 : s.re ≤ 1)
    (hy : |s.im| ≤ (3 / 4 : ℝ)) (ht : 0 ≤ t) (ht1 : t ≤ 1) :
    (1 / 256 : ℝ) ≤ ‖deformation t s‖ := deformation_norm_lower hx hx1 hy ht ht1

example (s : ℂ) : Continuous (fun t : ℝ => deformation t s) := deformation_continuous s
example (t : ℝ) {s : ℂ} (hs : 0 < s.re) :
    DifferentiableAt ℂ (deformation t) s := deformation_differentiableAt t hs

example : WindowRH 1 ↔ NoTargetZero firstWindowRemainder := window_one_iff_centered_remainder
example (h : FiniteVariationCover poleNormalizedZeta firstWindowRemainder) : WindowRH 1 :=
  window_one_of_centered_remainder_cover h

-- Top height and genuinely off-line ambient points remain in the unproved target.
example : firstWindowRemainder.Nonempty := centered_remainder_nonempty
example : (⟨5 / 8, 1⟩ : ℂ) ∈ firstWindowRemainder := by
  norm_num [firstWindowRemainder, MellinParabolic.firstRemainder, quarticGap]
example : quarticGap (5 / 8) (1 : ℝ) = -(21 / 128 : ℝ) := by norm_num [quarticGap]

-- A vanishing affine-reference separation at an arbitrary model does not prove nonzero.
example : (1 - (1 : ℂ)) = 0 := by norm_num
-- The centered kernel is signed: it is negative at each positive integer.
example : kernel (1 : ℝ) = -(1 / 2 : ℝ) := by
  norm_num [kernel, realFractionalKernel]
-- A reciprocal bound cannot be invoked at sigma=0.
example : ¬ (0 < (0 : ℝ)) := by norm_num
-- New seed improves the old full strip but remains short of a natural-height window.
example : (1 / 3 : ℝ) < 3 / 4 ∧ (3 / 4 : ℝ) < 1 := by norm_num

end

end GRWTSK.RiemannHypothesis.Checks.ThreeQuarterSeed
```
