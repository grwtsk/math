# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.UpperBoundaryChannels.Variant55c60953997cd0b5ffc6761210ec40421f8fffe9c66bb3e4559eaef2a1c9c7aa

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `df45047a7addc073fda378dd122d5deb9dac4f09` · SHA-256 `e903760d7e1a15fc1df5f8a73ad88a2c7fd363748ee0486903d3e5399e92b4a4`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ChannelKernel.Variant722ee9111325b0702872c7373032087062301719b811bbcf304b2c9046921bc9","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"722ee9111325b0702872c7373032087062301719b811bbcf304b2c9046921bc9","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.ChannelKernel.Variant722ee9111325b0702872c7373032087062301719b811bbcf304b2c9046921bc9","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"722ee9111325b0702872c7373032087062301719b811bbcf304b2c9046921bc9","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/homogeneity/UpperBoundaryChannels.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.RiemannHypothesis.SourceComparison.UpperRowInversion


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ChannelKernel.Variant722ee9111325b0702872c7373032087062301719b811bbcf304b2c9046921bc9

set_option autoImplicit false
namespace UpperBoundaryChannelsScratch
open Finset
open FormalResearch.RiemannHypothesis.SourceComparison
open FormalResearch.RiemannHypothesis.SourcePairing
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization JointBoundaryTransport SourceSampling
noncomputable section

def channelKernel (A : ℝ) (k q : ℕ) : ℝ :=
  if ((k * q : ℕ) : ℝ) < Real.exp (2 * A) then
    Real.log (k : ℝ) / Real.sqrt ((k * q : ℕ) : ℝ) *
      sourceCorrelation explicitSecondDerivative A (Real.log ((k * q : ℕ) : ℝ)) else 0

def upperChannel (A : ℝ) (k : ℕ) : ℝ :=
  rectangle (Ioc (⌊Real.exp A⌋₊ / 2) ⌊Real.exp A⌋₊)
    (Ioc (⌊Real.exp A⌋₊ / 2) ⌊Real.exp A⌋₊) (channelKernel A k)

def coreValue (A : ℝ) : ℝ :=
  archimedeanValue explicitSecondDerivative A -
    4 * (∑ i ∈ Icc 1 (⌊Real.exp A⌋₊ / 2),
      (ArithmeticFunction.moebius i : ℝ) * sourceSamplingKernel A i) +
    2 * CorrelationSecondMoment.sourceRankOneCoefficient A *
      (∑ i ∈ Icc 1 (⌊Real.exp A⌋₊ / 2),
        (ArithmeticFunction.moebius i : ℝ) / (i : ℝ)) ^ 2 +
    2 * rectangle (Icc 1 (⌊Real.exp A⌋₊ / 2)) (Icc 1 (⌊Real.exp A⌋₊ / 2))
      (ThetaRemainder.thetaRemainder A)

theorem channelKernel_eq_correlation_weight (A : ℝ) (k q : ℕ)
    (hA : 1 ≤ A) (hk : 1 ≤ k) (hq : 1 ≤ q) :
    channelKernel A k q = Real.log (k : ℝ) / Real.sqrt ((k * q : ℕ) : ℝ) *
      sourceCorrelation explicitSecondDerivative A (Real.log ((k * q : ℕ) : ℝ)) := by
  have hprod : (0 : ℝ) < ((k * q : ℕ) : ℝ) := by exact_mod_cast Nat.mul_pos hk hq
  unfold channelKernel
  split_ifs with hcut
  · rfl
  · have hlog : 2 * A ≤ Real.log ((k * q : ℕ) : ℝ) :=
      (Real.le_log_iff_exp_le hprod).mpr (le_of_not_gt hcut)
    rw [CorrelationRegularity.sourceCorrelation_eq_zero_of_two_mul_le_abs A _
      (by linarith) (hlog.trans (le_abs_self _)), mul_zero]

theorem sourceSamplingKernel_eq_channels (A : ℝ) (q : ℕ) (hq : 1 ≤ q)
    (hcut : Real.exp (2 * A) ≤ 4 * (q : ℝ)) :
    sourceSamplingKernel A q = channelKernel A 2 q + channelKernel A 3 q := by
  simpa only [channelKernel, Nat.cast_mul, Nat.cast_ofNat] using
    SourceUpperSupport.sourceSamplingKernel_eq_two_channels A q
      (by exact_mod_cast (show 0 < q by omega)) hcut

theorem source_upper_boundary_eq_channels (A : ℝ) :
    rectangle (Ioc (⌊Real.exp A⌋₊ / 2) ⌊Real.exp A⌋₊)
      (Ioc (⌊Real.exp A⌋₊ / 2) ⌊Real.exp A⌋₊)
      (fun q ↦ sourceSamplingKernel A q) = upperChannel A 2 + upperChannel A 3 := by
  calc
    _ = rectangle (Ioc (⌊Real.exp A⌋₊ / 2) ⌊Real.exp A⌋₊)
        (Ioc (⌊Real.exp A⌋₊ / 2) ⌊Real.exp A⌋₊)
        (fun q ↦ channelKernel A 2 q + channelKernel A 3 q) := by
      unfold rectangle
      apply sum_congr rfl
      intro i hi
      apply sum_congr rfl
      intro j hj
      dsimp only
      rw [sourceSamplingKernel_eq_channels A (i * j)
        (Nat.mul_pos (show 1 ≤ i by have := (mem_Ioc.mp hi).1; omega)
          (show 1 ≤ j by have := (mem_Ioc.mp hj).1; omega))
        (UpperRowInversion.upper_square_product_threshold A i j
          (mem_Ioc.mp hi).1 (mem_Ioc.mp hj).1)]
    _ = _ := by simp only [upperChannel, rectangle, mul_add, sum_add_distrib]

theorem coreValue_eq_fullKernel (A : ℝ) :
    coreValue A = archimedeanValue explicitSecondDerivative A -
      4 * (∑ i ∈ Icc 1 (⌊Real.exp A⌋₊ / 2),
        (ArithmeticFunction.moebius i : ℝ) * sourceSamplingKernel A i) +
      2 * rectangle (Icc 1 (⌊Real.exp A⌋₊ / 2)) (Icc 1 (⌊Real.exp A⌋₊ / 2))
        (ThetaKernelTransport.thetaKernel A) := by
  have he := ThetaRemainder.quadratic_sum_eq A (⌊Real.exp A⌋₊ / 2)
  change rectangle (Icc 1 (⌊Real.exp A⌋₊ / 2)) (Icc 1 (⌊Real.exp A⌋₊ / 2))
    (ThetaKernelTransport.thetaKernel A) = _ at he
  rw [he]
  dsimp only [coreValue, rectangle]
  ring

theorem sourceQuadraticValue_eq_core_sub_channels (A : ℝ) (hA : 1 ≤ A) :
    sourceQuadraticValue explicitSecondDerivative A =
      coreValue A - 2 * upperChannel A 2 - 2 * upperChannel A 3 := by
  rw [UpperRowInversion.sourceQuadraticValue_core_rankOne A hA,
    source_upper_boundary_eq_channels A]
  dsimp only [coreValue]
  ring

end
end UpperBoundaryChannelsScratch
```
