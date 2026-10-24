# Complete source: GRWTSK.Topology.GeneralTopology.9d67b36eed66fe4f99ffEstimateSourceEdgeProfile.Variant9d67b36eed66fe4f99ff7d6c0d470f8221e1b5f6b87ab7220e14efe07006555f

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7caeeee968874e11e8442a28fd05d435e65c96ee` · SHA-256 `9d67b36eed66fe4f99ff7d6c0d470f8221e1b5f6b87ab7220e14efe07006555f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateUnitProfileMass
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.ZeroTestRegularity

/-!
# The literal source polynomial at its support endpoint

The polynomial below is obtained by evaluating the original normalized source
at A-r. The factor A^4 sqrt(A) is retained before forming the correlation.
-/

set_option autoImplicit false

namespace FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
namespace EstimateSourceEdgeProfile

open MeasureTheory Set
open FormalResearch.RiemannHypothesis.SourcePairing
open Realization CorrelationRegularity BridgeNormalization

noncomputable section

/-- Exact factorization of the accepted second interior unit polynomial. -/
theorem unitSecond_factor (s : ℝ) :
    unitSecond s = 8 * (1-s^2)^2 * (7*s^2-1) := by
  unfold unitSecond
  ring

/-- The exact numerator left after extracting the source's endpoint scale. -/
def endpointPolynomial (A r : ℝ) : ℝ :=
  r^2 * (2-r/A)^2 * (8 * (7*(1-r/A)^2-1) - r^2 * (2-r/A)^2 / 4)

/-- The literal source normalization has a fixed positive rational floor. -/
theorem sourceNormalization_ge_one_div_32 (A : ℝ) (hA : 1 ≤ A) :
    (1/32 : ℝ) ≤ sourceNormalization A := by
  have hA0 : 0 < A := by linarith
  have h2 : 0 ≤ (131072 / 45045 : ℝ) / (2 * A^2) := by positivity
  have h4 : 0 ≤ (196608 / 5005 : ℝ) / A^4 := by positivity
  unfold sourceNormalization
  linarith

/-- Exact source endpoint evaluation, including its fixed normalization. -/
theorem normalizedTest_endpoint (A r : ℝ) (hA : 1 ≤ A)
    (hr : 0 ≤ r) (hrA : r ≤ 2 * A) :
    normalizedTest explicitSecondDerivative A (A-r) =
      endpointPolynomial A r /
        (A^4 * Real.sqrt A * Real.sqrt (sourceNormalization A)) := by
  have hA0 : 0 < A := by linarith
  have hm : A-r ∈ Icc (-A) A := ⟨by linarith, by linarith⟩
  rw [normalizedTest_eq_indicator A hA0, indicator_of_mem hm]
  unfold normalizedInterior secondInterior bumpInterior endpointPolynomial
  field_simp [hA0.ne', Real.sqrt_ne_zero'.mpr hA0,
    Real.sqrt_ne_zero'.mpr (source_normalization_pos A hA)]
  ring

/-- Evenness is reused from the accepted actual unnormalized test. -/
theorem normalizedTest_even (A : ℝ) (hA : 1 ≤ A) :
    Function.Even (normalizedTest explicitSecondDerivative A) := by
  intro x
  unfold normalizedTest
  rw [show dilationTest explicitSecondDerivative A (-x) =
      dilationTest explicitSecondDerivative A x from ZeroTestRegularity.actualTest_even A hA x]

/-- The endpoint numerator is a continuous finite polynomial. -/
theorem endpointPolynomial_continuous (A : ℝ) : Continuous (endpointPolynomial A) := by
  unfold endpointPolynomial
  fun_prop

/-- A fixed polynomial absolute bound on the exact endpoint coordinate range. -/
theorem endpointPolynomial_abs_le (A r : ℝ) (hA : 1 ≤ A)
    (hr : 0 ≤ r) (hrA : r ≤ 2 * A) :
    |endpointPolynomial A r| ≤ 192*r^2 + 4*r^4 := by
  have hA0 : 0 < A := by linarith
  have hq0 : 0 ≤ r/A := div_nonneg hr hA0.le
  have hq2 : r/A ≤ 2 := (div_le_iff₀ hA0).2 hrA
  have hs : (1-r/A)^2 ≤ 1 := by nlinarith
  have hp : (2-r/A)^2 ≤ 4 := by nlinarith
  have hc : |7*(1-r/A)^2-1| ≤ 6 := by
    rw [abs_le]
    constructor <;> nlinarith [sq_nonneg (1-r/A)]
  have hi : |8*(7*(1-r/A)^2-1) - r^2*(2-r/A)^2/4| ≤ 48+r^2 := by
    calc
      _ ≤ |8*(7*(1-r/A)^2-1)| + |r^2*(2-r/A)^2/4| := abs_sub _ _
      _ = 8*|7*(1-r/A)^2-1| + r^2*(2-r/A)^2/4 := by
        rw [abs_mul, show |(8 : ℝ)| = 8 by norm_num,
          abs_of_nonneg (show 0 ≤ r^2*(2-r/A)^2/4 by positivity)]
      _ ≤ _ := by nlinarith [mul_le_mul_of_nonneg_left hp (sq_nonneg r)]
  unfold endpointPolynomial
  rw [abs_mul, abs_of_nonneg (show 0 ≤ r^2*(2-r/A)^2 by positivity)]
  calc
    _ ≤ r^2*(2-r/A)^2*(48+r^2) := mul_le_mul_of_nonneg_left hi (by positivity)
    _ ≤ 4*r^2*(48+r^2) := by
      exact mul_le_mul_of_nonneg_right
        (by nlinarith [mul_le_mul_of_nonneg_left hp (sq_nonneg r)]) (by positivity)
    _ = _ := by ring

end
end EstimateSourceEdgeProfile
end FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
```
