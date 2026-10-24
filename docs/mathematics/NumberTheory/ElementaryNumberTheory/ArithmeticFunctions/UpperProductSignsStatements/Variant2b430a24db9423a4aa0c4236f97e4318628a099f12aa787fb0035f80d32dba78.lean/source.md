# Complete source: GRWTSK.NumberTheory.ElementaryNumberTheory.ArithmeticFunctions.UpperProductSignsStatements.Variant2b430a24db9423a4aa0c4236f97e4318628a099f12aa787fb0035f80d32dba78

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `fc3f86a305c9a770d5347ef785766027d59f6e46` · SHA-256 `519615a2c9d5d2ba5f0a98f728df4fd5f49fbb838fb5d0da91c7c8b8dcab72e3`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.ElementaryNumberTheory.ArithmeticFunctions
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.ElementaryNumberTheory.ArithmeticFunctions.UpperProductSummatorySigns.Variant23c71c5fcad9c2ec99396711f53c24b1f5257bbd12fc36e7c23d9dbda9036528","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"23c71c5fcad9c2ec99396711f53c24b1f5257bbd12fc36e7c23d9dbda9036528","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.ArithmeticFunctions.SourceCorpus.UpperProductSummatorySigns.Variant23c71c5fcad9c2ec99396711f53c24b1f5257bbd12fc36e7c23d9dbda9036528","mathematical_subject":"NumberTheory.ArithmeticFunctions","original_sha256":"23c71c5fcad9c2ec99396711f53c24b1f5257bbd12fc36e7c23d9dbda9036528","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/prime-budget/UpperProductSignsStatements.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import UpperProductSummatorySigns


namespace GRWTSK.NumberTheory.ElementaryNumberTheory.ArithmeticFunctions.UpperProductSummatorySigns.Variant23c71c5fcad9c2ec99396711f53c24b1f5257bbd12fc36e7c23d9dbda9036528

set_option autoImplicit false

namespace UpperProductSignsStatements
open Finset FormalResearch.RiemannHypothesis.SourceComparison.UpperBoundaryAbel
noncomputable section

example (i j : ℕ) :
    (ArithmeticFunction.moebius i : ℝ)*(ArithmeticFunction.moebius j : ℝ) =
      (-1 : ℝ)^ArithmeticFunction.cardFactors (i*j) *
        (ArithmeticFunction.moebius i : ℝ)^2*(ArithmeticFunction.moebius j : ℝ)^2 :=
  ProductFiberSignsScratch.moebius_product_sign i j

example (S T : Finset ℕ) (n : ℕ) :
    (∑ i ∈ S, ∑ j ∈ T, if i*j=n then
      (ArithmeticFunction.moebius i : ℝ)*(ArithmeticFunction.moebius j : ℝ) else 0) =
      (-1 : ℝ)^ArithmeticFunction.cardFactors n *
        ∑ i ∈ S, ∑ j ∈ T, if i*j=n then
          (ArithmeticFunction.moebius i : ℝ)^2*(ArithmeticFunction.moebius j : ℝ)^2 else 0 :=
  ProductFiberSignsScratch.fixed_product_fiber_sign S T n

example (S T : Finset ℕ) (n : ℕ) :
    0 ≤ (-1 : ℝ)^ArithmeticFunction.cardFactors n *
      (∑ i ∈ S, ∑ j ∈ T, if i*j=n then
        (ArithmeticFunction.moebius i : ℝ)*(ArithmeticFunction.moebius j : ℝ) else 0) :=
  ProductFiberSignsScratch.fixed_product_fiber_sign_nonneg S T n

example :
    (∑ i ∈ Ioc 5 10, ∑ j ∈ Ioc 5 10, if i*j ≤ 36 then
      (ArithmeticFunction.moebius i : ℝ)*(ArithmeticFunction.moebius j : ℝ) else 0) = 1 :=
  UpperProductFiniteSignsScratch.upper_cutoff_36

example :
    (∑ i ∈ Ioc 5 10, ∑ j ∈ Ioc 5 10, if i*j ≤ 42 then
      (ArithmeticFunction.moebius i : ℝ)*(ArithmeticFunction.moebius j : ℝ) else 0) = -1 :=
  UpperProductFiniteSignsScratch.upper_cutoff_42

example (F : ℕ → ℝ) :
    (∑ i ∈ Ioc 5 10, ∑ j ∈ Ioc 5 10,
      (ArithmeticFunction.moebius i : ℝ)*(ArithmeticFunction.moebius j : ℝ)*F (i*j)) =
      F 36 - 2*F 42 + F 49 + 2*F 60 - 2*F 70 + F 100 :=
  UpperProductFiniteSignsScratch.upper_square_10_eq F

example (N n : ℕ) :
    upperProductCoefficient N n =
      (-1 : ℝ)^ArithmeticFunction.cardFactors n *
        ∑ i ∈ Ioc (N/2) N, ∑ j ∈ Ioc (N/2) N, if i*j=n then
          (ArithmeticFunction.moebius i : ℝ)^2*(ArithmeticFunction.moebius j : ℝ)^2 else 0 :=
  UpperProductSummatorySignsScratch.upperProductCoefficient_sign N n

example : upperProductSummatory 10 36 = 1 :=
  UpperProductSummatorySignsScratch.upperProductSummatory_10_36

example : upperProductSummatory 10 42 = -1 :=
  UpperProductSummatorySignsScratch.upperProductSummatory_10_42

example : ¬∀ (N : ℕ) (x : ℝ), 2≤N → 0≤x → 0≤upperProductSummatory N x :=
  UpperProductSummatorySignsScratch.not_upperProductSummatory_nonneg

example : ∃ A : ℝ, 1 ≤ A ∧ 2*42 < Real.exp (2*A) ∧
    upperProductSummatory ⌊Real.exp A⌋₊ 42 < 0 :=
  UpperProductSummatorySignsScratch.actual_signed_cumulative_negative_in_two_channel

end
end UpperProductSignsStatements
```
