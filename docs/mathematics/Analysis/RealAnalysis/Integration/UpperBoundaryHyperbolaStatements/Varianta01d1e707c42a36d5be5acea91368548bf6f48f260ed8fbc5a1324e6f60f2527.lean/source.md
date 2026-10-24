# Complete source: GRWTSK.Analysis.RealAnalysis.Integration.UpperBoundaryHyperbolaStatements.Varianta01d1e707c42a36d5be5acea91368548bf6f48f260ed8fbc5a1324e6f60f2527

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e0dfb3be6453e7c10a8dee0dd437690236ba206b` · SHA-256 `c1e239bfb74946ec286c85af3db584710dad93ba9684b5bc9441e5791de5c156`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.Integration
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.Integration.UpperBoundaryHyperbola.Variant545325d6f68da7600436bb7d0150c0b3e00bef21377a4c43f9ce09166d4795cc","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"545325d6f68da7600436bb7d0150c0b3e00bef21377a4c43f9ce09166d4795cc","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Integration.SourceCorpus.UpperBoundaryHyperbola.Variant545325d6f68da7600436bb7d0150c0b3e00bef21377a4c43f9ce09166d4795cc","mathematical_subject":"Analysis.Integration","original_sha256":"545325d6f68da7600436bb7d0150c0b3e00bef21377a4c43f9ce09166d4795cc","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/arithmetic-routes/UpperBoundaryHyperbolaStatements.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import UpperBoundaryHyperbola

namespace GRWTSK.Analysis.RealAnalysis.Integration.UpperBoundaryHyperbola.Variant545325d6f68da7600436bb7d0150c0b3e00bef21377a4c43f9ce09166d4795cc

set_option autoImplicit false
section UpperBoundaryHyperbolaStatements
open Finset MeasureTheory
open FormalResearch.RiemannHypothesis.SourceComparison
open FormalResearch.RiemannHypothesis.SourcePairing
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.Realization
open UpperBoundaryHyperbolaScratch

example (N : ℕ) (x : ℝ) : upperSmallIndices N x =
    (Ioc (N / 2) N).filter (fun i : ℕ ↦ (i : ℝ) ^ 2 ≤ x) := rfl

example (N : ℕ) (x : ℝ) : upperSmallSum N x =
    ∑ i ∈ upperSmallIndices N x, (ArithmeticFunction.moebius i : ℝ) := rfl

example (N : ℕ) (x : ℝ) : upperHyperbola N x =
    ∑ i ∈ upperSmallIndices N x, (ArithmeticFunction.moebius i : ℝ) *
      ∑ j ∈ (Ioc (N / 2) N).filter (fun j : ℕ ↦ ((i * j : ℕ) : ℝ) ≤ x),
        (ArithmeticFunction.moebius j : ℝ) := rfl

example (N i : ℕ) (x : ℝ) :
    i ∈ upperSmallIndices N x ↔ N / 2 < i ∧ i ≤ N ∧ (i : ℝ) ^ 2 ≤ x :=
  UpperBoundaryHyperbolaScratch.mem_upperSmallIndices_iff N i x

example (N : ℕ) (x : ℝ) (hx : 0 ≤ x) :
    upperSmallIndices N x = Ioc (N / 2) (min N ⌊Real.sqrt x⌋₊) :=
  UpperBoundaryHyperbolaScratch.upperSmallIndices_eq_sqrt_cutoff N x hx

example (N : ℕ) (x : ℝ) (hx : 0 ≤ x) :
    UpperBoundaryAbel.upperProductSummatory N x =
      2 * upperHyperbola N x - upperSmallSum N x ^ 2 :=
  UpperBoundaryHyperbolaScratch.upperProductSummatory_eq_hyperbola N x hx

example (N : ℕ) (x : ℝ) :
    0 ≤ upperSmallSum N x ^ 2 :=
  UpperBoundaryHyperbolaScratch.upperSmallSum_square_nonneg N x

example (N i : ℕ) (x : ℝ) (hx : 0 ≤ x) (hi : 0 < i) :
    (Ioc (N / 2) N).filter (fun j : ℕ ↦ ((i * j : ℕ) : ℝ) ≤ x) =
      Ioc (N / 2) (min N ⌊x / (i : ℝ)⌋₊) :=
  UpperBoundaryHyperbolaScratch.upperRowIndices_eq_div_cutoff N i x hx hi

example (N : ℕ) (x : ℝ) (hx : 0 ≤ x) :
    upperHyperbola N x =
      ∑ i ∈ Ioc (N / 2) (min N ⌊Real.sqrt x⌋₊),
        (ArithmeticFunction.moebius i : ℝ) *
          ∑ j ∈ Ioc (N / 2) (min N ⌊x / (i : ℝ)⌋₊),
            (ArithmeticFunction.moebius j : ℝ) :=
  UpperBoundaryHyperbolaScratch.upperHyperbola_eq_floor_sum N x hx

example (N : ℕ) (x : ℝ) (hx : 0 ≤ x) :
    upperSmallSum N x =
      ∑ i ∈ Ioc (N / 2) (min N ⌊Real.sqrt x⌋₊), (ArithmeticFunction.moebius i : ℝ) :=
  UpperBoundaryHyperbolaScratch.upperSmallSum_eq_floor_sum N x hx

example (N : ℕ) (x : ℝ) (hx : 0 ≤ x) :
    UpperBoundaryAbel.upperProductSummatory N x =
      2 * (∑ i ∈ Ioc (N / 2) (min N ⌊Real.sqrt x⌋₊),
        (ArithmeticFunction.moebius i : ℝ) *
          ∑ j ∈ Ioc (N / 2) (min N ⌊x / (i : ℝ)⌋₊),
            (ArithmeticFunction.moebius j : ℝ)) -
      (∑ i ∈ Ioc (N / 2) (min N ⌊Real.sqrt x⌋₊),
        (ArithmeticFunction.moebius i : ℝ)) ^ 2 :=
  UpperBoundaryHyperbolaScratch.upperProductSummatory_eq_floor_hyperbola N x hx

example (N : ℕ) : Measurable (upperSmallSum N) :=
  UpperBoundaryHyperbolaScratch.upperSmallSum_measurable N

example (N : ℕ) (x : ℝ) :
    |upperSmallSum N x| ≤
      ∑ i ∈ Ioc (N / 2) N, |(ArithmeticFunction.moebius i : ℝ)| :=
  UpperBoundaryHyperbolaScratch.upperSmallSum_abs_le N x

example (N : ℕ) (g : ℝ → ℝ) (a b : ℝ)
    (hg : IntegrableOn g (Set.Icc a b)) :
    IntegrableOn (fun x ↦ upperSmallSum N x ^ 2 * g x) (Set.Icc a b) :=
  UpperBoundaryHyperbolaScratch.upperSmallSum_square_mul_integrableOn N g a b hg

example (N : ℕ) (g : ℝ → ℝ) (a b : ℝ)
    (ha : 0 ≤ a) (hg : IntegrableOn g (Set.Icc a b)) :
    IntegrableOn (fun x ↦ upperHyperbola N x * g x) (Set.Icc a b) :=
  UpperBoundaryHyperbolaScratch.upperHyperbola_mul_integrableOn N g a b ha hg

example (N : ℕ) (g : ℝ → ℝ) (a b : ℝ)
    (ha : 0 ≤ a) (hab : a ≤ b) (hg : IntegrableOn g (Set.Icc a b)) :
    (∫ x in a..b, UpperBoundaryAbel.upperProductSummatory N x * g x) =
      2 * (∫ x in a..b, upperHyperbola N x * g x) -
        ∫ x in a..b, upperSmallSum N x ^ 2 * g x :=
  UpperBoundaryHyperbolaScratch.upperProduct_integral_eq_hyperbola N g a b ha hab hg

example (A : ℝ) (hA : 1 ≤ A) :
    IntegrableOn
      (fun x ↦ upperHyperbola ⌊Real.exp A⌋₊ x *
        deriv (SourceSampling.sourceSamplingKernel A) x)
      (Set.Icc 1 (Real.exp (2 * A))) :=
  UpperBoundaryHyperbolaScratch.source_hyperbola_derivative_integrableOn A hA

example (A : ℝ) (hA : 1 ≤ A) :
    IntegrableOn
      (fun x ↦ upperSmallSum ⌊Real.exp A⌋₊ x ^ 2 *
        deriv (SourceSampling.sourceSamplingKernel A) x)
      (Set.Icc 1 (Real.exp (2 * A))) :=
  UpperBoundaryHyperbolaScratch.source_square_derivative_integrableOn A hA

example (A : ℝ) (hA : 1 ≤ A) :
    sourceQuadraticValue explicitSecondDerivative A =
      UpperBoundaryChannels.coreValue A +
        4 * (∫ x in 1..Real.exp (2 * A), upperHyperbola ⌊Real.exp A⌋₊ x *
          deriv (SourceSampling.sourceSamplingKernel A) x) -
        2 * ∫ x in 1..Real.exp (2 * A), upperSmallSum ⌊Real.exp A⌋₊ x ^ 2 *
          deriv (SourceSampling.sourceSamplingKernel A) x :=
  UpperBoundaryHyperbolaScratch.sourceQuadraticValue_eq_hyperbola_integrals A hA

end UpperBoundaryHyperbolaStatements
```
