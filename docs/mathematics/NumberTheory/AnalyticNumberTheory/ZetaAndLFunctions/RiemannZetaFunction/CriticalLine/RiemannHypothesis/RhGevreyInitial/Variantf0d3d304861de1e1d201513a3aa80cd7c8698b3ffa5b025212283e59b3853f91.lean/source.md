# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.RhGevreyInitial.Variantf0d3d304861de1e1d201513a3aa80cd7c8698b3ffa5b025212283e59b3853f91

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `58ef1eeaeebe19bcbf13bc50e4ada358c1fba156` · SHA-256 `8c55229fc1edbbeb31b1c3069e7e2ffb2db5ef2b4250e5354884e8c69d907759`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.GevreyEnvelope.Variant26598504fffd84c9142058edd0aa99dc15e0ce7d9d6f7e6de0648c786968f1c4","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"26598504fffd84c9142058edd0aa99dc15e0ce7d9d6f7e6de0648c786968f1c4","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.MixedSubjects.SourceCorpus.GevreyEnvelope.Variant26598504fffd84c9142058edd0aa99dc15e0ce7d9d6f7e6de0648c786968f1c4","mathematical_subject":"Foundations.MixedSubjects","original_sha256":"26598504fffd84c9142058edd0aa99dc15e0ce7d9d6f7e6de0648c786968f1c4","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/tests/rh_gevrey_initial.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.RiemannHypothesis.GevreyEnvelope
import FormalResearch.RiemannHypothesis.GevreyNormalization


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.GevreyEnvelope.Variant26598504fffd84c9142058edd0aa99dc15e0ce7d9d6f7e6de0648c786968f1c4

open Filter MeasureTheory
open scoped Topology
open FormalResearch.RiemannHypothesis

-- Freeze the requested scalar model and explicit point without hiding them
-- behind a different envelope definition.
example (c d s : ℝ) (hs : 0 < s) :
    Tendsto (fun A : ℝ ↦
      (A - 2 * c * A / ((s / 2) * Real.log A) -
        d * Real.exp (((s / 2) * Real.log A) / s) - Real.log A) / A)
      atTop (𝓝 1) :=
  GevreyEnvelope.tendsto_diagnostic_exponent_test_point_div c d hs

example (c d : ℝ) :
    Tendsto (fun A : ℝ ↦
      GevreyEnvelope.diagnosticExponent c d (3 / 2) A
        (GevreyEnvelope.testPoint (3 / 2) A)) atTop atTop :=
  GevreyEnvelope.tendsto_diagnostic_exponent_test_point_atTop c d (by norm_num)

-- Freeze the literal corrected profile, including its zero extension.
example : ContDiff ℝ (⊤ : ℕ∞)
    (fun y : ℝ ↦ if |y| < 1 then Real.exp (-1 / (1 - y ^ 2) ^ 2) else 0) :=
  GevreyProfile.profile_contDiff

example : Function.support GevreyProfile.profile = Set.Ioo (-1) 1 :=
  GevreyProfile.profile_support

-- This is the actual differentiated dilation, rather than a polynomial
-- replacement or an assumed realization/normalization contract.
example (A : ℝ) (hA : 0 < A) :
    (∫ x : ℝ,
      (deriv (deriv (fun y ↦ GevreyProfile.profile (y / A) / Real.sqrt A)) x -
        (GevreyProfile.profile (x / A) / Real.sqrt A) / 4) ^ 2) =
      (A ^ 4)⁻¹ * (∫ x : ℝ, (deriv (deriv GevreyProfile.profile) x) ^ 2) +
      (2 * A ^ 2)⁻¹ * (∫ x : ℝ, (deriv GevreyProfile.profile x) ^ 2) +
      (1 / 16) * (∫ x : ℝ, (GevreyProfile.profile x) ^ 2) :=
  GevreyNormalization.normalization_eq GevreyProfile.profile_contDiff
    GevreyProfile.profile_hasCompactSupport hA

example (A : ℝ) (hA : 0 < A) :
    Integrable (fun x ↦
      (GevreyNormalization.dilationOperator GevreyProfile.profile A x) ^ 2) :=
  GevreyNormalization.dilationOperator_square_integrable
    GevreyProfile.profile_contDiff GevreyProfile.profile_hasCompactSupport hA

example (A : ℝ) (hA : 0 < A) :
    0 < GevreyNormalization.normalization GevreyProfile.profile A :=
  GevreyNormalization.normalization_pos GevreyProfile.profile_contDiff
    GevreyProfile.profile_hasCompactSupport GevreyProfile.profile_nonzero hA

example : ∃ z : ℝ, 0 < z ∧ ∀ A : ℝ, 0 < A →
    z ≤ GevreyNormalization.normalization GevreyProfile.profile A :=
  GevreyNormalization.profile_normalization_uniform_positive_lower_bound

example (A : ℝ) (hA : 0 < A) :
    (∫ x : ℝ,
      (GevreyNormalization.normalizedOperator GevreyProfile.profile A x) ^ 2) = 1 :=
  GevreyNormalization.profile_normalizedOperator_square_integral hA

#print axioms GevreyEnvelope.diagnostic_exponent_test_point
#print axioms GevreyEnvelope.tendsto_diagnostic_exponent_test_point_div
#print axioms GevreyEnvelope.tendsto_diagnostic_exponent_test_point_atTop
#print axioms GevreyProfile.profile_contDiff
#print axioms GevreyProfile.profile_support
#print axioms GevreyProfile.profile_hasCompactSupport
#print axioms GevreyProfile.profile_nonzero
#print axioms GevreyNormalization.integral_second_mul_profile
#print axioms GevreyNormalization.dilationOperator_square_integrable
#print axioms GevreyNormalization.normalization_eq
#print axioms GevreyNormalization.normalization_uniform_lower_bound
#print axioms GevreyNormalization.normalization_pos
#print axioms GevreyNormalization.profile_normalization
#print axioms GevreyNormalization.profile_normalization_uniform_positive_lower_bound
#print axioms GevreyNormalization.profile_normalizedOperator_square_integral
```
