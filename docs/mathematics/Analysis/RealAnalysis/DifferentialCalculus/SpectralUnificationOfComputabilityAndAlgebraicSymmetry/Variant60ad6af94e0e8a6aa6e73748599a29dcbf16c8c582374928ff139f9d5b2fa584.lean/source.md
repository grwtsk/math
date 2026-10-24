# Complete source: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.Variant60ad6af94e0e8a6aa6e73748599a29dcbf16c8c582374928ff139f9d5b2fa584

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2f04199c508b848a8d1ddbf1f127e84dc2bc0f13` · SHA-256 `60ad6af94e0e8a6aa6e73748599a29dcbf16c8c582374928ff139f9d5b2fa584`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateActualSourceKernelBound

/-!
# Exact refinement of the actual normalized source derivative energy

The existing source energy and its prescribed normalization give an exact
positive coefficient gap at the constant 65/3. The source, endpoint matching,
and integration conventions are inherited unchanged. This is an unconditional
analytic estimate for every real scale A ≥ 1, not a Mertens cancellation bound.
-/

namespace FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
namespace EstimateSourceEnergyRefinement

open MeasureTheory
open FormalResearch.RiemannHypothesis.SourcePairing
open Realization BridgeNormalization EstimateActualSourceKernelBound

noncomputable section

/-- Exact cancellation of the inverse-fourth-power coefficient in the source
energy comparison. The two remaining rational coefficients are positive. -/
theorem derivative_energy_gap (A : ℝ) (hA : A ≠ 0) :
    (65 / 3 : ℝ) * sourceNormalization A - A ^ 2 * derivativeEnergyNumerator A =
      (1445888 / 2297295 : ℝ) + (229376 / 19305 : ℝ) / A ^ 2 := by
  unfold sourceNormalization derivativeEnergyNumerator
  field_simp [hA]
  ring

/-- The actual normalized derivative energy is strictly below 65/(3A²).
The normalization remains exactly the source's existing normalization. -/
theorem normalized_derivative_energy_lt (A : ℝ) (hA : 1 ≤ A) :
    (∫ x, deriv (normalizedTest explicitSecondDerivative A) x ^ 2) <
      65 / (3 * A ^ 2) := by
  rw [normalized_derivative_square_integral A hA]
  have hAp : 0 < A := by linarith
  have hAsq : 0 < A ^ 2 := sq_pos_of_pos hAp
  have hZ : 0 < sourceNormalization A := source_normalization_pos A hA
  have hgap := derivative_energy_gap A hAp.ne'
  have hpos : (0 : ℝ) < 1445888 / 2297295 + (229376 / 19305 : ℝ) / A ^ 2 := by
    positivity
  apply (div_lt_iff₀ hZ).2
  calc
    derivativeEnergyNumerator A <
        ((65 / 3 : ℝ) * sourceNormalization A) / A ^ 2 :=
      (lt_div_iff₀ hAsq).2 (by nlinarith)
    _ = (65 / (3 * A ^ 2)) * sourceNormalization A := by ring

/-- The scale-sensitive energy bound used by the correlation second derivative. -/
theorem normalized_derivative_energy_le (A : ℝ) (hA : 1 ≤ A) :
    (∫ x, deriv (normalizedTest explicitSecondDerivative A) x ^ 2) ≤
      65 / (3 * A ^ 2) :=
  (normalized_derivative_energy_lt A hA).le

end
end EstimateSourceEnergyRefinement
end FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
```
