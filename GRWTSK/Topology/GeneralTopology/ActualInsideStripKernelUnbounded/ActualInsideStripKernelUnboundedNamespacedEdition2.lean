-- corpus-organization-transform:v1
-- Mathematical subject: Topology.GeneralTopology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.GeneralTopology.SequenceTendsto.Variantdca8d57984e5cba07d49f1fcf31c975cc863d2dc6ce5df53c0541984a345b9d6","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"dca8d57984e5cba07d49f1fcf31c975cc863d2dc6ce5df53c0541984a345b9d6","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Topology.GeneralTopology.SourceCorpus.SequenceTendsto.Variantdca8d57984e5cba07d49f1fcf31c975cc863d2dc6ce5df53c0541984a345b9d6","mathematical_subject":"Topology.GeneralTopology","original_sha256":"dca8d57984e5cba07d49f1fcf31c975cc863d2dc6ce5df53c0541984a345b9d6","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/rh16-continuation-20261006-challenge-next/ActualInsideStripKernelUnbounded-Native01/ActualInsideStripKernelUnbounded.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import ActualInsideStripKernelNegativeSequence

/-!
The literal actual strip kernel is unbounded below on a prescribed sequence of
actual source scales. This kernel statement asserts no zeta-zero membership,
no sign for the actual full zero sum, and no RH or covariance divergence.
Research direction: grwtsk contributors. Formal development: OpenAI Codex.
-/

namespace GRWTSK.Topology.GeneralTopology.SequenceTendsto.Variantdca8d57984e5cba07d49f1fcf31c975cc863d2dc6ce5df53c0541984a345b9d6

set_option autoImplicit false
namespace FormalResearch.RiemannHypothesis.ActualInsideStripKernelUnbounded
open Filter
open scoped Topology
open SourcePairing ActualCorrelationOppositeHalf
open SourceActualComplexEndpointAsymptotic ActualComplexCorrelationAsymptotic
open ActualPrescribedCorrelationNegativeSequence ActualInsideStripKernelNegativeSequence
noncomputable section

private theorem sequence_tendsto :
    Tendsto actualInsideStripSequence atTop atTop := by
  exact Tendsto.const_mul_atTop (by norm_num : (0 : ℝ) < 2)
    actualPrescribedScaleSequence_tendsto

private theorem sequence_scale_pos {n : ℕ} (hA : 1 ≤ actualInsideStripSequence n) :
    0 < actualInsideStripSequence n ^ 9 * sourceNormalization (actualInsideStripSequence n) *
      Real.exp (-actualInsideStripSequence n / 2) := by
  have hZ := source_normalization_pos (actualInsideStripSequence n) hA
  have hp : 0 < actualInsideStripSequence n := by linarith
  positivity

/-- The entire positive source normalization vanishes on the prescribed actual scales. -/
theorem actualInsideStrip_sequence_scale_tendsto_zero :
    Tendsto (fun n : ℕ =>
      actualInsideStripSequence n ^ 9 * sourceNormalization (actualInsideStripSequence n) *
        Real.exp (-actualInsideStripSequence n / 2)) atTop (𝓝 (0 : ℝ)) := by
  have hp : 0 < actualInsideStripMode.re := by norm_num [actualInsideStripMode]
  have hh := Complex.continuous_re.continuousAt.tendsto.comp
    ((actualCorrelationAsymptoticScale_tendsto_zero hp).comp sequence_tendsto)
  apply hh.congr'
  exact Filter.Eventually.of_forall fun n => by
    dsimp [actualCorrelationAsymptoticScale]
    rw [actualInsideStripSequence_phase]
    simp only [Complex.mul_re, Complex.ofReal_re, Complex.ofReal_im,
      mul_zero, sub_zero]

/-- Every real lower threshold is eventually crossed by the literal actual strip kernel. -/
theorem actualInsideStripKernel_eventually_below (L : ℝ) :
    ∀ᶠ n in atTop,
      (actualBilateralCorrelationTransform (actualInsideStripSequence n)
        actualInsideStripMode).re < L := by
  have hn := actualInsideStripKernel_scaled_real_tendsto.eventually_lt_const
    (by norm_num : (-301989888 : ℝ) < -150994944)
  have hs := (actualInsideStrip_sequence_scale_tendsto_zero.mul_const |L|).eventually_lt_const
    (by norm_num : (0 : ℝ) * |L| < 150994944)
  filter_upwards [hn, hs, sequence_tendsto.eventually_ge_atTop 1] with n hn hs hA
  let scale : ℝ := actualInsideStripSequence n ^ 9 *
    sourceNormalization (actualInsideStripSequence n) * Real.exp (-actualInsideStripSequence n / 2)
  have hp : 0 < scale := sequence_scale_pos hA
  change scale *
    (actualBilateralCorrelationTransform (actualInsideStripSequence n) actualInsideStripMode).re <
      -150994944 at hn
  change scale * |L| < 150994944 at hs
  have hl := mul_le_mul_of_nonneg_left (neg_abs_le L) hp.le
  have hlarge : -150994944 < scale * L := by nlinarith
  exact (mul_lt_mul_left hp).mp (hn.trans hlarge)

/-- The actual prescribed kernel values tend to negative infinity. -/
theorem actualInsideStripKernel_tendsto_atBot :
    Tendsto (fun n : ℕ =>
      (actualBilateralCorrelationTransform (actualInsideStripSequence n)
        actualInsideStripMode).re) atTop atBot := by
  exact tendsto_atBot.mpr fun L => (actualInsideStripKernel_eventually_below L).mono
    fun _ h => h.le

/-- Both arbitrary real radius and arbitrary real lower threshold are retained. -/
theorem actualInsideStripKernel_below_beyond (R L : ℝ) :
    ∃ A : ℝ, R ≤ A ∧ 1 ≤ A ∧
      (actualBilateralCorrelationTransform A actualInsideStripMode).re < L := by
  obtain ⟨n, hn, hR, hA⟩ :=
    ((actualInsideStripKernel_eventually_below L).and
      ((sequence_tendsto.eventually_ge_atTop R).and
      (sequence_tendsto.eventually_ge_atTop 1))).exists
  exact ⟨actualInsideStripSequence n, hR, hA, hn⟩

/-- A uniform lower bound for all actual scales cannot hold for this prescribed strip mode. -/
theorem actualInsideStripKernel_no_eventual_lower_bound :
    ¬ ∃ K R : ℝ, ∀ A : ℝ, R ≤ A → 1 ≤ A →
      K ≤ (actualBilateralCorrelationTransform A actualInsideStripMode).re := by
  rintro ⟨K, R, h⟩
  obtain ⟨A, hR, hA, hneg⟩ := actualInsideStripKernel_below_beyond R K
  exact (not_lt_of_ge (h A hR hA)) hneg

end
end FormalResearch.RiemannHypothesis.ActualInsideStripKernelUnbounded
