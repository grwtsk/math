# Complete source: GRWTSK.NumberTheory.Zeta.Riemann.Checks.Positive.CutoffFourFourteenHeight

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `44a3e37a8cdff61fa86058b380137d898fc0e8c4` · SHA-256 `9a374647eabdc54f7254754a7cae6b82727b56ae8b4d308153eac1138d88bcb5`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripFourteenHeightSeed

set_option autoImplicit false

/-! Source-only regression fixtures. No Lean evaluation or audit has occurred. -/
namespace GRWTSK.RiemannHypothesis.Checks.CutoffFourFourteenHeight
open Complex CriticalStripHeightDescent
open CriticalStripHeightDescent.CenteredMellin.SexticPrimitive
open CutoffFour
noncomputable section

example (k : Fin 3) : |Real.log (FourteenJet.base k) - FourteenJet.logCenter k| ≤ (1 / 1048576 : ℝ) :=
  FourteenJet.log_encloses k
example (k : Fin 3) : ‖(FourteenJet.base k : ℂ) ^ (-FourteenJet.center) - FourteenJet.sample k‖ ≤ (1 / 16384 : ℝ) :=
  FourteenJet.sample_encloses k
example (k : Fin 3) {s : ℂ} (h : ‖s - FourteenJet.center‖ ≤ (3 / 4 : ℝ)) :
    ‖(FourteenJet.base k : ℂ) ^ (-s) - FourteenJet.jet k s‖ ≤ (1 / 2048 : ℝ) := FourteenJet.jet_encloses k h
example {s : ℂ} (h : Band s) : ‖poleNormalizedZeta s - model s‖ ≤ (7 / 16 : ℝ) := source_model_error h
example {s : ℂ} (h : Band s) : (3 / 2 : ℝ) ≤ (model s).re + (model s).im := Certificate.model_projection_lower h
example {s : ℂ} (h : Band s) : (5 / 16 : ℝ) ≤ ‖poleNormalizedZeta s‖ := poleNormalized_norm_lower_fourteenBand h
example : ShellRH 13 := shellRH_thirteen
example : WindowRH 14 := windowRH_fourteen
-- This explicitly instantiates the PREVIOUS next-step port.
example : WindowRH 14 := CutoffTwo.window_fourteen_of_shell shellRH_thirteen
example {z : ℂ} (hz : NontrivialZetaZero z) :
    (14 : ℝ) < |ZetaCommutatorRoot.root.heightAt z| := nontrivialZetaZero_height_gt_fourteen hz
example : NoTargetZero {z : ℂ | |ZetaCommutatorRoot.root.heightAt z| ≤ (14 : ℝ)} := noTargetZero_fourteenHeight

example : Band (⟨1 / 2, 13⟩ : ℂ) := by norm_num [Band]
example : Band (⟨1, 14⟩ : ℂ) := by norm_num [Band]
example : ¬ Band (⟨1 / 2, 15⟩ : ℂ) := by norm_num [Band]
example : ¬ Band (⟨1 / 2, -14⟩ : ℂ) := by norm_num [Band]
-- Negative-height zero exclusion is obtained by an actual zero symmetry,
-- not by applying the positive-band polynomial or claiming equal H norms.
example : FourteenJet.base 0 = 2 ∧ FourteenJet.base 1 = 3 ∧ FourteenJet.base 2 = 4 := by norm_num [FourteenJet.base]
example : (25 / 1024 : ℝ) = (15 + 15 + 20) / 2048 := by norm_num
example : (2 / 5 : ℝ) + 25 / 1024 ≤ 7 / 16 := by norm_num
example : (3 / 2 : ℝ) - 2 * (7 / 16) = 5 / 8 := by norm_num
example : (5 / 8 : ℝ) / 2 = 5 / 16 := by norm_num
-- Omitting the source-error bridge is unsound, even with a positive model projection.
example : ((1 : ℂ) + I).re + ((1 : ℂ) + I).im ≥ (3 / 2 : ℝ) := by norm_num
example : ‖(0 : ℂ)‖ = 0 := norm_zero
-- A merely nonnegative final margin cannot exclude zero.
example : (3 / 2 : ℝ) - 2 * (3 / 4) = 0 := by norm_num

example {s : ℂ} {t : ℝ} (hs : Band s) (ht : 0 ≤ t) (ht1 : t ≤ 1) :
    (5 / 16 : ℝ) ≤ ‖CutoffFour.deformation t s‖ := deformation_norm_lower hs ht ht1
example (s : ℂ) : CutoffTwo.deformation 1 s = CutoffFour.deformation 1 s := old_new_endpoint s
example (h : ShellRH 14) : WindowRH 15 := window_fifteen_of_shell h
example (h : ∀ N : ℕ, 14 ≤ N → WindowRH N → ShellRH N) : _root_.RiemannHypothesis := rh_of_above_fourteen h
end
end GRWTSK.RiemannHypothesis.Checks.CutoffFourFourteenHeight
```
