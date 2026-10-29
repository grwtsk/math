-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.UpperBoundaryChannels.Variantd5d11ab2da9d03add4a0695429fafac14c970e2c8c5acd8e5dca53f91d6dbf65","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"d5d11ab2da9d03add4a0695429fafac14c970e2c8c5acd8e5dca53f91d6dbf65","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.UpperBoundaryChannels.Variantd5d11ab2da9d03add4a0695429fafac14c970e2c8c5acd8e5dca53f91d6dbf65","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"d5d11ab2da9d03add4a0695429fafac14c970e2c8c5acd8e5dca53f91d6dbf65","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/homogeneity/UpperBoundaryChannelsSourceStatements.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.RiemannHypothesis.SourceComparison.UpperBoundaryChannels


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.UpperBoundaryChannels.Variantd5d11ab2da9d03add4a0695429fafac14c970e2c8c5acd8e5dca53f91d6dbf65

section UpperBoundaryChannelsExactStatements
open Finset
open FormalResearch.RiemannHypothesis.SourceComparison
open FormalResearch.RiemannHypothesis.SourceComparison.UpperBoundaryChannels
open FormalResearch.RiemannHypothesis.SourcePairing
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization JointBoundaryTransport SourceSampling

example (A : ℝ) (k q : ℕ) : channelKernel A k q =
    if ((k * q : ℕ) : ℝ) < Real.exp (2 * A) then
      Real.log (k : ℝ) / Real.sqrt ((k * q : ℕ) : ℝ) *
        sourceCorrelation explicitSecondDerivative A (Real.log ((k * q : ℕ) : ℝ)) else 0 := rfl

example (A : ℝ) (k : ℕ) : upperChannel A k =
    rectangle (Ioc (⌊Real.exp A⌋₊ / 2) ⌊Real.exp A⌋₊)
      (Ioc (⌊Real.exp A⌋₊ / 2) ⌊Real.exp A⌋₊) (channelKernel A k) := rfl

example (A : ℝ) : coreValue A =
    archimedeanValue explicitSecondDerivative A -
      4 * (∑ i ∈ Icc 1 (⌊Real.exp A⌋₊ / 2),
        (ArithmeticFunction.moebius i : ℝ) * sourceSamplingKernel A i) +
      2 * CorrelationSecondMoment.sourceRankOneCoefficient A *
        (∑ i ∈ Icc 1 (⌊Real.exp A⌋₊ / 2),
          (ArithmeticFunction.moebius i : ℝ) / (i : ℝ)) ^ 2 +
      2 * rectangle (Icc 1 (⌊Real.exp A⌋₊ / 2)) (Icc 1 (⌊Real.exp A⌋₊ / 2))
        (ThetaRemainder.thetaRemainder A) := rfl

example (A : ℝ) (k q : ℕ) (hA : 1 ≤ A) (hk : 1 ≤ k) (hq : 1 ≤ q) :
    channelKernel A k q = Real.log (k : ℝ) / Real.sqrt ((k * q : ℕ) : ℝ) *
      sourceCorrelation explicitSecondDerivative A (Real.log ((k * q : ℕ) : ℝ)) :=
  channelKernel_eq_correlation_weight A k q hA hk hq

example (A : ℝ) (q : ℕ) (hq : 1 ≤ q)
    (hcut : Real.exp (2 * A) ≤ 4 * (q : ℝ)) :
    sourceSamplingKernel A q = channelKernel A 2 q + channelKernel A 3 q :=
  sourceSamplingKernel_eq_channels A q hq hcut

example (A : ℝ) :
    rectangle (Ioc (⌊Real.exp A⌋₊ / 2) ⌊Real.exp A⌋₊)
      (Ioc (⌊Real.exp A⌋₊ / 2) ⌊Real.exp A⌋₊) (fun q ↦ sourceSamplingKernel A q) =
      upperChannel A 2 + upperChannel A 3 := source_upper_boundary_eq_channels A

example (A : ℝ) : coreValue A =
    archimedeanValue explicitSecondDerivative A -
      4 * (∑ i ∈ Icc 1 (⌊Real.exp A⌋₊ / 2),
        (ArithmeticFunction.moebius i : ℝ) * sourceSamplingKernel A i) +
      2 * rectangle (Icc 1 (⌊Real.exp A⌋₊ / 2)) (Icc 1 (⌊Real.exp A⌋₊ / 2))
        (ThetaKernelTransport.thetaKernel A) := coreValue_eq_fullKernel A

example (A : ℝ) (hA : 1 ≤ A) :
    sourceQuadraticValue explicitSecondDerivative A =
      coreValue A - 2 * upperChannel A 2 - 2 * upperChannel A 3 :=
  sourceQuadraticValue_eq_core_sub_channels A hA

end UpperBoundaryChannelsExactStatements
