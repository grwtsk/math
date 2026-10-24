-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.Integration
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.Integration.UpperBoundaryAbel.Variant01188713ee1b24f695855435a842f913e2e0beeae8a6029592b5a375e9f42ef0","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"01188713ee1b24f695855435a842f913e2e0beeae8a6029592b5a375e9f42ef0","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Integration.SourceCorpus.UpperBoundaryAbel.Variant01188713ee1b24f695855435a842f913e2e0beeae8a6029592b5a375e9f42ef0","mathematical_subject":"Analysis.Integration","original_sha256":"01188713ee1b24f695855435a842f913e2e0beeae8a6029592b5a375e9f42ef0","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/arithmetic-routes/UpperBoundaryAbelStatements.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import UpperBoundaryAbel

namespace GRWTSK.Analysis.RealAnalysis.Integration.UpperBoundaryAbel.Variant01188713ee1b24f695855435a842f913e2e0beeae8a6029592b5a375e9f42ef0

set_option autoImplicit false
section UpperBoundaryAbelStatements
open Finset MeasureTheory
open FormalResearch.RiemannHypothesis.SourceComparison
open UpperBoundaryAbelScratch

example (N n : ℕ) : upperProductCoefficient N n =
    ∑ i ∈ Ioc (N / 2) N, ∑ j ∈ Ioc (N / 2) N,
      if i * j = n then
        (ArithmeticFunction.moebius i : ℝ) * (ArithmeticFunction.moebius j : ℝ) else 0 := rfl

example (N : ℕ) (x : ℝ) : upperProductSummatory N x =
    ∑ n ∈ Icc 1 ⌊x⌋₊, upperProductCoefficient N n := rfl

example (N : ℕ) : upperProductCoefficient N 0 = 0 := upperProductCoefficient_zero N

example (N : ℕ) (hN : 2 ≤ N) : upperProductCoefficient N 1 = 0 :=
  upperProductCoefficient_one N hN

example (N : ℕ) (hN : 2 ≤ N) : upperProductSummatory N 1 = 0 :=
  upperProductSummatory_one N hN

example (N B : ℕ) (F : ℕ → ℝ) (hB : N * N ≤ B) :
    JointBoundaryTransport.rectangle (Ioc (N / 2) N) (Ioc (N / 2) N) F =
      ∑ n ∈ Icc 1 B, upperProductCoefficient N n * F n :=
  upper_rectangle_eq_weighted_product_sum N B F hB

example (N : ℕ) (x : ℝ) (hx : 0 ≤ x) : upperProductSummatory N x =
    ∑ i ∈ Ioc (N / 2) N, ∑ j ∈ Ioc (N / 2) N,
      if ((i * j : ℕ) : ℝ) ≤ x then
        (ArithmeticFunction.moebius i : ℝ) * (ArithmeticFunction.moebius j : ℝ) else 0 :=
  upperProductSummatory_eq_rectangle_cutoff N x hx

example (N : ℕ) (g : ℝ → ℝ) (a b : ℝ) (ha : 0 ≤ a)
    (hg : IntegrableOn g (Set.Icc a b)) :
    IntegrableOn (fun x ↦ upperProductSummatory N x * g x) (Set.Icc a b) :=
  upperProductSummatory_mul_integrableOn N g a b ha hg

example (N : ℕ) (f : ℝ → ℝ) (a b : ℝ) (ha : 0 ≤ a) (hab : a ≤ b)
    (hd : ∀ x ∈ Set.Icc a b, DifferentiableAt ℝ f x)
    (hi : IntegrableOn (deriv f) (Set.Icc a b)) :
    (∑ n ∈ Ioc ⌊a⌋₊ ⌊b⌋₊, upperProductCoefficient N n * f n) =
      upperProductSummatory N b * f b - upperProductSummatory N a * f a -
        ∫ x in a..b, upperProductSummatory N x * deriv f x :=
  upperProduct_sum_eq_abel N f a b ha hab hd hi

example (N : ℕ) (f : ℝ → ℝ) (b : ℝ) (hN : 2 ≤ N) (hb : 1 ≤ b)
    (hB : N * N ≤ ⌊b⌋₊) (hd : ∀ x ∈ Set.Icc 1 b, DifferentiableAt ℝ f x)
    (hi : IntegrableOn (deriv f) (Set.Icc 1 b)) (hz : f b = 0) :
    JointBoundaryTransport.rectangle (Ioc (N / 2) N) (Ioc (N / 2) N)
      (fun n ↦ f n) = -∫ x in 1..b, upperProductSummatory N x * deriv f x :=
  upper_rectangle_eq_abel N f b hN hb hB hd hi hz

example (A : ℝ) (hA : 1 ≤ A) : IntegrableOn
    (fun x ↦ upperProductSummatory ⌊Real.exp A⌋₊ x *
      deriv (SourceSampling.sourceSamplingKernel A) x)
    (Set.Icc 1 (Real.exp (2 * A))) := source_upper_boundary_integrableOn A hA

example (A : ℝ) (hA : 1 ≤ A) : IntervalIntegrable
    (fun x ↦ upperProductSummatory ⌊Real.exp A⌋₊ x *
      deriv (SourceSampling.sourceSamplingKernel A) x)
    volume 1 (Real.exp (2 * A)) := source_upper_boundary_intervalIntegrable A hA

example (A : ℝ) (hA : 1 ≤ A) : JointBoundaryTransport.rectangle
    (Ioc (⌊Real.exp A⌋₊ / 2) ⌊Real.exp A⌋₊)
    (Ioc (⌊Real.exp A⌋₊ / 2) ⌊Real.exp A⌋₊)
    (fun n ↦ SourceSampling.sourceSamplingKernel A n) =
    -∫ x in 1..Real.exp (2 * A), upperProductSummatory ⌊Real.exp A⌋₊ x *
      deriv (SourceSampling.sourceSamplingKernel A) x := source_upper_boundary_eq_abel A hA

end UpperBoundaryAbelStatements
