# Complete source: GRWTSK.Analysis.RealAnalysis.Integration.CandidateResidual.Variant79cb97eb79123e8f0f22247d56a94323fa9ec47ed14689a3caa740a77a5a74e7

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `db2f0727359b3ff53f55b8c7011427f7a439cb10` · SHA-256 `4e89eee0f6f068a123d45770a5c299146fd58a1365f5cc3e10be59d3d0a5d321`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.Integration
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.Integration.ResidualIntegrable.Variant6f8cde57b5118490ac7b25889400dc95c89c76f2e6f3a177b9c7d42e5dcd6fb8","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"6f8cde57b5118490ac7b25889400dc95c89c76f2e6f3a177b9c7d42e5dcd6fb8","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Integration.SourceCorpus.ResidualIntegrable.Variant6f8cde57b5118490ac7b25889400dc95c89c76f2e6f3a177b9c7d42e5dcd6fb8","mathematical_subject":"Analysis.Integration","original_sha256":"6f8cde57b5118490ac7b25889400dc95c89c76f2e6f3a177b9c7d42e5dcd6fb8","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/controller-realization/CandidateResidual.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.RiemannHypothesis.SourceComparison.CandidateControllerLaplace
import FormalResearch.RiemannHypothesis.SourceComparison.ActualConvolutionFourier
import FormalResearch.RiemannHypothesis.SourceComparison.ReferenceFourier
import FormalResearch.RiemannHypothesis.SourceComparison.AngularL2Triangle
import FormalResearch.RiemannHypothesis.SourceComparison.ArithmeticErrorIntegrability

/-! The actual admitted controller residual with complete angular Plancherel transport. -/

namespace GRWTSK.Analysis.RealAnalysis.Integration.ResidualIntegrable.Variant6f8cde57b5118490ac7b25889400dc95c89c76f2e6f3a177b9c7d42e5dcd6fb8

set_option autoImplicit false
namespace CandidateResidualScratch
open MeasureTheory FourierTransform Filter
open scoped Topology
open FormalResearch.RiemannHypothesis.SourceComparison
open HalfLineExponential HalfLineExtension HalfLineOperator
open CorrectedControllerAnalytic CorrectedControllerBoundary
open CandidateRealization CandidateControllerLaplace ActualConvolutionFourier ReferenceFourier
open FullLinePlancherel AngularL2Triangle SourceFilterDelta SourceFilterDeltaConvergence
open FixedLaplaceContinuation ArithmeticErrorIntegrability MobiusPoleNumerator
noncomputable section

/-- The original controller's complete residual has a genuinely integrable causal extension. -/
theorem residual_integrable (X : ℕ) (hX : 1 ≤ X) (ε h : ℝ)
    (hε : 0 < ε) (hh : 0 < h) (hh1 : h ≤ 1) :
    Integrable (zeroExtension
      (referenceVector - sourceOperator (controller X hX ε h hε hh hh1)) : ℝ → ℂ) := by
  have hq : Integrable (zeroExtension (controller X hX ε h hε hh hh1) : ℝ → ℂ) := by
    rw [zeroExtension_controller]
    exact fullBoundaryVector_integrable X hX ε h hε hh hh1
  have hi := reference_zeroExtension_integrable.sub
    (zeroExtension_sourceOperator_integrable _ hq)
  rw [map_sub]
  exact hi.congr (Lp.coeFn_sub _ _).symm

/-- The actual full residual Fourier transform retains the exact source multiplier and candidate. -/
theorem residual_fourier (X : ℕ) (hX : 1 ≤ X) (ε h : ℝ)
    (hε : 0 < ε) (hh : 0 < h) (hh1 : h ≤ 1) (ξ : ℝ) :
    𝓕 (zeroExtension
      (referenceVector - sourceOperator (controller X hX ε h hε hh hh1)) : ℝ → ℂ) ξ =
      1 / (1 + ((2 * Real.pi * ξ : ℝ) : ℂ) * Complex.I) -
        actualLaplace (((2 * Real.pi * ξ : ℝ) : ℂ) * Complex.I) *
          candidate X ε h (((2 * Real.pi * ξ : ℝ) : ℂ) * Complex.I) := by
  have hq : Integrable (zeroExtension (controller X hX ε h hε hh hh1) : ℝ → ℂ) := by
    rw [zeroExtension_controller]
    exact fullBoundaryVector_integrable X hX ε h hε hh hh1
  rw [map_sub, Real.fourier_congr_ae (Lp.coeFn_sub _ _) ξ]
  change 𝓕 (fun x : ℝ => zeroExtension referenceVector x -
    zeroExtension (sourceOperator (controller X hX ε h hε hh hh1)) x) ξ = _
  rw [FourierL1L2Forward.fourier_sub
    (zeroExtension referenceVector : ℝ → ℂ)
    (zeroExtension (sourceOperator (controller X hX ε h hε hh hh1)) : ℝ → ℂ)
    reference_zeroExtension_integrable
      (zeroExtension_sourceOperator_integrable _ hq) ξ,
    reference_zeroExtension_fourier, sourceOperator_fourier _ hq,
    zeroExtension_controller, fullBoundaryVector_fourier]

/-- Plancherel identifies the genuine full-axis boundary integral with the actual residual norm. -/
theorem residual_norm_sq (X : ℕ) (hX : 1 ≤ X) (ε h : ℝ)
    (hε : 0 < ε) (hh : 0 < h) (hh1 : h ≤ 1) :
    Integrable (fun t : ℝ =>
      ‖1 / (1 + (t : ℂ) * Complex.I) - actualLaplace ((t : ℂ) * Complex.I) *
        candidate X ε h ((t : ℂ) * Complex.I)‖ ^ 2) ∧
      ‖referenceVector - sourceOperator (controller X hX ε h hε hh hh1)‖ ^ 2 =
        (1 / (2 * Real.pi)) * ∫ t : ℝ,
          ‖1 / (1 + (t : ℂ) * Complex.I) - actualLaplace ((t : ℂ) * Complex.I) *
            candidate X ε h ((t : ℂ) * Complex.I)‖ ^ 2 := by
  have he := angular_plancherel _ (residual_integrable X hX ε h hε hh hh1)
    (fun t : ℝ => 1 / (1 + (t : ℂ) * Complex.I) -
      actualLaplace ((t : ℂ) * Complex.I) * candidate X ε h ((t : ℂ) * Complex.I))
    (residual_fourier X hX ε h hε hh hh1)
  simpa only [LinearIsometry.norm_map] using he

/-- The admitted original controller satisfies the complete signed residual bound. -/
theorem residual_norm_le_delta_add_error (X : ℕ) (hX : 1 ≤ X) (ε h : ℝ)
    (hε : 0 < ε) (hsmall : ε ≤ 1 / 4) (hh : 0 < h) (hh1 : h ≤ 1) :
    ‖referenceVector - sourceOperator (controller X hX ε h hε hh hh1)‖ ≤
      delta ε h + Real.sqrt (arithmeticErrorSq X ε h) := by
  let a : ℝ → ℂ := fun t => (1 + (t : ℂ) * Complex.I)⁻¹ - boundaryFilter ε h t
  let b : ℝ → ℂ := fun t => boundaryFilter ε h t -
    actualLaplace ((t : ℂ) * Complex.I) * candidate X ε h ((t : ℂ) * Complex.I)
  have hH : Measurable (boundaryFilter ε h) := by
    unfold boundaryFilter
    have hw : Continuous MobiusSourceFilterQuotient.W :=
      (Complex.continuous_exp.comp continuous_neg).mul FixedLaplaceBoundary.V_continuous
    fun_prop
  have hQ : Continuous (fun t : ℝ => candidate X ε h ((t : ℂ) * Complex.I)) := by
    apply continuous_iff_continuousAt.mpr
    intro t
    exact (candidate_differentiableAt X ε h hε hh.le _ (by simp)).continuousAt.comp
      (by fun_prop)
  have hK : Continuous (fun t : ℝ => actualLaplace ((t : ℂ) * Complex.I)) :=
    FixedLaplaceBoundary.actualLaplace_continuousOn_closed.comp_continuous
      (by fun_prop) (fun t => by simp)
  have ha : MemLp a 2 volume :=
    (memLp_two_iff_integrable_sq_norm
      ((by fun_prop : Measurable (fun t : ℝ => (1 + (t : ℂ) * Complex.I)⁻¹)).sub
        hH).aestronglyMeasurable).mpr
      (boundaryFilter_error_integrable ε h hε hsmall hh.le)
  have hb_eq (t : ℝ) : b t = boundaryFilter ε h t *
      (1 - riemannZeta (1 / 2 + (t : ℂ) * Complex.I) *
        correctedNumerator X ((ε : ℂ) + (t : ℂ) * Complex.I)) := by
    dsimp [b]
    rw [actual_boundary_product X ε h t hε (by linarith)]
    ring
  have hb : MemLp b 2 volume := by
    apply (memLp_two_iff_integrable_sq_norm
      (hH.sub (hK.mul hQ).measurable).aestronglyMeasurable).mpr
    change Integrable (fun t : ℝ => ‖b t‖ ^ 2)
    simpa only [hb_eq] using
      arithmetic_error_sq_integrable X hX ε h hε hsmall hh hh1
  have he : ‖referenceVector - sourceOperator (controller X hX ε h hε hh hh1)‖ =
      Real.sqrt ((1 / (2 * Real.pi)) * ∫ t : ℝ, ‖a t + b t‖ ^ 2) := by
    have headd (t : ℝ) : a t + b t =
        1 / (1 + (t : ℂ) * Complex.I) - actualLaplace ((t : ℂ) * Complex.I) *
          candidate X ε h ((t : ℂ) * Complex.I) := by
      dsimp only [a, b]
      simp only [one_div, sub_add_sub_cancel]
    simp_rw [headd]
    rw [← (residual_norm_sq X hX ε h hε hh hh1).2, Real.sqrt_sq (norm_nonneg _)]
  calc
    _ = _ := he
    _ ≤ Real.sqrt ((1 / (2 * Real.pi)) * ∫ t : ℝ, ‖a t‖ ^ 2) +
        Real.sqrt ((1 / (2 * Real.pi)) * ∫ t : ℝ, ‖b t‖ ^ 2) :=
      sqrt_normalized_integral_add_le a b ha hb
    _ = _ := by simp only [a, hb_eq, delta, deltaSq, arithmeticErrorSq]

end
end CandidateResidualScratch
```
