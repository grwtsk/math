# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.UpperProductSignGuardSourceStatementSnippet.Variant98e7f82cdff6bfd9ea557ab3fa05ec469ce921dab519fa8a26ecb2315ad3f75c

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2d836f851f7f58a3bdc3434c0bd2b708137f23c1` · SHA-256 `10c61bc54a1faf91effefe41ed365714032afd69035151aa94c2097287971d71`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SourceUnit.Variant2f043af1d8dba7b0b1bce1f69087dc4f6437d3678d3295dbfcd1d4a591b57d7a","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"2f043af1d8dba7b0b1bce1f69087dc4f6437d3678d3295dbfcd1d4a591b57d7a","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.SourceUnit.Variant2f043af1d8dba7b0b1bce1f69087dc4f6437d3678d3295dbfcd1d4a591b57d7a","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"2f043af1d8dba7b0b1bce1f69087dc4f6437d3678d3295dbfcd1d4a591b57d7a","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/prime-budget/upper-product-sign-guard-source-statement-snippet.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}

namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SourceUnit.Variant2f043af1d8dba7b0b1bce1f69087dc4f6437d3678d3295dbfcd1d4a591b57d7a

namespace UpperProductSignGuardSourceStatements
open Finset FormalResearch.RiemannHypothesis.SourceComparison.UpperBoundaryAbel
noncomputable section

example (i j : ℕ) :
    (ArithmeticFunction.moebius i : ℝ)*(ArithmeticFunction.moebius j : ℝ) =
      (-1 : ℝ)^ArithmeticFunction.cardFactors (i*j) *
        (ArithmeticFunction.moebius i : ℝ)^2*(ArithmeticFunction.moebius j : ℝ)^2 :=
  FormalResearch.RiemannHypothesis.SourceComparison.UpperProductSignGuard.moebius_product_sign i j

example (S T : Finset ℕ) (n : ℕ) :
    (∑ i ∈ S, ∑ j ∈ T, if i*j=n then
      (ArithmeticFunction.moebius i : ℝ)*(ArithmeticFunction.moebius j : ℝ) else 0) =
      (-1 : ℝ)^ArithmeticFunction.cardFactors n *
        ∑ i ∈ S, ∑ j ∈ T, if i*j=n then
          (ArithmeticFunction.moebius i : ℝ)^2*(ArithmeticFunction.moebius j : ℝ)^2 else 0 :=
  FormalResearch.RiemannHypothesis.SourceComparison.UpperProductSignGuard.fixed_product_fiber_sign S T n

example (S T : Finset ℕ) (n : ℕ) :
    0 ≤ (-1 : ℝ)^ArithmeticFunction.cardFactors n *
      (∑ i ∈ S, ∑ j ∈ T, if i*j=n then
        (ArithmeticFunction.moebius i : ℝ)*(ArithmeticFunction.moebius j : ℝ) else 0) :=
  FormalResearch.RiemannHypothesis.SourceComparison.UpperProductSignGuard.fixed_product_fiber_sign_nonneg S T n

example :
    (∑ i ∈ Ioc 5 10, ∑ j ∈ Ioc 5 10, if i*j ≤ 36 then
      (ArithmeticFunction.moebius i : ℝ)*(ArithmeticFunction.moebius j : ℝ) else 0) = 1 :=
  FormalResearch.RiemannHypothesis.SourceComparison.UpperProductSignGuard.upper_cutoff_36

example :
    (∑ i ∈ Ioc 5 10, ∑ j ∈ Ioc 5 10, if i*j ≤ 42 then
      (ArithmeticFunction.moebius i : ℝ)*(ArithmeticFunction.moebius j : ℝ) else 0) = -1 :=
  FormalResearch.RiemannHypothesis.SourceComparison.UpperProductSignGuard.upper_cutoff_42

example (F : ℕ → ℝ) :
    (∑ i ∈ Ioc 5 10, ∑ j ∈ Ioc 5 10,
      (ArithmeticFunction.moebius i : ℝ)*(ArithmeticFunction.moebius j : ℝ)*F (i*j)) =
      F 36 - 2*F 42 + F 49 + 2*F 60 - 2*F 70 + F 100 :=
  FormalResearch.RiemannHypothesis.SourceComparison.UpperProductSignGuard.upper_square_10_eq F

example (N n : ℕ) :
    upperProductCoefficient N n =
      (-1 : ℝ)^ArithmeticFunction.cardFactors n *
        ∑ i ∈ Ioc (N/2) N, ∑ j ∈ Ioc (N/2) N, if i*j=n then
          (ArithmeticFunction.moebius i : ℝ)^2*(ArithmeticFunction.moebius j : ℝ)^2 else 0 :=
  FormalResearch.RiemannHypothesis.SourceComparison.UpperProductSignGuard.upperProductCoefficient_sign N n

example : upperProductSummatory 10 36 = 1 :=
  FormalResearch.RiemannHypothesis.SourceComparison.UpperProductSignGuard.upperProductSummatory_10_36

example : upperProductSummatory 10 42 = -1 :=
  FormalResearch.RiemannHypothesis.SourceComparison.UpperProductSignGuard.upperProductSummatory_10_42

example : ¬∀ (N : ℕ) (x : ℝ), 2≤N → 0≤x → 0≤upperProductSummatory N x :=
  FormalResearch.RiemannHypothesis.SourceComparison.UpperProductSignGuard.not_upperProductSummatory_nonneg

example : ∃ A : ℝ, 1 ≤ A ∧ 2*42 < Real.exp (2*A) ∧
    upperProductSummatory ⌊Real.exp A⌋₊ 42 < 0 :=
  FormalResearch.RiemannHypothesis.SourceComparison.UpperProductSignGuard.actual_signed_cumulative_negative_in_two_channel

end
end UpperProductSignGuardSourceStatements
```
