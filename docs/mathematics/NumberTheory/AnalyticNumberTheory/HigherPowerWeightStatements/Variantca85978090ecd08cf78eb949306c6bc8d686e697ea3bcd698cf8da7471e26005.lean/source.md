# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.HigherPowerWeightStatements.Variantca85978090ecd08cf78eb949306c6bc8d686e697ea3bcd698cf8da7471e26005

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1bc7002eacbb5f70af9e2122718a58bfbb0c0f48` · SHA-256 `231567ed6b2b566fb4e0571f9f5a96ffc1d8c415de58ac2fec7063b41d06a6b8`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.SqrtNatPower.Variantaeafe49cd16808876f9ba1f8c9d4cdbda9b3de955d810d448e3656795c702d78","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"aeafe49cd16808876f9ba1f8c9d4cdbda9b3de955d810d448e3656795c702d78","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.AnalyticNumberTheory.SourceCorpus.SqrtNatPower.Variantaeafe49cd16808876f9ba1f8c9d4cdbda9b3de955d810d448e3656795c702d78","mathematical_subject":"NumberTheory.AnalyticNumberTheory","original_sha256":"aeafe49cd16808876f9ba1f8c9d4cdbda9b3de955d810d448e3656795c702d78","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/higher-prime-powers/HigherPowerWeightStatements.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.RiemannHypothesis.SourceComparison.PrimeSquareSource


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.SqrtNatPower.Variantaeafe49cd16808876f9ba1f8c9d4cdbda9b3de955d810d448e3656795c702d78

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

open HigherPowerWeightScratch
open FormalResearch.RiemannHypothesis.SourcePairing
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization
noncomputable section
example (p k : ℕ) :
    Real.sqrt ((p ^ k : ℕ) : ℝ) = (p : ℝ) ^ ((k : ℝ) / 2) :=
  HigherPowerWeightScratch.sqrt_nat_power p k

example (p k : ℕ) (hp : p.Prime) (hk : 3 ≤ k) :
    ArithmeticFunction.vonMangoldt (p ^ k) / Real.sqrt ((p ^ k : ℕ) : ℝ) =
      Real.log (p : ℝ) / (p : ℝ) ^ ((k : ℝ) / 2) :=
  HigherPowerWeightScratch.higher_prime_power_weight p k hp hk

example (A : ℝ) (p k : ℕ) (hp : p.Prime) (hk : 3 ≤ k) :
    ArithmeticFunction.vonMangoldt (p ^ k) / Real.sqrt ((p ^ k : ℕ) : ℝ) *
      sourceCorrelation explicitSecondDerivative A (Real.log ((p ^ k : ℕ) : ℝ)) =
    Real.log (p : ℝ) / (p : ℝ) ^ ((k : ℝ) / 2) *
      sourceCorrelation explicitSecondDerivative A ((k : ℝ) * Real.log (p : ℝ)) :=
  HigherPowerWeightScratch.higher_prime_power_summand A p k hp hk
end
```
