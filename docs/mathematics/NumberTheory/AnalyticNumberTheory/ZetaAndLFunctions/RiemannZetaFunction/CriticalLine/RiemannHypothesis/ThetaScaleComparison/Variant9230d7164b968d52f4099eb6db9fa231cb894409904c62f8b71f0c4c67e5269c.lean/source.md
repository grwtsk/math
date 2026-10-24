# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ThetaScaleComparison.Variant9230d7164b968d52f4099eb6db9fa231cb894409904c62f8b71f0c4c67e5269c

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `022a8cf37b481f0621090a49417db8c7b095de79` · SHA-256 `dedc2e68160574dc30ad19df738a3d04786f68e363c113b08b77c839a861280e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ThetaRemainderScaleDifferenceAbsLe.Variantbec0d11667caa8aa9d9ba22988cea933f6deae6f8597247f327e27ac2d4a5032","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"bec0d11667caa8aa9d9ba22988cea933f6deae6f8597247f327e27ac2d4a5032","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.ThetaRemainderScaleDifferenceAbsLe.Variantbec0d11667caa8aa9d9ba22988cea933f6deae6f8597247f327e27ac2d4a5032","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"bec0d11667caa8aa9d9ba22988cea933f6deae6f8597247f327e27ac2d4a5032","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/arithmetic-routes/ThetaScaleComparison.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.RiemannHypothesis.SourceComparison.SourceClassVariation


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ThetaRemainderScaleDifferenceAbsLe.Variantbec0d11667caa8aa9d9ba22988cea933f6deae6f8597247f327e27ac2d4a5032

set_option autoImplicit false

namespace ThetaScaleComparisonScratch

open FormalResearch.RiemannHypothesis.SourceComparison
open RealThetaKernel RealThetaDerivative KernelVariation

/-- The actual kernel derivative controls finite multiplicative rescaling;
primality alone does not make this absolute error have a better decay exponent. -/
theorem thetaRemainder_scale_difference_abs_le (A : ℝ) (p q : ℕ)
    (hA : 1 ≤ A) (hp : 1 ≤ p) (hq : 1 ≤ q) :
    |ThetaRemainder.thetaRemainder A q - ThetaRemainder.thetaRemainder A (p * q)| ≤
      (2 * (28 + 30 * Real.sqrt (65 / 3) / A + 24 * (65 / (3 * A ^ 2)) +
        8 * Real.sqrt (325325 / 18) / A ^ 3) / Real.sqrt (q : ℝ)) *
          (1 - 1 / Real.sqrt (p : ℝ)) := by
  have hpr : (1 : ℝ) ≤ p := by exact_mod_cast hp
  have hqr : (1 : ℝ) ≤ q := by exact_mod_cast hq
  have hsqrt : (1 : ℝ) ≤ Real.sqrt (p : ℝ) := by
    simpa only [Real.sqrt_one] using Real.sqrt_le_sqrt hpr
  have hs := composed_abs_sub_le (realThetaRemainder A) (q : ℝ)
    (28 + 30 * Real.sqrt (65 / 3) / A + 24 * (65 / (3 * A ^ 2)) +
      8 * Real.sqrt (325325 / 18) / A ^ 3) 1 (Real.sqrt (p : ℝ)) hqr le_rfl hsqrt
    (fun x hx ↦ (realThetaRemainder_hasDerivAt A x hA
      (zero_lt_one.trans_le hx)).continuousAt.continuousWithinAt)
    (fun x hx ↦ (realThetaRemainder_hasDerivAt A x hA
      (zero_lt_one.trans hx)).differentiableAt)
    (fun x hx ↦ realThetaRemainder_derivative_abs_le A x hA hx.le)
  rw [one_pow, mul_one, Real.sq_sqrt (Nat.cast_nonneg p), div_one,
    ← Nat.cast_mul, Nat.mul_comm q p,
    realThetaRemainder_eq_nat A q hq,
    realThetaRemainder_eq_nat A (p * q) (Nat.mul_pos hp hq)] at hs
  exact hs

end ThetaScaleComparisonScratch

#print axioms ThetaScaleComparisonScratch.thetaRemainder_scale_difference_abs_le
```
