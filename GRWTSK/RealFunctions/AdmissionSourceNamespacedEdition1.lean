-- corpus-organization-transform:v1
-- Mathematical subject: Analysis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.QuarterSeriesObligation.Variantd22ba5c5deddfca224d7595c0e8a6a54c2f177990d2953f08ddd094a3e8581df","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"d22ba5c5deddfca224d7595c0e8a6a54c2f177990d2953f08ddd094a3e8581df","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.GeneralAnalysis.SourceCorpus.QuarterSeriesObligation.Variantd22ba5c5deddfca224d7595c0e8a6a54c2f177990d2953f08ddd094a3e8581df","mathematical_subject":"Analysis.GeneralAnalysis","original_sha256":"d22ba5c5deddfca224d7595c0e8a6a54c2f177990d2953f08ddd094a3e8581df","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/pr151-repair-20260921T175258Z/candidate-snapshots/c2165bf58cfe7079ba78bd7f98623fb758d0d84525c0918f1eba27105e3dba85/FormalResearch/SUCAS/AdmissionSource.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.Analysis.DigammaSeries
import FormalResearch.Analysis.ReciprocalKernel
import FormalResearch.SUCAS.BridgeMultiplier

/-!
# Source-faithful admission from the actual digamma difference series

The real reciprocal kernel and its sum–integral comparisons are independently
proved. A genuine locally uniform Euler approximation proves the derivative
limit for the actual digamma. This closes B3.1 without an analytic premise.
-/


namespace GRWTSK.Analysis.QuarterSeriesObligation.Variantd22ba5c5deddfca224d7595c0e8a6a54c2f177990d2953f08ddd094a3e8581df

namespace FormalResearch.SUCAS.AdmissionSource

open MeasureTheory
open FormalResearch.RiemannHypothesis.SourcePairing
open FormalResearch.SUCAS.BridgeAdmissibility
open FormalResearch.Analysis.ReciprocalKernel
open FormalResearch.Analysis.DigammaSeries

noncomputable section

/-- The exact source series identity at the actual Fourier frequency and endpoint.
This is a proof obligation, not a new special function or an axiom. -/
def QuarterSeriesObligation : Prop :=
  ∀ ξ : ℝ, HasSum (fun n : ℕ ↦ kernel (ξ / 2) (n + 1 / 4))
    (archimedeanMultiplier ξ + archimedeanConstant)

/-- Reordering complex scalar factors preserves the source's quarter-line argument. -/
theorem actual_multiplier_difference (ξ : ℝ) :
    archimedeanMultiplier ξ + archimedeanConstant =
      (Complex.digamma ((1 / 4 : ℂ) + (ξ / 2 : ℝ) * Complex.I)).re -
        (Complex.digamma (1 / 4)).re := by
  have he : (1 / 4 : ℂ) + Complex.I * (ξ : ℂ) / 2 =
      (1 / 4 : ℂ) + (ξ / 2 : ℝ) * Complex.I := by push_cast; ring
  simp only [archimedeanMultiplier, archimedeanConstant, he]
  ring

/-- The actual Euler derivative limit supplies precisely the source series identity. -/
theorem quarter_series_of_derivative_limit (h : EulerDerivativeLimit) :
    QuarterSeriesObligation := by
  intro ξ
  rw [actual_multiplier_difference]
  convert hasSum_difference_of_derivative_limit h (by norm_num : (0 : ℝ) < 1 / 4)
    (ξ / 2) using 1 <;> simp [kernel, add_comm]

/-- The independently proved kernel comparison yields source equation (10),
provided the exact special-function identity is supplied. -/
theorem multiplier_estimate_of_series (h : QuarterSeriesObligation) :
    MultiplierEstimateObligation := by
  intro ξ
  have hs := (h ξ).tsum_eq
  rw [← hs]
  exact frequency_sum_bounds ξ

/-- Analytic admission follows from the source identity, not from its citation. -/
theorem archimedean_integrability_of_series (h : QuarterSeriesObligation) :
    ArchimedeanIntegrabilityObligation :=
  BridgeMultiplier.actual_archimedean_integrable_of_multiplier_estimate
    (multiplier_estimate_of_series h)

/-- Full B3.1 follows from the isolated Euler derivative limit. The premise is
explicit, so this conditional theorem does not by itself close B3.1. -/
theorem admission_of_derivative_limit (h : EulerDerivativeLimit) :
    NormalizationAdmissibilityObligation :=
  normalization_admissibility_iff_archimedean.mpr
    (archimedean_integrability_of_series (quarter_series_of_derivative_limit h))

/-- The actual quarter-line source identity is now proved from Euler convergence. -/
theorem quarter_series : QuarterSeriesObligation :=
  quarter_series_of_derivative_limit euler_derivative_limit

/-- RH-0002 equation (10), with the actual digamma and exact frequency scaling. -/
theorem multiplier_estimate : MultiplierEstimateObligation :=
  multiplier_estimate_of_series quarter_series

/-- Genuine integrability closes the exact analytic obstruction left by Run 3. -/
theorem archimedean_integrability : ArchimedeanIntegrabilityObligation :=
  archimedean_integrability_of_series quarter_series

/-- Full B3.1 admission is unconditional on the actual normalized test family.
This is analytic admission only, not the zero-side identity or an RH bridge. -/
theorem normalization_admissibility : NormalizationAdmissibilityObligation :=
  normalization_admissibility_iff_archimedean.mpr archimedean_integrability

end
end FormalResearch.SUCAS.AdmissionSource
