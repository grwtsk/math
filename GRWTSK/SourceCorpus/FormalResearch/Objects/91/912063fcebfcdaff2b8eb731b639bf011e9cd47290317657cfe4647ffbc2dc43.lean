import SourceActualAdjointAbelPrimitives

/-!
Expose the actual normalized time primitive through its closed full Mangoldt
half-weight inventory and both error traces. Its raw weighted integral still
has the original critical exponential factor. No arithmetic witness is added.
Research direction: grwtsk contributors. Formal development: OpenAI Codex.
-/

set_option autoImplicit false
namespace FormalResearch.RiemannHypothesis.SourceActualAdjointTimeTrace
open MeasureTheory Set
open scoped BigOperators Interval
open SourceMangoldtAbel SourceActualAdjointAbelPrimitives
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open EstimateVaughanSource EstimateSourceMobiusKernel
noncomputable section

/-- The independently literal long closed full-Mangoldt half-weight inventory. -/
def actualLongHalfMangoldtInventory (A b : ℝ) : ℝ :=
  ∑ n ∈ Finset.Ioc (vaughanCutoff A) ⌊Real.exp b⌋₊,
    ArithmeticFunction.vonMangoldt n / Real.sqrt (n : ℝ)

private theorem halfExp_hasDerivAt (t : ℝ) :
    HasDerivAt (fun t : ℝ => 2 * Real.exp (t / 2)) (Real.exp (t / 2)) t := by
  convert (((hasDerivAt_id t).div_const 2).exp).const_mul 2 using 1 <;> try rfl
  simp only [id_eq]
  ring

private theorem halfExp_deriv :
    deriv (fun t : ℝ => 2 * Real.exp (t / 2)) = fun t => Real.exp (t / 2) :=
  funext fun t => (halfExp_hasDerivAt t).deriv

private theorem halfExp_integral {l b : ℝ} (hlb : l ≤ b) :
    (∫ t in l..b, Real.exp (t / 2)) =
      2 * (Real.exp (b / 2) - Real.exp (l / 2)) := by
  have h := intervalIntegral.integral_eq_sub_of_hasDerivAt_of_le hlb
    (by fun_prop : Continuous (fun t : ℝ => 2 * Real.exp (t / 2))).continuousOn
    (fun t _ => halfExp_hasDerivAt t)
    ((by fun_prop : Continuous (fun t : ℝ => Real.exp (t / 2))).intervalIntegrable _ _)
  simpa only [mul_sub] using h

/-- Exact actual log-window conversion retains every closed prime power. -/
theorem actualHalfMangoldtWindow_eq_inventory {A b : ℝ} (hA : 1 ≤ A)
    (hb : actualTimeLower A ≤ b) :
    mangoldtLogWindow (actualTimeLower A) b (fun t => 2 * Real.exp (t / 2)) =
      2 * actualLongHalfMangoldtInventory A b := by
  have hU : 0 < (vaughanCutoff A : ℝ) := by exact_mod_cast vaughanCutoff_pos A hA
  have hl : 0 ≤ actualTimeLower A :=
    Real.log_nonneg (by exact_mod_cast vaughanCutoff_pos A hA)
  rw [mangoldtLogWindow_eq_interval_sum _ _ hl hb]
  simp only [actualTimeLower, Real.exp_log hU, Nat.floor_natCast]
  unfold actualLongHalfMangoldtInventory
  rw [Finset.mul_sum]
  apply Finset.sum_congr rfl
  intro n hn
  have hn0 : 0 < (n : ℝ) := by
    have hh := (Finset.mem_Ioc.mp hn).1
    exact_mod_cast (by omega : 0 < n)
  rw [Real.exp_half, Real.exp_log hn0]
  have hs : Real.sqrt (n : ℝ) ≠ 0 := Real.sqrt_ne_zero'.mpr hn0
  calc
    _ = ArithmeticFunction.vonMangoldt n / (Real.sqrt (n : ℝ)) ^ 2 *
        (2 * Real.sqrt (n : ℝ)) := by rw [Real.sq_sqrt hn0.le]
    _ = _ := by field_simp

/-- Both actual error traces and the full half-weight arithmetic inventory survive. -/
theorem actualAdjointTimePrimitive_eq_closed_inventory {A offset b : ℝ} (hA : 1 ≤ A)
    (hb : actualTimeLower A ≤ b) :
    actualAdjointTimePrimitive A offset b = Real.exp (-b / 2) *
      (2 * Real.exp (b / 2) * (mangoldtLogError b - offset) -
        2 * Real.exp (actualTimeLower A / 2) *
          (mangoldtLogError (actualTimeLower A) - offset) -
        2 * actualLongHalfMangoldtInventory A b +
        4 * (Real.exp (b / 2) - Real.exp (actualTimeLower A / 2))) := by
  have hl : 0 ≤ actualTimeLower A :=
    Real.log_nonneg (by exact_mod_cast vaughanCutoff_pos A hA)
  have hF : ContDiff ℝ 1 (fun t : ℝ => 2 * Real.exp (t / 2)) := by fun_prop
  have h := mangoldtLogWindow_sub_integral (actualTimeLower A) b hl hb
    (fun t : ℝ => 2 * Real.exp (t / 2)) hF
  rw [actualHalfMangoldtWindow_eq_inventory hA hb, halfExp_deriv,
    intervalIntegral.integral_const_mul, halfExp_integral hb] at h
  have hi := mangoldtLogError_mul_deriv_intervalIntegrable (actualTimeLower A) b hb
    (fun t : ℝ => 2 * Real.exp (t / 2)) hF
  rw [halfExp_deriv] at hi
  have hio : IntervalIntegrable (fun t : ℝ => offset * Real.exp (t / 2)) volume
      (actualTimeLower A) b :=
    (by fun_prop : Continuous (fun t : ℝ => offset * Real.exp (t / 2))).intervalIntegrable _ _
  have he : (∫ t in actualTimeLower A..b,
      Real.exp (t / 2) * (mangoldtLogError t - offset)) =
      (∫ t in actualTimeLower A..b, mangoldtLogError t * Real.exp (t / 2)) -
        offset * (2 * (Real.exp (b / 2) - Real.exp (actualTimeLower A / 2))) := by
    calc
      _ = ∫ t in actualTimeLower A..b,
          mangoldtLogError t * Real.exp (t / 2) - offset * Real.exp (t / 2) := by
        apply intervalIntegral.integral_congr
        intro t _
        ring
      _ = (∫ t in actualTimeLower A..b, mangoldtLogError t * Real.exp (t / 2)) -
          ∫ t in actualTimeLower A..b, offset * Real.exp (t / 2) :=
        intervalIntegral.integral_sub hi hio
      _ = _ := by rw [intervalIntegral.integral_const_mul, halfExp_integral hb]
  unfold actualAdjointTimePrimitive
  rw [he]
  congr 1
  linarith

/-- The raw actual weighted primitive keeps its critical exponential mass. -/
theorem actualRawTimePrimitive_abs_le {A offset t : ℝ} (hA : 1 ≤ A)
    (ht : actualTimeLower A ≤ t) :
    |∫ r in actualTimeLower A..t,
        Real.exp (r / 2) * (mangoldtLogError r - offset)| ≤
      2 * (Real.log 4 + 4 + Real.log 2 + |offset|) * Real.exp (t / 2) := by
  have h := actualAdjointTimePrimitive_abs_le hA ht (offset := offset)
  unfold actualAdjointTimePrimitive at h
  rw [abs_mul, abs_of_pos (Real.exp_pos _)] at h
  have hh := mul_le_mul_of_nonneg_left h (Real.exp_pos (t / 2)).le
  have hp : Real.exp (t / 2) * Real.exp (-t / 2) = 1 := by
    rw [← Real.exp_add]
    ring_nf
    exact Real.exp_zero
  simpa only [← mul_assoc, hp, one_mul, mul_comm] using hh

/-- At the actual original endpoint the full natural upper cutoff is exactly retained. -/
theorem actualLongHalfMangoldtInventory_at_original_upper {A : ℝ} (hA : 1 ≤ A) :
    actualLongHalfMangoldtInventory A (Real.log (sourceKernelCutoff A : ℝ)) =
      ∑ n ∈ Finset.Ioc (vaughanCutoff A) (sourceKernelCutoff A),
        ArithmeticFunction.vonMangoldt n / Real.sqrt (n : ℝ) := by
  have hn : 1 ≤ sourceKernelCutoff A :=
    (vaughanCutoff_pos A hA).trans (vaughanCutoff_le_sourceKernelCutoff A hA)
  have hn0 : 0 < (sourceKernelCutoff A : ℝ) := by
    exact_mod_cast (by omega : 0 < sourceKernelCutoff A)
  simp only [actualLongHalfMangoldtInventory, Real.exp_log hn0, Nat.floor_natCast]

end
end FormalResearch.RiemannHypothesis.SourceActualAdjointTimeTrace
