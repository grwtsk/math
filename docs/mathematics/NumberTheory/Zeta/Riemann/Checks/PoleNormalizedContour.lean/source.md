# Complete source: GRWTSK.NumberTheory.Zeta.Riemann.Checks.PoleNormalizedContour

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e0a2cb639cd5546581130b553642428cb726603f` · SHA-256 `7e802666623e77823ac6c9847db49a1089311e79485d3d36f6b852a04f87a31c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human research direction: grwtsk contributors. Proof drafting assistance: OpenAI ChatGPT.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Zeta.Riemann.RationalPolePatch

set_option autoImplicit false

/-!
# Controls for the actual normalized source, singular arithmetic and strict margins

Synthetic point data that pass a finite guard are explicitly separated from an
actual-source enclosure. No contour, complete upper count or zero inventory is
asserted. All decisions and all inherited proof scripts are unexecuted.
SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.
-/
namespace GRWTSK.RiemannHypothesis.Checks.PoleNormalizedContour

open GRWTSK.Analysis.ErrorBounds
open RationalComplexEnclosure RationalDyadicArithmetic
open CriticalStripHeightDescent

/-- The finite normalized model is linear in this small control, even at one. -/
theorem model_one_base (s : ℂ) :
    PoleNormalizedEndpointJet.model 1 0 s = (s + 1) / 2 := by
  simp [PoleNormalizedEndpointJet.model, PoleNormalizedEndpointJet.coefficient,
    PoleNormalizedEndpointJet.regular, finiteDirichletPowerSum] <;> ring

theorem derivative_at_removed_pole :
    deriv (PoleNormalizedEndpointJet.model 1 0) 1 = (1 / 2 : ℂ) := by
  have he : PoleNormalizedEndpointJet.model 1 0 = fun s : ℂ => (s + 1) / 2 :=
    funext model_one_base
  rw [he]
  simpa using (((hasDerivAt_id (1 : ℂ)).add_const 1).div_const 2).deriv

theorem raw_product_spurious_zero :
    ((1 : ℂ) - 1) * EndpointCorrectedJet.model 1 0 1 = 0 ∧
    PoleNormalizedEndpointJet.model 1 0 1 = 1 ∧ poleNormalizedZeta 1 = 1 := by
  simp [PoleNormalizedEndpointJet.model_one (by decide : 1 ≤ (1 : ℕ))]

/-- The coefficient does not obtain a removable value by totalized division. -/
theorem rational_pole_jet :
    RationalPoleNormalizedJet.coefficientJet one 1 0 = (one, (-1 / 2, 0)) ∧
    RationalPoleNormalizedJet.coefficientJet one 1 1 = (one, (-5 / 12, 0)) := by decide

theorem sourced_pole_value : Holds (RationalEndpointJet.point one) (poleNormalizedZeta (toComplex one)) := by
  simp [RationalEndpointJet.point, Holds]

/-- C=3 and M=15/2: the complete margin at this exact source point is 1/4. -/
theorem rational_patch_passes :
    RationalPolePatch.sourceBound one (1 / 2) = 3 ∧
    RationalPolePatch.slopeBound one (1 / 10) (1 / 2) = 15 / 2 ∧
    RationalPolePatch.check one (1 / 10) (1 / 2) (RationalEndpointJet.point one) = true := by decide

theorem actual_closed_disk_nonzero :
    ∀ z ∈ Metric.closedBall (1 : ℂ) (1 / 10 : ℝ), poleNormalizedZeta z ≠ 0 := by
  simpa using RationalPolePatch.check_sound rational_patch_passes.2.2 sourced_pole_value

/-- At radius 1/8 this sufficient Cauchy margin is equality, not strict separation. -/
theorem equality_margin_rejected :
    RationalPolePatch.slopeBound one (1 / 8) (1 / 2) * (1 / 8) = 1 ∧
    RationalPolePatch.check one (1 / 8) (1 / 2) (RationalEndpointJet.point one) = false := by decide

/-- Rejection by a conservative bound is not proof that an actual zero exists. -/
theorem rejected_disk_still_nonzero :
    ∀ z ∈ Metric.closedBall (1 : ℂ) (1 / 8 : ℝ), poleNormalizedZeta z ≠ 0 := by
  intro z hz hzero
  have hd : ‖z - 1‖ ≤ (1 / 5 : ℝ) := by
    have h : ‖z - 1‖ ≤ (1 / 8 : ℝ) := by simpa only [Metric.mem_closedBall, dist_eq_norm] using hz
    linarith
  have h := PoleNormalizedContourBounds.pole_collar_lower hd
  rw [hzero, norm_zero] at h
  norm_num at h

theorem invalid_geometry_rejected :
    RationalPolePatch.check one (1 / 10) (1 / 10) (RationalEndpointJet.point one) = false ∧
    RationalPolePatch.check one (1 / 10) 1 (RationalEndpointJet.point one) = false ∧
    RationalPolePatch.check one (-1 / 10) (1 / 2) (RationalEndpointJet.point one) = false ∧
    RationalPolePatch.check one (1 / 10) (1 / 2) ⟨one, -1⟩ = false := by decide

/-- Arithmetic acceptance with false source data is NOT an analytic certificate. -/
theorem fictitious_pole_value_passes :
    RationalPolePatch.check one (1 / 10) (1 / 2) (RationalEndpointJet.point (2, 0)) = true := by decide

theorem fictitious_pole_value_has_no_enclosure :
    ¬ Holds (RationalEndpointJet.point (2, 0)) (poleNormalizedZeta (toComplex one)) := by
  norm_num [Holds, RationalEndpointJet.point, toComplex]

/-- L1 majorant 7/5 is NOT a sample lower bound for this norm-one point. -/
theorem norm_lower_not_upper :
    RationalPolePatch.sampleLower (3 / 5, 4 / 5) = 4 / 5 ∧
    RationalNewtonDisk.magnitude (3 / 5, 4 / 5) = 7 / 5 ∧
    squareNorm (3 / 5, 4 / 5) = 1 := by decide

/-- Nonzero endpoints do not certify a nonzero path between them. -/
theorem endpoints_alone_do_not_cover :
    (fun z : ℂ => z) (-1) ≠ 0 ∧ (fun z : ℂ => z) 1 ≠ 0 ∧ (fun z : ℂ => z) 0 = 0 := by norm_num

end GRWTSK.RiemannHypothesis.Checks.PoleNormalizedContour
```
