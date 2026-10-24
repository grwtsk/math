# Complete source: GRWTSK.NumberTheory.Zeta.Riemann.Checks.Positive.QuadraticPrimitiveSeed

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `53920ff29868d83b5c8db337e0c31388e074ad39` · SHA-256 `e46be099178a3447bb81fa68764e81b26475a12759953933714d84f98d0cfa99`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripTwoHeightSeed

set_option autoImplicit false

namespace GRWTSK.RiemannHypothesis.Checks.QuadraticPrimitiveSeed

open Complex Set
open GRWTSK.RiemannHypothesis
open GRWTSK.RiemannHypothesis.CriticalStripHeightDescent
open CenteredMellin.QuadraticPrimitive

noncomputable section

example (t : ℝ) : -(1 / 8 : ℝ) ≤ realKernel t ∧ realKernel t ≤ 0 := realKernel_bounds t
example (N : ℕ) : kernel (N : ℝ) = 0 := kernel_nat N
example (n : ℕ) : cell n (n : ℝ) = 0 := cell_left n
example (n : ℕ) : cell n ((n + 1 : ℕ) : ℝ) = 0 := cell_right n

-- Noninteger cutoff: the boundary primitive is actually nonzero.
example : kernel (3 / 2 : ℝ) = -(1 / 8 : ℂ) := by
  norm_num [kernel, realKernel, realFractionalKernel]

-- The closed cells meet in value, but their polynomial first derivatives differ.
example : ((2 : ℂ) - 1 - 1 / 2) = 1 / 2 := by norm_num
example : ((2 : ℂ) - 2 - 1 / 2) = -(1 / 2) := by norm_num
example : (1 / 2 : ℂ) ≠ -(1 / 2) := by norm_num

example {N : ℕ} {s : ℂ} (hN : 1 ≤ N) (hs : 0 < s.re) :
    (∫ t : ℝ in (N : ℝ)..((N + 1 : ℕ) : ℝ), CenteredMellin.integrand s t) =
      (s + 1) * ∫ t : ℝ in (N : ℝ)..((N + 1 : ℕ) : ℝ), integrand s t :=
  cell_integral_identity hN hs

example {s : ℂ} (hs : 0 < s.re) : CenteredMellin.value s = (s + 1) * tail 1 s :=
  value_identity hs

example {N : ℕ} {s : ℂ} (hN : 1 ≤ N) (hs : 0 < s.re) :
    CenteredMellin.tail N s = (s + 1) * tail N s := integer_tail_identity hN hs

example {N : ℕ} {σ : ℝ} {s : ℂ} (hN : 1 ≤ N) (hσ : 0 < σ) (hs : σ ≤ s.re) :
    ‖poleNormalizedZeta s - CenteredMellin.finiteModel N s‖ ≤
      ‖s‖ * ‖s - 1‖ * ‖s + 1‖ *
        ((N : ℝ) ^ (-(σ + 1)) / (8 * (σ + 1))) := finiteModel_error_improved hN hσ hs

example {s : ℂ} (hx : (1 / 2 : ℝ) ≤ s.re) (hx1 : s.re ≤ 1) (hy : |s.im| ≤ (2 : ℝ)) :
    (1 / 8 : ℝ) ≤ ‖poleNormalizedZeta s‖ := poleNormalized_norm_lower_twoHeight hx hx1 hy

example {z : ℂ} (hz : NontrivialZetaZero z) :
    (2 : ℝ) < |ZetaCommutatorRoot.root.heightAt z| := nontrivialZetaZero_height_gt_two hz

-- These consume no extra base, arithmetic sample, analytic patch, or cover premise.
example : WindowRH 1 := windowRH_one
example : WindowRH 2 := windowRH_two
example : ShellRH 0 := shellRH_zero
example : ShellRH 1 := shellRH_one
example : NoTargetZero CenteredMellin.firstWindowRemainder := noTargetZero_previousRemainder

example {s : ℂ} {t : ℝ} (hx : (1 / 2 : ℝ) ≤ s.re) (hx1 : s.re ≤ 1)
    (hy : |s.im| ≤ (2 : ℝ)) (ht : 0 ≤ t) (ht1 : t ≤ 1) :
    (1 / 8 : ℝ) ≤ ‖CenteredMellin.deformation t s‖ :=
  deformation_norm_lower_twoHeight hx hx1 hy ht ht1

-- The global conclusion still has an all-higher-shell premise.
example (hstep : ∀ N : ℕ, 2 ≤ N → WindowRH N → ShellRH N) : _root_.RiemannHypothesis :=
  rh_of_above_two hstep

-- Bounds and height must not be silently strengthened.
example : (5 : ℝ) * (17 / 4) < 5 ^ 2 := by norm_num
example : (1 / 2 : ℝ) - 5 / 12 = 1 / 12 := by norm_num
example : (3 / 2 : ℝ) * (1 / 12) = 1 / 8 := by norm_num
example : (3 / 4 : ℝ) < 2 := by norm_num
example : (2 : ℝ) < 3 := by norm_num
example : 0 < (8 * ((1 / 2 : ℝ) + 1)) := by norm_num
example : ¬ (1 : ℕ) ≤ 0 := by decide
example : ¬ (0 : ℝ) < 0 := by norm_num
example : ∃ z : ℂ, (2 : ℝ) < |z.im| ∧ z.re ≠ 1 / 2 := twoHeight_not_global

end
end GRWTSK.RiemannHypothesis.Checks.QuadraticPrimitiveSeed
```
