# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SourceActualMonotoneKernelProbeNative03.Variantb0849316c3693eb840c30a191668fe8013819be3669c7784912455df75fa780a

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d768d0a9a5193a7c64def268157f7925cc1e5058` · SHA-256 `29de72a2afb0af005503c19ec3067ec92c34b9d7547c986a762552d4cef1c701`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SyntheticRelativeProbe.Variant17db15ef5bd5f10cba9197b68e765cb7dad22e58dc12c57badcf9b88b8cd643e","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"17db15ef5bd5f10cba9197b68e765cb7dad22e58dc12c57badcf9b88b8cd643e","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.MixedSubjects.SourceCorpus.SyntheticRelativeProbe.Variant17db15ef5bd5f10cba9197b68e765cb7dad22e58dc12c57badcf9b88b8cd643e","mathematical_subject":"Foundations.MixedSubjects","original_sha256":"17db15ef5bd5f10cba9197b68e765cb7dad22e58dc12c57badcf9b88b8cd643e","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/rh16-continuation-20261006-signed-next/actual-monotone-kernel-probe/SourceActualMonotoneKernelProbe-native03.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import ActualComplexCorrelationAsymptotic
import CriticalRelativePairing

/-!
A synthetic smooth relative-error probe is paired with the literal actual
explicitSecondDerivative kernel. Its compact signed readout has a positive
normalized limit. The probe is not the actual von Mangoldt source, and no
arithmetic counterexample, original Estimate or uniform signed cap is claimed.
The separate closed-prefix monotonicity/PNT construction retains PAPER grade.
Research direction: grwtsk contributors. Formal development: OpenAI Codex.
-/


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SyntheticRelativeProbe.Variant17db15ef5bd5f10cba9197b68e765cb7dad22e58dc12c57badcf9b88b8cd643e

set_option autoImplicit false

namespace FormalResearch.RiemannHypothesis.SourceActualMonotoneKernelProbe
open MeasureTheory Set Filter
open scoped Interval Topology
open SourcePairing ActualCriticalExponentialResponse ActualComplexCorrelationAsymptotic
open OmegaResearch.CriticalRelativePairing
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization CorrelationRegularity
noncomputable section

/-- A synthetic smooth error, distinct from the actual relative Psi error. -/
def syntheticRelativeProbe (epsilon t : ℝ) : ℝ :=
  epsilon * Real.exp (-t / 4) - (1 + epsilon) * Real.exp (-t)

/-- The direct finite integral keeps the literal actual source kernel. -/
def actualKernelProbeReadout (A epsilon : ℝ) : ℝ :=
  ∫ t in 0..2 * A,
    Real.exp (t / 2) * syntheticRelativeProbe epsilon t * criticalWeight A t

/-- Genuine compact L1 follows from the two actual continuous source jets. -/
theorem actualKernelProbeReadout_intervalIntegrable {A : ℝ} (hA : 1 ≤ A)
    (epsilon : ℝ) :
    IntervalIntegrable (fun t => Real.exp (t / 2) * syntheticRelativeProbe epsilon t *
      criticalWeight A t) volume 0 (2 * A) := by
  have hp : Continuous (syntheticRelativeProbe epsilon) := by
    unfold syntheticRelativeProbe
    fun_prop
  exact (((by fun_prop : Continuous (fun t : ℝ => Real.exp (t / 2))).mul hp).mul
    (criticalWeight_continuous hA)).intervalIntegrable _ _

private theorem halfTransform_real (A z : ℝ) :
    (actualHalfCorrelationTransform A (z : ℂ)).re =
      ∫ t in 0..2 * A, Real.exp (z * t) * sourceCorrelation explicitSecondDerivative A t := by
  have he : actualHalfCorrelationTransform A (z : ℂ) =
      ((∫ t in 0..2 * A, Real.exp (z * t) *
        sourceCorrelation explicitSecondDerivative A t : ℝ) : ℂ) := by
    unfold actualHalfCorrelationTransform
    rw [← intervalIntegral.integral_ofReal]
    apply intervalIntegral.integral_congr
    intro t _
    push_cast
    rfl
  rw [he]
  rfl

private theorem actual_real_mode {A : ℝ} (hA : 1 ≤ A) (z : ℝ) :
    (∫ t in 0..2 * A, Real.exp (z * t) * criticalWeight A t) =
      (1 / 2 + z) * (actualHalfCorrelationTransform A (z : ℂ)).re + 1 := by
  have hc := sourceCorrelation_contDiff A (by linarith : 0 < A)
  have he : Continuous (fun t : ℝ => Real.exp (z * t)) := by fun_prop
  have hi0 : IntervalIntegrable (fun t => Real.exp (z * t) *
      sourceCorrelation explicitSecondDerivative A t) volume 0 (2 * A) :=
    (he.mul hc.continuous).intervalIntegrable _ _
  have hi1 : IntervalIntegrable (fun t => Real.exp (z * t) *
      deriv (sourceCorrelation explicitSecondDerivative A) t) volume 0 (2 * A) :=
    (he.mul (hc.continuous_deriv_one)).intervalIntegrable _ _
  have hibp := intervalIntegral.integral_mul_deriv_eq_deriv_mul_of_hasDerivAt
    (a := 0) (b := 2 * A)
    (u := fun t : ℝ => Real.exp (z * t))
    (v := sourceCorrelation explicitSecondDerivative A)
    (u' := fun t => z * Real.exp (z * t))
    (v' := deriv (sourceCorrelation explicitSecondDerivative A))
    he.continuousOn hc.continuous.continuousOn
    (fun t _ => by
      convert! (((hasDerivAt_id t).const_mul z).exp) using 1 <;> simp [mul_comm])
    (fun t _ => (hc.differentiable (by norm_num) t).hasDerivAt)
    ((he.const_mul z).intervalIntegrable _ _)
    (hc.continuous_deriv_one.intervalIntegrable _ _)
  have hz := sourceCorrelation_eq_zero_of_two_mul_le_abs A (2 * A)
    (by linarith : 0 < A) (by rw [abs_of_pos (by positivity)])
  rw [hz, sourceCorrelation_zero (by linarith : 0 < A)] at hibp
  simp only [mul_zero, Real.exp_zero, mul_one, zero_sub] at hibp
  rw [halfTransform_real]
  unfold criticalWeight
  simp_rw [mul_sub, mul_div_assoc]
  rw [intervalIntegral.integral_sub (hi0.div_const 2) hi1,
    intervalIntegral.integral_div]
  have hp : (∫ t in 0..2 * A,
      (z * Real.exp (z * t)) * sourceCorrelation explicitSecondDerivative A t) =
      z * (∫ t in 0..2 * A,
        Real.exp (z * t) * sourceCorrelation explicitSecondDerivative A t) := by
    simp_rw [mul_assoc]
    rw [intervalIntegral.integral_const_mul]
  rw [hp] at hibp
  linarith

/-- Both true source endpoints give the exact signed probe readout and unit payment. -/
theorem actualKernelProbeReadout_eq {A : ℝ} (hA : 1 ≤ A) (epsilon : ℝ) :
    actualKernelProbeReadout A epsilon = epsilon * (3 / 4) *
      (actualHalfCorrelationTransform A (1 / 4)).re - 1 := by
  have he (t : ℝ) : Real.exp (t / 2) * syntheticRelativeProbe epsilon t =
      epsilon * Real.exp (t / 4) - (1 + epsilon) * Real.exp (-t / 2) := by
    unfold syntheticRelativeProbe
    calc
      _ = epsilon * (Real.exp (t / 2) * Real.exp (-t / 4)) -
          (1 + epsilon) * (Real.exp (t / 2) * Real.exp (-t)) := by ring
      _ = _ := by
        rw [← Real.exp_add, ← Real.exp_add]
        congr 2 <;> congr 1 <;> ring
  have hi (z : ℝ) : IntervalIntegrable
      (fun t => Real.exp (z * t) * criticalWeight A t) volume 0 (2 * A) :=
    ((by fun_prop : Continuous (fun t : ℝ => Real.exp (z * t))).mul
      (criticalWeight_continuous hA)).intervalIntegrable _ _
  unfold actualKernelProbeReadout
  have hx : (fun t : ℝ => Real.exp (t / 2) * syntheticRelativeProbe epsilon t *
      criticalWeight A t) =
      (fun t => epsilon * (Real.exp ((1 / 4) * t) * criticalWeight A t) -
        (1 + epsilon) * (Real.exp ((-1 / 2) * t) * criticalWeight A t)) := by
    funext t
    rw [he]
    simp only [show (1 / 4 : ℝ) * t = t / 4 by ring,
      show (-1 / 2 : ℝ) * t = -t / 2 by ring]
    ring
  rw [hx, intervalIntegral.integral_sub ((hi (1 / 4)).const_mul epsilon)
      ((hi (-1 / 2)).const_mul (1 + epsilon)),
    intervalIntegral.integral_const_mul, intervalIntegral.integral_const_mul,
    actual_real_mode hA, actual_real_mode hA]
  norm_num
  ring

private theorem actual_half_real_scaled :
    Tendsto (fun A : ℝ => A ^ 9 * Real.exp (-A / 2) *
      (actualHalfCorrelationTransform A (1 / 4)).re) atTop
      (𝓝 (5435817984 / ((65536 / 109395 : ℝ) / 16))) := by
  have hh := actualHalfCorrelationTransform_normalized_tendsto
    (z := (1 / 4 : ℂ)) (by norm_num)
  have hr := (Complex.continuous_re.tendsto _).comp hh
  have he (A : ℝ) : actualCorrelationAsymptoticScale A (1 / 4) =
      ((A ^ 9 * sourceNormalization A * Real.exp (-A / 2) : ℝ) : ℂ) := by
    unfold actualCorrelationAsymptoticScale
    have hx : -2 * (1 / 4 : ℂ) * (A : ℂ) = ((-A / 2 : ℝ) : ℂ) := by
      push_cast
      ring
    rw [hx, ← Complex.ofReal_exp]
    push_cast
    rfl
  have hr' : Tendsto (fun A : ℝ => A ^ 9 * sourceNormalization A *
      Real.exp (-A / 2) * (actualHalfCorrelationTransform A (1 / 4)).re)
      atTop (𝓝 (5435817984 : ℝ)) := by
    convert! hr using 1
    · ext A
      dsimp only [Function.comp_def]
      rw [he]
      simp
    · norm_num
  have hd := hr'.div actualSourceNormalization_tendsto (by norm_num)
  apply hd.congr'
  filter_upwards [eventually_ge_atTop (1 : ℝ)] with A hA
  have hn : sourceNormalization A ≠ 0 := (source_normalization_pos A hA).ne'
  dsimp
  field_simp [hn]

/-- The actual-kernel probe has a positive limit for every positive epsilon, at real scales. -/
theorem actualKernelProbeReadout_normalized_tendsto (epsilon : ℝ) :
    Tendsto (fun A : ℝ => A ^ 9 * Real.exp (-A / 2) *
      actualKernelProbeReadout A epsilon) atTop (𝓝 (108883906560 * epsilon)) := by
  have hs : Tendsto (fun A : ℝ => A ^ 9 * Real.exp (-A / 2)) atTop (𝓝 0) := by
    have h := tendsto_rpow_mul_exp_neg_mul_atTop_nhds_zero (9 : ℝ)
      (1 / 2) (by norm_num)
    convert! h using 1
    ext A
    simp only [show -(1 / 2 : ℝ) * A = -A / 2 by ring]
  have hh := (actual_half_real_scaled.const_mul (epsilon * (3 / 4))).sub hs
  have hl : epsilon * (3 / 4) *
      (5435817984 / ((65536 / 109395 : ℝ) / 16)) - 0 = 108883906560 * epsilon := by
    norm_num
    ring
  rw [hl] at hh
  apply hh.congr'
  filter_upwards [eventually_ge_atTop (1 : ℝ)] with A hA
  rw [actualKernelProbeReadout_eq hA]
  ring

end
end FormalResearch.RiemannHypothesis.SourceActualMonotoneKernelProbe
```
