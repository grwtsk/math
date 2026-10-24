# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.RhEstimateFullMertensAbel.Variantbd8efeb8fe929f97d1bb09749ca2d75d5f7cd903c3256074917f2f2243cab718

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2bf50c3604e9a605ae18de198e00c81be6b66b66` · SHA-256 `0f68a7a57fbec1f8edc5a59244498d44109ca83b0461b905c3243254a90611b3`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.EstimateSourceMobiusDerivative.Variantdf9b10febf29a4cd1c2c9023abb0adc3a70a84dbeebf3a9fc27d229e2a30ae35","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"df9b10febf29a4cd1c2c9023abb0adc3a70a84dbeebf3a9fc27d229e2a30ae35","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.MixedSubjects.SourceCorpus.EstimateSourceMobiusDerivative.Variantdf9b10febf29a4cd1c2c9023abb0adc3a70a84dbeebf3a9fc27d229e2a30ae35","mathematical_subject":"Foundations.MixedSubjects","original_sha256":"df9b10febf29a4cd1c2c9023abb0adc3a70a84dbeebf3a9fc27d229e2a30ae35","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/tests/rh_estimate_full_mertens_abel.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateSourceMobiusDerivative
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateWeightedMobiusPairing
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateAbsoluteMertensEnvelope


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.EstimateSourceMobiusDerivative.Variantdf9b10febf29a4cd1c2c9023abb0adc3a70a84dbeebf3a9fc27d229e2a30ae35

open MeasureTheory Set
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open EstimateMertensAbel EstimateSourceMobiusKernel EstimateMertensResidual
open EstimateWeightedMobiusPairing EstimateAbsoluteMertensEnvelope

-- This fixture fixes the actual residual, closed-right Mertens convention,
-- full positive Abel window, sign, and real scale quantifier together.
example (A : ℝ) (hA : 1 ≤ A) :
    mertensResidual A =
      -(∫ x in Ioc 1 (Real.exp (2 * A)),
        mertens x * deriv (sourceMobiusKernel A) x) :=
  mertensResidual_eq_abel A hA

-- The remaining signed integral hypothesis reaches the existing #16 target
-- through its accepted adapter. No estimate is supplied by this fixture.
example
    (h : ∃ D : ℝ, 0 ≤ D ∧ ∃ R : ℝ, 1 ≤ R ∧
      ∀ A : ℝ, R ≤ A →
        -(∫ x in Ioc 1 (sourceUpper A),
          mertens x * deriv (sourceMobiusKernel A) x) ≤ D) :
    CorrelationAssembly.EstimateObligation :=
  estimate_of_mertens_residual_tail
    (mertens_residual_tail_of_abel_integral_tail h)

-- The obstruction concerns an absolute envelope, not the signed residual.
example (R : ℝ) (hR : 1 ≤ R) (delta : ℝ → ℝ)
    (hdelta : ∀ x : ℝ, R < x → x ^ (-(1 : ℝ) / 4) ≤ delta x) :
    ¬ IntegrableOn (fun x ↦ delta x / Real.sqrt x) (Ioi R) :=
  not_integrableOn_div_sqrt_of_quarter_power_le R hR delta hdelta

#print axioms EstimateSourceMobiusDerivative.sourceKernelTerm_hasDerivAt
#print axioms EstimateSourceMobiusDerivative.sourceKernelTerm_deriv
#print axioms EstimateSourceMobiusDerivative.sourceMobiusKernel_deriv
#print axioms EstimateSourceMobiusDerivative.sourceCorrelation_deriv_zero_of_two_mul_le
#print axioms EstimateSourceMobiusDerivative.sourceKernelTerm_deriv_upper_zero
#print axioms EstimateSourceMobiusDerivative.sourceMobiusKernel_deriv_upper_zero
#print axioms integer_antidiagonal_eq_admissible_of_two_le
#print axioms sourceMobiusKernel_integerAgreement_one
#print axioms sourceMobiusKernel_integerAgreement_pos
#print axioms first_factor_mem_full_inventory
#print axioms mertensResidual_eq_full_mobius_sum
#print axioms sourceMobiusKernel_differentiableAt_full
#print axioms sourceMobiusKernel_deriv_integrable_full
#print axioms mertens_mul_deriv_integrable_full
#print axioms mertensResidual_eq_abel
#print axioms mertensResidual_eq_signed_bilinear
#print axioms mertens_residual_tail_of_abel_integral_tail
#print axioms quarter_power_div_sqrt
#print axioms three_quarter_power_integral
#print axioms not_integrableOn_div_sqrt_of_quarter_power_le
```
