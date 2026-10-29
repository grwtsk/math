-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.AsymptoticAnalysis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.AsymptoticAnalysis.RieszZeroWeight.Variant903831451b5b40292e81385dd9d1866266b76f68f472870e6d43573a9a06c396","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"903831451b5b40292e81385dd9d1866266b76f68f472870e6d43573a9a06c396","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.AsymptoticsAndSeries.SourceCorpus.RieszZeroWeight.Variant903831451b5b40292e81385dd9d1866266b76f68f472870e6d43573a9a06c396","mathematical_subject":"Analysis.AsymptoticsAndSeries","original_sha256":"903831451b5b40292e81385dd9d1866266b76f68f472870e6d43573a9a06c396","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal.publication/20261007/cache-source-audit/source/903831451b5b40292e81385dd9d1866266b76f68f472870e6d43573a9a06c396.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["external_root_references_preserved","root_references_require_identity_review","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.RiemannHypothesis.RieszResidueAudit
import FormalResearch.RiemannHypothesis.RiemannHypothesisEstimateConverse

/-!
# Occurrence-indexed Riesz zero weights

The actual rational Riesz transform has a single summable majorant independent
of the radius, including the finite low-norm zero prefix. Multiplicities remain
encoded by the native occurrence slots. Exponential weighting is dominated by
`exp A` on the unconditional open strip; on the critical line its norm is one.

These convergence and conditional size bounds do not assert a contour shift,
a signed residue formula, a uniform arithmetic estimate, or RH. The rational
transform is not substituted for the entire bilateral source transform.

AI attribution: Codex authored this module and its proofs.
-/


namespace GRWTSK.Analysis.AsymptoticAnalysis.RieszZeroWeight.Variant903831451b5b40292e81385dd9d1866266b76f68f472870e6d43573a9a06c396

namespace FormalResearch.RiemannHypothesis.RieszZeroSummability

open Filter Set
open FormalResearch.RiemannHypothesis.SourcePairing
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open ZeroObject BoundaryRieszKernel RieszResidueAudit RiemannHypothesisEstimateConverse
open scoped BigOperators

noncomputable section

/-- The actual rational Riesz weight for each native analytic-multiplicity occurrence. -/
def rieszZeroWeight (A : ℝ) (o : ZeroOccurrence) : ℂ :=
  Complex.exp (2 * (A : ℂ) * shiftedValue o) * boundaryRieszTransform A (shiftedValue o)

/-- A fixed coefficient majorant valid at every parameter, including total division. -/
def rieszPointMajorant (s : ℂ) : ℝ :=
  ‖s ^ 2 - (1 / 4 : ℂ)‖ ^ 2 / (4096 / 109395 : ℝ) *
    ∑ j ∈ Finset.range 9,
      |rieszCoefficient j| * ((j + 9).factorial : ℝ) / ‖s‖ ^ (j + 10)

/-- A radius-independent occurrence majorant retains the finite low-norm prefix. -/
def rieszOccurrenceMajorant (o : ZeroOccurrence) : ℝ :=
  if 1 ≤ ‖shiftedValue o‖ then
    (64 * rieszDecayConstant) * (1 + ‖shiftedValue o‖) ^ (-6 : ℝ)
  else rieszPointMajorant (shiftedValue o)

/-- The proved real-axis exclusion keeps every actual zero away from the artificial Riesz pole. -/
theorem riesz_zero_parameter_ne_zero (o : ZeroOccurrence) : shiftedValue o ≠ 0 :=
  shiftedValue_ne_zero_of_realZeroExclusion ZeroEta.real_zero_exclusion o

/-- The actual rational transform is analytic at every native zero-occurrence parameter. -/
theorem boundary_riesz_analytic_at_zero_parameter (A : ℝ) (o : ZeroOccurrence) :
    AnalyticAt ℂ (boundaryRieszTransform A) (shiftedValue o) :=
  boundary_riesz_transform_analytic_at A _ (riesz_zero_parameter_ne_zero o)

/-- The absolute factorial mass gives a nonnegative decay constant. -/
theorem riesz_decay_constant_nonneg : 0 ≤ rieszDecayConstant := by
  unfold rieszDecayConstant
  exact div_nonneg (mul_nonneg (by norm_num) riesz_coefficient_mass_nonneg) (by norm_num)

/-- The fixed pointwise coefficient majorant is nonnegative. -/
theorem riesz_point_majorant_nonneg (s : ℂ) : 0 ≤ rieszPointMajorant s := by
  unfold rieszPointMajorant
  positivity

/-- The occurrence majorant is nonnegative on both its finite and infinite parts. -/
theorem riesz_occurrence_majorant_nonneg (o : ZeroOccurrence) :
    0 ≤ rieszOccurrenceMajorant o := by
  unfold rieszOccurrenceMajorant
  split
  · exact mul_nonneg (mul_nonneg (by norm_num) riesz_decay_constant_nonneg) (by positivity)
  · exact riesz_point_majorant_nonneg _

/-- Every finite factorial monomial has a radius-independent pointwise denominator bound. -/
theorem riesz_monomial_point_norm_le (A : ℝ) (hA : 1 ≤ A) (s : ℂ) (j : ℕ) :
    ‖(rieszCoefficient j : ℂ) * ((j + 9).factorial : ℂ) /
      ((A : ℂ) ^ j * s ^ (j + 10))‖ ≤
        |rieszCoefficient j| * ((j + 9).factorial : ℝ) / ‖s‖ ^ (j + 10) := by
  by_cases hs : s = 0
  · simp [hs, zero_pow (by omega : j + 10 ≠ 0)]
  · have hAp : 0 < A := by linarith
    have hsp : 0 < ‖s‖ := norm_pos_iff.mpr hs
    have hAj : 1 ≤ A ^ j := one_le_pow₀ hA
    have hden : ‖s‖ ^ (j + 10) ≤ A ^ j * ‖s‖ ^ (j + 10) := by
      nlinarith [pow_nonneg (norm_nonneg s) (j + 10)]
    simp only [norm_div, norm_mul, norm_pow, Complex.norm_real, Real.norm_eq_abs,
      abs_of_pos hAp, Complex.norm_natCast]
    exact div_le_div_of_nonneg_left (by positivity) (by positivity) hden

/-- The rational transform is bounded by the fixed coefficient majorant at every parameter. -/
theorem boundary_riesz_transform_point_norm_le (A : ℝ) (hA : 1 ≤ A) (s : ℂ) :
    ‖boundaryRieszTransform A s‖ ≤ rieszPointMajorant s := by
  have hZ := source_normalization_lower_bound A
  have hZp : 0 < sourceNormalization A := by linarith
  have hf : ‖(s ^ 2 - (1 / 4 : ℂ)) ^ 2 / (sourceNormalization A : ℂ)‖ ≤
      ‖s ^ 2 - (1 / 4 : ℂ)‖ ^ 2 / (4096 / 109395 : ℝ) := by
    rw [norm_div, norm_pow, Complex.norm_real, Real.norm_eq_abs, abs_of_pos hZp]
    exact div_le_div_of_nonneg_left (by positivity) (by norm_num) hZ
  unfold boundaryRieszTransform rieszPointMajorant
  rw [norm_mul]
  apply mul_le_mul hf ?_ (norm_nonneg _) (by positivity)
  exact (norm_sum_le _ _).trans
    (Finset.sum_le_sum fun j _ ↦ riesz_monomial_point_norm_le A hA s j)

/-- Sixth-order decay is expressed in the native shell-summability coordinate. -/
theorem boundary_riesz_transform_shell_norm_le (A : ℝ) (hA : 1 ≤ A) (s : ℂ)
    (hs : 1 ≤ ‖s‖) :
    ‖boundaryRieszTransform A s‖ ≤
      (64 * rieszDecayConstant) * (1 + ‖s‖) ^ (-6 : ℝ) := by
  have hsp : 0 < ‖s‖ := by linarith
  have hpow : (1 + ‖s‖) ^ 6 ≤ 64 * ‖s‖ ^ 6 := by
    calc
      _ ≤ (2 * ‖s‖) ^ 6 := by gcongr; linarith
      _ = _ := by ring
  have hinv : 1 / ‖s‖ ^ 6 ≤ 64 / (1 + ‖s‖) ^ 6 := by
    apply (div_le_div_iff₀ (by positivity) (by positivity)).2
    simpa only [one_mul] using hpow
  calc
    _ ≤ rieszDecayConstant / ‖s‖ ^ 6 := boundary_riesz_transform_norm_le A hA s hs
    _ ≤ rieszDecayConstant * (64 / (1 + ‖s‖) ^ 6) := by
      simpa only [mul_one_div] using
        mul_le_mul_of_nonneg_left hinv riesz_decay_constant_nonneg
    _ = _ := by
      rw [show (-6 : ℝ) = -(6 : ℕ) by norm_num,
        Real.rpow_neg (by positivity), Real.rpow_natCast]
      ring

/-- Only finitely many native zero occurrences have shifted norm below one. -/
theorem eventually_one_le_shifted_norm :
    ∀ᶠ o : ZeroOccurrence in cofinite, 1 ≤ ‖shiftedValue o‖ := by
  rw [eventually_cofinite]
  have hfinite : Finite (ZeroSummability.ZeroShell 0) := ZeroSummability.zeroShell_finite 0
  have hf : {o : ZeroOccurrence | ZeroSummability.shellIndex o = 0}.Finite :=
    Set.finite_coe_iff.mp hfinite
  simpa only [not_le, ZeroSummability.shellIndex, Nat.floor_eq_zero] using hf

/-- The single radius-independent occurrence majorant is genuinely summable. -/
theorem riesz_occurrence_majorant_summable : Summable rieszOccurrenceMajorant := by
  have hsum : Summable (fun o : ZeroOccurrence ↦
      (64 * rieszDecayConstant) * (1 + ‖shiftedValue o‖) ^ (-6 : ℝ)) :=
    ZeroShellCount.zero_summability.mul_left _
  apply hsum.of_norm_bounded_eventually
  filter_upwards [eventually_one_le_shifted_norm] with o ho
  rw [Real.norm_eq_abs, abs_of_nonneg (riesz_occurrence_majorant_nonneg o)]
  simp [rieszOccurrenceMajorant, ho]

/-- Every native rational-transform value is bounded by the same majorant for all radii. -/
theorem boundary_riesz_zero_norm_le_majorant (A : ℝ) (hA : 1 ≤ A) (o : ZeroOccurrence) :
    ‖boundaryRieszTransform A (shiftedValue o)‖ ≤ rieszOccurrenceMajorant o := by
  unfold rieszOccurrenceMajorant
  split
  · exact boundary_riesz_transform_shell_norm_le A hA _ ‹_›
  · exact boundary_riesz_transform_point_norm_le A hA _

/-- The unweighted transform values over actual zero occurrences are absolutely summable. -/
theorem boundary_riesz_zero_norms_summable (A : ℝ) (hA : 1 ≤ A) :
    Summable (fun o : ZeroOccurrence ↦ ‖boundaryRieszTransform A (shiftedValue o)‖) :=
  riesz_occurrence_majorant_summable.of_nonneg_of_le (fun _ ↦ norm_nonneg _)
    (boundary_riesz_zero_norm_le_majorant A hA)

/-- The unweighted rational-transform values have a genuine complex sum. -/
theorem boundary_riesz_zero_values_summable (A : ℝ) (hA : 1 ≤ A) :
    Summable (fun o : ZeroOccurrence ↦ boundaryRieszTransform A (shiftedValue o)) :=
  (boundary_riesz_zero_norms_summable A hA).of_norm

/-- The open critical strip bounds the exponential factor without any critical-line premise. -/
theorem riesz_zero_exponential_norm_le (A : ℝ) (hA : 1 ≤ A) (o : ZeroOccurrence) :
    ‖Complex.exp (2 * (A : ℂ) * shiftedValue o)‖ ≤ Real.exp A := by
  rw [Complex.norm_exp]
  apply Real.exp_le_exp.mpr
  norm_num only [Complex.mul_re, Complex.mul_im, Complex.ofReal_re,
    Complex.ofReal_im, Complex.re_ofNat, Complex.im_ofNat, mul_zero, zero_mul,
    zero_add, sub_zero]
  have hs := (shiftedValue_strip o).2
  nlinarith

/-- Every actual exponential Riesz weight is controlled by the unconditional strip majorant. -/
theorem riesz_zero_weight_norm_le (A : ℝ) (hA : 1 ≤ A) (o : ZeroOccurrence) :
    ‖rieszZeroWeight A o‖ ≤ Real.exp A * rieszOccurrenceMajorant o := by
  unfold rieszZeroWeight
  rw [norm_mul]
  exact mul_le_mul (riesz_zero_exponential_norm_le A hA o)
    (boundary_riesz_zero_norm_le_majorant A hA o) (norm_nonneg _) (Real.exp_nonneg _)

/-- Actual occurrence-indexed Riesz weights are absolutely summable without RH. -/
theorem riesz_zero_weights_norm_summable (A : ℝ) (hA : 1 ≤ A) :
    Summable (fun o : ZeroOccurrence ↦ ‖rieszZeroWeight A o‖) :=
  (riesz_occurrence_majorant_summable.mul_left (Real.exp A)).of_nonneg_of_le
    (fun _ ↦ norm_nonneg _) (riesz_zero_weight_norm_le A hA)

/-- Actual occurrence-indexed complex Riesz weights have a genuine sum without RH. -/
theorem riesz_zero_weights_summable (A : ℝ) (hA : 1 ≤ A) :
    Summable (rieszZeroWeight A) := (riesz_zero_weights_norm_summable A hA).of_norm

/-- RH places the exponential factor on the unit circle; its use is explicit and conditional. -/
theorem riesz_zero_exponential_norm_eq_one_of_rh (hRH : _root_.RiemannHypothesis)
    (A : ℝ) (o : ZeroOccurrence) :
    ‖Complex.exp (2 * (A : ℂ) * shiftedValue o)‖ = 1 := by
  rw [Complex.norm_exp]
  simp [shifted_value_re_zero_of_rh hRH o]

/-- On RH, all radii use the same summable majorant for the actual weighted values. -/
theorem riesz_zero_weight_norm_le_of_rh (hRH : _root_.RiemannHypothesis)
    (A : ℝ) (hA : 1 ≤ A) (o : ZeroOccurrence) :
    ‖rieszZeroWeight A o‖ ≤ rieszOccurrenceMajorant o := by
  unfold rieszZeroWeight
  rw [norm_mul, riesz_zero_exponential_norm_eq_one_of_rh hRH, one_mul]
  exact boundary_riesz_zero_norm_le_majorant A hA o

/-- The fixed majorant mass is finite by genuine occurrence-indexed summability. -/
def rieszZeroMajorantMass : ℝ := ∑' o : ZeroOccurrence, rieszOccurrenceMajorant o

/-- The fixed majorant mass is nonnegative. -/
theorem riesz_zero_majorant_mass_nonneg : 0 ≤ rieszZeroMajorantMass :=
  tsum_nonneg riesz_occurrence_majorant_nonneg

/-- The unweighted rational-transform absolute sum has one radius-independent bound. -/
theorem boundary_riesz_zero_absolute_sum_le (A : ℝ) (hA : 1 ≤ A) :
    (∑' o : ZeroOccurrence, ‖boundaryRieszTransform A (shiftedValue o)‖) ≤
      rieszZeroMajorantMass :=
  (boundary_riesz_zero_norms_summable A hA).tsum_le_tsum
    (boundary_riesz_zero_norm_le_majorant A hA) riesz_occurrence_majorant_summable

/-- The unconditional weighted absolute sum retains its explicit exponential scale. -/
theorem riesz_zero_absolute_sum_le (A : ℝ) (hA : 1 ≤ A) :
    (∑' o : ZeroOccurrence, ‖rieszZeroWeight A o‖) ≤ Real.exp A * rieszZeroMajorantMass := by
  unfold rieszZeroMajorantMass
  rw [← tsum_mul_left]
  exact (riesz_zero_weights_norm_summable A hA).tsum_le_tsum
    (riesz_zero_weight_norm_le A hA) (riesz_occurrence_majorant_summable.mul_left _)

/-- Under RH, the weighted absolute sum is uniformly bounded at every admitted radius. -/
theorem riesz_zero_absolute_sum_le_of_rh (hRH : _root_.RiemannHypothesis)
    (A : ℝ) (hA : 1 ≤ A) :
    (∑' o : ZeroOccurrence, ‖rieszZeroWeight A o‖) ≤ rieszZeroMajorantMass :=
  (riesz_zero_weights_norm_summable A hA).tsum_le_tsum
    (riesz_zero_weight_norm_le_of_rh hRH A hA) riesz_occurrence_majorant_summable

/-- The genuine complex weight sum has the unconditional strip-scale bound. -/
theorem riesz_zero_sum_norm_le (A : ℝ) (hA : 1 ≤ A) :
    ‖∑' o : ZeroOccurrence, rieszZeroWeight A o‖ ≤ Real.exp A * rieszZeroMajorantMass :=
  (norm_tsum_le_tsum_norm (riesz_zero_weights_norm_summable A hA)).trans
    (riesz_zero_absolute_sum_le A hA)

/-- Under RH, the complex weight sums have one uniform norm bound for all admitted radii. -/
theorem riesz_zero_sum_norm_le_of_rh (hRH : _root_.RiemannHypothesis)
    (A : ℝ) (hA : 1 ≤ A) :
    ‖∑' o : ZeroOccurrence, rieszZeroWeight A o‖ ≤ rieszZeroMajorantMass :=
  (norm_tsum_le_tsum_norm (riesz_zero_weights_norm_summable A hA)).trans
    (riesz_zero_absolute_sum_le_of_rh hRH A hA)

end
end FormalResearch.RiemannHypothesis.RieszZeroSummability
