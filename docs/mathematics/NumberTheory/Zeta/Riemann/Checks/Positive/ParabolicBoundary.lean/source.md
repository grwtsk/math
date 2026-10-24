# Complete source: GRWTSK.NumberTheory.Zeta.Riemann.Checks.Positive.ParabolicBoundary

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `579176f3daa3ac1f13e1d565ba237c0e54e78faa` · SHA-256 `ce628588b245e752398c3d1951ade148963f83ff073d4bbb6770c932cac70bae`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI. -/
import GRWTSK.NumberTheory.Zeta.Riemann.Checks.Positive.OneThirdGrid
import GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripTaperedBoundary

set_option autoImplicit false

namespace GRWTSK.RiemannHypothesis.Checks.ParabolicBoundaryChecks

open CriticalStripHeightDescent MellinParabolic

noncomputable section

example {s : ℂ} (hs : 0 < s.re) :
    ‖s - 1‖ < s.re ↔ s.im ^ 2 < 2 * s.re - 1 := factor_lt_re_iff hs

example {z : ℂ} (hz : NontrivialZetaZero z) :
    |2 * z.re - 1| ≤ ZetaCommutatorRoot.root.heightAt z ^ 2 :=
  target_parabolic_confinement hz

example : ∃ z : ℂ, |2 * z.re - 1| ≤ z.im ^ 2 ∧ z.re ≠ 1 / 2 :=
  parabolic_condition_does_not_force_line

example (s : ℂ) : unitHomotopy 0 s = 1 := unitHomotopy_zero s
example (s : ℂ) : unitHomotopy 1 s = fractionalMellinUnit s := unitHomotopy_one s
example (s : ℂ) : Continuous (fun t : ℝ => unitHomotopy t s) := unitHomotopy_continuous s

example {s : ℂ} (hs : 0 < s.re) (hp : s.im ^ 2 < 2 * s.re - 1) :
    DifferentiableAt ℂ (fun z => (unitHomotopy 1 z)⁻¹) s :=
  inverseUnit_differentiableAt hs hp

example {σ r t : ℝ} {s : ℂ} (hσ : 0 < σ) (hs : σ ≤ s.re)
    (hf : ‖s - 1‖ ≤ r) (hm : r < σ) (ht0 : 0 ≤ t) (ht1 : t ≤ 1) :
    unitHomotopy t s ≠ 0 := unitHomotopy_nonzero hσ hs hf hm ht0 ht1

example {s : ℂ} (hs : s ∈ rightBand (3 / 4) (1 / 2)) :
    (3 / 16 : ℝ) ≤ ‖poleNormalizedZeta s‖ := halfHeight_norm_lower hs

example {s : ℂ} (hs : s ∈ rightBand (7 / 8) (3 / 4)) :
    (3 / 32 : ℝ) ≤ ‖poleNormalizedZeta s‖ := threeQuarterHeight_norm_lower hs

example {T : ℝ} (hT : (1 / 2 : ℝ) ≤ T) (hT1 : T < 1)
    {s : ℂ} (hs : s ∈ rightBand ((1 + T) / 2) T) :
    3 * (1 - T) / 8 ≤ ‖poleNormalizedZeta s‖ :=
  tapered_norm_lower_by_height hT hT1 hs

-- This is a new covered point above the older uniform 1/3 seed, not a new full seed.
example : (3 / 16 : ℝ) ≤ ‖poleNormalizedZeta (⟨3 / 4, 1 / 2⟩ : ℂ)‖ :=
  halfHeight_norm_lower (by norm_num [rightBand])
example : ¬ (⟨3 / 4, 1 / 2⟩ : ℂ) ∈ oneThirdRightSeed := by
  norm_num [oneThirdRightSeed]

example {z : ℂ} (hz : NontrivialZetaZero z) (ht : |z.im| ≤ (1 / 2 : ℝ)) :
    (1 / 4 : ℝ) < z.re ∧ z.re < 3 / 4 := by
  simpa using target_avoids_tapered_bands (u := (1 / 4 : ℝ))
    (by norm_num) (by norm_num) hz (by simpa using ht)

example : WindowRH 1 ↔ NoTargetZero firstRemainder := window_one_iff_firstRemainder
example (h : FiniteVariationCover poleNormalizedZeta firstRemainder) : WindowRH 1 :=
  window_one_of_remaining_cover h

-- The equality case remains in the unproved target; it is not declared a zeta zero.
example : ∃ z ∈ firstRemainder, 2 * z.re - 1 = z.im ^ 2 :=
  firstRemainder_boundary_nonempty
example : (⟨5 / 8, 1 / 2⟩ : ℂ) ∈ firstRemainder := by norm_num [firstRemainder]

-- Exact Euclidean budgets; no square root approximation or complex evaluation.
example : (1 - (3 / 4 : ℝ)) ^ 2 + (1 / 2) ^ 2 < (9 / 16) ^ 2 := by norm_num
example : (1 - (7 / 8 : ℝ)) ^ 2 + (3 / 4) ^ 2 < (25 / 32) ^ 2 := by norm_num
example : (3 / 4 : ℝ) - 9 / 16 = 3 / 16 := by norm_num
example : (7 / 8 : ℝ) - 25 / 32 = 3 / 32 := by norm_num
example (u : ℝ) :
    (1 - 7 * u / 4) ^ 2 - (u ^ 2 + (1 - 2 * u) ^ 2) = u * (8 - 31 * u) / 16 := by ring

-- Allowing the homotopy parameter beyond [0,1] can cross zero despite |b|<1.
example : (1 - (2 : ℂ) * (1 / 2) : ℂ) = 0 := by norm_num
-- A non-strict norm budget does not provide a strict margin.
example : (1 - (1 : ℂ) : ℂ) = 0 := by norm_num
-- No fixed positive margin is provided at the limiting height.
example : (3 * (1 - 1) / 8 : ℝ) = 0 := tapered_endpoint_margin_zero

end

end GRWTSK.RiemannHypothesis.Checks.ParabolicBoundaryChecks
```
