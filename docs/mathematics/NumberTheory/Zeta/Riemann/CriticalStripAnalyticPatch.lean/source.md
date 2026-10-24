# Complete source: GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripAnalyticPatch

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6ece442dcd48c7411e5fe3ff63f613da93640c10` · SHA-256 `a1a637c1185ffc5fed3b260dbf4bea14db51c8063d1f63560ac5d65ec1b8343c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI Codex.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripPatchCertificate
import Mathlib.Analysis.Calculus.MeanValue

set_option autoImplicit false

/-!
# Analytic producers for source-exact nonvanishing patches

The prior sample/variation interface required a whole-region variation theorem.
This module derives such a theorem from an actual complex derivative bound on a
convex region. A certified sample enclosure contributes its own error. It also
provides a quadratic Taylor producer and an explicit uniform-model error port.
No derivative bound, Taylor remainder, or zeta sample enclosure is fabricated.
These constructions are pure mathematical certificates, not an interval checker.
-/

namespace GRWTSK.RiemannHypothesis.CriticalStripHeightDescent

noncomputable section

/-- A sample approximation is not an exact function value. The uncertainty is charged
once when transferring its lower bound to the same source function at the center. -/
theorem sample_lower_of_enclosure {F : ℂ → ℂ} {c a : ℂ} {b δ : ℝ}
    (hsample : b ≤ ‖a‖) (henclosure : ‖F c - a‖ ≤ δ) :
    b - δ ≤ ‖F c‖ := by
  have htriangle : ‖a‖ ≤ ‖F c‖ + ‖F c - a‖ := by
    calc
      ‖a‖ = ‖F c - (F c - a)‖ := by congr 1; abel
      _ ≤ ‖F c‖ + ‖F c - a‖ := norm_sub_le _ _
  linarith

namespace SampleVariationPatch

/-- Derive uniform variation by the complex mean-value inequality on an actual
real-convex ambient region. Convexity of a drawing or a derivative sample is not enough. -/
def ofDerivativeEnclosure {F : ℂ → ℂ} {U V : Set ℂ} (c a : ℂ)
    (b δ M r : ℝ) (_hδ : 0 ≤ δ) (hM : 0 ≤ M) (hr : 0 ≤ r)
    (hconv : Convex ℝ V) (hc : c ∈ V) (hUV : U ⊆ V)
    (hF : ∀ z ∈ V, DifferentiableAt ℂ F z)
    (hderiv : ∀ z ∈ V, ‖deriv F z‖ ≤ M)
    (hradius : ∀ z ∈ U, ‖z - c‖ ≤ r)
    (hsample : b ≤ ‖a‖) (henclosure : ‖F c - a‖ ≤ δ)
    (hmargin : δ + M * r < b) : SampleVariationPatch F U where
  center := c
  lower := b - δ
  error := M * r
  error_nonneg := mul_nonneg hM hr
  sample_lower := sample_lower_of_enclosure hsample henclosure
  variation := by
    intro z hz
    exact (Convex.norm_image_sub_le_of_norm_deriv_le hF hderiv hconv hc (hUV hz)).trans
      (mul_le_mul_of_nonneg_left (hradius z hz) hM)
  strict_margin := by linarith

/-- Quantitative transport from a model P to the same consumed source F. The model
error is charged once in a nonvanishing conclusion, without claiming an exact equality
or unnecessarily converting it into a center-to-center variation error. -/
theorem source_norm_lower {P F : ℂ → ℂ} {U : Set ℂ}
    (patch : SampleVariationPatch P U) {δ : ℝ}
    (hmodel : ∀ z ∈ U, ‖F z - P z‖ ≤ δ) {z : ℂ} (hz : z ∈ U) :
    patch.lower - patch.error - δ ≤ ‖F z‖ := by
  have hbase := patch.value_norm_lower hz
  have herror := hmodel z hz
  have htriangle : ‖P z‖ ≤ ‖F z‖ + ‖F z - P z‖ := by
    calc
      ‖P z‖ = ‖F z - (F z - P z)‖ := by congr 1; abel
      _ ≤ ‖F z‖ + ‖F z - P z‖ := norm_sub_le _ _
  linarith

/-- Model positivity transfers only with a strict, source-uniform error margin. -/
theorem source_nonzero {P F : ℂ → ℂ} {U : Set ℂ}
    (patch : SampleVariationPatch P U) {δ : ℝ}
    (hmodel : ∀ z ∈ U, ‖F z - P z‖ ≤ δ)
    (hmargin : patch.error + δ < patch.lower) {z : ℂ} (hz : z ∈ U) :
    F z ≠ 0 := by
  intro hz0
  have hbound := patch.source_norm_lower hmodel hz
  rw [hz0, norm_zero] at hbound
  linarith

end SampleVariationPatch

/-- A quadratic polynomial in one declared local coordinate, before any assertion that
its coefficients are the derivatives of an analytic source. -/
def quadraticLocalModel (c a₀ a₁ a₂ z : ℂ) : ℂ :=
  a₀ + a₁ * (z - c) + a₂ * (z - c) ^ 2

/-- Exact finite coefficient estimate. The nonnegative radius and square are retained. -/
theorem quadraticLocalModel_variation {c a₀ a₁ a₂ z : ℂ} {r : ℝ}
    (hr : 0 ≤ r) (hz : ‖z - c‖ ≤ r) :
    ‖quadraticLocalModel c a₀ a₁ a₂ z - a₀‖ ≤
      ‖a₁‖ * r + ‖a₂‖ * r ^ 2 := by
  have hsq : ‖z - c‖ ^ 2 ≤ r ^ 2 := by nlinarith [norm_nonneg (z - c)]
  have heq : quadraticLocalModel c a₀ a₁ a₂ z - a₀ =
      a₁ * (z - c) + a₂ * (z - c) ^ 2 := by
    unfold quadraticLocalModel
    ring
  rw [heq]
  calc
    ‖a₁ * (z - c) + a₂ * (z - c) ^ 2‖ ≤
        ‖a₁ * (z - c)‖ + ‖a₂ * (z - c) ^ 2‖ := norm_add_le _ _
    _ = ‖a₁‖ * ‖z - c‖ + ‖a₂‖ * ‖z - c‖ ^ 2 := by
      rw [norm_mul, norm_mul, norm_pow]
    _ ≤ ‖a₁‖ * r + ‖a₂‖ * r ^ 2 :=
      add_le_add (mul_le_mul_of_nonneg_left hz (norm_nonneg _))
        (mul_le_mul_of_nonneg_left hsq (norm_nonneg _))

/-- The native second-order polynomial uses actual iterated complex derivatives.
Differentiability and the Taylor remainder are supplied explicitly by its consumer. -/
def nativeQuadraticModel (F : ℂ → ℂ) (c : ℂ) : ℂ → ℂ :=
  quadraticLocalModel c (F c) (deriv F c) (deriv (deriv F) c / 2)

namespace SampleVariationPatch

/-- A native quadratic jet gives a patch only with a bound for its actual analytic
remainder on the entire target region. No four-sample or derivative-array substitution
is used. The hypotheses hF and hD make the derivative semantics explicit. -/
def ofNativeQuadraticRemainder {F : ℂ → ℂ} {U : Set ℂ}
    (c : ℂ) (r τ : ℝ) (hr : 0 ≤ r) (hτ : 0 ≤ τ)
    (_hF : DifferentiableAt ℂ F c) (_hD : DifferentiableAt ℂ (deriv F) c)
    (hradius : ∀ z ∈ U, ‖z - c‖ ≤ r)
    (hremainder : ∀ z ∈ U, ‖F z - nativeQuadraticModel F c z‖ ≤ τ)
    (hmargin : ‖deriv F c‖ * r + ‖deriv (deriv F) c / 2‖ * r ^ 2 + τ < ‖F c‖) :
    SampleVariationPatch F U where
  center := c
  lower := ‖F c‖
  error := ‖deriv F c‖ * r + ‖deriv (deriv F) c / 2‖ * r ^ 2 + τ
  error_nonneg := by positivity
  sample_lower := le_rfl
  variation := by
    intro z hz
    have hmodel := quadraticLocalModel_variation
      (a₀ := F c) (a₁ := deriv F c) (a₂ := deriv (deriv F) c / 2) hr (hradius z hz)
    have htriangle : ‖F z - F c‖ ≤
        ‖F z - nativeQuadraticModel F c z‖ + ‖nativeQuadraticModel F c z - F c‖ := by
      calc
        ‖F z - F c‖ = ‖(F z - nativeQuadraticModel F c z) +
            (nativeQuadraticModel F c z - F c)‖ := by congr 1; abel
        _ ≤ _ := norm_add_le _ _
    change ‖nativeQuadraticModel F c z - F c‖ ≤ _ at hmodel
    linarith [hremainder z hz]
  strict_margin := hmargin

end SampleVariationPatch

/-- An approximating model is useful to the RH-local route only after its error is
bounded against the actual pinned zeta function on every consumed point. -/
theorem noTargetZero_of_uniform_model {P : ℂ → ℂ} {U : Set ℂ}
    (patch : SampleVariationPatch P U) {δ : ℝ}
    (hmodel : ∀ z ∈ U, ‖riemannZeta z - P z‖ ≤ δ)
    (hmargin : patch.error + δ < patch.lower) : NoTargetZero U := by
  intro z hz hzero
  exact patch.source_nonzero hmodel hmargin hz hzero.1

end

end GRWTSK.RiemannHypothesis.CriticalStripHeightDescent
```
