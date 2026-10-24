# Complete source: GRWTSK.Analysis.RealAnalysis.Integration.SourceActualTiltEnergy.Variant64039b8c7da79a3f1f133484d5e8dc4d4ee928686a1c40ed0dc7bb35f6200e29

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `392b9ba3dba733a30f51bbdc0788a76d8f882ac2` · SHA-256 `64039b8c7da79a3f1f133484d5e8dc4d4ee928686a1c40ed0dc7bb35f6200e29`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import ActualComplexCorrelationAsymptotic
import Mathlib.Analysis.SpecialFunctions.Pow.Asymptotics

/-!
The literal real tilt of the original source retains a growing energy. Its
normalization is the actual source normalization, and its support has length
2A. No bound on the signed Euler readout follows from this energy estimate.
Research direction: grwtsk contributors. Formal development: OpenAI Codex.
-/
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

/-- The actual tilted square has a genuine whole-line integrability proof. -/
theorem actualUnitTilt_sq_integrable {A : ℝ} (hA : 1 ≤ A) :
    Integrable (fun x => actualUnitTilt A x ^ 2) volume := by
  have hp : 0 < A := by linarith
  have hc : Continuous (actualUnitTilt A) :=
    (normalizedTest_contDiff A hp).continuous.mul Real.continuous_exp
  have hs : HasCompactSupport (actualUnitTilt A) :=
    (normalizedTest_hasCompactSupport A hp).mul_right
  have hs2 : HasCompactSupport (fun x => actualUnitTilt A x ^ 2) := by
    simpa only [pow_two, Pi.mul_apply] using hs.mul_right (f' := actualUnitTilt A)
  have hc2 : Continuous (fun x => actualUnitTilt A x ^ 2) := hc.pow 2
  exact hc2.integrable_of_hasCompactSupport hs2

/-- No energy is lost outside the genuine source support. -/
theorem actualUnitTiltEnergy_eq_integral {A : ℝ} (hA : 1 ≤ A) :
    actualUnitTiltEnergy A = ∫ x : ℝ, actualUnitTilt A x ^ 2 := by
  rw [actualUnitTiltEnergy, intervalIntegral.integral_of_le (by linarith),
    ← integral_Icc_eq_integral_Ioc]
  apply setIntegral_eq_integral_of_forall_compl_eq_zero
  intro x hx
  simp only [actualUnitTilt, normalizedTest_eq_indicator A (by linarith : 0 < A),
    indicator_of_notMem hx, zero_mul, zero_pow (by norm_num : (2 : ℕ) ≠ 0)]

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
    apply tendsto_atTop_mono' atTop _ (Real.tendsto_exp_div_pow_atTop 10)
    filter_upwards [eventually_ge_atTop (0 : ℝ)] with A hA
    gcongr
    linarith
  have hh : Tendsto (fun A : ℝ => 20736 * Real.exp (2 * A) / A ^ 10)
      atTop atTop := by
    convert ht.const_mul_atTop (by norm_num : (0 : ℝ) < 20736) using 1
    ext A
    ring
  exact tendsto_atTop_mono' atTop actualUnitTiltEnergy_eventually_ge hh

end FormalResearch.RiemannHypothesis.SourceActualTiltEnergy
```
