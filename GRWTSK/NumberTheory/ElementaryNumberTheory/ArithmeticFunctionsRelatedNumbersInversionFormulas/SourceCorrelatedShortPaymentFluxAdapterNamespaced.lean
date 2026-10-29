-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SamplingPaymentAtEqExistingFixedCutoffTerms.Variant5512643837c62d0e349b38689a4dfc215321dc91a79effc89d30eecccca0c705","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"5512643837c62d0e349b38689a4dfc215321dc91a79effc89d30eecccca0c705","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.SamplingPaymentAtEqExistingFixedCutoffTerms.Variant5512643837c62d0e349b38689a4dfc215321dc91a79effc89d30eecccca0c705","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"5512643837c62d0e349b38689a4dfc215321dc91a79effc89d30eecccca0c705","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/confluence/cycle31/mutation-issue-regent-v1/short-payment-cutoff-flux-adapter-v1/SourceCorrelatedShortPaymentFluxAdapter.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import SourceCorrelatedShortSamplingPayment
import SourceCutoffFlux

/-!
# Existing fixed-cutoff law for the correlated short payment

UNCOMPILED source preparation. SourceCutoffFlux already proves the two-axis
increment of the fixed-cutoff sampling inventories. This module only bridges
the correlated payment to those inventories and exposes their existing square
corner. It defines no new flux, rectangle, sampling main term or counterterm.

The source scale A stays fixed. The classification cutoff U changes on both
closed short axes. The literal normalized Jlog and Jplain are retained. The
independent main term, PLUS centering, physical deletion d*k=m and full joint
remainder remain with their original owners; this is no scale derivative or
uniform upper estimate.

The hostile fixture uses the actual arithmetic coefficients on a generic
singleton-square carrier. It does not assert a nonzero literal Jplain_A(4),
failure of a weighted source inequality, positivity or an RH refutation.

AI attribution: developed with OpenAI Codex. The complete proof bodies below
have not been elaborated. Native, type/axiom, full proof-view, lint, independent
acceptance and complete verification gates remain separate.
-/


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SamplingPaymentAtEqExistingFixedCutoffTerms.Variant5512643837c62d0e349b38689a4dfc215321dc91a79effc89d30eecccca0c705

set_option autoImplicit false

namespace FormalResearch.RiemannHypothesis.SourceCorrelatedShortPaymentFluxAdapter

open ArithmeticFunction SourceCorrelatedShortSamplingPayment SourceCutoffFlux
open SourceSamplingPointwise
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open EstimateMertensAbel

noncomputable section

/-- The existing payment is precisely the two already owned fixed-cutoff sampling terms. -/
theorem samplingPaymentAt_eq_existing_fixed_cutoff_terms (A : ℝ) (U : ℕ) :
    samplingPaymentAt A U = shortLogSamplingAt A U - shortPlainSamplingAt A U := by
  unfold samplingPaymentAt shortLogSamplingAt shortPlainSamplingAt
  simp_rw [mul_sub, Finset.sum_sub_distrib, Finset.mul_sum, mul_assoc]

/-- The payment increment reuses the existing two-axis law, whose first row includes the corner. -/
theorem samplingPaymentAt_succ_eq_existing_increment (A : ℝ) (U : ℕ) :
    samplingPaymentAt A (U + 1) - samplingPaymentAt A U =
      (moebius (U + 1) : ℝ) * sourceLogSamplingMainTerm A (U + 1 : ℕ) -
        shortPlainIncrement A U := by
  simp only [samplingPaymentAt_eq_existing_fixed_cutoff_terms]
  have hl := shortLogSamplingAt_succ A U
  have hp := shortPlainSamplingAt_succ A U
  linear_combination hl - hp

/-- Both old-axis edges and the single square corner remain explicit at fixed source scale. -/
theorem samplingPaymentAt_succ_eq_edges_and_corner (A : ℝ) (U : ℕ) :
    samplingPaymentAt A (U + 1) - samplingPaymentAt A U =
      (moebius (U + 1) : ℝ) * sourceLogSamplingMainTerm A (U + 1 : ℕ) -
        (moebius (U + 1) : ℝ) *
          (∑ m ∈ Finset.Icc 1 U, vonMangoldt m *
            sourcePlainSamplingMainTerm A (((U + 1) * m : ℕ) : ℝ)) -
        vonMangoldt (U + 1) *
          (∑ d ∈ Finset.Icc 1 U, realMoebius d *
            sourcePlainSamplingMainTerm A ((d * (U + 1) : ℕ) : ℝ)) -
        (moebius (U + 1) : ℝ) * vonMangoldt (U + 1) *
          sourcePlainSamplingMainTerm A (((U + 1) ^ 2 : ℕ) : ℝ) := by
  classical
  have hk : U + 1 ∉ Finset.Icc 1 U := by simp
  rw [samplingPaymentAt_succ_eq_existing_increment]
  unfold shortPlainIncrement
  rw [shortInventory_succ, Finset.sum_insert hk]
  simp only [pow_two]
  ring

/-- Actual arithmetic coefficients: the p=2 square corner has a nonzero coefficient. -/
theorem square_corner_coefficient_two_ne_zero :
    (moebius 2 : ℝ) * vonMangoldt 2 ≠ 0 := by
  have hm : (moebius 2 : ℝ) = -1 := by
    rw [moebius_apply_prime Nat.prime_two]
    norm_num
  have hl : vonMangoldt 2 = Real.log 2 := vonMangoldt_apply_prime Nat.prime_two
  rw [hm, hl]
  simpa only [neg_one_mul] using
    neg_ne_zero.mpr (Real.log_pos (by norm_num : (1 : ℝ) < 2)).ne'

/-- Generic carrier only: keeping the two old edges while omitting their new corner is false. -/
theorem square_corner_omission_fails_on_generic_carrier :
    (∑ d ∈ Finset.Icc 1 2, ∑ m ∈ Finset.Icc 1 2,
      (moebius d : ℝ) * vonMangoldt m * (if d * m = 4 then (1 : ℝ) else 0)) -
      (∑ d ∈ Finset.Icc 1 1, ∑ m ∈ Finset.Icc 1 1,
        (moebius d : ℝ) * vonMangoldt m * (if d * m = 4 then (1 : ℝ) else 0)) ≠
      (moebius 2 : ℝ) *
        (∑ m ∈ Finset.Icc 1 1, vonMangoldt m * (if 2 * m = 4 then (1 : ℝ) else 0)) +
      vonMangoldt 2 *
        (∑ d ∈ Finset.Icc 1 1, (moebius d : ℝ) *
          (if d * 2 = 4 then (1 : ℝ) else 0)) := by
  have h1 : Finset.Icc 1 1 = ({1} : Finset ℕ) := by decide
  have h2 : Finset.Icc 1 2 = ({1, 2} : Finset ℕ) := by decide
  simpa [h1, h2] using square_corner_coefficient_two_ne_zero

end
end FormalResearch.RiemannHypothesis.SourceCorrelatedShortPaymentFluxAdapter
