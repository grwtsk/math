# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.HigherPowerWeightAudit.Variant85241d367fc576a47c0ddd43fa5db075dbb12637cb461c1e6e286f08eedc9f46

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5db8e80288867da242ebf5cc39469cdad47ac55c` · SHA-256 `ed9d84c49858d2c79debe4f2058bda3038a406e88b4985ad76fa9b2ec2ba4c20`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.SqrtNatPower.Variant381a50b188bf41c3616cbd8ebd9f5e34eae3fdc34ce9f14914f49ee27a0c4440","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"381a50b188bf41c3616cbd8ebd9f5e34eae3fdc34ce9f14914f49ee27a0c4440","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.AnalyticNumberTheory.SourceCorpus.SqrtNatPower.Variant381a50b188bf41c3616cbd8ebd9f5e34eae3fdc34ce9f14914f49ee27a0c4440","mathematical_subject":"NumberTheory.AnalyticNumberTheory","original_sha256":"381a50b188bf41c3616cbd8ebd9f5e34eae3fdc34ce9f14914f49ee27a0c4440","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/higher-prime-powers/HigherPowerWeightAudit.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.RiemannHypothesis.SourceComparison.PrimeSquareSource


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.SqrtNatPower.Variant381a50b188bf41c3616cbd8ebd9f5e34eae3fdc34ce9f14914f49ee27a0c4440

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

set_option pp.universes true
#print HigherPowerWeightScratch.sqrt_nat_power
#print axioms HigherPowerWeightScratch.sqrt_nat_power
#print HigherPowerWeightScratch.higher_prime_power_weight
#print axioms HigherPowerWeightScratch.higher_prime_power_weight
#print HigherPowerWeightScratch.higher_prime_power_summand
#print axioms HigherPowerWeightScratch.higher_prime_power_summand
```
