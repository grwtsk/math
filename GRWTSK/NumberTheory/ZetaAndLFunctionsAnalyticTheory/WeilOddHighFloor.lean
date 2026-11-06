import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddHighComplement
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddWrapPeriodLift
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddPeriodicDiagonal

/-!
# A literal odd high-complement floor from the wrap inequality

Local attribution is to grwtsk contributors.

The literal gamma form and the prime energy are those of
`WeilOddHighComplement`, in the window and normalization of Section 5
of `documentation/mathematics/_support/reviews/weil-periodic-boundary.md`.
This proof uses the direct wrap bound. The nonnegative gamma kernel
allows multiplication and integration of that bound, with integrability
of the literal gamma integrand supplying the majorant. The resulting
periodic integral is the exact positive diagonal series.

On the odd high complement the removed sine coefficients vanish, so the
tail retains the entire periodic integral. Monotonicity and the sine
Parseval identity bound that tail below by the first retained multiplier
times the whole-line mass. The factor two in the wrap comparison leaves
half of that multiplier in the gamma lower bound. The prime mass and
physical shift then give an explicit cutoff for each requested floor.

The result is a quadratic-form estimate on the complete supported real odd
complement with finite literal gamma energy. An operator-domain realization
and the complex or character-specific returns remain separate.
Independent mathematical review and novelty assessment are pending.
-/

set_option autoImplicit false
noncomputable section

open MeasureTheory Set

namespace GRWTSK.NumberTheory.WeilQuadraticForm.OddHighFloor

open OddRootProjection OddHighComplement OddWrapEnergy OddWrapPeriodLift OddPeriodicDiagonal
open OddMultiplierBounds OddOutputTrace OddSineParseval OddSineForm LowSchur

private theorem parityKernel_nonneg_on {r : ℝ} (hr : 0 < r) : 0 ≤ parityKernel 0 r := by
  have h : Real.exp (-2 * r) < 1 := Real.exp_lt_one_iff.mpr (by linarith)
  unfold parityKernel
  exact div_nonneg (Real.exp_nonneg _) (sub_nonneg.mpr h.le)

/-- The literal whole-line gamma-energy domain supplies both integrability of the
weighted periodic jumps and their factor-two comparison. -/
theorem periodicWeightedEnergy_integrable_le (T : ℝ) (hT : 0 < T) {f : ℝ → ℝ}
    (hf : MemLp f 2 volume) (hsupport : ∀ᵐ t : ℝ, t ∉ Icc (-T) T → f t = 0)
    (hzero : IntegrableOn (fun r ↦ parityKernel 0 r * zeroShiftEnergy r f) (Ioi 0)) :
    IntegrableOn (fun r ↦ parityKernel 0 r * periodicJumpEnergy T hT r f) (Ioi 0) ∧
      (∫ r in Ioi 0, parityKernel 0 r * periodicJumpEnergy T hT r f) ≤
        2 * oddArchimedeanEnergy f := by
  have hmajor : IntegrableOn (fun r ↦ 2 * (parityKernel 0 r * zeroShiftEnergy r f)) (Ioi 0) :=
    hzero.const_mul _
  have hmeas : Measurable (parityKernel 0) := by unfold parityKernel; fun_prop
  have hpoint (r : ℝ) (hr : r ∈ Ioi (0 : ℝ)) :
      parityKernel 0 r * periodicJumpEnergy T hT r f ≤
        2 * (parityKernel 0 r * zeroShiftEnergy r f) := by
    calc
      _ ≤ parityKernel 0 r * (2 * zeroShiftEnergy r f) :=
        mul_le_mul_of_nonneg_left
          (periodicJumpEnergy_le_two_zeroShiftEnergy T hT r hr.le hf hsupport)
          (parityKernel_nonneg_on hr)
      _ = _ := by ring
  have hperiod : IntegrableOn (fun r ↦ parityKernel 0 r * periodicJumpEnergy T hT r f) (Ioi 0) := by
    refine hmajor.mono' (hmeas.mul (measurable_periodicJumpEnergy T hT hf)).aestronglyMeasurable
      (ae_restrict_of_forall_mem measurableSet_Ioi (fun r hr ↦ ?_))
    rw [Real.norm_of_nonneg (mul_nonneg (parityKernel_nonneg_on hr)
      (periodicJumpEnergy_nonneg T hT r f))]
    exact hpoint r hr
  refine ⟨hperiod, ?_⟩
  have h := setIntegral_mono_on hperiod hmajor measurableSet_Ioi hpoint
  rw [integral_const_mul] at h
  exact h

/-- The omitted head terms vanish and the whole retained diagonal series is controlled by
the literal gamma form. Both summability and the comparison are conclusions. -/
theorem highDiagonal_summable_le_two_oddArchimedeanEnergy (T : ℝ) (hT : 0 < T)
    {N : ℕ} {f : ℝ → ℝ} (hf : MemLp f 2 volume) (hodd : ∀ᵐ t : ℝ, f (-t) = -f t)
    (hsupport : ∀ᵐ t : ℝ, t ∉ Icc (-T) T → f t = 0)
    (hhead : ∀ n < N, sineCoefficient T f (n + 1) = 0)
    (hzero : IntegrableOn (fun r ↦ parityKernel 0 r * zeroShiftEnergy r f) (Ioi 0)) :
    Summable (highDiagonalTerm T N f) ∧
      (∑' j, highDiagonalTerm T N f j) ≤ 2 * oddArchimedeanEnergy f := by
  let D (n : ℕ) := periodicMultiplier 0 (frequency T (n + 1)) * sineCoefficient T f (n + 1) ^ 2
  obtain ⟨hint, hle⟩ := periodicWeightedEnergy_integrable_le T hT hf hsupport hzero
  have hs : HasSum D (∫ r in Ioi 0, parityKernel 0 r * periodicJumpEnergy T hT r f) :=
    hasSum_periodicDiagonal_of_integrable T hT 0 hf hodd hint
  have htail : (fun j ↦ D (j + N)) = highDiagonalTerm T N f := by
    funext j
    unfold D highDiagonalTerm
    rw [show j + N + 1 = N + 1 + j by omega]
  have hsum0 : (∑ n ∈ Finset.range N, D n) = 0 := by
    apply Finset.sum_eq_zero
    intro n hn
    simp [D, hhead n (Finset.mem_range.mp hn)]
  refine ⟨?_, ?_⟩
  · rw [← htail]
    exact (summable_nat_add_iff N).2 hs.summable
  · calc
      (∑' j, highDiagonalTerm T N f j) = ∑' n, D n := by
        simpa only [hsum0, zero_add, htail] using hs.summable.sum_add_tsum_nat_add N
      _ = ∫ r in Ioi 0, parityKernel 0 r * periodicJumpEnergy T hT r f := hs.tsum_eq
      _ ≤ _ := hle

/-- The sufficient cutoff using half of the periodic multiplier in the literal lower bound. -/
def wrapHighCutoff (T β requested : ℝ) : ℕ :=
  highCutoff T (2 * β - gammaConstant 1 0 + primeMass T) 0 (2 * requested)

theorem wrapHighCutoff_eq (T β requested : ℝ) :
    wrapHighCutoff T β requested = ⌈(T / (2 * Real.pi)) *
      Real.exp (2 * (requested + β + primeMass T - gammaConstant 1 0))⌉₊ := by
  unfold wrapHighCutoff highCutoff
  rw [show 2 * requested + (2 * β - gammaConstant 1 0 + primeMass T) +
    primeMass T + 0 - gammaConstant 1 0 =
    2 * (requested + β + primeMass T - gammaConstant 1 0) by ring]

theorem floor_le_of_wrapHighCutoff (T : ℝ) (hT : 0 < T) (β requested : ℝ) {N : ℕ}
    (hN : wrapHighCutoff T β requested ≤ N) :
    requested ≤ gammaConstant 1 0 - β + (1 / 2 : ℝ) *
      periodicMultiplier 0 (frequency T (N + 1)) - primeMass T := by
  have h := floor_le_of_highCutoff T hT (2 * β - gammaConstant 1 0 + primeMass T)
    0 (2 * requested) hN
  linarith

/-- The requested lower floor on the entire real odd high complement in the literal
gamma-energy domain. The prime term and physical shift retain their source signs. -/
theorem shiftedOddCoreEnergy_ge_of_wrapHighCutoff (T : ℝ) (hT : 0 < T)
    (β requested : ℝ) {N : ℕ} (hN : wrapHighCutoff T β requested ≤ N) {f : ℝ → ℝ}
    (hf : MemLp f 2 volume) (hodd : ∀ᵐ t : ℝ, f (-t) = -f t)
    (hsupport : ∀ᵐ t : ℝ, t ∉ Icc (-T) T → f t = 0)
    (hhead : ∀ n < N, sineCoefficient T f (n + 1) = 0)
    (hzero : IntegrableOn (fun r ↦ parityKernel 0 r * zeroShiftEnergy r f) (Ioi 0)) :
    requested * (∫ t : ℝ, ‖f t‖ ^ 2) ≤ shiftedOddCoreEnergy T β f := by
  obtain ⟨hdiag, hcompare⟩ :=
    highDiagonal_summable_le_two_oddArchimedeanEnergy T hT hf hodd hsupport hhead hzero
  have hhigh := highDiagonalEnergy_ge T hT hf hodd hsupport hhead hdiag
  have hmass : 0 ≤ ∫ t : ℝ, ‖f t‖ ^ 2 := integral_nonneg (fun _ ↦ sq_nonneg _)
  have hprime := (le_abs_self (primeEnergy T f)).trans (abs_primeEnergy_le T f hf.integrable_sq)
  have hprime' : primeEnergy T f ≤ primeMass T * (∫ t : ℝ, ‖f t‖ ^ 2) := by
    simpa only [Real.norm_eq_abs, sq_abs] using hprime
  have hscale := mul_le_mul_of_nonneg_right (floor_le_of_wrapHighCutoff T hT β requested hN) hmass
  unfold shiftedOddCoreEnergy
  nlinarith only [hcompare, hhigh, hprime', hscale]

end GRWTSK.NumberTheory.WeilQuadraticForm.OddHighFloor
