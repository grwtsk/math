# Complete source: GRWTSK.Topology.GeneralTopology.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.Variantbb9aa4ccf7a834c86052db37dbda340acc66c9a67d2ecaa5e904f4d597d0da6f

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7c69611e5d880fa859edd7ff57e7898ee47c6f09` · SHA-256 `43d57f04f03413f98ab3136406cdb41ff42f79031822d3cf718b5f07e19fb972`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Topology.GeneralTopology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.GeneralTopology.SmoothedTestFormErrorLe.Variant05874371b693790a3ee90e1c3667765a275ab79d3ad8378491e2e271a0dd63b4","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"05874371b693790a3ee90e1c3667765a275ab79d3ad8378491e2e271a0dd63b4","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Topology.GeneralTopology.SourceCorpus.SmoothedTestFormErrorLe.Variant05874371b693790a3ee90e1c3667765a275ab79d3ad8378491e2e271a0dd63b4","mathematical_subject":"Topology.GeneralTopology","original_sha256":"05874371b693790a3ee90e1c3667765a275ab79d3ad8378491e2e271a0dd63b4","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal.publication/20261007/cache-source-audit/source/05874371b693790a3ee90e1c3667765a275ab79d3ad8378491e2e271a0dd63b4.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.ZeroLogarithmicConvergence
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.ZeroFormContinuity
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.ZeroFormSupport

/-!
# Common-support convergence of the exact source arithmetic form

The logarithmic error estimate controls the complete implemented arithmetic
form: its archimedean integral, both pole moments, and the signed strict-cutoff
prime-power sum. The limit is the unchanged form of the unnormalized source
test at radius `A`. No smooth explicit formula or zero-side descent is used.
-/


namespace GRWTSK.Topology.GeneralTopology.SmoothedTestFormErrorLe.Variant05874371b693790a3ee90e1c3667765a275ab79d3ad8378491e2e271a0dd63b4

namespace FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
namespace ZeroFormConvergence

open MeasureTheory Set Filter
open scoped Topology
open FormalResearch.RiemannHypothesis.SourcePairing
open ZeroSideTargets ZeroTestRegularity ZeroSmoothing ZeroSmoothingDerivative ZeroSmoothingL2
open ZeroLogarithmicCore ZeroLogarithmicConvergence ZeroFormContinuity BridgeAdmissibility

noncomputable section

/-- On the common compact support, the full form error is bounded by a vanishing polynomial
in the exact logarithmic error norm. -/
theorem smoothedTest_form_error_le (A ε : ℝ) (hA : 1 ≤ A)
    (hε : 0 < ε) (hε1 : ε ≤ 1) :
    |realArithmeticForm (A + 1) (smoothedTest A ε hε) -
      realArithmeticForm (A + 1) (actualTest A)| ≤
      formCoefficient (A + 1) *
        logarithmicNorm (fun x ↦ smoothedTest A ε hε x - actualTest A x) *
        (logarithmicNorm (fun x ↦ smoothedTest A ε hε x - actualTest A x) +
          2 * logarithmicNorm (actualTest A)) := by
  apply (realArithmeticForm_sub_abs_le
    (smoothedTest_integrable A ε hA hε) (actualTest_integrable A hA)
    (smoothedTest_memLp_two A ε hA hε) (actualTest_memLp_two A hA)
    (smoothedTest_support_common A ε hA hε hε1) (actualTest_support_common A hA)
    (smoothedTest_logarithmic_integrable A ε hA hε)
    (actualTest_logarithmic_integrable A hA)
    (testError_logarithmic_integrable A ε hA hε)).trans
  apply mul_le_mul_of_nonneg_left _
    (mul_nonneg (formCoefficient_nonneg _) (logarithmicNorm_nonneg _))
  linarith [smoothedTest_logarithmicNorm_le A ε hA hε]

/-- Logarithmic convergence on the proved common support yields convergence of the entire
source arithmetic form for every positive scale family tending to zero. -/
theorem smoothedTest_form_tendsto {ι : Type*} {l : Filter ι}
    [l.IsCountablyGenerated] (A : ℝ) (hA : 1 ≤ A)
    (ε : ι → ℝ) (hε : ∀ i, 0 < ε i) (hlim : Tendsto ε l (𝓝 0)) :
    Tendsto (fun i ↦ realArithmeticForm (A + 1) (smoothedTest A (ε i) (hε i)))
      l (𝓝 (realArithmeticForm A (actualTest A))) := by
  have he := testError_logarithmicNorm_tendsto_zero A hA ε hε hlim
  have hsmall : ∀ᶠ i in l, ε i ≤ 1 :=
    ((tendsto_order.1 hlim).2 1 (by norm_num)).mono fun _ h ↦ h.le
  have hpoly : Tendsto (fun i ↦ formCoefficient (A + 1) *
      logarithmicNorm (fun x ↦ smoothedTest A (ε i) (hε i) x - actualTest A x) *
      (logarithmicNorm (fun x ↦ smoothedTest A (ε i) (hε i) x - actualTest A x) +
        2 * logarithmicNorm (actualTest A))) l (𝓝 0) := by
    simpa using (he.const_mul (formCoefficient (A + 1))).mul
      (he.add_const (2 * logarithmicNorm (actualTest A)))
  have hnorm : Tendsto (fun i ↦
      |realArithmeticForm (A + 1) (smoothedTest A (ε i) (hε i)) -
        realArithmeticForm (A + 1) (actualTest A)|) l (𝓝 0) := by
    apply squeeze_zero' (Eventually.of_forall fun _ ↦ abs_nonneg _) _ hpoly
    filter_upwards [hsmall] with i hi
    exact smoothedTest_form_error_le A (ε i) hA (hε i) hi
  rw [ZeroFormSupport.actual_form_support_consistent A (A + 1) hA (by linarith)] at hnorm
  exact tendsto_iff_dist_tendsto_zero.2 (by simpa only [Real.dist_eq] using hnorm)

/-- The actual source form converges as the strictly positive smoothing scale approaches zero. -/
theorem source_form_tendsto (A : ℝ) (hA : 1 ≤ A) :
    Tendsto (fun ε : {ε : ℝ // 0 < ε} ↦
      realArithmeticForm (A + 1) (smoothedTest A ε ε.property))
      positiveScaleAtZero (𝓝 (realArithmeticForm A (actualTest A))) :=
  smoothedTest_form_tendsto A hA Subtype.val Subtype.property positiveScale_tendsto_zero

/-- Source logarithmic and full arithmetic-form convergence, with genuine membership,
strictly positive scales, and an explicit common support for scales at most one. -/
theorem source_logarithmic_form_convergence (A : ℝ) (hA : 1 ≤ A) :
    positiveScaleAtZero.NeBot ∧
    MemLp (actualTest A) 2 volume ∧
    Integrable (fun ξ ↦ logarithmicWeight ξ * Complex.normSq (sourceFourier (actualTest A) ξ)) ∧
    (∀ (ε : ℝ) (hε : 0 < ε),
      MemLp (smoothedTest A ε hε) 2 volume ∧
      Integrable (fun ξ ↦ logarithmicWeight ξ *
        Complex.normSq (sourceFourier (smoothedTest A ε hε) ξ)) ∧
      Integrable (fun ξ ↦ logarithmicWeight ξ *
        Complex.normSq (sourceFourier (fun x ↦ smoothedTest A ε hε x - actualTest A x) ξ)) ∧
      (ε ≤ 1 → Function.support (smoothedTest A ε hε) ⊆ Icc (-(A + 1)) (A + 1))) ∧
    Function.support (actualTest A) ⊆ Icc (-(A + 1)) (A + 1) ∧
    Tendsto (fun ε : {ε : ℝ // 0 < ε} ↦ logarithmicEnergy
      (fun x ↦ smoothedTest A ε ε.property x - actualTest A x)) positiveScaleAtZero (𝓝 0) ∧
    Tendsto (fun ε : {ε : ℝ // 0 < ε} ↦ logarithmicNorm
      (fun x ↦ smoothedTest A ε ε.property x - actualTest A x)) positiveScaleAtZero (𝓝 0) ∧
    Tendsto (fun ε : {ε : ℝ // 0 < ε} ↦
      realArithmeticForm (A + 1) (smoothedTest A ε ε.property))
      positiveScaleAtZero (𝓝 (realArithmeticForm A (actualTest A))) := by
  refine ⟨positiveScaleAtZero_neBot, actualTest_memLp_two A hA,
    actualTest_logarithmic_integrable A hA, ?_, actualTest_support_common A hA,
    testError_logarithmicEnergy_tendsto_zero A hA Subtype.val Subtype.property
      positiveScale_tendsto_zero,
    testError_logarithmicNorm_tendsto_zero A hA Subtype.val Subtype.property
      positiveScale_tendsto_zero, source_form_tendsto A hA⟩
  intro ε hε
  exact ⟨smoothedTest_memLp_two A ε hA hε, smoothedTest_logarithmic_integrable A ε hA hε,
    testError_logarithmic_integrable A ε hA hε, smoothedTest_support_common A ε hA hε⟩

end

end ZeroFormConvergence
end FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
```
