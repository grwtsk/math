# Complete source: GRWTSK.NumberTheory.Chebyshev.CompactProfileExplicitFormula

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ce7d4ef34ed617f586ba17699d73a612f49b9a19` · SHA-256 `842b80a433b7db077160662fc7d20294fe9320cea3dc6d5f56c69fbd41fe0352`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI Codex.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.Analysis.Distribution.CompactProfileDilation
import GRWTSK.Analysis.SpecialFunctions.DigammaFourierBound

/-!
# Admission of the actual CCC source into the full dilation interface

The two concrete second derivatives are identified pointwise before transporting
the genuine digamma-weighted Fourier integrability theorem. No arithmetic
supplier or RH statement is asserted. The exact existing arithmetic identity is
transported separately with its strict cutoff and prime-two correction retained.

Research direction: grwtsk contributors. Implementation: OpenAI Codex.
-/

namespace GRWTSK.ProofHorizon.CorkscrewChamberCap.SourceAdmission

open MeasureTheory Set
open ArithmeticSupplier SourceResidual SourceDilation
open GRWTSK.RiemannHypothesis
open GRWTSK.SpectralUnificationOfComputabilityAndAlgebraicSymmetry

noncomputable section

theorem source_second_eq_explicit {A : ℝ} (hA : 0 < A) :
    sourceSecond A = Realization.explicitSecondDerivative A := by
  funext x
  have scaled : x / A ∈ Icc (-1 : ℝ) 1 ↔ x ∈ Icc (-A) A := scaled_mem_iff hA x
  unfold sourceSecond clippedProfile
    Realization.explicitSecondDerivative
  rw [Real.rpow_neg hA.le, ← Real.sqrt_eq_rpow]
  by_cases hx : x ∈ Icc (-A) A
  · simp only [if_pos (scaled.mpr hx), indicator_of_mem hx]
    unfold bumpSecondPolynomial
      Realization.secondInterior
    field_simp
    ring
  · simp [hx, show x / A ∉ Icc (-1 : ℝ) 1 from fun h ↦ hx (scaled.mp h)]

theorem normalized_test_eq_explicit {A : ℝ} (hA : 0 < A) :
    SourcePairing.normalizedTest sourceSecond A =
      SourcePairing.normalizedTest Realization.explicitSecondDerivative A := by
  unfold SourcePairing.normalizedTest SourcePairing.dilationTest
  rw [source_second_eq_explicit hA]

/-- The original Fourier scalar is genuinely integrable on the admitted domain. -/
theorem actual_archimedean_integrable {A : ℝ} (hA : 1 ≤ A) :
    Integrable (SourcePairing.archimedeanIntegrand sourceSecond A) := by
  have admitted := AdmissionSource.archimedean_integrability A hA
  have same :
      SourcePairing.archimedeanIntegrand sourceSecond A =
        SourcePairing.archimedeanIntegrand Realization.explicitSecondDerivative A := by
    unfold SourcePairing.archimedeanIntegrand
    rw [normalized_test_eq_explicit (by linarith : 0 < A)]
  rwa [same]

/-- All analytic fields are now supplied without a further integrability premise. -/
def admittedDilationRealization :
    SourcePairing.DilationRealization :=
  actualDilationRealization (fun _ hA ↦ actual_archimedean_integrable hA)

theorem admitted_second_derivative :
    admittedDilationRealization.secondDerivative = sourceSecond := rfl

theorem source_realization_exists :
    SourcePairing.SourceRealizationExists :=
  ⟨admittedDilationRealization⟩

/-- Exact equality preserves every signed term and the separate prime-two atom. -/
theorem arithmetic_representation :
    SourcePairing.ArithmeticRepresentation admittedDilationRealization := by
  intro A hA
  have same := normalized_test_eq_explicit (by linarith : 0 < A)
  have correlated : SourcePairing.sourceCorrelation sourceSecond A =
      SourcePairing.sourceCorrelation Realization.explicitSecondDerivative A := by
    funext t
    unfold SourcePairing.sourceCorrelation
    rw [same]
  have identity := CorrelationAssembly.source_arithmetic_representation A hA
  change SourcePairing.sourceQuadraticValue sourceSecond A =
    SourcePairing.analyticCorrection sourceSecond A + 2 * SourcePairing.signedPairing sourceSecond A
  simpa only [SourcePairing.sourceQuadraticValue, SourcePairing.analyticCorrection,
    SourcePairing.archimedeanValue, SourcePairing.archimedeanIntegrand,
    SourcePairing.primePowerContribution, SourcePairing.primeTwoBoundary,
    SourcePairing.signedPairing, SourcePairing.sourceWeight, correlated,
    SourcePairing.sourceCorrelation, same] using identity

end

end GRWTSK.ProofHorizon.CorkscrewChamberCap.SourceAdmission
```
