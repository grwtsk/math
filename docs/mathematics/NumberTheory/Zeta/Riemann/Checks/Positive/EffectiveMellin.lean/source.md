# Complete source: GRWTSK.NumberTheory.Zeta.Riemann.Checks.Positive.EffectiveMellin

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `4548c2d4bdeb31d467f8a3f7875513e685dadfdc` · SHA-256 `50ff70a70270f9ee444c07a5f061e36a688b8719fc6325a88362811cf19a6c89`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Zeta.Riemann.Checks.Positive.RealAxisMellin
import GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripEffectiveSeed

set_option autoImplicit false

namespace GRWTSK.RiemannHypothesis.Checks.EffectiveMellin

open CriticalStripHeightDescent Filter
open scoped Topology

example {T : ℝ} {s : ℂ} (hT : 1 ≤ T) (hs : 0 < s.re) :
    fractionalMellin s = fractionalMellinTruncation T s + fractionalMellinTail T s :=
  fractionalMellin_split hT hs

example {T σ : ℝ} {s : ℂ} (hT : 1 ≤ T) (hσ : 0 < σ) (hs : σ ≤ s.re) :
    ‖fractionalMellinTail T s‖ ≤ T ^ (-σ) / σ :=
  fractionalMellinTail_norm_le hT hσ hs

example {T : ℝ} {s : ℂ} (hT : 1 ≤ T) (hs : 0 < s.re) :
    poleNormalizedZeta s - truncatedPoleModel T s =
      -(s * (s - 1)) * fractionalMellinTail T s :=
  poleNormalized_truncation_residual hT hs

example {σ : ℝ} (hσ : 0 < σ) (B : ℝ) :
    Tendsto (fun n : ℕ => B * (B + 1) * (((n : ℝ) + 1) ^ (-σ) / σ))
      atTop (𝓝 0) := truncation_majorant_tendsto_zero hσ B

example {s : ℂ} (hs : (1 / 2 : ℝ) ≤ s.re) :
    ‖deriv fractionalMellin s‖ ≤ 16 := fractionalMellin_deriv_norm_le_sixteen hs

example {s : ℂ} (hs : (1 / 2 : ℝ) ≤ s.re) :
    ‖fractionalMellin s - fractionalMellin (s.re : ℂ)‖ ≤ 16 * |s.im| :=
  fractionalMellin_vertical_variation hs

-- No positive-height supplier premise occurs in this declaration.
example {z : ℂ} (hz : NontrivialZetaZero z) :
    (1 / 16 : ℝ) < |ZetaCommutatorRoot.root.heightAt z| :=
  nontrivialZetaZero_height_gt_one_sixteenth hz

example : NoTargetZero
    {z : ℂ | |ZetaCommutatorRoot.root.heightAt z| ≤ (1 / 16 : ℝ)} :=
  noTargetZero_effective_seed

example {F : ℂ → ℂ} {s a : ℂ} {ε : ℝ}
    (hz : F s = 0) (he : ‖F s - a‖ ≤ ε) : ¬ ε < ‖a‖ :=
  no_strict_sample_margin_at_zero hz he

-- The global endpoint still requires every source-bound interior patch cover.
example
    (covers : ∀ N m : ℕ, FiniteVariationCover poleNormalizedZeta
      (rightInteriorShell N m (selectedRightBoundaryCollar N).width)) :
    _root_.RiemannHypothesis := rh_of_selected_interior_covers covers

end GRWTSK.RiemannHypothesis.Checks.EffectiveMellin
```
