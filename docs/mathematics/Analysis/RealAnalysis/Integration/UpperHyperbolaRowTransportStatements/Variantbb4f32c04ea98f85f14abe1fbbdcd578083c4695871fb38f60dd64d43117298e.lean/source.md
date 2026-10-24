# Complete source: GRWTSK.Analysis.RealAnalysis.Integration.UpperHyperbolaRowTransportStatements.Variantbb4f32c04ea98f85f14abe1fbbdcd578083c4695871fb38f60dd64d43117298e

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `165fc6f3783c3d029b5a16bd206539748ba24221` · SHA-256 `941d8988013a2cf262d92fa7fcd0e24d15ea74b66169f6620a4ae7b149758ba1`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.Integration
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.Integration.UpperHyperbolaRowTransport.Variant18e5d30f1e326601de6311d50807443f26005733a73e8023d2af04b06baa27a5","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"18e5d30f1e326601de6311d50807443f26005733a73e8023d2af04b06baa27a5","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Integration.SourceCorpus.UpperHyperbolaRowTransport.Variant18e5d30f1e326601de6311d50807443f26005733a73e8023d2af04b06baa27a5","mathematical_subject":"Analysis.Integration","original_sha256":"18e5d30f1e326601de6311d50807443f26005733a73e8023d2af04b06baa27a5","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/arithmetic-routes/UpperHyperbolaRowTransportStatements.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import UpperHyperbolaRowTransport

namespace GRWTSK.Analysis.RealAnalysis.Integration.UpperHyperbolaRowTransport.Variant18e5d30f1e326601de6311d50807443f26005733a73e8023d2af04b06baa27a5

set_option autoImplicit false
section UpperHyperbolaRowTransportStatements
open Finset MeasureTheory
open FormalResearch.RiemannHypothesis.SourceComparison
open UpperBoundaryHyperbola
open UpperHyperbolaRowTransportScratch

example (N : ℕ) (x : ℝ) :
    upperHyperbola N x =
      ∑ i ∈ Ioc (N / 2) N, ∑ j ∈ Ioc (N / 2) N,
        if ((i * max i j : ℕ) : ℝ) ≤ x then
          (ArithmeticFunction.moebius i : ℝ) * (ArithmeticFunction.moebius j : ℝ) else 0 :=
  UpperHyperbolaRowTransportScratch.upperHyperbola_eq_threshold_sum N x

example (A : ℝ) (i j : ℕ)
    (hi : i ∈ Ioc (⌊Real.exp A⌋₊ / 2) ⌊Real.exp A⌋₊)
    (hj : j ∈ Ioc (⌊Real.exp A⌋₊ / 2) ⌊Real.exp A⌋₊) :
    ((i * max i j : ℕ) : ℝ) ∈ Set.Icc 1 (Real.exp (2 * A)) :=
  UpperHyperbolaRowTransportScratch.upper_threshold_mem_source_interval A i j hi hj

example (g : ℝ → ℝ) (a b r : ℝ)
    (hg : IntegrableOn g (Set.Icc a b)) :
    IntegrableOn (fun x ↦ if r ≤ x then g x else 0) (Set.Icc a b) :=
  UpperHyperbolaRowTransportScratch.closed_tail_integrableOn g a b r hg

example (g : ℝ → ℝ) (a b r : ℝ) (hr : r ∈ Set.Icc a b) :
    (∫ x in a..b, if r ≤ x then g x else 0) = ∫ x in r..b, g x :=
  UpperHyperbolaRowTransportScratch.integral_closed_tail g a b r hr

example (A r : ℝ) (hA : 1 ≤ A)
    (hr : r ∈ Set.Icc 1 (Real.exp (2 * A))) :
    (∫ x in 1..Real.exp (2 * A),
      if r ≤ x then deriv (SourceSampling.sourceSamplingKernel A) x else 0) =
      -SourceSampling.sourceSamplingKernel A r :=
  UpperHyperbolaRowTransportScratch.source_closed_tail_integral A r hA hr

example (A r c : ℝ) (hA : 1 ≤ A) :
    IntervalIntegrable
      (fun x ↦ c * (if r ≤ x then deriv (SourceSampling.sourceSamplingKernel A) x else 0))
      volume 1 (Real.exp (2 * A)) :=
  UpperHyperbolaRowTransportScratch.source_weighted_tail_intervalIntegrable A r c hA

example (A : ℝ) (hA : 1 ≤ A) :
    (∫ x in 1..Real.exp (2 * A), upperHyperbola ⌊Real.exp A⌋₊ x *
      deriv (SourceSampling.sourceSamplingKernel A) x) =
      -∑ i ∈ Ioc (⌊Real.exp A⌋₊ / 2) ⌊Real.exp A⌋₊,
        ∑ j ∈ Ioc (⌊Real.exp A⌋₊ / 2) ⌊Real.exp A⌋₊,
          (ArithmeticFunction.moebius i : ℝ) * (ArithmeticFunction.moebius j : ℝ) *
            SourceSampling.sourceSamplingKernel A ((i * max i j : ℕ) : ℝ) :=
  UpperHyperbolaRowTransportScratch.source_hyperbola_integral_eq_rows A hA

example (N i : ℕ) (F : ℕ → ℝ) (hi : i ∈ Ioc (N / 2) N) :
    (∑ j ∈ Ioc (N / 2) N, (ArithmeticFunction.moebius j : ℝ) * F (i * max i j)) =
      F (i ^ 2) * (∑ j ∈ Ioc (N / 2) i, (ArithmeticFunction.moebius j : ℝ)) +
        ∑ j ∈ Ioc i N, (ArithmeticFunction.moebius j : ℝ) * F (i * j) :=
  UpperHyperbolaRowTransportScratch.full_upper_row_split N i F hi

example (A : ℝ) (hA : 1 ≤ A) :
    (∫ x in 1..Real.exp (2 * A), upperHyperbola ⌊Real.exp A⌋₊ x *
      deriv (SourceSampling.sourceSamplingKernel A) x) =
      -∑ i ∈ Ioc (⌊Real.exp A⌋₊ / 2) ⌊Real.exp A⌋₊,
        (ArithmeticFunction.moebius i : ℝ) *
          (SourceSampling.sourceSamplingKernel A ((i ^ 2 : ℕ) : ℝ) *
              (∑ j ∈ Ioc (⌊Real.exp A⌋₊ / 2) i, (ArithmeticFunction.moebius j : ℝ)) +
            ∑ j ∈ Ioc i ⌊Real.exp A⌋₊, (ArithmeticFunction.moebius j : ℝ) *
              SourceSampling.sourceSamplingKernel A ((i * j : ℕ) : ℝ)) :=
  UpperHyperbolaRowTransportScratch.source_hyperbola_integral_eq_split_rows A hA

end UpperHyperbolaRowTransportStatements
```
