-- corpus-organization-transform:v1
-- Mathematical subject: Analysis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.ActualUnitTilt.Variant91f4c9363b62cbcb7680e34683e36e1f98f14fcdb99c45d971feee90aeb4673b","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"91f4c9363b62cbcb7680e34683e36e1f98f14fcdb99c45d971feee90aeb4673b","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.MixedSubjects.SourceCorpus.ActualUnitTilt.Variant91f4c9363b62cbcb7680e34683e36e1f98f14fcdb99c45d971feee90aeb4673b","mathematical_subject":"Foundations.MixedSubjects","original_sha256":"91f4c9363b62cbcb7680e34683e36e1f98f14fcdb99c45d971feee90aeb4673b","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-continuation-20261006/root/check-20261007T113750Z-1791373070228709000/SourceActualTiltEnergy.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import ActualComplexCorrelationAsymptotic
import Mathlib.Analysis.SpecialFunctions.Pow.Asymptotics

/-!
The literal real tilt of the original source retains a growing energy. Its
normalization is the actual source normalization, and its support has length
2A. No bound on the signed Euler readout follows from this energy estimate.
Research direction: grwtsk contributors. Formal development: OpenAI Codex.
-/

namespace GRWTSK.Analysis.ActualUnitTilt.Variant91f4c9363b62cbcb7680e34683e36e1f98f14fcdb99c45d971feee90aeb4673b

set_option autoImplicit false
noncomputable section
namespace FormalResearch.RiemannHypothesis.SourceActualTiltEnergy
open MeasureTheory Set Filter Topology
open scoped Interval
open SourcePairing SourceActualComplexEndpointAsymptotic
open ActualComplexCorrelationSquare ActualComplexCorrelationAsymptotic
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization CorrelationRegularity

/-- The actual source tested at the real Mellin argument one. -/
def actualUnitTilt (A x : ℝ) : ℝ :=
  normalizedTest explicitSecondDerivative A x * Real.exp x

/-- The squared physical energy over the original closed source support. -/
def actualUnitTiltEnergy (A : ℝ) : ℝ :=
  ∫ x in -A..A, actualUnitTilt A x ^ 2

/-- The real tilted integral is the original Mellin transform, with no phase change. -/
theorem actualUnitTilt_transform (A : ℝ) :
    actualSourceComplexTransform A 1 =
      ((∫ x in -A..A, actualUnitTilt A x : ℝ) : ℂ) := by
  unfold actualSourceComplexTransform actualUnitTilt
  simp only [one_mul, ← Complex.ofReal_exp, ← Complex.ofReal_mul]
  exact intervalIntegral.integral_ofReal

/-- Cauchy--Schwarz retains the full length 2A of the actual support. -/
theorem actualUnitTilt_integral_sq_le {A : ℝ} (hA : 1 ≤ A) :
    (∫ x in -A..A, actualUnitTilt A x) ^ 2 ≤ 2 * A * actualUnitTiltEnergy A := by
  have hp : 0 < A := by linarith
  have hc : Continuous (actualUnitTilt A) :=
    (normalizedTest_contDiff A hp).continuous.mul Real.continuous_exp
  let m : ℝ := (∫ x in -A..A, actualUnitTilt A x) / (2 * A)
  have hn : 0 ≤ ∫ x in -A..A, (actualUnitTilt A x - m) ^ 2 :=
    intervalIntegral.integral_nonneg (by linarith) (fun _ _ => sq_nonneg _)
  have he : (∫ x in -A..A, (actualUnitTilt A x - m) ^ 2) =
      actualUnitTiltEnergy A - 2 * m * (∫ x in -A..A, actualUnitTilt A x) +
        (2 * A) * m ^ 2 := by
    have hf (x : ℝ) : (actualUnitTilt A x - m) ^ 2 =
        actualUnitTilt A x ^ 2 - (2 * m) * actualUnitTilt A x + m ^ 2 := by ring
    have h2 : IntervalIntegrable (fun x => actualUnitTilt A x ^ 2) volume (-A) A :=
      (hc.pow 2).intervalIntegrable _ _
    have hm : IntervalIntegrable (fun x => (2 * m) * actualUnitTilt A x)
        volume (-A) A := (hc.const_mul (2 * m)).intervalIntegrable _ _
    simp_rw [hf]
    rw [intervalIntegral.integral_add (h2.sub hm) intervalIntegrable_const,
      intervalIntegral.integral_sub h2 hm,
      intervalIntegral.integral_const_mul, intervalIntegral.integral_const]
    simp only [actualUnitTiltEnergy, smul_eq_mul]
    ring
  rw [he] at hn
  dsimp [m] at hn
  have hn' := mul_nonneg hn (show 0 ≤ 2 * A by positivity)
  field_simp [hp.ne'] at hn'
  nlinarith

/-- The actual fixed-argument transform forces an eventual exponential energy lower bound. -/
theorem actualUnitTiltEnergy_eventually_ge :
    ∀ᶠ A : ℝ in atTop, 20736 * Real.exp (2 * A) / A ^ 10 ≤ actualUnitTiltEnergy A := by
  have ht := Complex.continuous_re.continuousAt.tendsto.comp
    (actualBilateralCorrelationTransform_normalized_tendsto (z := 1) (by norm_num))
  have ht' : Tendsto (fun A : ℝ => A ^ 9 * sourceNormalization A * Real.exp (-2 * A) *
      (∫ x in -A..A, actualUnitTilt A x) ^ 2) atTop (𝓝 (82944 : ℝ)) := by
    norm_num at ht
    apply ht.congr'
    filter_upwards [eventually_ge_atTop (1 : ℝ)] with A hA
    simp only [Function.comp_apply]
    rw [actualBilateralCorrelationTransform_eq_square hA, actualUnitTilt_transform]
    have he : actualCorrelationAsymptoticScale A 1 =
        ((A ^ 9 * sourceNormalization A * Real.exp (-2 * A) : ℝ) : ℂ) := by
      unfold actualCorrelationAsymptoticScale
      rw [show -2 * (1 : ℂ) * (A : ℂ) = ((-2 * A : ℝ) : ℂ) by push_cast; ring]
      rw [← Complex.ofReal_exp, ← Complex.ofReal_mul]
    rw [he]
    simp only [← Complex.ofReal_pow, ← Complex.ofReal_mul, Complex.ofReal_re]
  have hz := actualSourceNormalization_tendsto.eventually (gt_mem_nhds (by norm_num :
    ((65536 / 109395 : ℝ) / 16) < 1))
  have hm := ht'.eventually (lt_mem_nhds (by norm_num : (41472 : ℝ) < 82944))
  filter_upwards [eventually_ge_atTop (1 : ℝ), hz, hm] with A hA hZ hM
  have hp : 0 < A := by linarith
  have hs := actualUnitTilt_integral_sq_le hA
  have hn : 0 ≤ (∫ x in -A..A, actualUnitTilt A x) ^ 2 := sq_nonneg _
  have hM' : 41472 ≤ A ^ 9 * Real.exp (-2 * A) *
      (∫ x in -A..A, actualUnitTilt A x) ^ 2 := by
    have hcomp := mul_le_mul_of_nonneg_right hZ.le
      (show 0 ≤ A ^ 9 * Real.exp (-2 * A) *
        (∫ x in -A..A, actualUnitTilt A x) ^ 2 by positivity)
    nlinarith
  have hscale := mul_le_mul_of_nonneg_left hs
    (show 0 ≤ A ^ 9 * Real.exp (-2 * A) by positivity)
  have he : Real.exp (-2 * A) * Real.exp (2 * A) = 1 := by
    rw [← Real.exp_add]
    ring_nf
    simp
  apply (div_le_iff₀ (show 0 < A ^ 10 by positivity)).2
  have hfinal := mul_le_mul_of_nonneg_left (hM'.trans hscale) (Real.exp_pos (2 * A)).le
  have hc : Real.exp (2 * A) *
      (A ^ 9 * Real.exp (-2 * A) * (2 * A * actualUnitTiltEnergy A)) =
      2 * actualUnitTiltEnergy A * A ^ 10 := by
    calc
      _ = 2 * actualUnitTiltEnergy A * A ^ 10 *
        (Real.exp (-2 * A) * Real.exp (2 * A)) := by ring
      _ = _ := by rw [he]; ring
  rw [hc] at hfinal
  nlinarith

/-- The actual tilted energy is unbounded along all real scales. -/
theorem actualUnitTiltEnergy_tendsto_atTop :
    Tendsto actualUnitTiltEnergy atTop atTop := by
  have ht : Tendsto (fun A : ℝ => Real.exp (2 * A) / A ^ 10) atTop atTop := by
    simpa only [Real.rpow_natCast] using
      Real.tendsto_exp_mul_div_rpow_atTop (10 : ℝ) 2 (by norm_num)
  have hh : Tendsto (fun A : ℝ => 20736 * Real.exp (2 * A) / A ^ 10)
      atTop atTop := by
    convert ht.const_mul_atTop (by norm_num : (0 : ℝ) < 20736) using 1
    ext A
    ring
  exact tendsto_atTop_mono' atTop actualUnitTiltEnergy_eventually_ge hh

end FormalResearch.RiemannHypothesis.SourceActualTiltEnergy
