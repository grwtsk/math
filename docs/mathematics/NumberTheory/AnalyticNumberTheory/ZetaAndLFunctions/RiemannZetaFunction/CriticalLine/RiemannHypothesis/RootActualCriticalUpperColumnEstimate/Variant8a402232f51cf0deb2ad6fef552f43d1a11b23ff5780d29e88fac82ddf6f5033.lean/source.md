# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.RootActualCriticalUpperColumnEstimate.Variant8a402232f51cf0deb2ad6fef552f43d1a11b23ff5780d29e88fac82ddf6f5033

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `fe2e6033be7437a39061d9554e2825bfaff139a1` · SHA-256 `8a402232f51cf0deb2ad6fef552f43d1a11b23ff5780d29e88fac82ddf6f5033`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import RootActualCriticalColumnTransfer
import RootActualUpperColumnWindow
import RootActualCriticalHalfCrude
import ActualSupportEdgeMangoldtRow

/-!
The genuine critical upper-column trace is small despite its growing half
inventory. The actual quotient confines time to width at most 3/U; closed
support-edge jets control the remaining corner without declaring it zero.
Research direction: grwtsk contributors. Formal development: OpenAI Codex.
-/

set_option autoImplicit false
namespace FormalResearch.RiemannHypothesis.RootActualCriticalUpperColumnEstimate
open MeasureTheory Set
open SourceActualAdjointAbelPrimitives SourceActualLogColumnTransport
open RootActualDoubleAdjointTransfer RootActualCriticalColumnTransfer
open RootActualUpperColumnWindow RootActualCriticalHalfCrude ActualSupportEdgeMangoldtRow
open SourcePairing SourceJointWorkSupport
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization EstimateVaughanSource EstimateSourceMobiusKernel RH16IndependentChallengeNext
noncomputable section

private theorem upper_column_time_orders {A : ℝ} (hA : 1 ≤ A) :
    actualTimeLower A ≤ 2 * A - actualColumnUpper A ∧
      2 * A - actualColumnUpper A ≤ Real.log (sourceKernelCutoff A : ℝ) := by
  let U := vaughanCutoff A
  let K := sourceKernelCutoff A / (U + 1)
  have hU : 0 < (U : ℝ) := by exact_mod_cast vaughanCutoff_pos A hA
  have hK : 0 < (K : ℝ) := by
    have hh : U + 1 ≤ K := actual_column_window_nonempty hA
    exact_mod_cast (show 0 < K by omega)
  have hm : (K : ℝ) * ((U + 1 : ℕ) : ℝ) ≤ (sourceKernelCutoff A : ℝ) := by
    exact_mod_cast Nat.div_mul_le_self (sourceKernelCutoff A) (U + 1)
  have hf : (sourceKernelCutoff A : ℝ) ≤ Real.exp (2 * A) :=
    Nat.floor_le (Real.exp_pos _).le
  have hstrict : (K : ℝ) * (U : ℝ) < Real.exp (2 * A) := by
    simp only [Nat.cast_add, Nat.cast_one] at hm
    nlinarith
  have hl := Real.log_lt_log (mul_pos hK hU) hstrict
  rw [Real.log_mul hK.ne' hU.ne', Real.log_exp] at hl
  have hb := actualJointSupportUpper_le_log_sourceCutoff A hA
  unfold actualJointSupportUpper at hb
  have hs : Real.log ((U + 1 : ℕ) : ℝ) ≤ Real.log (K : ℝ) := by
    apply Real.log_le_log (by positivity)
    exact_mod_cast actual_column_window_nonempty hA
  change Real.log (U : ℝ) ≤ 2 * A - Real.log (K : ℝ) ∧
    2 * A - Real.log (K : ℝ) ≤ Real.log (sourceKernelCutoff A : ℝ)
  constructor <;> linarith

private theorem trace_intervalIntegrable {A : ℝ} (hA : 1 ≤ A) (s : ℝ) :
    IntervalIntegrable (fun t => actualAdjointTimePrimitive A 0 t *
      actualTwistedTimeDensity A t s) volume
      (actualTimeLower A) (Real.log (sourceKernelCutoff A : ℝ)) := by
  have ht := (upper_column_time_orders hA).1.trans (upper_column_time_orders hA).2
  have hp := (actualAdjointTimePrimitive_absolutelyContinuous A 0 _ ht).continuousOn
  rw [uIcc_of_le ht] at hp
  have h1 := (actual_correlation_contDiff_four A (by linarith : 0 < A)).continuous_iteratedDeriv 1
    (by norm_num)
  have h3 := (actual_correlation_contDiff_four A (by linarith : 0 < A)).continuous_iteratedDeriv 3
    (by norm_num)
  have hc : Continuous (fun t => actualTwistedTimeDensity A t s) := by
    unfold actualTwistedTimeDensity
    fun_prop
  exact (hp.intervalIntegrable_of_Icc ht).mul_continuousOn hc.continuousOn

/-- The true upper-column trace equals its actual short support interval. -/
theorem actualUpperColumn_time_factor_eq_support {A : ℝ} (hA : 1 ≤ A) :
    (∫ t in actualTimeLower A..Real.log (sourceKernelCutoff A : ℝ),
      actualAdjointTimePrimitive A 0 t * actualTwistedTimeDensity A t (actualColumnUpper A)) =
      ∫ t in actualTimeLower A..(2 * A - actualColumnUpper A),
        actualAdjointTimePrimitive A 0 t * actualTwistedTimeDensity A t (actualColumnUpper A) := by
  obtain ⟨hl, hb⟩ := upper_column_time_orders hA
  have hc : 2 * A - actualColumnUpper A ∈
      uIcc (actualTimeLower A) (Real.log (sourceKernelCutoff A : ℝ)) := by
    rw [uIcc_of_le (hl.trans hb)]
    exact ⟨hl, hb⟩
  obtain ⟨hi1, hi2⟩ := (IntervalIntegrable.trans_iff hc).mp
    (trace_intervalIntegrable hA (actualColumnUpper A))
  have hz : (∫ t in (2 * A - actualColumnUpper A)..Real.log (sourceKernelCutoff A : ℝ),
      actualAdjointTimePrimitive A 0 t * actualTwistedTimeDensity A t (actualColumnUpper A)) = 0 := by
    calc
      _ = ∫ _ in (2 * A - actualColumnUpper A)..Real.log (sourceKernelCutoff A : ℝ),
          (0 : ℝ) := by
        apply intervalIntegral.integral_congr
        intro t ht
        have hLt : 2 * A - actualColumnUpper A ≤ t := by
          simpa only [min_eq_left hb] using ht.1
        change actualAdjointTimePrimitive A 0 t *
          actualTwistedTimeDensity A t (actualColumnUpper A) = 0
        rw [actualTwistedTimeDensity_upperColumn_zero hA hLt, mul_zero]
      _ = 0 := by simp
  have he := intervalIntegral.integral_add_adjacent_intervals hi1 hi2
  rw [hz, add_zero] at he
  exact he.symm

/-- Actual bounded P and source edge jets give a normalized upper trace budget. -/
theorem actualUpperColumn_normalized_time_factor_abs_le {A : ℝ} (hA : 91 ≤ A) :
    |Real.exp (actualColumnUpper A / 2) *
      (∫ t in actualTimeLower A..Real.log (sourceKernelCutoff A : ℝ),
        actualAdjointTimePrimitive A 0 t * actualTwistedTimeDensity A t (actualColumnUpper A))| ≤
      268 * (Real.log 4 + 4 + Real.log 2) * Real.sqrt (vaughanCutoff A : ℝ) *
        Real.exp (3 / 2) / A ^ 4 * (3 / (vaughanCutoff A : ℝ)) ^ 2 := by
  have hA1 : 1 ≤ A := by linarith
  let U : ℝ := (vaughanCutoff A : ℝ)
  let c := actualColumnUpper A
  let l := actualTimeLower A
  let b := 2 * A - c
  let δ := 3 / U
  let Ce := Real.log 4 + 4 + Real.log 2
  let D := 268 * Ce * Real.sqrt U * Real.exp (3 / 2) / A ^ 4 * δ
  have hU1 : 1 ≤ U := by
    change (1 : ℝ) ≤ (vaughanCutoff A : ℝ)
    exact_mod_cast vaughanCutoff_pos A hA1
  have hU : 0 < U := by linarith
  have hδ : 0 ≤ δ := by dsimp [δ]; positivity
  have hδ3 : δ ≤ 3 := by
    dsimp [δ]
    exact (div_le_iff₀ hU).2 (by linarith)
  have hCe : 0 ≤ Ce := by dsimp [Ce]; positivity
  have hC : 0 ≤ 67 / A ^ 4 := by positivity
  obtain ⟨hl, _⟩ := upper_column_time_orders hA1
  have hw : b - l ≤ δ := actualUpperColumn_time_width_le hA1
  have hD : 0 ≤ D := by dsimp [D]; positivity
  have hb (t : ℝ) (ht : t ∈ Ioc l b) :
      ‖Real.exp (c / 2) *
        (actualAdjointTimePrimitive A 0 t * actualTwistedTimeDensity A t c)‖ ≤ D := by
    let h := 2 * A - (t + c)
    have hh0 : 0 ≤ h := by
      have htb : t ≤ 2 * A - c := ht.2
      dsimp [h]
      linarith
    have hhδ : h ≤ δ := by
      have hw' : 2 * A - c - l ≤ δ := hw
      dsimp [h]
      linarith [ht.1]
    have hh3 : h ≤ 3 := hhδ.trans hδ3
    have hs : h ^ 2 ≤ 9 := by nlinarith
    have hp3 : h ^ 3 ≤ 24 * δ := by
      have hm := mul_le_mul_of_nonneg_right hs hh0
      nlinarith
    have hthird := actual_correlation_third_edge_abs_le (z := t + c) hA (by linarith [hh0])
    have hfirst := actual_correlation_first_edge_abs_le (z := t + c) hA (by linarith [hh0])
    have hj : |iteratedDeriv 3 (sourceCorrelation explicitSecondDerivative A) (t + c) -
        iteratedDeriv 1 (sourceCorrelation explicitSecondDerivative A) (t + c) / 4| ≤
        2 * (67 / A ^ 4) * δ := by
      apply (abs_sub _ _).trans
      rw [abs_div, abs_of_pos (by norm_num : 0 < (4 : ℝ))]
      have h3' : |iteratedDeriv 3 (sourceCorrelation explicitSecondDerivative A) (t + c)| ≤
          67 / A ^ 4 * δ := hthird.trans (mul_le_mul_of_nonneg_left hhδ hC)
      have h1' : |iteratedDeriv 1 (sourceCorrelation explicitSecondDerivative A) (t + c)| / 4 ≤
          67 / A ^ 4 * δ := by
        have hm := mul_le_mul_of_nonneg_left hp3 hC
        dsimp [h] at hm
        nlinarith
      nlinarith
    have hp : |actualAdjointTimePrimitive A 0 t| ≤ 2 * Ce := by
      simpa only [abs_zero, add_zero, Ce] using
        actualAdjointTimePrimitive_abs_le (offset := 0) hA1 ht.1.le
    have he : Real.exp (t / 2) ≤ Real.sqrt U * Real.exp (3 / 2) := by
      calc
        _ ≤ Real.exp (Real.log U / 2 + 3 / 2) := by
          apply Real.exp_le_exp.mpr
          have hh : t - Real.log U ≤ 3 := by
            have hw' : 2 * A - c - Real.log U ≤ δ := hw
            have htb : t ≤ 2 * A - c := ht.2
            linarith
          linarith
        _ = _ := by rw [Real.exp_add, Real.exp_half, Real.exp_log hU]
    have hExp : Real.exp (c / 2) * Real.exp (-c / 2) = 1 := by
      rw [← Real.exp_add, show c / 2 + -c / 2 = 0 by ring, Real.exp_zero]
    have heq : Real.exp (c / 2) * (actualAdjointTimePrimitive A 0 t *
        actualTwistedTimeDensity A t c) = actualAdjointTimePrimitive A 0 t * Real.exp (t / 2) *
          (iteratedDeriv 3 (sourceCorrelation explicitSecondDerivative A) (t + c) -
            iteratedDeriv 1 (sourceCorrelation explicitSecondDerivative A) (t + c) / 4) := by
      unfold actualTwistedTimeDensity
      calc
        _ = actualAdjointTimePrimitive A 0 t * Real.exp (t / 2) *
            (Real.exp (c / 2) * Real.exp (-c / 2)) *
              (iteratedDeriv 3 (sourceCorrelation explicitSecondDerivative A) (t + c) -
                iteratedDeriv 1 (sourceCorrelation explicitSecondDerivative A) (t + c) / 4) := by
          ring
        _ = _ := by rw [hExp]; ring
    rw [Real.norm_eq_abs, heq, abs_mul, abs_mul, abs_of_pos (Real.exp_pos _)]
    calc
      _ ≤ (2 * Ce) * (Real.sqrt U * Real.exp (3 / 2)) * (2 * (67 / A ^ 4) * δ) :=
        mul_le_mul (mul_le_mul hp he (Real.exp_pos _).le (by positivity)) hj
          (abs_nonneg _) (by positivity)
      _ = D := by dsimp [D]; ring
  rw [actualUpperColumn_time_factor_eq_support hA1, ← intervalIntegral.integral_const_mul]
  have hn := intervalIntegral.norm_integral_le_of_norm_le (μ := volume) hl
    (Filter.Eventually.of_forall (fun t ht => hb t ht))
    (intervalIntegrable_const : IntervalIntegrable (fun _ : ℝ => D) volume l b)
  simp only [Real.norm_eq_abs, intervalIntegral.integral_const, smul_eq_mul] at hn
  calc
    _ ≤ (b - l) * D := hn
    _ ≤ δ * D := mul_le_mul_of_nonneg_right hw hD
    _ = _ := by dsimp [D, δ, Ce, U]; ring

/-- This explicit constant contains only the fixed zeta calibration and original error bound. -/
def actualCriticalUpperColumnConstant : ℝ :=
  5000 * actualCriticalHalfCrudeConstant * (Real.log 4 + 4 + Real.log 2) * Real.exp (3 / 2)

/-- The complete critical upper trace decays, without a uniform half-inventory assumption. -/
theorem actualCriticalUpperColumnTrace_abs_le {A : ℝ} (hA : 91 ≤ A) :
    |actualCriticalUpperColumnTrace A| ≤ actualCriticalUpperColumnConstant / A ^ 4 := by
  let U : ℝ := (vaughanCutoff A : ℝ)
  let Ce := Real.log 4 + 4 + Real.log 2
  let C := actualCriticalHalfCrudeConstant
  have hU1 : 1 ≤ U := by
    change (1 : ℝ) ≤ (vaughanCutoff A : ℝ)
    exact_mod_cast vaughanCutoff_pos A (by linarith)
  have hU : 0 < U := by linarith
  have hC : 0 ≤ C := by dsimp [C, actualCriticalHalfCrudeConstant]; positivity
  have hCe : 0 ≤ Ce := by dsimp [Ce]; positivity
  have hm := actualCenteredHalfZetaMain_abs_le_crude_sqrt (vaughanCutoff A)
    (vaughanCutoff_pos A (by linarith))
  have ht := actualUpperColumn_normalized_time_factor_abs_le hA
  have hi : U * (3 / U) ^ 2 ≤ 9 := by
    have he : U * (3 / U) ^ 2 = 9 / U := by field_simp; ring
    rw [he]
    exact (div_le_iff₀ hU).2 (by linarith)
  have hs := Real.sq_sqrt hU.le
  unfold actualCriticalUpperColumnTrace
  rw [mul_assoc (-2 * _), abs_mul, abs_mul, abs_neg, abs_of_pos (by norm_num : 0 < (2 : ℝ))]
  calc
    _ ≤ 2 * (C * Real.sqrt U) *
        (268 * Ce * Real.sqrt U * Real.exp (3 / 2) / A ^ 4 * (3 / U) ^ 2) :=
      mul_le_mul (mul_le_mul_of_nonneg_left hm (by norm_num)) ht (abs_nonneg _) (by positivity)
    _ = 536 * C * Ce * Real.exp (3 / 2) / A ^ 4 * (U * (3 / U) ^ 2) := by
      calc
        _ = 536 * C * Ce * Real.exp (3 / 2) / A ^ 4 *
            ((Real.sqrt U) ^ 2 * (3 / U) ^ 2) := by ring
        _ = _ := by rw [hs]
    _ ≤ 536 * C * Ce * Real.exp (3 / 2) / A ^ 4 * 9 :=
      mul_le_mul_of_nonneg_left hi (by positivity)
    _ ≤ _ := by
      unfold actualCriticalUpperColumnConstant
      change _ ≤ 5000 * C * Ce * Real.exp (3 / 2) / A ^ 4
      have hB : 0 ≤ C * Ce * Real.exp (3 / 2) / A ^ 4 := by positivity
      convert mul_le_mul_of_nonneg_right (show (4824 : ℝ) ≤ 5000 by norm_num) hB using 1 <;>
        first | rfl | ring

end
end FormalResearch.RiemannHypothesis.RootActualCriticalUpperColumnEstimate
```
