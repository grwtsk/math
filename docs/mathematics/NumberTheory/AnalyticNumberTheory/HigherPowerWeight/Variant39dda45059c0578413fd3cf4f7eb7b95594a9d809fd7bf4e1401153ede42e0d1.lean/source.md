# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.HigherPowerWeight.Variant39dda45059c0578413fd3cf4f7eb7b95594a9d809fd7bf4e1401153ede42e0d1

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `0a0965c95c13a6a7c2ea86524c9977d16f6cc54b` · SHA-256 `5e6b2699269fe6cf7c866dac50c5306be2f8eda4db0790732b488ed932ea5bbb`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.SqrtNatPower.Variant7603be2e9771b3535bdb1610a6e8db84b24786904e785330a2ba85743edbd7dd","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"7603be2e9771b3535bdb1610a6e8db84b24786904e785330a2ba85743edbd7dd","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.AnalyticNumberTheory.SourceCorpus.SqrtNatPower.Variant7603be2e9771b3535bdb1610a6e8db84b24786904e785330a2ba85743edbd7dd","mathematical_subject":"NumberTheory.AnalyticNumberTheory","original_sha256":"7603be2e9771b3535bdb1610a6e8db84b24786904e785330a2ba85743edbd7dd","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/higher-prime-powers/HigherPowerWeight.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.RiemannHypothesis.SourceComparison.PrimeSquareSource


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.SqrtNatPower.Variant7603be2e9771b3535bdb1610a6e8db84b24786904e785330a2ba85743edbd7dd

set_option autoImplicit false
namespace HigherPowerWeightScratch
open FormalResearch.RiemannHypothesis.SourcePairing
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization
noncomputable section

/-- The literal square root at a natural prime-power index matches the real-power coefficient. -/
theorem sqrt_nat_power (p k : ℕ) :
    Real.sqrt ((p ^ k : ℕ) : ℝ) = (p : ℝ) ^ ((k : ℝ) / 2) := by
  rw [Nat.cast_pow, Real.sqrt_eq_rpow, ← Real.rpow_natCast, ← Real.rpow_mul (Nat.cast_nonneg p)]
  congr 1
  ring

/-- The original Mangoldt weight at every exponent at least three has its exact prime-root value. -/
theorem higher_prime_power_weight (p k : ℕ) (hp : p.Prime) (hk : 3 ≤ k) :
    ArithmeticFunction.vonMangoldt (p ^ k) / Real.sqrt ((p ^ k : ℕ) : ℝ) =
      Real.log (p : ℝ) / (p : ℝ) ^ ((k : ℝ) / 2) := by
  rw [ArithmeticFunction.vonMangoldt_apply_pow (by omega : k ≠ 0),
    ArithmeticFunction.vonMangoldt_apply_prime hp, sqrt_nat_power]

/-- Exact source summand transport retains the normalized correlation and its logarithmic location. -/
theorem higher_prime_power_summand (A : ℝ) (p k : ℕ) (hp : p.Prime) (hk : 3 ≤ k) :
    ArithmeticFunction.vonMangoldt (p ^ k) / Real.sqrt ((p ^ k : ℕ) : ℝ) *
      sourceCorrelation explicitSecondDerivative A (Real.log ((p ^ k : ℕ) : ℝ)) =
    Real.log (p : ℝ) / (p : ℝ) ^ ((k : ℝ) / 2) *
      sourceCorrelation explicitSecondDerivative A ((k : ℝ) * Real.log (p : ℝ)) := by
  rw [higher_prime_power_weight p k hp hk, Nat.cast_pow, Real.log_pow]

end
end HigherPowerWeightScratch
```
