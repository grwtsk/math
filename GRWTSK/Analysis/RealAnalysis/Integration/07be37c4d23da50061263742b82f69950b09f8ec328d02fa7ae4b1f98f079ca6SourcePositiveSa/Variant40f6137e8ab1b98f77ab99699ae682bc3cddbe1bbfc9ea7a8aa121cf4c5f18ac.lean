-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.Integration
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.Integration.PlainProfile.Variant07be37c4d23da50061263742b82f69950b09f8ec328d02fa7ae4b1f98f079ca6","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"07be37c4d23da50061263742b82f69950b09f8ec328d02fa7ae4b1f98f079ca6","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Integration.SourceCorpus.PlainProfile.Variant07be37c4d23da50061263742b82f69950b09f8ec328d02fa7ae4b1f98f079ca6","mathematical_subject":"Analysis.Integration","original_sha256":"07be37c4d23da50061263742b82f69950b09f8ec328d02fa7ae4b1f98f079ca6","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-continuation-20261006/ingestion/owner-bounded-joint-whole-bracket-recovery-20261007T075708Z/bytes/07be37c4d23da50061263742b82f69950b09f8ec328d02fa7ae4b1f98f079ca6--SourcePositiveSampling.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.RiemannHypothesis.SourceSamplingTaylor
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateLogSampling

/-!
# Zero-extended positive-axis sampling profiles for the actual source

The profiles equal the previously recorded source profiles for positive inputs
and are zero at nonpositive inputs. Actual support creates a zero neighborhood
of the origin, making both extensions globally C¹. All endpoint, support and
whole-positive-axis cancellation statements concern the unchanged source.

AI attribution: developed with OpenAI Codex; proof terms are checked by Lean.
-/


namespace GRWTSK.Analysis.RealAnalysis.Integration.PlainProfile.Variant07be37c4d23da50061263742b82f69950b09f8ec328d02fa7ae4b1f98f079ca6

set_option autoImplicit false

namespace FormalResearch.RiemannHypothesis.SourcePositiveSampling

open MeasureTheory Set Filter
open scoped Topology
open SourcePairing SourceSamplingTaylor
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization CorrelationRegularity EstimateLogSampling EstimateSourceMobiusKernel

/-- The actual plain sampling profile, explicitly zero on the nonpositive axis. -/
noncomputable def plainProfile (A k u : ℝ) : ℝ :=
  if 0 < u then sourcePlainSamplingTerm A k u else 0

/-- The actual logarithmic profile, explicitly zero on the nonpositive axis. -/
noncomputable def logProfile (A k u : ℝ) : ℝ :=
  if 0 < u then sourceLogSamplingTerm A k u else 0

/-- On positive inputs the extension retains exactly the existing plain profile. -/
theorem plainProfile_eq_of_pos (A k : ℝ) {u : ℝ} (hu : 0 < u) :
    plainProfile A k u = sourcePlainSamplingTerm A k u := by simp [plainProfile, hu]

/-- On positive inputs the extension retains exactly the existing logarithmic profile. -/
theorem logProfile_eq_of_pos (A k : ℝ) {u : ℝ} (hu : 0 < u) :
    logProfile A k u = sourceLogSamplingTerm A k u := by simp [logProfile, hu]

/-- The zero-extended logarithmic coefficient is exactly `log u`. -/
theorem logProfile_eq_log_mul (A k u : ℝ) :
    logProfile A k u = Real.log u * plainProfile A k u := by
  simp only [logProfile, plainProfile, sourceLogSamplingTerm]
  split_ifs <;> simp

/-- The actual lower support endpoint gives a zero interval containing the origin. -/
theorem plainProfile_zero_below {A : ℝ} (hA : 0 < A) (k : ℝ) {u : ℝ}
    (hu : u ≤ Real.exp (-2 * A - Real.log k)) : plainProfile A k u = 0 := by
  by_cases hu0 : 0 < u
  · have hl := Real.log_le_log hu0 hu
    rw [Real.log_exp] at hl
    have hs : 2 * A ≤ |Real.log k + Real.log u| := by
      linarith [neg_le_abs (Real.log k + Real.log u)]
    rw [plainProfile_eq_of_pos A k hu0, sourcePlainSamplingTerm,
      sourceCorrelation_eq_zero_of_two_mul_le_abs A _ hA hs, mul_zero]
  · simp [plainProfile, hu0]

/-- The actual upper support endpoint vanishes, including equality. -/
theorem plainProfile_zero_above {A : ℝ} (hA : 0 < A) (k : ℝ) {u : ℝ}
    (hu : Real.exp (2 * A - Real.log k) ≤ u) : plainProfile A k u = 0 := by
  have hu0 : 0 < u := (Real.exp_pos _).trans_le hu
  have hl := Real.log_le_log (Real.exp_pos (2 * A - Real.log k)) hu
  rw [Real.log_exp] at hl
  have hs : 2 * A ≤ |Real.log k + Real.log u| := by
    linarith [le_abs_self (Real.log k + Real.log u)]
  rw [plainProfile_eq_of_pos A k hu0, sourcePlainSamplingTerm,
    sourceCorrelation_eq_zero_of_two_mul_le_abs A _ hA hs, mul_zero]

/-- The plain extension is compactly supported away from zero. -/
theorem plainProfile_hasCompactSupport {A : ℝ} (hA : 0 < A) (k : ℝ) :
    HasCompactSupport (plainProfile A k) := by
  refine exists_compact_iff_hasCompactSupport.mp
    ⟨Icc 0 (Real.exp (2 * A - Real.log k)), isCompact_Icc, ?_⟩
  intro u hu
  by_cases h0 : u ≤ 0
  · simp [plainProfile, not_lt.mpr h0]
  · have hup : Real.exp (2 * A - Real.log k) ≤ u := by
      have hpos : 0 ≤ u := le_of_lt (lt_of_not_ge h0)
      by_contra h
      exact hu ⟨hpos, le_of_lt (lt_of_not_ge h)⟩
    exact plainProfile_zero_above hA k hup

/-- The logarithmic extension retains the same actual compact support. -/
theorem logProfile_hasCompactSupport {A : ℝ} (hA : 0 < A) (k : ℝ) :
    HasCompactSupport (logProfile A k) := by
  have heq : logProfile A k = fun u ↦ Real.log u * plainProfile A k u :=
    funext (logProfile_eq_log_mul A k)
  rw [heq]
  exact (plainProfile_hasCompactSupport hA k).mul_left

private theorem plainProfile_contDiffOn_pos {A : ℝ} (hA : 0 < A) (k : ℝ) :
    ContDiffOn ℝ 1 (sourcePlainSamplingTerm A k) (Ioi 0) := by
  have hl : ContDiffOn ℝ 1 Real.log (Ioi (0 : ℝ)) :=
    Real.contDiffOn_log.mono (fun u hu ↦ by simpa using ne_of_gt hu)
  have hs : ContDiffOn ℝ 1 (fun u ↦ Real.log k + Real.log u) (Ioi 0) :=
    contDiffOn_const.add hl
  exact ((hs.neg.div_const 2).exp).mul
    ((sourceCorrelation_contDiff A hA).comp_contDiffOn hs)

private theorem logProfile_contDiffOn_pos {A : ℝ} (hA : 0 < A) (k : ℝ) :
    ContDiffOn ℝ 1 (sourceLogSamplingTerm A k) (Ioi 0) := by
  have hl : ContDiffOn ℝ 1 Real.log (Ioi (0 : ℝ)) :=
    Real.contDiffOn_log.mono (fun u hu ↦ by simpa using ne_of_gt hu)
  exact hl.mul (plainProfile_contDiffOn_pos hA k)

/-- The source's zero interval at the origin makes its positive-axis plain extension globally C¹. -/
theorem plainProfile_contDiff {A : ℝ} (hA : 0 < A) (k : ℝ) :
    ContDiff ℝ 1 (plainProfile A k) := by
  rw [contDiff_iff_contDiffAt]
  intro u
  by_cases hu : 0 < u
  · apply ((plainProfile_contDiffOn_pos hA k).contDiffAt
      (isOpen_Ioi.mem_nhds hu)).congr_of_eventuallyEq
    filter_upwards [isOpen_Ioi.mem_nhds hu] with v hv
    exact plainProfile_eq_of_pos A k hv
  · have huδ : u < Real.exp (-2 * A - Real.log k) :=
      (not_lt.mp hu).trans_lt (Real.exp_pos _)
    apply (contDiffAt_const (c := (0 : ℝ))).congr_of_eventuallyEq
    filter_upwards [isOpen_Iio.mem_nhds huδ] with v hv
    exact plainProfile_zero_below hA k (le_of_lt hv)

/-- The logarithmic extension is globally C¹ because it is identically zero near the origin. -/
theorem logProfile_contDiff {A : ℝ} (hA : 0 < A) (k : ℝ) :
    ContDiff ℝ 1 (logProfile A k) := by
  rw [contDiff_iff_contDiffAt]
  intro u
  by_cases hu : 0 < u
  · apply ((logProfile_contDiffOn_pos hA k).contDiffAt
      (isOpen_Ioi.mem_nhds hu)).congr_of_eventuallyEq
    filter_upwards [isOpen_Ioi.mem_nhds hu] with v hv
    exact logProfile_eq_of_pos A k hv
  · have huδ : u < Real.exp (-2 * A - Real.log k) :=
      (not_lt.mp hu).trans_lt (Real.exp_pos _)
    apply (contDiffAt_const (c := (0 : ℝ))).congr_of_eventuallyEq
    filter_upwards [isOpen_Iio.mem_nhds huδ] with v hv
    rw [logProfile_eq_log_mul, plainProfile_zero_below hA k (le_of_lt hv), mul_zero]

/-- The positive-input derivative of the actual plain profile differentiates its literal kernel. -/
theorem plainProfile_hasDerivAt {A : ℝ} (hA : 0 < A) (k : ℝ) {u : ℝ} (hu : 0 < u) :
    HasDerivAt (plainProfile A k)
      (Real.exp (-(Real.log k + Real.log u) / 2) / u *
        (deriv (sourceCorrelation explicitSecondDerivative A) (Real.log k + Real.log u) -
          sourceCorrelation explicitSecondDerivative A (Real.log k + Real.log u) / 2)) u := by
  have hs := (Real.hasDerivAt_log hu.ne').const_add (Real.log k)
  have hc := ((sourceCorrelation_contDiff A hA).differentiable (by norm_num)
    (Real.log k + Real.log u)).hasDerivAt.comp u hs
  have hd : HasDerivAt (sourcePlainSamplingTerm A k)
      (Real.exp (-(Real.log k + Real.log u) / 2) / u *
        (deriv (sourceCorrelation explicitSecondDerivative A) (Real.log k + Real.log u) -
          sourceCorrelation explicitSecondDerivative A (Real.log k + Real.log u) / 2)) u :=
    (((hs.neg.div_const 2).exp).mul hc).congr_deriv (by
      simp only [Pi.neg_apply, Function.comp_apply]
      ring)
  apply hd.congr_of_eventuallyEq
  filter_upwards [isOpen_Ioi.mem_nhds hu] with v hv
  exact plainProfile_eq_of_pos A k hv

/-- The exact logarithmic derivative retains the sampled logarithm. -/
theorem logProfile_hasDerivAt {A : ℝ} (hA : 0 < A) (k : ℝ) {u : ℝ} (hu : 0 < u) :
    HasDerivAt (logProfile A k)
      (Real.exp (-(Real.log k + Real.log u) / 2) / u *
        ((1 - Real.log u / 2) *
          sourceCorrelation explicitSecondDerivative A (Real.log k + Real.log u) +
          Real.log u * deriv (sourceCorrelation explicitSecondDerivative A)
            (Real.log k + Real.log u))) u := by
  have hd := (Real.hasDerivAt_log hu.ne').mul (plainProfile_hasDerivAt hA k hu)
  have hf : Real.log * plainProfile A k = logProfile A k :=
    (funext (logProfile_eq_log_mul A k)).symm
  rw [hf] at hd
  apply hd.congr_deriv
  rw [plainProfile_eq_of_pos A k hu, sourcePlainSamplingTerm]
  ring

/-- Genuine integrability of the extended plain profile follows from compact C¹ regularity. -/
theorem plainProfile_integrable {A : ℝ} (hA : 0 < A) (k : ℝ) :
    Integrable (plainProfile A k) :=
  (plainProfile_contDiff hA k).continuous.integrable_of_hasCompactSupport
    (plainProfile_hasCompactSupport hA k)

/-- Genuine integrability of the extended logarithmic profile follows from compact C¹ regularity. -/
theorem logProfile_integrable {A : ℝ} (hA : 0 < A) (k : ℝ) :
    Integrable (logProfile A k) :=
  (logProfile_contDiff hA k).continuous.integrable_of_hasCompactSupport
    (logProfile_hasCompactSupport hA k)

/-- The exact plain cancellation is on the full positive axis, including the below-one part. -/
theorem plainProfile_positive_integral_zero {A : ℝ} (hA : 1 ≤ A) (k : ℝ) :
    (∫ u in Ioi (0 : ℝ), plainProfile A k u) = 0 := by
  have heq : (∫ u in Ioi (0 : ℝ), plainProfile A k u) =
      ∫ u in Ioi (0 : ℝ), sourcePlainSamplingTerm A k u :=
    setIntegral_congr_fun measurableSet_Ioi (fun u hu ↦ plainProfile_eq_of_pos A k hu)
  rw [heq]
  exact sourcePlainSampling_integral_zero hA k

/-- The exact logarithmic cancellation is also on the full positive axis. -/
theorem logProfile_positive_integral_zero {A : ℝ} (hA : 1 ≤ A) (k : ℝ) :
    (∫ u in Ioi (0 : ℝ), logProfile A k u) = 0 := by
  have heq : (∫ u in Ioi (0 : ℝ), logProfile A k u) =
      ∫ u in Ioi (0 : ℝ), sourceLogSamplingTerm A k u :=
    setIntegral_congr_fun measurableSet_Ioi (fun u hu ↦ logProfile_eq_of_pos A k hu)
  rw [heq]
  exact sourceLogSampling_integral_zero hA k

/-- Whole-line plain integration agrees with the full positive-axis integral. -/
theorem plainProfile_integral_zero {A : ℝ} (hA : 1 ≤ A) (k : ℝ) :
    (∫ u : ℝ, plainProfile A k u) = 0 := by
  have heq : plainProfile A k = (Ioi (0 : ℝ)).indicator (sourcePlainSamplingTerm A k) := by
    funext u
    simp [plainProfile, Set.indicator_apply]
  rw [heq, integral_indicator measurableSet_Ioi]
  exact sourcePlainSampling_integral_zero hA k

/-- Whole-line logarithmic integration retains the exact full-axis first-moment cancellation. -/
theorem logProfile_integral_zero {A : ℝ} (hA : 1 ≤ A) (k : ℝ) :
    (∫ u : ℝ, logProfile A k u) = 0 := by
  have heq : logProfile A k = (Ioi (0 : ℝ)).indicator (sourceLogSamplingTerm A k) := by
    funext u
    simp [logProfile, Set.indicator_apply]
  rw [heq, integral_indicator measurableSet_Ioi]
  exact sourceLogSampling_integral_zero hA k

/-- The plain sample tail vanishes at and beyond the required `N+1` quadrature endpoint. -/
theorem plainProfile_cutoff_tail {A k : ℝ} (hA : 1 ≤ A) (hk : 1 ≤ k) {u : ℝ}
    (hu : (sourceKernelCutoff A + 1 : ℝ) ≤ u) : plainProfile A k u = 0 := by
  have hp : 0 < A := lt_of_lt_of_le (by norm_num) hA
  apply plainProfile_zero_above hp k
  have hklog : 0 ≤ Real.log k := Real.log_nonneg hk
  have hexp : Real.exp (2 * A - Real.log k) ≤ Real.exp (2 * A) :=
    Real.exp_le_exp.mpr (by linarith)
  apply hexp.trans
  exact (Nat.lt_floor_add_one (Real.exp (2 * A))).le.trans hu

/-- The logarithmic sample tail also vanishes at the closed `N+1` quadrature endpoint. -/
theorem logProfile_cutoff_tail {A k : ℝ} (hA : 1 ≤ A) (hk : 1 ≤ k) {u : ℝ}
    (hu : (sourceKernelCutoff A + 1 : ℝ) ≤ u) : logProfile A k u = 0 := by
  rw [logProfile_eq_log_mul, plainProfile_cutoff_tail hA hk hu, mul_zero]

/-- The published unextended profile is nonzero at zero at the unit source scale. -/
theorem unextended_plain_unit_at_zero : sourcePlainSamplingTerm 1 1 0 = 1 := by
  simp only [sourcePlainSamplingTerm, Real.log_one, Real.log_zero, zero_add, neg_zero,
    zero_div, Real.exp_zero, one_mul]
  simpa only [sourceCorrelation, sub_zero, ← pow_two] using
    BridgeNormalization.normalized_square_integral 1 (by norm_num)

/-- The actual zero extension changes the unit profile at the origin. -/
theorem zero_extension_unit_at_zero :
    plainProfile 1 1 0 = 0 ∧ plainProfile 1 1 0 ≠ sourcePlainSamplingTerm 1 1 0 := by
  simp [plainProfile, unextended_plain_unit_at_zero]

end FormalResearch.RiemannHypothesis.SourcePositiveSampling
