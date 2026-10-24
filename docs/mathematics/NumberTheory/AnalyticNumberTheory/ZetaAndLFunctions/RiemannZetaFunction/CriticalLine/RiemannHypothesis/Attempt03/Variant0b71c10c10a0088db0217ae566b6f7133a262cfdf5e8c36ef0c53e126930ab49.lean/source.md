# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.Attempt03.Variant0b71c10c10a0088db0217ae566b6f7133a262cfdf5e8c36ef0c53e126930ab49

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `69aa6343534e43826a0711f462d2d54ae502241a` · SHA-256 `59f2c35684d0966e50dc31c41a295500af4479f94115439729c95b0ca081af8f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ActualDampedXiFinitePrimitive.Variant489351cff7b444631ea1479dc3b750c8c8eb8a61e18fb7d625616bad6be433b5","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"489351cff7b444631ea1479dc3b750c8c8eb8a61e18fb7d625616bad6be433b5","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.MixedSubjects.SourceCorpus.ActualDampedXiFinitePrimitive.Variant489351cff7b444631ea1479dc3b750c8c8eb8a61e18fb7d625616bad6be433b5","mathematical_subject":"Foundations.MixedSubjects","original_sha256":"489351cff7b444631ea1479dc3b750c8c8eb8a61e18fb7d625616bad6be433b5","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/rh16-continuation-20261006-signed-next/actual-xi-damped-finite-bound/attempt03.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import SourceActualXiLaplaceMellin
import RootActualXiExponentialEnvelope

/-!
The actual signed fixed-damping F7 integral has a uniform finite-cutoff bound.
Its finite absolutely continuous Abel formula keeps the original lower seven,
closed prime powers, gamma shift and full upper primitive trace. The damping
is exactly one half. No undamped absolute-average witness is inferred.
Research direction: grwtsk contributors. Formal development: OpenAI Codex.
-/


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ActualDampedXiFinitePrimitive.Variant489351cff7b444631ea1479dc3b750c8c8eb8a61e18fb7d625616bad6be433b5

set_option autoImplicit false
namespace FormalResearch.RiemannHypothesis.SourceActualXiDampedFiniteBound
open MeasureTheory Set
open scoped Interval
open RootActualXiTailPrimitive RootActualXiExponentialEnvelope
open SourceActualPsiInverseSquare SourceMangoldtAbel RH16ActualPsiNegativeBlock
noncomputable section

/-- The independently literal actual signed primitive with fixed one-half damping. -/
def actualDampedXiFinitePrimitive (T : ℝ) : ℝ :=
  ∫ t in Real.log 7..T, actualAnchoredXiTailPrimitive t * Real.exp (-t / 2)

/-- Both elementary source constants are explicit and independent of the upper cutoff. -/
def actualDampedXiFiniteBudget : ℝ :=
  4 * (Real.log 4 + 4 + Real.log 2) + 8 * actualXiExponentialEnvelopeConstant

private theorem time_nonneg {T : ℝ} (hT : Real.log 7 ≤ T) : 0 ≤ T :=
  (Real.log_nonneg (by norm_num : (1 : ℝ) ≤ 7)).trans hT

private theorem physical_lower {T : ℝ} (hT : Real.log 7 ≤ T) : 7 ≤ Real.exp T := by
  simpa only [Real.exp_log (by norm_num : (0 : ℝ) < 7)] using Real.exp_le_exp.mpr hT

private theorem shifted_abs_le {Y : ℝ} (hY : 1 ≤ Y) :
    |shiftedActualChebyshev Y| ≤ actualXiExponentialEnvelopeConstant * Y := by
  let c : ℝ := 2 * (Real.eulerMascheroniConstant + 1 - Real.log 2)
  have hp := Chebyshev.psi_le_const_mul_self (by linarith : 0 ≤ Y)
  have hh := abs_add_le (Chebyshev.psi Y - Y) c
  have hh2 := abs_sub (Chebyshev.psi Y) Y
  rw [abs_of_nonneg (Chebyshev.psi_nonneg _), abs_of_nonneg (by linarith : 0 ≤ Y)] at hh2
  unfold shiftedActualChebyshev actualXiExponentialEnvelopeConstant
  change |Chebyshev.psi Y - Y + c| ≤ (Real.log 4 + 5 + |c|) * Y
  nlinarith [abs_nonneg c]

/-- Actual finite source continuity gives genuine L1 before the signed damping estimate. -/
theorem actualDampedXiFinitePrimitive_intervalIntegrable {T : ℝ} (hT : Real.log 7 ≤ T) :
    IntervalIntegrable (fun t => actualAnchoredXiTailPrimitive t * Real.exp (-t / 2))
      volume (Real.log 7) T :=
  ((actualAnchoredXiTailPrimitive_absolutelyContinuous hT).continuousOn.mul
    (by fun_prop : Continuous (fun t : ℝ => Real.exp (-t / 2))).continuousOn).intervalIntegrable

/-- The actual log-density substitution preserves the complete shifted arithmetic source. -/
theorem actualXiTimeDamped_eq_inverseSquare (T : ℝ) :
    (∫ t in Real.log 7..T, actualXiTailTimeDensity t * Real.exp (-t / 2)) =
      ∫ y in (7 : ℝ)..Real.exp T, shiftedActualChebyshev y / y ^ 2 := by
  let g : ℝ → ℝ := fun y => shiftedActualChebyshev y / y ^ 2
  have hd (t : ℝ) (_ht : t ∈ Ioo (min (Real.log 7) T) (max (Real.log 7) T)) :
      HasDerivAt Real.exp (Real.exp t) t := Real.hasDerivAt_exp t
  have he := intervalIntegral.integral_comp_mul_deriv_of_deriv_nonneg
    Real.continuous_exp.continuousOn hd (fun t _ => (Real.exp_pos t).le) (g := g)
  have hh : (fun t => (g ∘ Real.exp) t * Real.exp t) =
      (fun t => actualXiTailTimeDensity t * Real.exp (-t / 2)) := by
    funext t
    dsimp only [g, Function.comp_apply, actualXiTailTimeDensity]
    have hp : Real.exp t ≠ 0 := (Real.exp_pos t).ne'
    rw [mul_assoc, ← Real.exp_add, show -t / 2 + -t / 2 = -t by ring,
      Real.exp_neg]
    field_simp
  rw [hh, Real.exp_log (by norm_num : (0 : ℝ) < 7)] at he
  exact he

/-- Closed Mangoldt inverse-square Abel keeps the exact original lower-seven head. -/
theorem actualXiSevenInverseSquare_exact {T : ℝ} (hT : Real.log 7 ≤ T) :
    (∫ y in (7 : ℝ)..Real.exp T, shiftedActualChebyshev y / y ^ 2) =
      mangoldtLogError T - mangoldtLogError (Real.log 7) -
        shiftedActualChebyshev (Real.exp T) / Real.exp T + shiftedActualChebyshev 7 / 7 := by
  have he7 := shiftedActualChebyshev_inverse_square 7 (by norm_num : (2 : ℝ) ≤ 7)
  have heT := shiftedActualChebyshev_inverse_square (Real.exp T)
    (by linarith [physical_lower hT] : 2 ≤ Real.exp T)
  have hi7 := shiftedActualChebyshev_inverseSquare_intervalIntegrable 7 (by norm_num)
  have hiT := shiftedActualChebyshev_inverseSquare_intervalIntegrable (Real.exp T)
    (by linarith [physical_lower hT])
  have hj := intervalIntegral.integral_interval_sub_left hiT hi7
  rw [he7, heT, Real.log_exp] at hj
  linarith

private theorem damped_hasDerivAt (t : ℝ) :
    HasDerivAt (fun t : ℝ => Real.exp (-t / 2))
      (-(1 / 2) * Real.exp (-t / 2)) t := by
  have hd := (((hasDerivAt_id t).fun_neg.div_const (2 : ℝ)).exp)
  apply hd.congr_deriv
  ring

/-- Genuine finite AC Abel retains the full original upper F7 trace at fixed damping. -/
theorem actualDampedXiFinitePrimitive_abel {T : ℝ} (hT : Real.log 7 ≤ T) :
    (1 / 2 : ℝ) * actualDampedXiFinitePrimitive T =
      (∫ y in (7 : ℝ)..Real.exp T, shiftedActualChebyshev y / y ^ 2) -
        actualAnchoredXiTailPrimitive T * Real.exp (-T / 2) := by
  have hq : ContDiff ℝ 1 (fun t : ℝ => Real.exp (-t / 2)) := by fun_prop
  have ha := (actualAnchoredXiTailPrimitive_absolutelyContinuous hT).integral_deriv_mul_eq_sub
    hq.contDiffOn.absolutelyContinuousOnInterval
  have he : (∫ t in Real.log 7..T,
      actualXiTailTimeDensity t * Real.exp (-t / 2) +
        actualAnchoredXiTailPrimitive t * (-(1 / 2) * Real.exp (-t / 2))) =
          actualAnchoredXiTailPrimitive T * Real.exp (-T / 2) := by
    rw [actualAnchoredXiTailPrimitive_at_lower, zero_mul, sub_zero] at ha
    rw [← ha]
    apply intervalIntegral.integral_congr_ae
    filter_upwards [actualAnchoredXiTailPrimitive_ae_hasDerivAt hT] with t ht hmem
    rw [(ht (uIoc_subset_uIcc hmem)).deriv, (damped_hasDerivAt t).deriv]
  have hd := (actualXiTailTimeDensity_intervalIntegrable hT).mul_continuousOn
    (by fun_prop : Continuous (fun t : ℝ => Real.exp (-t / 2))).continuousOn
  have hf := (actualDampedXiFinitePrimitive_intervalIntegrable hT).const_mul (-(1 / 2 : ℝ))
  have hc : (fun t : ℝ => actualAnchoredXiTailPrimitive t *
      (-(1 / 2) * Real.exp (-t / 2))) =
        (fun t => -(1 / 2 : ℝ) * (actualAnchoredXiTailPrimitive t * Real.exp (-t / 2))) := by
    funext t
    ring
  have hfo : IntervalIntegrable (fun t : ℝ => actualAnchoredXiTailPrimitive t *
      (-(1 / 2) * Real.exp (-t / 2))) volume (Real.log 7) T := by
    rw [hc]
    exact hf
  rw [intervalIntegral.integral_add hd hfo, hc, intervalIntegral.integral_const_mul,
    actualXiTimeDamped_eq_inverseSquare] at he
  unfold actualDampedXiFinitePrimitive
  linarith

/-- The signed finite readout retains actual E, both Xi heads and the full primitive trace. -/
theorem actualDampedXiFinitePrimitive_closed_readout {T : ℝ} (hT : Real.log 7 ≤ T) :
    (1 / 2 : ℝ) * actualDampedXiFinitePrimitive T =
      mangoldtLogError T - mangoldtLogError (Real.log 7) -
        shiftedActualChebyshev (Real.exp T) / Real.exp T + shiftedActualChebyshev 7 / 7 -
          actualAnchoredXiTailPrimitive T * Real.exp (-T / 2) := by
  rw [actualDampedXiFinitePrimitive_abel hT, actualXiSevenInverseSquare_exact hT]

/-- The actual signed inverse-square integral is uniformly bounded over every real cutoff. -/
theorem actualXiSevenInverseSquare_abs_le {T : ℝ} (hT : Real.log 7 ≤ T) :
    |∫ y in (7 : ℝ)..Real.exp T, shiftedActualChebyshev y / y ^ 2| ≤
      2 * (Real.log 4 + 4 + Real.log 2) + 2 * actualXiExponentialEnvelopeConstant := by
  have heT := mangoldtLogError_abs_le T (time_nonneg hT)
  have he7 := mangoldtLogError_abs_le (Real.log 7) (Real.log_nonneg (by norm_num))
  have hxT := shifted_abs_le (show 1 ≤ Real.exp T by linarith [physical_lower hT])
  have hx7 := shifted_abs_le (by norm_num : (1 : ℝ) ≤ 7)
  have hdivT : |shiftedActualChebyshev (Real.exp T) / Real.exp T| ≤
      actualXiExponentialEnvelopeConstant := by
    rw [abs_div, abs_of_pos (Real.exp_pos T)]
    exact (div_le_iff₀ (Real.exp_pos T)).mpr hxT
  have hdiv7 : |shiftedActualChebyshev 7 / 7| ≤ actualXiExponentialEnvelopeConstant := by
    rw [abs_div]
    rw [abs_of_pos (by norm_num : (0 : ℝ) < 7)]
    exact (div_le_iff₀ (by norm_num : (0 : ℝ) < 7)).mpr hx7
  rw [actualXiSevenInverseSquare_exact hT]
  have h1 := abs_sub (mangoldtLogError T) (mangoldtLogError (Real.log 7))
  have h2 := abs_sub (mangoldtLogError T - mangoldtLogError (Real.log 7))
    (shiftedActualChebyshev (Real.exp T) / Real.exp T)
  have h3 := abs_add_le (mangoldtLogError T - mangoldtLogError (Real.log 7) -
    shiftedActualChebyshev (Real.exp T) / Real.exp T) (shiftedActualChebyshev 7 / 7)
  linarith

/-- The upper F7 trace is estimated, never deleted by a fictitious boundary zero. -/
theorem actualDampedXiFinitePrimitive_upperTrace_abs_le {T : ℝ} (hT : Real.log 7 ≤ T) :
    |actualAnchoredXiTailPrimitive T * Real.exp (-T / 2)| ≤
      2 * actualXiExponentialEnvelopeConstant := by
  have hF := actualAnchoredXiTailPrimitive_abs_le hT
  have hD : 0 ≤ actualXiExponentialEnvelopeConstant := by
    unfold actualXiExponentialEnvelopeConstant
    positivity
  have hE := Real.exp_pos (-T / 2)
  rw [abs_mul, abs_of_pos hE]
  calc
    _ ≤ 2 * actualXiExponentialEnvelopeConstant * Real.exp (T / 2) * Real.exp (-T / 2) := by
      exact mul_le_mul_of_nonneg_right
        (hF.trans (by nlinarith [Real.sqrt_nonneg 7])) hE.le
    _ = _ := by
      rw [mul_assoc, ← Real.exp_add, show T / 2 + -T / 2 = 0 by ring, Real.exp_zero, mul_one]

/-- A genuine unconditional signed finite-cutoff bound with fixed one-half damping. -/
theorem actualDampedXiFinitePrimitive_abs_le_budget {T : ℝ} (hT : Real.log 7 ≤ T) :
    |actualDampedXiFinitePrimitive T| ≤ actualDampedXiFiniteBudget := by
  have he := actualDampedXiFinitePrimitive_abel hT
  have hb := actualXiSevenInverseSquare_abs_le hT
  have ht := actualDampedXiFinitePrimitive_upperTrace_abs_le hT
  have hh := abs_sub (∫ y in (7 : ℝ)..Real.exp T, shiftedActualChebyshev y / y ^ 2)
    (actualAnchoredXiTailPrimitive T * Real.exp (-T / 2))
  rw [← he, abs_mul] at hh
  rw [abs_of_pos (by norm_num : (0 : ℝ) < 1 / 2)] at hh
  unfold actualDampedXiFiniteBudget
  linarith

end
end FormalResearch.RiemannHypothesis.SourceActualXiDampedFiniteBound
```
