# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ActualEndpoint.Variant74aa0ca7551e3d43760546af164bb963cc7083365ed929cdad77d8fb76fa9396

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `beb87593bfeea3000b56af2c328ee0318382748d` · SHA-256 `74aa0ca7551e3d43760546af164bb963cc7083365ed929cdad77d8fb76fa9396`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.CorrelationRegularity
import Mathlib.Tactic

/-!
Exact endpoint profile of the immutable actual source, a calculation rather than
an arithmetic bound witness. Originating mathematical direction, theorem selection,
corrections and evaluation: grwtsk contributors. Proof assistance: OpenAI Codex.
-/

set_option autoImplicit false
noncomputable section
namespace CommonMeanEndpoint
open FormalResearch.RiemannHypothesis.SourcePairing
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization CorrelationRegularity

/-- The exact numerator after substituting x=A-u and extracting A^-4. -/
def endpointPolynomial (u k : ℝ) : ℝ :=
  8*(2*u-u^2*k)^2*(6-14*u*k+7*u^2*k^2) - (2*u-u^2*k)^4/4

theorem endpointPolynomial_expansion (u k : ℝ) :
    endpointPolynomial u k =
    (192*u^2-4*u^4) + (-640*u^3+8*u^5)*k +
    (720*u^4-6*u^6)*k^2 + (-336*u^5+2*u^7)*k^3 +
    (56*u^6-u^8/4)*k^4 := by
  unfold endpointPolynomial
  ring

theorem normalizedInterior_endpoint (A u : ℝ) (hA : 1 ≤ A) :
    normalizedInterior A (A-u) =
      endpointPolynomial u (1/A) /
        (A^4 * Real.sqrt A * Real.sqrt (sourceNormalization A)) := by
  have ha : A ≠ 0 := by linarith
  have hs : Real.sqrt A ≠ 0 := (Real.sqrt_pos.2 (by linarith)).ne'
  have hz : Real.sqrt (sourceNormalization A) ≠ 0 :=
    (Real.sqrt_pos.2 (source_normalization_pos A hA)).ne'
  unfold normalizedInterior secondInterior bumpInterior endpointPolynomial
  field_simp
  ring

/-- Includes both touching source endpoints. No equality premise is assumed. -/
theorem actual_source_endpoint (A u : ℝ) (hA : 1 ≤ A)
    (hu : 0 ≤ u) (hupper : u ≤ 2*A) :
    normalizedTest explicitSecondDerivative A (A-u) =
      endpointPolynomial u (1/A) /
        (A^4 * Real.sqrt A * Real.sqrt (sourceNormalization A)) := by
  rw [normalizedTest_eq_indicator A (by linarith)]
  have hx : A-u ∈ Set.Icc (-A) A := ⟨by linarith, by linarith⟩
  rw [Set.indicator_of_mem hx]
  exact normalizedInterior_endpoint A u hA

end CommonMeanEndpoint
```
