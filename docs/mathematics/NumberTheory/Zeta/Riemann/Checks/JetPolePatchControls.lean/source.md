# Complete source: GRWTSK.NumberTheory.Zeta.Riemann.Checks.JetPolePatchControls

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `bb0a29f5d4275f0a5a05c268c04f84922fc1b598` · SHA-256 `6e2809d1a87f429704f851afd5c1436310bce6c431814fecd0dca0874efd3d45`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human research direction: grwtsk contributors. Proof drafting assistance: OpenAI ChatGPT.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Zeta.Riemann.RationalJetPolePatch
import GRWTSK.NumberTheory.Zeta.Riemann.Checks.ConstructedSourceControls

set_option autoImplicit false

/-!
# Controls for source-derivative transport and center-aware disk variation

Finite Lean decisions are source scripts, NOT executed certificates. The pilot
uses exactly the old center, source parameters and value ball. No complete
counting contour, successful regional count, or original-checker replacement.
SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.
-/
namespace GRWTSK.RiemannHypothesis.Checks.JetPolePatchControls

open GRWTSK.Analysis.ErrorBounds
open RationalComplexEnclosure RationalDyadicArithmetic
open CriticalStripHeightDescent ConstructedSourceControls

/-- A zero center-value residual contains no derivative-error information. -/
theorem pointwise_error_not_derivative_error :
    ‖(0 : ℂ) - 0‖ = 0 ∧
    ‖deriv (fun z : ℂ => z) 0 - deriv (fun _ : ℂ => (0 : ℂ)) 0‖ = 1 := by simp

/-- The full outer circle has a NONZERO allowance at the removed pole even
though the exact normalized residual vanishes at its center. -/
theorem pole_uniform_error_retained :
    RationalPoleNormalizedJet.sourceAllowance one 1 0 = 0 ∧
    RationalPoleJet.uniformError one (1/2) poleParameters = 65/32 ∧
    (RationalPoleValue.finiteJet one poleParameters).2 = ⟨(9/16,0),1/16⟩ ∧
    RationalPoleJet.derivativeBall one (1/2) poleParameters = ⟨(9/16,0),33/8⟩ := by decide

theorem pole_jet_checked : RationalPoleJet.check one (1/2) poleParameters = true := by decide

/-- Not an exact derivative value: the source enclosure retains radius 33/8. -/
theorem pole_derivative_enclosed :
    Holds (⟨(9/16,0),33/8⟩ : Ball) (deriv poleNormalizedZeta (toComplex one)) := by
  have h := RationalPoleJet.derivativeBall_sound pole_jet_checked
  simpa only [pole_uniform_error_retained.2.2.2] using h

/-- This coarse finite jet is worse; the proven old Cauchy slope wins the minimum. -/
theorem pole_fallback_and_strict_equality :
    RationalJetPolePatch.jetSlope one (1/10) (1/2) poleParameters = 135/16 ∧
    RationalJetPolePatch.selectedSlope one (1/10) (1/2) poleParameters = 15/2 ∧
    RationalJetPolePatch.check one (1/10) (1/2) poleParameters = true ∧
    RationalJetPolePatch.imageRadius one (1/8) (1/2) poleParameters = 1 ∧
    RationalJetPolePatch.check one (1/8) (1/2) poleParameters = false := by decide

/-- A larger true zero-free region may exist even when this sufficient guard fails. -/
theorem rejected_pole_disk_is_still_nonzero :
    ∀ z ∈ Metric.closedBall (1 : ℂ) (1/8 : ℝ), poleNormalizedZeta z ≠ 0 := by
  intro z hz
  have hr : ‖z-1‖ ≤ (1/5 : ℝ) := by
    have h : ‖z-1‖ ≤ (1/8 : ℝ) := by simpa only [Metric.mem_closedBall, dist_eq_norm] using hz
    linarith
  have hn := PoleNormalizedContourBounds.pole_collar_lower hr
  intro hzero
  rw [hzero, norm_zero] at hn
  norm_num at hn

/-- Positive radius and strict half-plane containment precede analytic use. -/
theorem invalid_outer_disks :
    RationalPoleJet.check pilotCenter 0 pilotParameters = false ∧
    RationalPoleJet.check pilotCenter (-1) pilotParameters = false ∧
    RationalPoleJet.check pilotCenter (1/4) pilotParameters = false ∧
    RationalJetPolePatch.check one (-1/10) (1/2) poleParameters = false ∧
    RationalJetPolePatch.check one (1/2) (1/2) poleParameters = false := by decide

def curved (z : ℂ) : ℂ := 1 - 4*z^2

theorem curved_derivative (z : ℂ) : HasDerivAt curved (-8*z) z := by
  convert (((hasDerivAt_id z).pow 2).const_mul (4 : ℂ)).const_sub 1 using 1 <;>
    dsimp [curved] <;> ring

/-- Exact center derivative zero does NOT exclude a root elsewhere in the disk. -/
theorem curvature_cannot_be_discarded :
    curved 0 = 1 ∧ deriv curved 0 = 0 ∧ curved (1/2) = 0 := by
  rw [(curved_derivative 0).deriv]
  norm_num [curved]

/-- No new candidate constants: this is the inherited target-side pilot. -/
theorem pilot_jet_checked : RationalPoleJet.check pilotCenter (1/8) pilotParameters = true := by
  decide

theorem pilot_derivative_precision :
    (RationalPoleJet.derivativeBall pilotCenter (1/8) pilotParameters).rad < (1/10^16 : ℚ) := by
  decide

/-- Same value ball and outer radius; the old patch fails but the new one passes. -/
theorem pilot_radius_gain :
    RationalPolePatch.check pilotCenter (1/400) (1/8)
      (RationalPoleValue.valueBall pilotCenter pilotParameters) = false ∧
    RationalJetPolePatch.check pilotCenter (1/400) (1/8) pilotParameters = true ∧
    RationalJetPolePatch.check pilotCenter (1/200) (1/8) pilotParameters = false := by decide

/-- This ONE disk is 25 times the previously exhibited radius 1/10000.
It is not a complete contour, an optimal radius, or a regional upper count. -/
theorem pilot_larger_disk_nonzero :
    ∀ z ∈ Metric.closedBall (toComplex pilotCenter) (1/400 : ℝ), poleNormalizedZeta z ≠ 0 :=
  RationalJetPolePatch.check_sound pilot_radius_gain.2.1

/-- Exact budgets in a synthetic example: the nonlinear contribution cannot
be dropped simply because the center derivative is zero. -/
theorem quadratic_budget_control :
    (0 + (2 * (2 : ℚ) / (1 - 1/4)^2) * (1/4)) * (1/4) = 4/9 ∧
    (0 : ℚ) < 4/9 := by norm_num

end GRWTSK.RiemannHypothesis.Checks.JetPolePatchControls
```
