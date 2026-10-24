-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.Integration
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.Integration.CorrelationIntegrandIntegrable.Variant0d677c5741d5dc847880f0bd1d8036fb2bb90088e95ba0751a9f869285bf038b","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"0d677c5741d5dc847880f0bd1d8036fb2bb90088e95ba0751a9f869285bf038b","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Integration.SourceCorpus.CorrelationIntegrandIntegrable.Variant0d677c5741d5dc847880f0bd1d8036fb2bb90088e95ba0751a9f869285bf038b","mathematical_subject":"Analysis.Integration","original_sha256":"0d677c5741d5dc847880f0bd1d8036fb2bb90088e95ba0751a9f869285bf038b","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/ZeroFormSupportProbe.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.BridgeAdmissibility


namespace GRWTSK.Analysis.RealAnalysis.Integration.CorrelationIntegrandIntegrable.Variant0d677c5741d5dc847880f0bd1d8036fb2bb90088e95ba0751a9f869285bf038b

open MeasureTheory Set

namespace ZeroFormSupportProbe

open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.BridgeAdmissibility

noncomputable section

/-- Every correlation integral here is genuine for continuous compactly supported tests. -/
theorem correlation_integrand_integrable {f : ℝ → ℝ}
    (hf : Continuous f) (hcompact : HasCompactSupport f) (t : ℝ) :
    Integrable (fun x ↦ f x * f (x - t)) volume := by
  exact (hf.mul (hf.comp (continuous_id.sub continuous_const))).integrable_of_hasCompactSupport
    hcompact.mul_right

/-- The boundary displacement leaves at most a singleton of overlap; no endpoint value is assumed. -/
theorem correlation_zero_of_two_mul_radius_le {f : ℝ → ℝ} {A t : ℝ}
    (hsupport : Function.support f ⊆ Icc (-A) A) (ht : 2 * A ≤ t) :
    (∫ x, f x * f (x - t)) = 0 := by
  have hzero (x : ℝ) (hx : x ∉ Icc (-A) A) : f x = 0 := by
    exact Function.notMem_support.mp (fun h ↦ hx (hsupport h))
  apply integral_eq_zero_of_ae
  filter_upwards [volume.ae_ne A] with x hx
  rcases lt_or_gt_of_ne hx with hlt | hgt
  · have hout : x - t ∉ Icc (-A) A := by
      intro h
      linarith [h.1]
    simp only [hzero _ hout, mul_zero, Pi.zero_apply]
  · have hout : x ∉ Icc (-A) A := by
      intro h
      linarith [h.2]
    simp only [hzero _ hout, zero_mul, Pi.zero_apply]

/-- This is the strict finite cutoff in the accepted arithmetic form, including its floor. -/
def primeCutoff (A : ℝ) : Finset ℕ :=
  (Finset.Icc 2 ⌊Real.exp (2 * A)⌋₊).filter
    (fun n : ℕ ↦ (n : ℝ) < Real.exp (2 * A))

theorem mem_primeCutoff_iff (A : ℝ) (n : ℕ) :
    n ∈ primeCutoff A ↔ 2 ≤ n ∧ (n : ℝ) < Real.exp (2 * A) := by
  constructor
  · intro h
    obtain ⟨hIcc, hlt⟩ := Finset.mem_filter.mp h
    exact ⟨(Finset.mem_Icc.mp hIcc).1, hlt⟩
  · rintro ⟨hn, hlt⟩
    exact Finset.mem_filter.mpr ⟨Finset.mem_Icc.mpr
      ⟨hn, (Nat.le_floor_iff (Real.exp_pos _).le).mpr hlt.le⟩, hlt⟩

theorem primeCutoff_mono {A R : ℝ} (hAR : A ≤ R) :
    primeCutoff A ⊆ primeCutoff R := by
  intro n hn
  rw [mem_primeCutoff_iff] at hn ⊢
  exact ⟨hn.1, hn.2.trans_le (Real.exp_le_exp.mpr (by linarith))⟩

/-- All new atoms in the larger strict cutoff have zero genuine source correlation. -/
theorem prime_sum_support_consistent {f : ℝ → ℝ} {A R : ℝ}
    (hsupport : Function.support f ⊆ Icc (-A) A) (hAR : A ≤ R) :
    (∑ n ∈ primeCutoff R, ArithmeticFunction.vonMangoldt n / Real.sqrt n *
      (∫ x, f x * f (x - Real.log n))) =
    (∑ n ∈ primeCutoff A, ArithmeticFunction.vonMangoldt n / Real.sqrt n *
      (∫ x, f x * f (x - Real.log n))) := by
  symm
  apply Finset.sum_subset (primeCutoff_mono hAR)
  intro n hnR hnA
  have hn2 : 2 ≤ n := (mem_primeCutoff_iff R n).mp hnR |>.1
  have hnotlt : ¬ (n : ℝ) < Real.exp (2 * A) := by
    intro hn
    exact hnA ((mem_primeCutoff_iff A n).mpr ⟨hn2, hn⟩)
  have hnpos : (0 : ℝ) < n := by exact_mod_cast (show 0 < n by omega)
  have hlog : 2 * A ≤ Real.log n :=
    (Real.le_log_iff_exp_le hnpos).mpr (le_of_not_gt hnotlt)
  rw [correlation_zero_of_two_mul_radius_le hsupport hlog, mul_zero]

/-- Enlarging the support parameter preserves the whole exact form. The archimedean and
pole terms are literally identical; only zero prime atoms are added. -/
theorem realArithmeticForm_support_consistent {f : ℝ → ℝ} {A R : ℝ}
    (hsupport : Function.support f ⊆ Icc (-A) A) (hAR : A ≤ R) :
    realArithmeticForm R f = realArithmeticForm A f := by
  unfold realArithmeticForm
  change _ + _ - 2 * (∑ n ∈ primeCutoff R, _) =
    _ + _ - 2 * (∑ n ∈ primeCutoff A, _)
  rw [prime_sum_support_consistent hsupport hAR]

/-- Continuous compact support supplies all real correlations before the cutoff identity is used.
No archimedean admissibility is inferred by this support-only result. -/
theorem genuine_correlation_and_form_support_consistent {f : ℝ → ℝ} {A R : ℝ}
    (hf : Continuous f) (hcompact : HasCompactSupport f)
    (hsupport : Function.support f ⊆ Icc (-A) A) (hAR : A ≤ R) :
    (∀ t : ℝ, Integrable (fun x ↦ f x * f (x - t)) volume) ∧
      realArithmeticForm R f = realArithmeticForm A f :=
  ⟨correlation_integrand_integrable hf hcompact,
    realArithmeticForm_support_consistent hsupport hAR⟩

end

end ZeroFormSupportProbe

#check ZeroFormSupportProbe.correlation_integrand_integrable
#check ZeroFormSupportProbe.correlation_zero_of_two_mul_radius_le
#check ZeroFormSupportProbe.mem_primeCutoff_iff
#check ZeroFormSupportProbe.primeCutoff_mono
#check ZeroFormSupportProbe.prime_sum_support_consistent
#check ZeroFormSupportProbe.realArithmeticForm_support_consistent
#check ZeroFormSupportProbe.genuine_correlation_and_form_support_consistent

#print axioms ZeroFormSupportProbe.correlation_integrand_integrable
#print axioms ZeroFormSupportProbe.correlation_zero_of_two_mul_radius_le
#print axioms ZeroFormSupportProbe.mem_primeCutoff_iff
#print axioms ZeroFormSupportProbe.primeCutoff_mono
#print axioms ZeroFormSupportProbe.prime_sum_support_consistent
#print axioms ZeroFormSupportProbe.realArithmeticForm_support_consistent
#print axioms ZeroFormSupportProbe.genuine_correlation_and_form_support_consistent
