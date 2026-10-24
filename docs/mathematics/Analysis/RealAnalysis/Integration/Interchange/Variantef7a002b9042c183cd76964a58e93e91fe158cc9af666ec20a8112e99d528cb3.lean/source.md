# Complete source: GRWTSK.Analysis.RealAnalysis.Integration.Interchange.Variantef7a002b9042c183cd76964a58e93e91fe158cc9af666ec20a8112e99d528cb3

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b9c7ca8005a13569810f8fc7ed1c9b3fe5372054` · SHA-256 `772be58aa54ed9c092ee371c8dcc2865fc0f3ef5bf411e87c43f27b101d2902d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.Integration
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.Integration.OccurrenceIntegrand.Variantae94f4033493ac0898c5c12e15c7e2da61507eca9c95939848486171aa7c5111","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"ae94f4033493ac0898c5c12e15c7e2da61507eca9c95939848486171aa7c5111","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Integration.SourceCorpus.OccurrenceIntegrand.Variantae94f4033493ac0898c5c12e15c7e2da61507eca9c95939848486171aa7c5111","mathematical_subject":"Analysis.Integration","original_sha256":"ae94f4033493ac0898c5c12e15c7e2da61507eca9c95939848486171aa7c5111","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/interchange.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.SourceLaplaceIntegral
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.SourceZeroSummability
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.SourceLaplaceDomain
import Mathlib.MeasureTheory.Integral.DominatedConvergence


namespace GRWTSK.Analysis.RealAnalysis.Integration.OccurrenceIntegrand.Variantae94f4033493ac0898c5c12e15c7e2da61507eca9c95939848486171aa7c5111

namespace FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
namespace SourceLaplaceInterchange
open MeasureTheory Set Filter
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.ZeroObject
open ZeroSideTargets SourceZeroSummability SourceLaplaceKernel SourceLaplacePrincipalPart
open scoped Topology
noncomputable section

def occurrenceIntegrand (s : ℂ) (o : ZeroOccurrence) (A : ℝ) : ℂ :=
  Complex.exp (-s * A) * ((A : ℂ) ^ 17 * bilateralTransform A (shiftedValue o) ^ 2)

def scaleMajorant (s : ℂ) (A : ℝ) : ℝ :=
  64 * 408576 ^ 2 * A ^ 25 * Real.exp (-(s.re - 1) * A)

lemma occurrenceIntegrand_integrable (s : ℂ) (hs : 1 < s.re) (o : ZeroOccurrence) :
    IntegrableOn (occurrenceIntegrand s o) (Ioi 1) :=
  (SourceLaplaceIntegral.actual_occurrence_integral o s hs).1

lemma integral_occurrenceIntegrand (s : ℂ) (hs : 1 < s.re) (o : ZeroOccurrence) :
    (∫ A in Ioi (1 : ℝ), occurrenceIntegrand s o A) = sourceKernel (shiftedValue o) s :=
  (SourceLaplaceIntegral.actual_occurrence_integral o s hs).2

lemma scaleMajorant_integrable (s : ℂ) (hs : 1 < s.re) :
    IntegrableOn (scaleMajorant s) (Ioi 1) := by
  have hr := integrableOn_rpow_mul_exp_neg_mul_rpow
    (s := (25 : ℝ)) (p := (1 : ℝ)) (by norm_num) zero_lt_one (sub_pos.mpr hs)
  simp only [Real.rpow_ofNat, Real.rpow_one] at hr
  have h := ((hr.mono_set (Ioi_subset_Ioi (by norm_num : (0 : ℝ) ≤ 1))).const_mul
    (64 * (408576 : ℝ) ^ 2))
  change Integrable (fun A : ℝ ↦ 64 * 408576 ^ 2 * A ^ 25 *
    Real.exp (-(s.re - 1) * A)) (volume.restrict (Ioi 1))
  simpa only [mul_assoc] using h

lemma occurrenceIntegrand_norm_le (s : ℂ) (o : ZeroOccurrence) (A : ℝ)
    (hA : 1 ≤ A) (ho : 1 ≤ ‖shiftedValue o‖) :
    ‖occurrenceIntegrand s o A‖ ≤
      scaleMajorant s A * (1 + ‖shiftedValue o‖) ^ (-6 : ℝ) := by
  have hAp : 0 ≤ A := by linarith
  have h := transform_square_norm_le A hA (shiftedValue o)
    ⟨(shiftedValue_strip o).1.le, (shiftedValue_strip o).2.le⟩ ho
  have hexp : Real.exp (-s.re * A) * Real.exp (A / 2) ^ 2 =
      Real.exp (-(s.re - 1) * A) := by
    rw [sq, ← Real.exp_add, ← Real.exp_add]
    congr 1
    ring
  calc
    ‖occurrenceIntegrand s o A‖ = Real.exp (-s.re * A) * A ^ 17 *
        ‖bilateralTransform A (shiftedValue o) ^ 2‖ := by
      simp [occurrenceIntegrand, norm_pow, Complex.norm_exp,
        Complex.norm_real, Real.norm_eq_abs, abs_of_nonneg hAp, mul_assoc]
    _ ≤ Real.exp (-s.re * A) * A ^ 17 *
        ((64 * decayConstant A ^ 2) * (1 + ‖shiftedValue o‖) ^ (-6 : ℝ)) := by
      gcongr
    _ = scaleMajorant s A * (1 + ‖shiftedValue o‖) ^ (-6 : ℝ) := by
      unfold scaleMajorant decayConstant
      linear_combination
        64 * 408576 ^ 2 * A ^ 25 * (1 + ‖shiftedValue o‖) ^ (-6 : ℝ) * hexp

lemma integral_norm_le (s : ℂ) (hs : 1 < s.re) (o : ZeroOccurrence)
    (ho : 1 ≤ ‖shiftedValue o‖) :
    (∫ A in Ioi (1 : ℝ), ‖occurrenceIntegrand s o A‖) ≤
      (∫ A in Ioi (1 : ℝ), scaleMajorant s A) * (1 + ‖shiftedValue o‖) ^ (-6 : ℝ) := by
  rw [← integral_mul_const]
  exact setIntegral_mono_on (occurrenceIntegrand_integrable s hs o).norm
    ((scaleMajorant_integrable s hs).mul_const _) measurableSet_Ioi
    (fun A hA ↦ occurrenceIntegrand_norm_le s o A hA.le ho)

lemma integral_norms_summable (s : ℂ) (hs : 1 < s.re) :
    Summable (fun o : ZeroOccurrence ↦ ∫ A in Ioi (1 : ℝ), ‖occurrenceIntegrand s o A‖) := by
  have hsum := ZeroShellCount.zero_summability.mul_left
    (∫ A in Ioi (1 : ℝ), scaleMajorant s A)
  apply hsum.of_norm_bounded_eventually
  filter_upwards [eventually_one_le_shifted_norm] with o ho
  rw [Real.norm_of_nonneg (integral_nonneg (fun A ↦ norm_nonneg _))]
  exact integral_norm_le s hs o ho

lemma integrals_enorm_ne_top (s : ℂ) (hs : 1 < s.re) :
    (∑' o : ZeroOccurrence, ∫⁻ A in Ioi (1 : ℝ), ‖occurrenceIntegrand s o A‖ₑ) ≠ ⊤ := by
  simp_rw [← ofReal_integral_norm_eq_lintegral_enorm (occurrenceIntegrand_integrable s hs _)]
  rw [← ENNReal.ofReal_tsum_of_nonneg
    (fun o ↦ integral_nonneg (fun A ↦ norm_nonneg (occurrenceIntegrand s o A)))
    (integral_norms_summable s hs)]
  exact ENNReal.ofReal_ne_top

lemma summedIntegrand_integrable (s : ℂ) (hs : 1 < s.re) :
    IntegrableOn (fun A : ℝ ↦ ∑' o : ZeroOccurrence, occurrenceIntegrand s o A) (Ioi 1) := by
  constructor
  · have hm : ∀ o : ZeroOccurrence, AEStronglyMeasurable (occurrenceIntegrand s o)
        (volume.restrict (Ioi 1)) := fun o ↦ (occurrenceIntegrand_integrable s hs o).1
    fun_prop
  · rw [hasFiniteIntegral_iff_enorm]
    apply lt_of_le_of_lt (lintegral_mono (fun A ↦ enorm_tsum_le_tsum_enorm))
    rw [lintegral_tsum (fun o ↦ (occurrenceIntegrand_integrable s hs o).1.enorm)]
    exact lt_top_iff_ne_top.mpr (integrals_enorm_ne_top s hs)

lemma integral_tsum_occurrences (s : ℂ) (hs : 1 < s.re) :
    (∫ A in Ioi (1 : ℝ), ∑' o : ZeroOccurrence, occurrenceIntegrand s o A) =
      ∑' o : ZeroOccurrence, sourceKernel (shiftedValue o) s := by
  rw [← integral_tsum_of_summable_integral_norm
    (fun o ↦ occurrenceIntegrand_integrable s hs o) (integral_norms_summable s hs)]
  simp_rw [integral_occurrenceIntegrand s hs]

lemma sourceKernel_norms_summable (s : ℂ) (hs : 1 < s.re) :
    Summable (fun o : ZeroOccurrence ↦ ‖sourceKernel (shiftedValue o) s‖) := by
  have h := (integral_norms_summable s hs).of_norm_bounded
    (fun o ↦ norm_integral_le_integral_norm (occurrenceIntegrand s o))
  simpa only [integral_occurrenceIntegrand s hs] using h.norm

lemma occurrenceIntegrand_norms_summable (s : ℂ) (A : ℝ) (hA : 1 ≤ A) :
    Summable (fun o : ZeroOccurrence ↦ ‖occurrenceIntegrand s o A‖) := by
  have h := (source_transform_square_norms_summable A hA).mul_left
    (‖Complex.exp (-s * A)‖ * ‖(A : ℂ)‖ ^ 17)
  simpa only [occurrenceIntegrand, norm_mul, norm_pow, mul_assoc] using h

lemma occurrenceIntegrand_summable (s : ℂ) (A : ℝ) (hA : 1 ≤ A) :
    Summable (fun o : ZeroOccurrence ↦ occurrenceIntegrand s o A) :=
  (occurrenceIntegrand_norms_summable s A hA).of_norm

lemma summedIntegrand_eq (s : ℂ) (A : ℝ) (hA : 1 ≤ A) :
    (∑' o : ZeroOccurrence, occurrenceIntegrand s o A) =
      Complex.exp (-s * A) * ((A : ℂ) ^ 17 *
        ∑' o : ZeroOccurrence, bilateralTransform A (shiftedValue o) ^ 2) := by
  have h := source_transform_squares_summable A hA
  simp only [occurrenceIntegrand]
  rw [(h.mul_left ((A : ℂ) ^ 17)).tsum_mul_left, h.tsum_mul_left]

lemma source_series_laplace_transform (s : ℂ) (hs : 1 < s.re) :
    IntegrableOn (fun A : ℝ ↦ Complex.exp (-s * A) * ((A : ℂ) ^ 17 *
      ∑' o : ZeroOccurrence, bilateralTransform A (shiftedValue o) ^ 2)) (Ioi 1) ∧
    (∫ A in Ioi (1 : ℝ), Complex.exp (-s * A) * ((A : ℂ) ^ 17 *
      ∑' o : ZeroOccurrence, bilateralTransform A (shiftedValue o) ^ 2)) =
        ∑' o : ZeroOccurrence, sourceKernel (shiftedValue o) s := by
  have hpoint (A : ℝ) (hA : A ∈ Ioi 1) := summedIntegrand_eq s A hA.le
  exact ⟨(summedIntegrand_integrable s hs).congr_fun hpoint measurableSet_Ioi,
    (setIntegral_congr_fun measurableSet_Ioi hpoint).symm.trans (integral_tsum_occurrences s hs)⟩

end
end SourceLaplaceInterchange
end FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
```
