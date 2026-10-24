# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.Attempt03.Variantbcf31ae2634de5a904058706c6a2a840fbfcf924eef252c501e7a1ed1cf9a4a8

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1ebe9698261529fb573714b29c433d2038e43118` · SHA-256 `bcf31ae2634de5a904058706c6a2a840fbfcf924eef252c501e7a1ed1cf9a4a8`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import SourceActualFarPeriodicBudget
import SourceStrictComplementaryEarlyBudget

/-!
The actual periodic part is integrated against the original closed Mangoldt
time primitive. Its finite physical/logarithmic column window, signed mean,
both endpoint traces and the original C4 regularity remain explicit.
Only this periodic component is estimated, without a bound on the full work.
Research direction: grwtsk contributors. Formal development: OpenAI Codex.
-/

set_option autoImplicit false
namespace FormalResearch.RiemannHypothesis.SourceActualFarPeriodicWorkDecay
open MeasureTheory Set Filter
open scoped Interval
open SourceActualFarPeriodicBudget SourceActualPeriodicColumnPrimitive
open SourceActualPhysicalPeriodicPrimitive RootActualPeriodicPhysicalCell
open SourceActualAdjointAbelPrimitives RootActualDoubleAdjointTransfer
open RootActualUpperColumnWindow SourceActualLogColumnTransport
open SourcePairing SourceStrictComplementaryEarlyBudget
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open EstimateBetaCentering EstimateVaughanSource EstimateSourceMobiusKernel Realization
open RH16IndependentChallengeNext
noncomputable section

/-- The original time primitive pairs with the actual far physical-column periodic part. -/
def actualFarPeriodicWork (A l : ℝ) : ℝ :=
  ∫ t in actualTimeLower A..Real.log (sourceKernelCutoff A : ℝ),
    actualAdjointTimePrimitive A 0 t *
      actualPhysicalPeriodicPrefixRow A t l
        ((sourceKernelCutoff A / (vaughanCutoff A + 1) : ℕ) : ℝ)

/-- The explicit physical cutoff keeps the source floor cutoff and fractional column trace. -/
def actualFarPeriodicCutoff (A : ℝ) : ℝ :=
  Real.exp (A / 2 + Real.log (vaughanCutoff A : ℝ) + 3 * Real.log A / 2)

private theorem physical_profile_measurable {A : ℝ} (hA : 0 < A) :
    Measurable (fun p : ℝ × ℝ => actualPeriodicPhysicalCellProfile A p.1 p.2) := by
  have hc := actual_correlation_contDiff_four A hA
  have h1 : ContDiff ℝ 1 (iteratedDeriv 1 (sourceCorrelation explicitSecondDerivative A)) := by
    rw [iteratedDeriv_eq_iterate]
    exact ContDiff.iterate_deriv' 1 1 (hc.of_le (by norm_num))
  have h3 : ContDiff ℝ 1 (iteratedDeriv 3 (sourceCorrelation explicitSecondDerivative A)) := by
    rw [iteratedDeriv_eq_iterate]
    exact ContDiff.iterate_deriv' 1 3 (hc.of_le (by norm_num))
  have hm1 := h1.continuous.measurable
  have hm3 := h3.continuous.measurable
  unfold actualPeriodicPhysicalCellProfile actualTwistedTimeDensity
  fun_prop

private theorem row_stronglyMeasurable {A l b : ℝ} (hA : 0 < A) (hlb : l ≤ b) :
    StronglyMeasurable (fun t => actualPhysicalPeriodicPrefixRow A t l b) := by
  have hm : Measurable (fun x : ℝ =>
      (∑ n ∈ Finset.Ioc (vaughanCutoff A) (Nat.floor x),
        centeredBeta (vaughanCutoff A) n) - actualCenteredPrefixPeriodMean (vaughanCutoff A)) := by
    apply Measurable.sub _ measurable_const
    exact (measurable_of_countable (fun M : ℕ =>
      ∑ n ∈ Finset.Ioc (vaughanCutoff A) M, centeredBeta (vaughanCutoff A) n)).comp
        Nat.measurable_floor
  have hj : Measurable (fun p : ℝ × ℝ =>
      ((∑ n ∈ Finset.Ioc (vaughanCutoff A) (Nat.floor p.2),
        centeredBeta (vaughanCutoff A) n) - actualCenteredPrefixPeriodMean (vaughanCutoff A)) *
          actualPeriodicPhysicalCellProfile A p.1 p.2) :=
    (hm.comp measurable_snd).mul (physical_profile_measurable hA)
  have hi := hj.stronglyMeasurable.integral_prod_right' (ν := volume.restrict (Ioc l b))
  simpa only [actualPhysicalPeriodicPrefixRow, intervalIntegral.integral_of_le hlb] using hi

/-- The original time-density is genuinely L1 on every finite source time prefix. -/
theorem actualFarPeriodicWork_intervalIntegrable {A l b r : ℝ} (hA : 91 ≤ A)
    (hl : (vaughanCutoff A : ℝ) ≤ l) (hlb : l ≤ b) (hr : actualTimeLower A ≤ r) :
    IntervalIntegrable (fun t => actualAdjointTimePrimitive A 0 t *
      actualPhysicalPeriodicPrefixRow A t l b) volume (actualTimeLower A) r := by
  have hA1 : 1 ≤ A := by linarith
  have ht0 : 0 ≤ actualTimeLower A :=
    Real.log_nonneg (by exact_mod_cast vaughanCutoff_pos A hA1)
  let C : ℝ := (32 / (3 * A)) *
    ((vaughanCutoff A : ℝ) * ((vaughanCutoff A : ℝ) + 1) / 16) *
      Real.exp (r / 2) * Real.exp (-3 * Real.log l / 2)
  have hi : IntervalIntegrable (fun t => actualPhysicalPeriodicPrefixRow A t l b)
      volume (actualTimeLower A) r := by
    apply intervalIntegrable_iff.mpr
    have hb : ∀ᵐ t ∂volume.restrict (uIoc (actualTimeLower A) r),
        ‖actualPhysicalPeriodicPrefixRow A t l b‖ ≤ C := by
      rw [uIoc_of_le hr]
      filter_upwards [ae_restrict_mem measurableSet_Ioc] with t ht
      rw [Real.norm_eq_abs]
      calc
        _ ≤ (32 / (3 * A)) *
            ((vaughanCutoff A : ℝ) * ((vaughanCutoff A : ℝ) + 1) / 16) *
              Real.exp (t / 2) * Real.exp (-3 * Real.log l / 2) :=
          actualPhysicalPeriodicPrefixRow_abs_le hA (ht0.trans ht.1.le) hl hlb
        _ ≤ C := by
          dsimp [C]
          have he : Real.exp (t / 2) ≤ Real.exp (r / 2) :=
            Real.exp_le_exp.mpr (by linarith [ht.2])
          exact mul_le_mul_of_nonneg_right
            (mul_le_mul_of_nonneg_left he (by positivity)) (Real.exp_pos _).le
    exact Measure.integrableOn_of_bounded (by simp)
      (row_stronglyMeasurable (by linarith : 0 < A) hlb).aestronglyMeasurable hb
  exact hi.continuousOn_mul
    (actualAdjointTimePrimitive_absolutelyContinuous A 0 r hr).continuousOn

private theorem exp_half_integral_le (l b : ℝ) :
    (∫ t in l..b, Real.exp (t / 2)) ≤ 2 * Real.exp (b / 2) := by
  have he : (∫ t in l..b, Real.exp (t / 2)) =
      2 * Real.exp (b / 2) - 2 * Real.exp (l / 2) := by
    apply intervalIntegral.integral_eq_sub_of_hasDerivAt
    · intro t _
      convert ((((hasDerivAt_id t).div_const 2).exp).const_mul 2) using 1 <;> try rfl
      ring
    · exact (by fun_prop : Continuous (fun t : ℝ => Real.exp (t / 2))).intervalIntegrable _ _
  rw [he]
  linarith [Real.exp_pos (l / 2)]

/-- The full original time domain is preserved while true support controls this periodic part. -/
theorem actualFarPeriodicWork_abs_le {A l : ℝ} (hA : 91 ≤ A)
    (hl : (vaughanCutoff A : ℝ) ≤ l)
    (hlK : l ≤ ((sourceKernelCutoff A / (vaughanCutoff A + 1) : ℕ) : ℝ))
    (hlv : actualTimeLower A ≤ 2 * A - Real.log l)
    (hvN : 2 * A - Real.log l ≤ Real.log (sourceKernelCutoff A : ℝ)) :
    |actualFarPeriodicWork A l| ≤
      (8 / (3 * A)) * (Real.log 4 + 4 + Real.log 2) *
        (vaughanCutoff A : ℝ) * ((vaughanCutoff A : ℝ) + 1) *
          Real.exp (A - 2 * Real.log l) := by
  have hA1 : 1 ≤ A := by linarith
  have hU1 : (1 : ℝ) ≤ (vaughanCutoff A : ℝ) :=
    by exact_mod_cast vaughanCutoff_pos A hA1
  have hl0 : 0 < l := by linarith
  have ht0 : 0 ≤ actualTimeLower A := Real.log_nonneg hU1
  let K : ℝ := ((sourceKernelCutoff A / (vaughanCutoff A + 1) : ℕ) : ℝ)
  let v : ℝ := 2 * A - Real.log l
  let C : ℝ := Real.log 4 + 4 + Real.log 2
  let D : ℝ := (32 / (3 * A)) *
    ((vaughanCutoff A : ℝ) * ((vaughanCutoff A : ℝ) + 1) / 16) *
      Real.exp (-3 * Real.log l / 2)
  have hC : 0 ≤ C := by dsimp [C]; positivity
  have hD : 0 ≤ D := by dsimp [D]; positivity
  have hI1 := actualFarPeriodicWork_intervalIntegrable hA hl hlK hlv
  have hIN := actualFarPeriodicWork_intervalIntegrable hA hl hlK (hlv.trans hvN)
  have hI2 := hI1.symm.trans hIN
  have hzero : (∫ t in v..Real.log (sourceKernelCutoff A : ℝ),
      actualAdjointTimePrimitive A 0 t * actualPhysicalPeriodicPrefixRow A t l K) = 0 := by
    calc
      _ = ∫ _t in v..Real.log (sourceKernelCutoff A : ℝ), (0 : ℝ) := by
        apply intervalIntegral.integral_congr
        intro t ht
        dsimp only
        rw [uIcc_of_le hvN] at ht
        rw [actualPhysicalPeriodicPrefixRow_zero_right hA1 hl0 hlK ht.1, mul_zero]
      _ = 0 := by simp
  have he : actualFarPeriodicWork A l = ∫ t in actualTimeLower A..v,
      actualAdjointTimePrimitive A 0 t * actualPhysicalPeriodicPrefixRow A t l K := by
    unfold actualFarPeriodicWork
    rw [← intervalIntegral.integral_add_adjacent_intervals hI1 hI2]
    change _ + (∫ t in v..Real.log (sourceKernelCutoff A : ℝ),
      actualAdjointTimePrimitive A 0 t * actualPhysicalPeriodicPrefixRow A t l K) = _
    rw [hzero, add_zero]
  have hg : IntervalIntegrable (fun t : ℝ => 2 * C * D * Real.exp (t / 2))
      volume (actualTimeLower A) v := (by fun_prop :
        Continuous (fun t : ℝ => 2 * C * D * Real.exp (t / 2))).intervalIntegrable _ _
  have hb : ∀ᵐ t : ℝ, t ∈ Ioc (actualTimeLower A) v →
      ‖actualAdjointTimePrimitive A 0 t * actualPhysicalPeriodicPrefixRow A t l K‖ ≤
        2 * C * D * Real.exp (t / 2) := by
    filter_upwards with t ht
    rw [Real.norm_eq_abs, abs_mul]
    have hP : |actualAdjointTimePrimitive A 0 t| ≤ 2 * C := by
      simpa only [C, abs_zero, add_zero] using
        actualAdjointTimePrimitive_abs_le (offset := (0 : ℝ)) hA1 ht.1.le
    have hR : |actualPhysicalPeriodicPrefixRow A t l K| ≤ D * Real.exp (t / 2) := by
      have hh := actualPhysicalPeriodicPrefixRow_abs_le hA (ht0.trans ht.1.le) hl hlK
      dsimp [D]
      nlinarith
    calc
      _ ≤ (2 * C) * (D * Real.exp (t / 2)) :=
        mul_le_mul hP hR (abs_nonneg _) (by positivity)
      _ = _ := by ring
  have hn := intervalIntegral.norm_integral_le_of_norm_le hlv hb hg
  rw [← he, Real.norm_eq_abs, intervalIntegral.integral_const_mul] at hn
  have hm := mul_le_mul_of_nonneg_left (exp_half_integral_le (actualTimeLower A) v)
    (show 0 ≤ 2 * C * D by positivity)
  apply hn.trans (hm.trans_eq ?_)
  have hv : Real.exp (-3 * Real.log l / 2) * Real.exp (v / 2) =
      Real.exp (A - 2 * Real.log l) := by
    rw [← Real.exp_add]
    congr 1
    dsimp [v]
    ring
  dsimp [C, D]
  rw [show (2 * (Real.log 4 + 4 + Real.log 2) *
      (32 / (3 * A) * ((vaughanCutoff A : ℝ) * ((vaughanCutoff A : ℝ) + 1) / 16) *
        Real.exp (-3 * Real.log l / 2))) * (2 * Real.exp (v / 2)) =
      (8 / (3 * A)) * (Real.log 4 + 4 + Real.log 2) *
        (vaughanCutoff A : ℝ) * ((vaughanCutoff A : ℝ) + 1) *
          (Real.exp (-3 * Real.log l / 2) * Real.exp (v / 2)) by ring, hv]

/-- The moving cutoff lies in the literal original column/time box at every stated real scale. -/
theorem actualFarPeriodicCutoff_source_guards {A : ℝ} (hA : 25600 ≤ A) :
    ((vaughanCutoff A + 1 : ℕ) : ℝ) ≤ actualFarPeriodicCutoff A ∧
      actualFarPeriodicCutoff A ≤
        ((sourceKernelCutoff A / (vaughanCutoff A + 1) : ℕ) : ℝ) ∧
      actualTimeLower A ≤ 2 * A - Real.log (actualFarPeriodicCutoff A) ∧
      2 * A - Real.log (actualFarPeriodicCutoff A) ≤ Real.log (sourceKernelCutoff A : ℝ) := by
  have hA1 : 1 ≤ A := by linarith
  have hAp : 0 < A := by linarith
  let U := vaughanCutoff A
  let K := sourceKernelCutoff A / (vaughanCutoff A + 1)
  let S := A / 2 + Real.log (U : ℝ) + 3 * Real.log A / 2
  have hU1 : (1 : ℝ) ≤ (U : ℝ) := by exact_mod_cast vaughanCutoff_pos A hA1
  have hUp : 0 < (U : ℝ) := by linarith
  have hAU : A ≤ (U : ℝ) := by
    have hf := Nat.lt_floor_add_one (A ^ 2)
    change A ^ 2 < (U : ℝ) + 1 at hf
    nlinarith [sq_nonneg (A - 1)]
  have hlogA : Real.log A ≤ Real.log (U : ℝ) := Real.log_le_log hAp hAU
  have hlogU : Real.log (U : ℝ) ≤ A / 40 := log_vaughanCutoff_le_early_window hA
  have hlogA0 : 0 ≤ Real.log A := Real.log_nonneg hA1
  have hSlo : Real.log (U : ℝ) + 3 ≤ S := by dsimp [S]; linarith
  have hShi : S ≤ 9 * A / 16 := by dsimp [S]; linarith
  have hKa : vaughanCutoff A + 1 ≤ K := actual_column_window_nonempty hA1
  have hKp : 0 < (K : ℝ) := by exact_mod_cast (show 0 < K by omega)
  have hc := actualUpperColumn_time_width_le hA1
  change 2 * A - Real.log (K : ℝ) - Real.log (U : ℝ) ≤ 3 / (U : ℝ) at hc
  have hdiv : 3 / (U : ℝ) ≤ 3 := (div_le_iff₀ hUp).2 (by nlinarith)
  have hSK : S ≤ Real.log (K : ℝ) := by linarith
  have hlogCut : Real.log (actualFarPeriodicCutoff A) = S := Real.log_exp S
  have hCutK : actualFarPeriodicCutoff A ≤ (K : ℝ) := by
    have he := Real.exp_le_exp.mpr hSK
    rw [Real.exp_log hKp] at he
    exact he
  have hCutU : ((vaughanCutoff A + 1 : ℕ) : ℝ) ≤ actualFarPeriodicCutoff A := by
    have hlog2 : Real.log 2 ≤ 1 := by
      have hh := Real.log_le_sub_one_of_pos (by norm_num : (0 : ℝ) < 2)
      linarith
    have he : 2 * (U : ℝ) ≤ Real.exp S := by
      calc
        _ = Real.exp (Real.log 2 + Real.log (U : ℝ)) := by
          rw [Real.exp_add, Real.exp_log (by norm_num : (0 : ℝ) < 2), Real.exp_log hUp]
        _ ≤ _ := Real.exp_le_exp.mpr (by linarith)
    have hu : ((vaughanCutoff A + 1 : ℕ) : ℝ) = (U : ℝ) + 1 := by dsimp [U]; simp
    rw [hu]
    exact (by linarith : (U : ℝ) + 1 ≤ 2 * (U : ℝ)).trans he
  have htimeLo : actualTimeLower A ≤ 2 * A - Real.log (actualFarPeriodicCutoff A) := by
    rw [hlogCut]
    change Real.log (U : ℝ) ≤ 2 * A - S
    linarith
  have htimeHi : 2 * A - Real.log (actualFarPeriodicCutoff A) ≤
      Real.log (sourceKernelCutoff A : ℝ) := by
    rw [hlogCut]
    have hKN : (K : ℝ) ≤ (sourceKernelCutoff A : ℝ) := by
      exact_mod_cast Nat.div_le_self (sourceKernelCutoff A) (vaughanCutoff A + 1)
    have hlN := Real.log_le_log hKp hKN
    linarith
  exact ⟨hCutU, hCutK, htimeLo, htimeHi⟩

/-- The actual far periodic component has a genuine decaying budget, with no mean deletion. -/
theorem actualFarPeriodicWork_at_cutoff_abs_le {A : ℝ} (hA : 25600 ≤ A) :
    |actualFarPeriodicWork A (actualFarPeriodicCutoff A)| ≤
      (16 / 3 : ℝ) * (Real.log 4 + 4 + Real.log 2) / A ^ 4 := by
  have hA1 : 1 ≤ A := by linarith
  have hAp : 0 < A := by linarith
  let U := vaughanCutoff A
  have hU1 : (1 : ℝ) ≤ (U : ℝ) := by exact_mod_cast vaughanCutoff_pos A hA1
  have hUp : 0 < (U : ℝ) := by linarith
  have hg := actualFarPeriodicCutoff_source_guards hA
  have hl : (vaughanCutoff A : ℝ) ≤ actualFarPeriodicCutoff A := by
    have hu : ((vaughanCutoff A + 1 : ℕ) : ℝ) = (vaughanCutoff A : ℝ) + 1 := by simp
    linarith [hg.1]
  have hb := actualFarPeriodicWork_abs_le (by linarith : 91 ≤ A) hl hg.2.1 hg.2.2.1 hg.2.2.2
  have he : Real.exp (A - 2 * Real.log (actualFarPeriodicCutoff A)) =
      (U : ℝ)⁻¹ ^ 2 * A⁻¹ ^ 3 := by
    unfold actualFarPeriodicCutoff
    rw [Real.log_exp]
    rw [show A - 2 * (A / 2 + Real.log (vaughanCutoff A : ℝ) + 3 * Real.log A / 2) =
      -Real.log (U : ℝ) + -Real.log (U : ℝ) +
        (-Real.log A + -Real.log A + -Real.log A) by dsimp [U]; ring]
    simp only [Real.exp_add, Real.exp_neg, Real.exp_log hUp, Real.exp_log hAp]
    ring
  rw [he] at hb
  apply hb.trans
  have hC : 0 ≤ Real.log 4 + 4 + Real.log 2 := by positivity
  have hu : (U : ℝ) + 1 ≤ 2 * (U : ℝ) := by linarith
  have hm := mul_le_mul_of_nonneg_left hu hC
  dsimp [U] at *
  field_simp
  nlinarith

/-- The definition is exactly the original time/log pairing on the genuine far window. -/
theorem actualFarPeriodicWork_eq_log {A l : ℝ} (hl : 0 < l)
    (hlK : l ≤ ((sourceKernelCutoff A / (vaughanCutoff A + 1) : ℕ) : ℝ)) :
    actualFarPeriodicWork A l =
      ∫ t in actualTimeLower A..Real.log (sourceKernelCutoff A : ℝ),
        actualAdjointTimePrimitive A 0 t *
          ∫ s in Real.log l..actualColumnUpper A,
            (actualLogColumnPrefix A s - actualCenteredPrefixPeriodMean (vaughanCutoff A)) *
              actualTwistedTimeDensity A t s := by
  unfold actualFarPeriodicWork
  apply intervalIntegral.integral_congr
  intro t _
  dsimp only
  rw [actualPhysicalPeriodicPrefixRow_eq_log hl hlK]
  rfl

end
end FormalResearch.RiemannHypothesis.SourceActualFarPeriodicWorkDecay
```
