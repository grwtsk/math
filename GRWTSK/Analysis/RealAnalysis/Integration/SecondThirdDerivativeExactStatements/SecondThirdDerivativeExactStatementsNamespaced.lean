-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.Integration
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.Integration.SecondDerivativeEnergy.Variantcca1913a6bdc583d049569aeebcef6fee5ff16925d50808574f17b5672d8a5f2","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"cca1913a6bdc583d049569aeebcef6fee5ff16925d50808574f17b5672d8a5f2","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Integration.SourceCorpus.SecondDerivativeEnergy.Variantcca1913a6bdc583d049569aeebcef6fee5ff16925d50808574f17b5672d8a5f2","mathematical_subject":"Analysis.Integration","original_sha256":"cca1913a6bdc583d049569aeebcef6fee5ff16925d50808574f17b5672d8a5f2","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/mertens/second-third-derivative-exact-statements.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.RiemannHypothesis.SourceComparison.SecondDerivativeEnergy
import FormalResearch.RiemannHypothesis.SourceComparison.CorrelationThirdDerivative


namespace GRWTSK.Analysis.RealAnalysis.Integration.SecondDerivativeEnergy.Variantcca1913a6bdc583d049569aeebcef6fee5ff16925d50808574f17b5672d8a5f2

set_option autoImplicit false

open MeasureTheory Set
open scoped Topology NNReal
open FormalResearch.RiemannHypothesis.SourcePairing
open FormalResearch.RiemannHypothesis.SourceComparison
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization CorrelationRegularity

-- Three definition checks retain the actual source and the two endpoint traces.
example (A x : ℝ) : SecondDerivativeEnergy.fourthInterior A x =
    (144 - 1440 * (x / A) ^ 2 + 1680 * (x / A) ^ 4) / (A ^ 4 * Real.sqrt A) := rfl

example (A x : ℝ) : SecondDerivativeEnergy.normalizedSecondInterior A x =
    (SecondDerivativeEnergy.fourthInterior A x - secondInterior A x / 4) /
      Real.sqrt (sourceNormalization A) := rfl

example (A : ℝ) : SecondDerivativeEnergy.normalizedSecondTest A =
    (Icc (-A) A).indicator (SecondDerivativeEnergy.normalizedSecondInterior A) := rfl

example (A x : ℝ) : HasDerivAt (thirdInterior A)
    (SecondDerivativeEnergy.fourthInterior A x) x :=
  SecondDerivativeEnergy.thirdInterior_hasDerivAt A x

example (A x : ℝ) : HasDerivAt (normalizedInteriorDerivative A)
    (SecondDerivativeEnergy.normalizedSecondInterior A x) x :=
  SecondDerivativeEnergy.normalizedInteriorDerivative_hasDerivAt A x

example (A : ℝ) : Continuous (SecondDerivativeEnergy.normalizedSecondInterior A) :=
  SecondDerivativeEnergy.normalizedSecondInterior_continuous A

example (A : ℝ) : Integrable (SecondDerivativeEnergy.normalizedSecondTest A) volume :=
  SecondDerivativeEnergy.normalizedSecondTest_integrable A

example (A : ℝ) :
    Integrable (fun x ↦ SecondDerivativeEnergy.normalizedSecondTest A x ^ 2) volume :=
  SecondDerivativeEnergy.normalizedSecondTest_square_integrable A

example (A : ℝ) (hA : 1 ≤ A) :
    ∀ᵐ x : ℝ, HasDerivAt (deriv (normalizedTest explicitSecondDerivative A))
      (SecondDerivativeEnergy.normalizedSecondTest A x) x :=
  SecondDerivativeEnergy.normalized_derivative_hasDerivAt_ae A hA

example (A : ℝ) (hA : 1 ≤ A) :
    deriv (deriv (normalizedTest explicitSecondDerivative A)) =ᵐ[volume]
      SecondDerivativeEnergy.normalizedSecondTest A :=
  SecondDerivativeEnergy.normalized_second_derivative_ae A hA

example (A : ℝ) (hA : 1 ≤ A) :
    (∫ x, SecondDerivativeEnergy.normalizedSecondTest A x ^ 2) =
      ((32768 : ℝ) / A ^ 8 + (65536 / 77 : ℝ) / (2 * A ^ 6) +
        (196608 / 5005 : ℝ) / (16 * A ^ 4)) / sourceNormalization A :=
  SecondDerivativeEnergy.normalizedSecondTest_square_integral A hA

example (A : ℝ) (hA : 1 ≤ A) :
    (∫ x, SecondDerivativeEnergy.normalizedSecondTest A x ^ 2) ≤ 5005 / (6 * A ^ 4) :=
  SecondDerivativeEnergy.normalizedSecondTest_square_integral_le A hA

example (A : ℝ) (hA : 1 ≤ A) :
    Integrable (fun x ↦ deriv (deriv (normalizedTest explicitSecondDerivative A)) x ^ 2)
      volume :=
  SecondDerivativeEnergy.normalized_second_derivative_square_integrable A hA

example (A : ℝ) (hA : 1 ≤ A) :
    (∫ x, deriv (deriv (normalizedTest explicitSecondDerivative A)) x ^ 2) =
      ((32768 : ℝ) / A ^ 8 + (65536 / 77 : ℝ) / (2 * A ^ 6) +
        (196608 / 5005 : ℝ) / (16 * A ^ 4)) / sourceNormalization A :=
  SecondDerivativeEnergy.normalized_second_derivative_square_integral A hA

example (A : ℝ) (hA : 1 ≤ A) :
    (∫ x, deriv (deriv (normalizedTest explicitSecondDerivative A)) x ^ 2) ≤
      5005 / (6 * A ^ 4) :=
  SecondDerivativeEnergy.normalized_second_derivative_square_integral_le A hA

example (A : ℝ) (hA : A ≠ 0) :
    normalizedInteriorDerivative A (-A) = 0 ∧ normalizedInteriorDerivative A A = 0 :=
  SecondDerivativeEnergy.normalizedInteriorDerivative_endpoints A hA

example (A : ℝ) (η : ℝ → ℝ) (hη : Continuous η) :
    Integrable (fun x ↦ SecondDerivativeEnergy.normalizedSecondTest A x * η x) volume :=
  SecondDerivativeEnergy.normalizedSecondTest_pairing_integrable A η hη

example (A : ℝ) (hA : 1 ≤ A) (η : ℝ → ℝ) (hη : ContDiff ℝ 1 η) :
    Integrable (fun x ↦ deriv (normalizedTest explicitSecondDerivative A) x * deriv η x)
      volume :=
  SecondDerivativeEnergy.normalized_derivative_pairing_integrable A hA η hη

example (A : ℝ) (hA : 1 ≤ A) (η : ℝ → ℝ) (hη : ContDiff ℝ 1 η) :
    (∫ x, deriv (normalizedTest explicitSecondDerivative A) x * deriv η x) =
      -(∫ x, SecondDerivativeEnergy.normalizedSecondTest A x * η x) :=
  SecondDerivativeEnergy.normalizedSecondTest_weakDerivative A hA η hη

example (A : ℝ) (hA : 1 ≤ A) :
    deriv (normalizedTest explicitSecondDerivative A) =
      (Icc (-A) A).domRestrict (normalizedInteriorDerivative A) ∘
        Set.projIcc (-A) A (by linarith : -A ≤ A) :=
  SecondDerivativeEnergy.normalized_derivative_eq_projected A hA

example (A : ℝ) (hA : 1 ≤ A) :
    ∃ L : ℝ≥0, LipschitzWith L (deriv (normalizedTest explicitSecondDerivative A)) :=
  SecondDerivativeEnergy.normalized_derivative_lipschitz A hA

-- All six third-derivative declarations bind to the original source correlation.
example (A : ℝ) : Measurable (SecondDerivativeEnergy.normalizedSecondTest A) :=
  CorrelationThirdDerivative.normalizedSecondTest_measurable A

example (A t : ℝ) (hA : 1 ≤ A) :
    Integrable (fun x ↦ deriv (normalizedTest explicitSecondDerivative A) x *
      SecondDerivativeEnergy.normalizedSecondTest A (x - t)) volume ∧
    HasDerivAt (deriv (deriv (sourceCorrelation explicitSecondDerivative A)))
      (∫ x, deriv (normalizedTest explicitSecondDerivative A) x *
        SecondDerivativeEnergy.normalizedSecondTest A (x - t)) t :=
  CorrelationThirdDerivative.sourceCorrelation_third_derivative_integral A t hA

example (A t : ℝ) (hA : 1 ≤ A) :
    deriv (deriv (deriv (sourceCorrelation explicitSecondDerivative A))) t =
      ∫ x, deriv (normalizedTest explicitSecondDerivative A) x *
        SecondDerivativeEnergy.normalizedSecondTest A (x - t) :=
  CorrelationThirdDerivative.sourceCorrelation_third_derivative_eq A t hA

example (A : ℝ) (hA : 1 ≤ A) :
    Continuous (deriv (deriv (deriv (sourceCorrelation explicitSecondDerivative A)))) :=
  CorrelationThirdDerivative.sourceCorrelation_third_derivative_continuous A hA

example (A : ℝ) (hA : 1 ≤ A) :
    ContDiff ℝ 1 (deriv (deriv (sourceCorrelation explicitSecondDerivative A))) :=
  CorrelationThirdDerivative.sourceCorrelation_second_derivative_contDiff A hA

example (A t : ℝ) (hA : 1 ≤ A) :
    |deriv (deriv (deriv (sourceCorrelation explicitSecondDerivative A))) t| ≤
      Real.sqrt (325325 / 18) / A ^ 3 :=
  CorrelationThirdDerivative.sourceCorrelation_third_derivative_abs_le A t hA
