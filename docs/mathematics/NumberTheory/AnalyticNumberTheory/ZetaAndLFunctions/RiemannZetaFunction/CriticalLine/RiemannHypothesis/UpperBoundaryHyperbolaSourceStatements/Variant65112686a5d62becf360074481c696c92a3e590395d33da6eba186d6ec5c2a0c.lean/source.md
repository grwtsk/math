# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.UpperBoundaryHyperbolaSourceStatements.Variant65112686a5d62becf360074481c696c92a3e590395d33da6eba186d6ec5c2a0c

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e3097106034fc8e7a5613a0c348a0515add6aca9` · SHA-256 `d9802696d54bf522b65d31d6e7d136879be0628cdc276366cec557be914aba5a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.UpperBoundaryHyperbola.Variantb04530172d1b19bfcfbc6f8ff0db3a9967fd013b5c56d7f907642a3c64a288cb","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"b04530172d1b19bfcfbc6f8ff0db3a9967fd013b5c56d7f907642a3c64a288cb","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.UpperBoundaryHyperbola.Variantb04530172d1b19bfcfbc6f8ff0db3a9967fd013b5c56d7f907642a3c64a288cb","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"b04530172d1b19bfcfbc6f8ff0db3a9967fd013b5c56d7f907642a3c64a288cb","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/arithmetic-routes/UpperBoundaryHyperbolaSourceStatements.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.RiemannHypothesis.SourceComparison.UpperBoundaryHyperbola

namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.UpperBoundaryHyperbola.Variantb04530172d1b19bfcfbc6f8ff0db3a9967fd013b5c56d7f907642a3c64a288cb

set_option autoImplicit false
section SourceUpperBoundaryHyperbolaStatements
open Finset MeasureTheory
open FormalResearch.RiemannHypothesis.SourceComparison
open FormalResearch.RiemannHypothesis.SourcePairing
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.Realization
open FormalResearch.RiemannHypothesis.SourceComparison.UpperBoundaryHyperbola

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
  FormalResearch.RiemannHypothesis.SourceComparison.UpperBoundaryHyperbola.mem_upperSmallIndices_iff N i x

example (N : ℕ) (x : ℝ) (hx : 0 ≤ x) :
    upperSmallIndices N x = Ioc (N / 2) (min N ⌊Real.sqrt x⌋₊) :=
  FormalResearch.RiemannHypothesis.SourceComparison.UpperBoundaryHyperbola.upperSmallIndices_eq_sqrt_cutoff N x hx

example (N : ℕ) (x : ℝ) (hx : 0 ≤ x) :
    UpperBoundaryAbel.upperProductSummatory N x =
      2 * upperHyperbola N x - upperSmallSum N x ^ 2 :=
  FormalResearch.RiemannHypothesis.SourceComparison.UpperBoundaryHyperbola.upperProductSummatory_eq_hyperbola N x hx

example (N : ℕ) (x : ℝ) :
    0 ≤ upperSmallSum N x ^ 2 :=
  FormalResearch.RiemannHypothesis.SourceComparison.UpperBoundaryHyperbola.upperSmallSum_square_nonneg N x

example (N i : ℕ) (x : ℝ) (hx : 0 ≤ x) (hi : 0 < i) :
    (Ioc (N / 2) N).filter (fun j : ℕ ↦ ((i * j : ℕ) : ℝ) ≤ x) =
      Ioc (N / 2) (min N ⌊x / (i : ℝ)⌋₊) :=
  FormalResearch.RiemannHypothesis.SourceComparison.UpperBoundaryHyperbola.upperRowIndices_eq_div_cutoff N i x hx hi

example (N : ℕ) (x : ℝ) (hx : 0 ≤ x) :
    upperHyperbola N x =
      ∑ i ∈ Ioc (N / 2) (min N ⌊Real.sqrt x⌋₊),
        (ArithmeticFunction.moebius i : ℝ) *
          ∑ j ∈ Ioc (N / 2) (min N ⌊x / (i : ℝ)⌋₊),
            (ArithmeticFunction.moebius j : ℝ) :=
  FormalResearch.RiemannHypothesis.SourceComparison.UpperBoundaryHyperbola.upperHyperbola_eq_floor_sum N x hx

example (N : ℕ) (x : ℝ) (hx : 0 ≤ x) :
    upperSmallSum N x =
      ∑ i ∈ Ioc (N / 2) (min N ⌊Real.sqrt x⌋₊), (ArithmeticFunction.moebius i : ℝ) :=
  FormalResearch.RiemannHypothesis.SourceComparison.UpperBoundaryHyperbola.upperSmallSum_eq_floor_sum N x hx

example (N : ℕ) (x : ℝ) (hx : 0 ≤ x) :
    UpperBoundaryAbel.upperProductSummatory N x =
      2 * (∑ i ∈ Ioc (N / 2) (min N ⌊Real.sqrt x⌋₊),
        (ArithmeticFunction.moebius i : ℝ) *
          ∑ j ∈ Ioc (N / 2) (min N ⌊x / (i : ℝ)⌋₊),
            (ArithmeticFunction.moebius j : ℝ)) -
      (∑ i ∈ Ioc (N / 2) (min N ⌊Real.sqrt x⌋₊),
        (ArithmeticFunction.moebius i : ℝ)) ^ 2 :=
  FormalResearch.RiemannHypothesis.SourceComparison.UpperBoundaryHyperbola.upperProductSummatory_eq_floor_hyperbola N x hx

example (N : ℕ) : Measurable (upperSmallSum N) :=
  FormalResearch.RiemannHypothesis.SourceComparison.UpperBoundaryHyperbola.upperSmallSum_measurable N

example (N : ℕ) (x : ℝ) :
    |upperSmallSum N x| ≤
      ∑ i ∈ Ioc (N / 2) N, |(ArithmeticFunction.moebius i : ℝ)| :=
  FormalResearch.RiemannHypothesis.SourceComparison.UpperBoundaryHyperbola.upperSmallSum_abs_le N x

example (N : ℕ) (g : ℝ → ℝ) (a b : ℝ)
    (hg : IntegrableOn g (Set.Icc a b)) :
    IntegrableOn (fun x ↦ upperSmallSum N x ^ 2 * g x) (Set.Icc a b) :=
  FormalResearch.RiemannHypothesis.SourceComparison.UpperBoundaryHyperbola.upperSmallSum_square_mul_integrableOn N g a b hg

example (N : ℕ) (g : ℝ → ℝ) (a b : ℝ)
    (ha : 0 ≤ a) (hg : IntegrableOn g (Set.Icc a b)) :
    IntegrableOn (fun x ↦ upperHyperbola N x * g x) (Set.Icc a b) :=
  FormalResearch.RiemannHypothesis.SourceComparison.UpperBoundaryHyperbola.upperHyperbola_mul_integrableOn N g a b ha hg

example (N : ℕ) (g : ℝ → ℝ) (a b : ℝ)
    (ha : 0 ≤ a) (hab : a ≤ b) (hg : IntegrableOn g (Set.Icc a b)) :
    (∫ x in a..b, UpperBoundaryAbel.upperProductSummatory N x * g x) =
      2 * (∫ x in a..b, upperHyperbola N x * g x) -
        ∫ x in a..b, upperSmallSum N x ^ 2 * g x :=
  FormalResearch.RiemannHypothesis.SourceComparison.UpperBoundaryHyperbola.upperProduct_integral_eq_hyperbola N g a b ha hab hg

example (A : ℝ) (hA : 1 ≤ A) :
    IntegrableOn
      (fun x ↦ upperHyperbola ⌊Real.exp A⌋₊ x *
        deriv (SourceSampling.sourceSamplingKernel A) x)
      (Set.Icc 1 (Real.exp (2 * A))) :=
  FormalResearch.RiemannHypothesis.SourceComparison.UpperBoundaryHyperbola.source_hyperbola_derivative_integrableOn A hA

example (A : ℝ) (hA : 1 ≤ A) :
    IntegrableOn
      (fun x ↦ upperSmallSum ⌊Real.exp A⌋₊ x ^ 2 *
        deriv (SourceSampling.sourceSamplingKernel A) x)
      (Set.Icc 1 (Real.exp (2 * A))) :=
  FormalResearch.RiemannHypothesis.SourceComparison.UpperBoundaryHyperbola.source_square_derivative_integrableOn A hA

example (A : ℝ) (hA : 1 ≤ A) :
    sourceQuadraticValue explicitSecondDerivative A =
      UpperBoundaryChannels.coreValue A +
        4 * (∫ x in 1..Real.exp (2 * A), upperHyperbola ⌊Real.exp A⌋₊ x *
          deriv (SourceSampling.sourceSamplingKernel A) x) -
        2 * ∫ x in 1..Real.exp (2 * A), upperSmallSum ⌊Real.exp A⌋₊ x ^ 2 *
          deriv (SourceSampling.sourceSamplingKernel A) x :=
  FormalResearch.RiemannHypothesis.SourceComparison.UpperBoundaryHyperbola.sourceQuadraticValue_eq_hyperbola_integrals A hA

end SourceUpperBoundaryHyperbolaStatements
```
