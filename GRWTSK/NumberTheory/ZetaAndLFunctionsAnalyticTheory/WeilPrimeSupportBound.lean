/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilFixedWindowSemibounded
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddExactPeriodization

/-!
# A support-sensitive bound for the original paired prime shifts

MSC2020: 11M06, 42A38, 46C05.
A shift strictly longer than the support half-width pairs the negative and
positive halves only. Their L2 masses add to the original full mass, so
2*|correlation| <= mass. No oddness or endpoint values are needed. For short
shifts retain the original factor two. Sum with the original nonnegative
von Mangoldt weights, including all supported prime powers.

Consumer: the existing exact-periodization high-core budget. That core is
pole-free: the bordered scalar coordinate is retained separately. The full
unbordered pole must still be paid and is never absorbed into this bound.

WRITTEN_ANALYTICAL_ARGUMENT / SOURCE_PROOF_CANDIDATE.
Lean elaboration, kernel replay, axiom audit and independent review NOT_RUN.
-/
set_option autoImplicit false
noncomputable section
open MeasureTheory Set Filter
open scoped BigOperators

namespace GRWTSK.NumberTheory.WeilQuadraticForm.PrimeSupportBound

open LowSchur OddRootProjection OddSineForm OddHighComplement OddOutputTrace
open FixedWindowSemibounded OddExactPeriodization

/-- For a long shift the original correlation pairs only opposite halves.
The strict width condition avoids any assumption about endpoint values. -/
theorem long_shift_correlation_le {T r : ℝ} (hr : T < r) {f : ℝ → ℝ}
    (hf : MemLp f 2 volume)
    (hs : ∀ᵐ t ∂volume, t ∉ Icc (-T) T → f t = 0) :
    2 * |∫ t : ℝ, f t * f (t + r)| ≤ ∫ t : ℝ, (f t) ^ 2 := by
  let l : ℝ → ℝ := (Iic (0 : ℝ)).indicator f
  let u : ℝ → ℝ := (Ioi (0 : ℝ)).indicator f
  have hl : MemLp l 2 volume := hf.indicator measurableSet_Iic
  have hu : MemLp u 2 volume := hf.indicator measurableSet_Ioi
  have hur : MemLp (fun t : ℝ => u (t + r)) 2 volume :=
    hu.comp_measurePreserving (measurePreserving_add_right volume r)
  have he : (fun t : ℝ => f t * f (t + r)) =ᵐ[volume]
      (fun t : ℝ => l t * u (t + r)) := by
    filter_upwards [hs, (measurePreserving_add_right volume r).quasiMeasurePreserving.ae hs]
      with t ht htr
    by_cases ht0 : t ≤ 0
    · by_cases htr0 : 0 < t + r
      · simp [l, u, ht0, htr0]
      · have hz : f t = 0 := ht (by
          intro hm
          have := hm.1
          have := le_of_not_gt htr0
          linarith)
        simp [l, u, ht0, hz]
    · have hz : f (t + r) = 0 := htr (by
        intro hm
        have := hm.2
        have := lt_of_not_ge ht0
        linarith)
      simp [l, u, ht0, hz]
  have hmass : (∫ t : ℝ, (l t) ^ 2) +
      (∫ t : ℝ, (u (t + r)) ^ 2) = ∫ t : ℝ, (f t) ^ 2 := by
    rw [integral_add_right_eq_self (fun t : ℝ => (u t) ^ 2) r,
      ← integral_add hl.integrable_sq hu.integrable_sq]
    congr 1
    funext t
    by_cases ht : t ≤ 0
    · simp [l, u, ht, not_lt.mpr ht]
    · simp [l, u, ht, lt_of_not_ge ht]
  have hcs := integral_mul_sq_le hl hur
  rw [← integral_congr_ae he] at hcs
  have hnonneg : 0 ≤ ∫ t : ℝ, (f t) ^ 2 := integral_nonneg fun _ => sq_nonneg _
  have hsq : (2 * |∫ t : ℝ, f t * f (t + r)|) ^ 2 ≤
      (∫ t : ℝ, (f t) ^ 2) ^ 2 := by
    rw [← hmass]
    nlinarith [sq_nonneg ((∫ t : ℝ, (l t) ^ 2) -
      (∫ t : ℝ, (u (t + r)) ^ 2)), sq_abs (∫ t : ℝ, f t * f (t + r))]
  exact (sq_le_sq₀ (by positivity) hnonneg).1 hsq

/-- The short-shift factor remains two; it cannot be discarded globally. -/
def shiftCost (T r : ℝ) : ℝ := if T < r then 1 else 2

theorem shiftCost_bounds (T r : ℝ) : 0 ≤ shiftCost T r ∧ shiftCost T r ≤ 2 := by
  unfold shiftCost
  split_ifs <;> norm_num

/-- An actual-source coefficient sum, not an independently supplied budget. -/
def supportPrimeLoss (T : ℝ) : ℝ :=
  ∑ q ∈ activePrimePowers T, primeWeight q * shiftCost T (Real.log q)

theorem supportPrimeLoss_nonneg (T : ℝ) : 0 ≤ supportPrimeLoss T := by
  apply Finset.sum_nonneg
  intro q _
  exact mul_nonneg (primeWeight_nonneg q) (shiftCost_bounds _ _).1

theorem supportPrimeLoss_le_primeMass (T : ℝ) : supportPrimeLoss T ≤ primeMass T := by
  unfold supportPrimeLoss primeMass
  rw [Finset.mul_sum]
  apply Finset.sum_le_sum
  intro q _
  have h := mul_le_mul_of_nonneg_left (shiftCost_bounds T (Real.log q)).2
    (primeWeight_nonneg q)
  nlinarith

/-- Uniform in every supported L2 input, with both original prime orientations.
This is an absolute bound for the signed source, not a positivity theorem. -/
theorem abs_primeEnergy_le_support (T : ℝ) {f : ℝ → ℝ}
    (hf : MemLp f 2 volume)
    (hs : ∀ᵐ t ∂volume, t ∉ Icc (-T) T → f t = 0) :
    |primeEnergy T f| ≤ supportPrimeLoss T * (∫ t : ℝ, (f t) ^ 2) := by
  have hcorr (q : ℕ) : 2 * |∫ t : ℝ, f t * f (t + Real.log q)| ≤
      shiftCost T (Real.log q) * (∫ t : ℝ, (f t) ^ 2) := by
    by_cases hq : T < Real.log q
    · simpa [shiftCost, hq] using long_shift_correlation_le hq hf hs
    · have h := abs_integral_mul_translate_le_sq f (Real.log q) hf.integrable_sq
      simp only [shiftCost, if_neg hq]
      linarith
  rw [primeEnergy, abs_mul, abs_of_pos (by norm_num : (0 : ℝ) < 2)]
  calc
    _ ≤ 2 * ∑ q ∈ activePrimePowers T,
        |primeWeight q * (∫ t : ℝ, f t * f (t + Real.log q))| :=
      mul_le_mul_of_nonneg_left (Finset.abs_sum_le_sum_abs _ _) (by norm_num)
    _ = ∑ q ∈ activePrimePowers T,
        primeWeight q * (2 * |∫ t : ℝ, f t * f (t + Real.log q)|) := by
      rw [Finset.mul_sum]
      apply Finset.sum_congr rfl
      intro q _
      rw [abs_mul, abs_of_nonneg (primeWeight_nonneg q)]
      ring
    _ ≤ ∑ q ∈ activePrimePowers T,
        (primeWeight q * shiftCost T (Real.log q)) * (∫ t : ℝ, (f t) ^ 2) := by
      apply Finset.sum_le_sum
      intro q _
      simpa only [mul_assoc] using mul_le_mul_of_nonneg_left (hcorr q) (primeWeight_nonneg q)
    _ = _ := by rw [← Finset.sum_mul]; rfl

/-- Reuse the exact source periodization and its full boundary loss. Only the
prime estimate is replaced by the newly proved supported-input estimate. -/
theorem high_core_lower (T : ℝ) (hT : 0 < T) (β : ℝ) {N : ℕ} {f : ℝ → ℝ}
    (hfm : Measurable f) (hf : MemLp f 2 volume) (ho : ∀ t, f (-t) = -f t)
    (hs : ∀ᵐ t ∂volume, t ∉ Icc (-T) T → f t = 0)
    (hh : ∀ n < N, OddSineParseval.sineCoefficient T f (n + 1) = 0)
    (he : IntegrableOn (fun r => parityKernel 0 r * OddWrapEnergy.zeroShiftEnergy r f) (Ioi 0)) :
    (gammaConstant 1 0 - β + OddMultiplierBounds.periodicMultiplier 0 (frequency T (N + 1)) -
      supportPrimeLoss T - 4) * (∫ t : ℝ, ‖f t‖ ^ 2) ≤ shiftedOddCoreEnergy T β f := by
  have hp : primeEnergy T f ≤ supportPrimeLoss T * (∫ t : ℝ, ‖f t‖ ^ 2) := by
    simpa only [Real.norm_eq_abs, sq_abs] using
      (le_abs_self (primeEnergy T f)).trans (abs_primeEnergy_le_support T hf hs)
  exact shiftedOddCoreEnergy_ge_of_exactBudget T hT β (supportPrimeLoss T) 4 _
    le_rfl hfm hf ho hs hh he hp
    (OddBoundaryNorm.oddKernel_quadratic_ge T f hfm hf.integrable_sq.integrableOn)

/-- At zero shift the half-mass bound is false for every nonzero-mass input.
This prevents applying the long-shift improvement without its width test. -/
theorem zero_shift_control {f : ℝ → ℝ} (hm : 0 < ∫ t : ℝ, (f t) ^ 2) :
    (∫ t : ℝ, (f t) ^ 2) < 2 * |∫ t : ℝ, f t * f (t + 0)| := by
  simp only [add_zero, ← pow_two]
  rw [abs_of_pos hm]
  linarith

end GRWTSK.NumberTheory.WeilQuadraticForm.PrimeSupportBound
