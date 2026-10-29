-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.FunctionalAnalysis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.FunctionalAnalysis.ActualTestZeroOfLeAbs.Variant21cfe28fe2b7d9d0344152c39470256756e171bcbede9d68d61f2c42f3087f04","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"21cfe28fe2b7d9d0344152c39470256756e171bcbede9d68d61f2c42f3087f04","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.MixedSubjects.SourceCorpus.ActualTestZeroOfLeAbs.Variant21cfe28fe2b7d9d0344152c39470256756e171bcbede9d68d61f2c42f3087f04","mathematical_subject":"Foundations.MixedSubjects","original_sha256":"21cfe28fe2b7d9d0344152c39470256756e171bcbede9d68d61f2c42f3087f04","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal.publication/20261007/cache-source-audit/source/21cfe28fe2b7d9d0344152c39470256756e171bcbede9d68d61f2c42f3087f04.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.ZeroTestRegularity

/-!
# Support consistency of the actual zero-side arithmetic form

The unnormalized source test vanishes at both endpoints, so its correlation
vanishes at every separation of at least twice its radius. Enlarging the
strict prime cutoff therefore adds only zero terms. The archimedean integral,
its factor `1 / (2 * π)`, and both pole moments remain in the unchanged form.
These support identities do not assert the explicit formula or B3.2 closure.
-/


namespace GRWTSK.Analysis.FunctionalAnalysis.ActualTestZeroOfLeAbs.Variant21cfe28fe2b7d9d0344152c39470256756e171bcbede9d68d61f2c42f3087f04

namespace FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
namespace ZeroFormSupport

open MeasureTheory Set
open FormalResearch.RiemannHypothesis.SourcePairing
open ZeroSideTargets ZeroTestRegularity

noncomputable section

/-- The actual unnormalized test vanishes at and outside each support endpoint. -/
theorem actualTest_zero_of_le_abs (A x : ℝ) (hA : 1 ≤ A) (hx : A ≤ |x|) :
    actualTest A x = 0 := by
  have hz := CorrelationRegularity.normalizedTest_zero_of_le_abs A x (by linarith) hx
  change actualTest A x / Real.sqrt (sourceNormalization A) = 0 at hz
  exact (div_eq_zero_iff.mp hz).resolve_right
    (ne_of_gt (Real.sqrt_pos.2 (source_normalization_pos A hA)))

/-- Every correlation integral is genuine, using the continuous compact source test. -/
theorem actual_correlation_integrable (A t : ℝ) (hA : 1 ≤ A) :
    Integrable (fun x ↦ actualTest A x * actualTest A (x - t)) volume := by
  have hc := (actualTest_contDiff A hA).continuous
  exact (hc.mul (hc.comp (continuous_id.sub continuous_const))).integrable_of_hasCompactSupport
    (actualTest_hasCompactSupport A hA).mul_right

/-- Separated supports give a pointwise zero factor, including the touching endpoints. -/
theorem actual_correlation_zero_of_two_mul_le_abs (A t : ℝ)
    (hA : 1 ≤ A) (ht : 2 * A ≤ |t|) :
    (∫ x, actualTest A x * actualTest A (x - t)) = 0 := by
  apply integral_eq_zero_of_ae
  filter_upwards [] with x
  change actualTest A x * actualTest A (x - t) = 0
  by_cases hx : A ≤ |x|
  · rw [actualTest_zero_of_le_abs A x hA hx, zero_mul]
  · have hxt : A ≤ |x - t| := by
      have htbound : |t| ≤ |x| + |x - t| := by
        calc
          |t| = |x - (x - t)| := by congr 1; ring
          _ ≤ |x| + |x - t| := abs_sub _ _
      linarith [lt_of_not_ge hx]
    rw [actualTest_zero_of_le_abs A (x - t) hA hxt, mul_zero]

/-- The exact upper support boundary contributes zero to the original correlation. -/
theorem actual_correlation_upper_endpoint (A : ℝ) (hA : 1 ≤ A) :
    (∫ x, actualTest A x * actualTest A (x - 2 * A)) = 0 :=
  actual_correlation_zero_of_two_mul_le_abs A (2 * A) hA (le_abs_self _)

/-- Enlarging the ambient support radius retains the exact full arithmetic form.
Only additional strict-cutoff prime terms vanish; both pole moments are retained. -/
theorem actual_form_support_consistent (A R : ℝ) (hA : 1 ≤ A) (hAR : A ≤ R) :
    BridgeAdmissibility.realArithmeticForm R (actualTest A) =
      BridgeAdmissibility.realArithmeticForm A (actualTest A) := by
  classical
  let s (r : ℝ) := (Finset.Icc 2 ⌊Real.exp (2 * r)⌋₊).filter
    (fun n : ℕ ↦ (n : ℝ) < Real.exp (2 * r))
  have hexp : Real.exp (2 * A) ≤ Real.exp (2 * R) := Real.exp_le_exp.mpr (by linarith)
  have hsub : s A ⊆ s R := by
    intro n hn
    obtain ⟨hn, hlt⟩ := Finset.mem_filter.mp hn
    obtain ⟨hn2, hnA⟩ := Finset.mem_Icc.mp hn
    exact Finset.mem_filter.mpr
      ⟨Finset.mem_Icc.mpr ⟨hn2, hnA.trans (Nat.floor_mono hexp)⟩, hlt.trans_le hexp⟩
  have hsum :
      (∑ n ∈ s A, ArithmeticFunction.vonMangoldt n / Real.sqrt n *
        (∫ x, actualTest A x * actualTest A (x - Real.log n))) =
      ∑ n ∈ s R, ArithmeticFunction.vonMangoldt n / Real.sqrt n *
        (∫ x, actualTest A x * actualTest A (x - Real.log n)) := by
    apply Finset.sum_subset hsub
    intro n hnR hnA
    have hn2 : 2 ≤ n := (Finset.mem_Icc.mp (Finset.mem_filter.mp hnR).1).1
    have hnpos : 0 < (n : ℝ) := by exact_mod_cast (show 0 < n by omega)
    have hnexp : Real.exp (2 * A) ≤ (n : ℝ) := by
      by_contra h
      have hlt : (n : ℝ) < Real.exp (2 * A) := lt_of_not_ge h
      exact hnA (Finset.mem_filter.mpr
        ⟨Finset.mem_Icc.mpr ⟨hn2, Nat.le_floor hlt.le⟩, hlt⟩)
    have hnlog : 2 * A ≤ Real.log n := (Real.le_log_iff_exp_le hnpos).2 hnexp
    rw [actual_correlation_zero_of_two_mul_le_abs A (Real.log n) hA
      (hnlog.trans (le_abs_self _)), mul_zero]
  unfold BridgeAdmissibility.realArithmeticForm
  change _ + _ - 2 * (∑ n ∈ s R, _) = _ + _ - 2 * (∑ n ∈ s A, _)
  rw [hsum]

end
end ZeroFormSupport
end FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
