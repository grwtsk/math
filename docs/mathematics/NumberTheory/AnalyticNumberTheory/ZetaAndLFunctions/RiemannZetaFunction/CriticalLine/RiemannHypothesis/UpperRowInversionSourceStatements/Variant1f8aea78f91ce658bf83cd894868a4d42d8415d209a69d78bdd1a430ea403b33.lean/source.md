# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.UpperRowInversionSourceStatements.Variant1f8aea78f91ce658bf83cd894868a4d42d8415d209a69d78bdd1a430ea403b33

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8639566dfcfc791b1a8fd64d97befcccba9e77df` · SHA-256 `bc0c3346b55895e412441a3bdaea8613c406a307561e594c344fd89a92068737`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.UpperRowInversion.Variant455a9dc40274deef74888413255397c8512b523d9897cf4c1e0c1b29436d9741","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"455a9dc40274deef74888413255397c8512b523d9897cf4c1e0c1b29436d9741","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.UpperRowInversion.Variant455a9dc40274deef74888413255397c8512b523d9897cf4c1e0c1b29436d9741","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"455a9dc40274deef74888413255397c8512b523d9897cf4c1e0c1b29436d9741","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/arithmetic-routes/UpperRowInversionSourceStatements.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.RiemannHypothesis.SourceComparison.UpperRowInversion

namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.UpperRowInversion.Variant455a9dc40274deef74888413255397c8512b523d9897cf4c1e0c1b29436d9741

set_option autoImplicit false
section SourceUpperRowInversionStatements
open Finset
open FormalResearch.RiemannHypothesis.SourceComparison
open FormalResearch.RiemannHypothesis.SourcePairing
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.Realization
open FormalResearch.RiemannHypothesis.SourceComparison.UpperRowInversion

example (N B j : ℕ) (F : ℕ → ℝ) (hNB : N ≤ B) (hj : 1 ≤ j)
    (hF : ∀ n, N < n → F n = 0) :
    (∑ k ∈ Icc 1 B, F (j * k)) = ∑ k ∈ Icc 1 N, F (j * k) :=
  finite_inner_padding N B j F hNB hj hF

example (N B : ℕ) (F : ℕ → ℝ)
    (hN : 1 ≤ N) (hNB : N ≤ B) (hF : ∀ n, N < n → F n = 0) :
    (∑ j ∈ Icc 1 N, (ArithmeticFunction.moebius j : ℝ) *
      ∑ k ∈ Icc 1 B, F (j * k)) = F 1 :=
  finite_moebius_upper_inversion N B F hN hNB hF

example (A : ℝ) (i n : ℕ)
    (hi : ⌊Real.exp A⌋₊ / 2 < i) (hn : ⌊Real.exp A⌋₊ < n) :
    Real.exp (2 * A) ≤ 2 * ((i * n : ℕ) : ℝ) :=
  upper_row_product_threshold A i n hi hn

example (A : ℝ) (i n : ℕ)
    (hi : ⌊Real.exp A⌋₊ / 2 < i) (hn : ⌊Real.exp A⌋₊ < n) :
    SourceSampling.sourceSamplingKernel A ((i * n : ℕ) : ℝ) = 0 :=
  source_upper_row_support A i n hi hn

example (A : ℝ) (i : ℕ) (hA : 1 ≤ A)
    (hi : ⌊Real.exp A⌋₊ / 2 < i) :
    (∑ j ∈ Icc 1 ⌊Real.exp A⌋₊, (ArithmeticFunction.moebius j : ℝ) *
      ThetaKernelTransport.thetaKernel A (i * j)) = SourceSampling.sourceSamplingKernel A i :=
  source_upper_row_inversion A i hA hi

example (N M : ℕ) (F : ℕ → ℝ) (hMN : M ≤ N) :
    (∑ i ∈ Icc 1 N, F i) = (∑ i ∈ Icc 1 M, F i) + ∑ i ∈ Ioc M N, F i :=
  positive_sum_split N M F hMN

example (N M : ℕ) (T : Finset ℕ) (F : ℕ → ℝ) (hMN : M ≤ N) :
    JointBoundaryTransport.rectangle (Icc 1 N) T F =
      JointBoundaryTransport.rectangle (Icc 1 M) T F +
      JointBoundaryTransport.rectangle (Ioc M N) T F :=
  rectangle_cutoff_split N M T F hMN

example (N M : ℕ) (F : ℕ → ℝ) (hMN : M ≤ N) :
    JointBoundaryTransport.rectangle (Icc 1 N) (Icc 1 N) F =
      JointBoundaryTransport.rectangle (Icc 1 M) (Icc 1 M) F +
      2 * JointBoundaryTransport.rectangle (Ioc M N) (Icc 1 N) F -
      JointBoundaryTransport.rectangle (Ioc M N) (Ioc M N) F :=
  rectangle_core_upper_identity N M F hMN

example (A : ℝ) (hA : 1 ≤ A) :
    JointBoundaryTransport.rectangle
      (Ioc (⌊Real.exp A⌋₊ / 2) ⌊Real.exp A⌋₊) (Icc 1 ⌊Real.exp A⌋₊)
      (ThetaKernelTransport.thetaKernel A) =
      ∑ i ∈ Ioc (⌊Real.exp A⌋₊ / 2) ⌊Real.exp A⌋₊,
        (ArithmeticFunction.moebius i : ℝ) * SourceSampling.sourceSamplingKernel A i :=
  source_upper_rectangle_eq_linear A hA

example (A : ℝ) (i j : ℕ)
    (hi : ⌊Real.exp A⌋₊ / 2 < i) (hj : ⌊Real.exp A⌋₊ / 2 < j) :
    Real.exp (2 * A) ≤ 4 * ((i * j : ℕ) : ℝ) :=
  upper_square_product_threshold A i j hi hj

example (A : ℝ) (hA : 1 ≤ A) :
    JointBoundaryTransport.rectangle
      (Ioc (⌊Real.exp A⌋₊ / 2) ⌊Real.exp A⌋₊)
      (Ioc (⌊Real.exp A⌋₊ / 2) ⌊Real.exp A⌋₊) (ThetaKernelTransport.thetaKernel A) =
      JointBoundaryTransport.rectangle
        (Ioc (⌊Real.exp A⌋₊ / 2) ⌊Real.exp A⌋₊)
        (Ioc (⌊Real.exp A⌋₊ / 2) ⌊Real.exp A⌋₊)
        (fun q ↦ SourceSampling.sourceSamplingKernel A q) :=
  source_upper_square_eq_sampling A hA

example (A : ℝ) (hA : 1 ≤ A) :
    sourceQuadraticValue
      explicitSecondDerivative A =
      archimedeanValue
        explicitSecondDerivative A -
      4 * (∑ i ∈ Icc 1 (⌊Real.exp A⌋₊ / 2),
        (ArithmeticFunction.moebius i : ℝ) * SourceSampling.sourceSamplingKernel A i) +
      2 * JointBoundaryTransport.rectangle
        (Icc 1 (⌊Real.exp A⌋₊ / 2)) (Icc 1 (⌊Real.exp A⌋₊ / 2))
        (ThetaKernelTransport.thetaKernel A) -
      2 * JointBoundaryTransport.rectangle
        (Ioc (⌊Real.exp A⌋₊ / 2) ⌊Real.exp A⌋₊)
        (Ioc (⌊Real.exp A⌋₊ / 2) ⌊Real.exp A⌋₊)
        (fun q ↦ SourceSampling.sourceSamplingKernel A q) :=
  sourceQuadraticValue_core_upper A hA

example (A : ℝ) (M : ℕ) :
    0 ≤ CorrelationSecondMoment.sourceRankOneCoefficient A *
      (∑ i ∈ Icc 1 M, (ArithmeticFunction.moebius i : ℝ) / (i : ℝ)) ^ 2 :=
  core_rankOne_nonneg A M

example (A : ℝ) (hA : 1 ≤ A) :
    sourceQuadraticValue
      explicitSecondDerivative A =
      archimedeanValue
        explicitSecondDerivative A -
      4 * (∑ i ∈ Icc 1 (⌊Real.exp A⌋₊ / 2),
        (ArithmeticFunction.moebius i : ℝ) * SourceSampling.sourceSamplingKernel A i) +
      2 * CorrelationSecondMoment.sourceRankOneCoefficient A *
        (∑ i ∈ Icc 1 (⌊Real.exp A⌋₊ / 2),
          (ArithmeticFunction.moebius i : ℝ) / (i : ℝ)) ^ 2 +
      2 * JointBoundaryTransport.rectangle
        (Icc 1 (⌊Real.exp A⌋₊ / 2)) (Icc 1 (⌊Real.exp A⌋₊ / 2))
        (ThetaRemainder.thetaRemainder A) -
      2 * JointBoundaryTransport.rectangle
        (Ioc (⌊Real.exp A⌋₊ / 2) ⌊Real.exp A⌋₊)
        (Ioc (⌊Real.exp A⌋₊ / 2) ⌊Real.exp A⌋₊)
        (fun q ↦ SourceSampling.sourceSamplingKernel A q) :=
  sourceQuadraticValue_core_rankOne A hA
end SourceUpperRowInversionStatements
```
