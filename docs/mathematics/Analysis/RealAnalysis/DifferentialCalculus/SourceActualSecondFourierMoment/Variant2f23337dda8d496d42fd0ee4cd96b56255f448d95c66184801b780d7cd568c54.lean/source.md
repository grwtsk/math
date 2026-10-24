# Complete source: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.SourceActualSecondFourierMoment.Variant2f23337dda8d496d42fd0ee4cd96b56255f448d95c66184801b780d7cd568c54

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e4ce7a19911196840f5f265b1d9420d3f127f74d` · SHA-256 `0223f25ecf01211136124456fc20020e34c89dab9eef606fb88157453ffe0322`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.DifferentialCalculus
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.ActualCorrelationComplexContDiffFour.Variantbfd9a7208a55c2dbc2dcfe7547b09db0221f790c0714369995a4480d43c9135e","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"bfd9a7208a55c2dbc2dcfe7547b09db0221f790c0714369995a4480d43c9135e","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Calculus.SourceCorpus.ActualCorrelationComplexContDiffFour.Variantbfd9a7208a55c2dbc2dcfe7547b09db0221f790c0714369995a4480d43c9135e","mathematical_subject":"Analysis.Calculus","original_sha256":"bfd9a7208a55c2dbc2dcfe7547b09db0221f790c0714369995a4480d43c9135e","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-continuation-20261006/root/check-20261007T045147Z-1791348707302686000/SourceActualSecondFourierMoment.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import ActualFourthCorrelationCalibration
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.SourcePlancherel
import Zeta23.WeilEF.VerticalLine
import Mathlib.Analysis.Fourier.FourierTransformDeriv
import Mathlib.Analysis.Calculus.ContDiff.Deriv

/-!
Genuine weighted Fourier energy of the unchanged normalized source.
C4 regularity and compact support supply L1 before Fourier inversion. The real
second frequency moment is the original derivative energy, with its exact
source angular-frequency normalization. No arithmetic bound is inferred.
Research direction: grwtsk contributors. Formal development: OpenAI Codex.
-/

namespace GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.ActualCorrelationComplexContDiffFour.Variantbfd9a7208a55c2dbc2dcfe7547b09db0221f790c0714369995a4480d43c9135e

set_option autoImplicit false
namespace FormalResearch.RiemannHypothesis.SourceActualSecondFourierMoment
open MeasureTheory
open scoped FourierTransform
open SourcePairing SourceCorrelationCurvature
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization CorrelationRegularity SourcePlancherel
open RH16IndependentChallengeNext
noncomputable section

/-- The actual complex correlation retains genuine C4 and compact support. -/
theorem actualCorrelationComplex_contDiff_four {A : ℝ} (hA : 1 ≤ A) :
    ContDiff ℝ 4 (fun t => (sourceCorrelation explicitSecondDerivative A t : ℂ)) :=
  Complex.ofRealCLM.contDiff.comp (actual_correlation_contDiff_four A (by linarith))

/-- The twice differentiated actual correlation has a genuinely integrable Fourier transform. -/
theorem actualSecondCorrelation_fourier_integrable {A : ℝ} (hA : 1 ≤ A) :
    Integrable (𝓕 (deriv (deriv
      (fun t => (sourceCorrelation explicitSecondDerivative A t : ℂ))))) := by
  have h4 := actualCorrelationComplex_contDiff_four hA
  have h3 : ContDiff ℝ 3 (deriv
      (fun t => (sourceCorrelation explicitSecondDerivative A t : ℂ))) := h4.deriv'
  have h2 : ContDiff ℝ 2 (deriv (deriv
      (fun t => (sourceCorrelation explicitSecondDerivative A t : ℂ)))) := h3.deriv'
  have hs : HasCompactSupport (fun t => (sourceCorrelation explicitSecondDerivative A t : ℂ)) :=
    (sourceCorrelation_hasCompactSupport A (by linarith)).comp_left
      (g := Complex.ofReal) rfl
  exact Zeta23.EF.integrable_fourier_of_contDiff_two h2 hs.deriv.deriv

/-- Two Fourier derivative identities retain the ordinary genuine correlation square energy. -/
theorem actualSecondCorrelation_fourier_eq {A : ℝ} (hA : 1 ≤ A) (ξ : ℝ) :
    𝓕 (deriv (deriv (fun t =>
      (sourceCorrelation explicitSecondDerivative A t : ℂ)))) ξ =
      (-4 * Real.pi^2 : ℝ) *
        ((ξ^2 * Complex.normSq
          (𝓕 (fun x => (normalizedTest explicitSecondDerivative A x : ℂ)) ξ) : ℝ) : ℂ) := by
  let f : ℝ → ℂ := fun t => (sourceCorrelation explicitSecondDerivative A t : ℂ)
  have h4 : ContDiff ℝ 4 f := actualCorrelationComplex_contDiff_four hA
  have h3 : ContDiff ℝ 3 (deriv f) := h4.deriv'
  have h2 : ContDiff ℝ 2 (deriv (deriv f)) := h3.deriv'
  have hs : HasCompactSupport f :=
    (sourceCorrelation_hasCompactSupport A (by linarith)).comp_left
      (g := Complex.ofReal) rfl
  have hf := h4.continuous.integrable_of_hasCompactSupport hs
  have hd := h3.continuous.integrable_of_hasCompactSupport hs.deriv
  have hdd := h2.continuous.integrable_of_hasCompactSupport hs.deriv.deriv
  have hh := congrFun (Real.fourier_deriv hd (h3.differentiable (by norm_num)) hdd) ξ
  rw [Real.fourier_deriv hf (h4.differentiable (by norm_num)) hd] at hh
  change 𝓕 (deriv (deriv f)) ξ = _
  rw [hh, smul_eq_mul, smul_eq_mul]
  dsimp only [f]
  rw [fourier_correlation A hA ξ]
  push_cast
  have hi := Complex.I_mul_I
  simp only [Complex.ofReal_pow]
  calc
    _ = 4 * (Real.pi : ℂ)^2 * (ξ : ℂ)^2 * (Complex.I * Complex.I) *
      (Complex.normSq
        (𝓕 (fun x => (normalizedTest explicitSecondDerivative A x : ℂ)) ξ) : ℂ) := by ring
    _ = _ := by rw [hi]; ring

end
end FormalResearch.RiemannHypothesis.SourceActualSecondFourierMoment
```
