# Complete source: GRWTSK.Analysis.RealAnalysis.Integration.EstimateCorrelation.Variant3e00611851ec73e9ba6b31a87a214c8573cd4db3204e1a0bbac931fc57c0205a

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `58491e461110c3b08d13cf733be924abe98769e5` · SHA-256 `7d3067bc4d93f1c13f6eae487b95849eb795dcfe986f3958a1622d17cdd5d46b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.Integration
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.Integration.ActualCorrelationAtZero.Variantf3dd6776592dc9fc9d325e0d230b043b4704eb095ed17a9458953fc412653b13","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"f3dd6776592dc9fc9d325e0d230b043b4704eb095ed17a9458953fc412653b13","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Integration.SourceCorpus.ActualCorrelationAtZero.Variantf3dd6776592dc9fc9d325e0d230b043b4704eb095ed17a9458953fc412653b13","mathematical_subject":"Analysis.Integration","original_sha256":"f3dd6776592dc9fc9d325e0d230b043b4704eb095ed17a9458953fc412653b13","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-signed-cycle-20261006/rational/preserved-inputs/FormalResearch/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/EstimateCorrelation.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.AdmissionSource

/-!
# Exact correlation bounds for the actual source family

The source-normalized test has genuine square integral one. Translation preserves
that integral, and integrating the elementary inequalities for the squares of
its sum and difference proves the correlation bound at every real displacement.
The source's separate prime-two correction is retained and bounded explicitly.

These are supporting analytic estimates only. They do not bound the signed
prime-power contribution or discharge `CorrelationAssembly.EstimateObligation`.
No Riemann-hypothesis assumption, physical premise, finite-height surrogate or
later bridge family is used. A totalized integral is never substituted for an
integrability proof.
-/


namespace GRWTSK.Analysis.RealAnalysis.Integration.ActualCorrelationAtZero.Variantf3dd6776592dc9fc9d325e0d230b043b4704eb095ed17a9458953fc412653b13

namespace FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
namespace EstimateCorrelation

open MeasureTheory
open FormalResearch.RiemannHypothesis.SourcePairing
open Realization CorrelationRegularity BridgeNormalization

/-- Actual norm-one normalization fixes the correlation at displacement zero. -/
theorem actual_correlation_at_zero (A : ℝ) (hA : 1 ≤ A) :
    sourceCorrelation explicitSecondDerivative A 0 = 1 := by
  simpa [sourceCorrelation, pow_two] using normalized_square_integral A hA

/-- Exact all-radius, all-displacement correlation bound for the source family. -/
theorem actual_correlation_abs_le_one (A t : ℝ) (hA : 1 ≤ A) :
    |sourceCorrelation explicitSecondDerivative A t| ≤ 1 := by
  let f := normalizedTest explicitSecondDerivative A
  have hf : Integrable (fun x ↦ f x ^ 2) volume := normalized_square_integrable A hA
  have hg : Integrable (fun x ↦ f (x - t) ^ 2) volume := hf.comp_sub_right t
  have hp : Integrable (fun x ↦ f x * f (x - t)) volume :=
    correlation_product_integrable A t (by linarith)
  have nf : (∫ x, f x ^ 2) = 1 := normalized_square_integral A hA
  have ng : (∫ x, f (x - t) ^ 2) = 1 := by
    rw [integral_sub_right_eq_self (μ := volume) (fun x ↦ f x ^ 2) t, nf]
  have upper := integral_mono (hp.const_mul 2) (hf.add hg)
    (fun x ↦ show 2 * (f x * f (x - t)) ≤ f x ^ 2 + f (x - t) ^ 2 by
      nlinarith [sq_nonneg (f x - f (x - t))])
  have lower := integral_mono (hp.const_mul (-2)) (hf.add hg)
    (fun x ↦ show -2 * (f x * f (x - t)) ≤ f x ^ 2 + f (x - t) ^ 2 by
      nlinarith [sq_nonneg (f x + f (x - t))])
  simp only [Pi.add_apply] at upper lower
  rw [integral_const_mul, integral_add hf hg, nf, ng] at upper lower
  change |∫ x, f x * f (x - t)| ≤ 1
  exact abs_le.mpr ⟨by linarith, by linarith⟩

/-- The separate atomic correction is bounded, never deleted from the form. -/
theorem actual_prime_two_boundary_abs_le (A : ℝ) (hA : 1 ≤ A) :
    |primeTwoBoundary explicitSecondDerivative A| ≤ 2 * Real.sqrt 2 := by
  have h := actual_correlation_abs_le_one A lowerEndpoint hA
  rw [primeTwoBoundary, abs_mul]
  have hcoef : |(-2 : ℝ) * Real.sqrt 2| = 2 * Real.sqrt 2 := by
    simp [abs_mul, Real.sqrt_nonneg]
  rw [hcoef]
  nlinarith [Real.sqrt_nonneg (2 : ℝ)]

/-- A standalone replay target for these three supporting analytic claims only. -/
def CorrelationAndPrimeTwoBounds : Prop :=
  (∀ A : ℝ, 1 ≤ A → sourceCorrelation explicitSecondDerivative A 0 = 1) ∧
  (∀ A t : ℝ, 1 ≤ A → |sourceCorrelation explicitSecondDerivative A t| ≤ 1) ∧
  (∀ A : ℝ, 1 ≤ A →
    |primeTwoBoundary explicitSecondDerivative A| ≤ 2 * Real.sqrt 2)

/-- The exact source correlation and endpoint bounds have no analytic premise. -/
theorem correlation_and_prime_two_bounds : CorrelationAndPrimeTwoBounds :=
  ⟨actual_correlation_at_zero, actual_correlation_abs_le_one,
    actual_prime_two_boundary_abs_le⟩

end EstimateCorrelation
end FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
```
