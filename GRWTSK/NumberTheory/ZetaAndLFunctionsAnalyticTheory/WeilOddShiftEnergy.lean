/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddPrimeRow
import Mathlib.MeasureTheory.Function.LocallyIntegrable
import Mathlib.MeasureTheory.Group.Integral
import Mathlib.MeasureTheory.Measure.Lebesgue.Basic

/-!
# The off-diagonal whole-line translation energy

In the zero-extended sine basis, expanding the two translation differences
gives two unshifted inner products and two signed cross terms. Translation
invariance identifies the doubly shifted inner product with the unshifted
one, which vanishes for distinct modes. The remaining terms are the negative
of the actual `sineShiftEntry`. Each product is integrable because it is a
continuous formula on its compact support overlap.

At a shift at least the full window width, the overlap is contained in a
singleton. Its Lebesgue measure is zero, including at the exact endpoint.
These are comparisons of literal integrals used in the archimedean source
decomposition. The infinite gamma summation is a separate estimate.
Independent analytical review and novelty assessment: NOT_RUN.
-/

set_option autoImplicit false

noncomputable section
open MeasureTheory Set

namespace GRWTSK.NumberTheory.WeilQuadraticForm.OddShiftEnergy

open OddRootProjection OddPrimeRow

private def overlap (T r : ℝ) : Set ℝ :=
  Icc (max (-T) (-T - r)) (min T (T - r))

private theorem sine_product_on_overlap (T r : ℝ) (m n : ℕ) :
    (fun t : ℝ => zeroExtendedSine T m t * zeroExtendedSine T n (t + r)) =
      (overlap T r).indicator (fun t : ℝ =>
        (Real.sin (Real.pi * (m : ℝ) * t / T) / Real.sqrt T) *
          (Real.sin (Real.pi * (n : ℝ) * (t + r) / T) / Real.sqrt T)) := by
  funext t
  have hmem : t ∈ overlap T r ↔ t ∈ Icc (-T) T ∧ t + r ∈ Icc (-T) T := by
    simp only [overlap, mem_Icc, max_le_iff, le_min_iff]
    constructor
    · rintro ⟨⟨hl, hl'⟩, ⟨hu, hu'⟩⟩
      exact ⟨⟨hl, hu⟩, by constructor <;> linarith⟩
    · rintro ⟨⟨hl, hu⟩, ⟨hl', hu'⟩⟩
      exact ⟨⟨hl, by linarith⟩, ⟨hu, by linarith⟩⟩
  by_cases hx : t ∈ Icc (-T) T <;> by_cases hy : t + r ∈ Icc (-T) T <;>
    simp [zeroExtendedSine, hmem, hx, hy]

private theorem integrable_sine_product (T r : ℝ) (m n : ℕ) :
    Integrable (fun t : ℝ => zeroExtendedSine T m t * zeroExtendedSine T n (t + r)) := by
  rw [sine_product_on_overlap, integrable_indicator_iff (by exact measurableSet_Icc)]
  apply Continuous.integrableOn_Icc
  fun_prop

private theorem sineCorrelation_zero_shift (T : ℝ) (hT : 0 < T) {m n : ℕ}
    (hmn : m ≠ n) : sineCorrelation T m n 0 = 0 := by
  rcases Nat.eq_zero_or_pos m with rfl | hm
  · simp [sineCorrelation, zeroExtendedSine]
  rcases Nat.eq_zero_or_pos n with rfl | hn
  · simp [sineCorrelation, zeroExtendedSine]
  rw [sineCorrelation_off_diagonal T 0 m n hT le_rfl (by linarith) hm hn hmn]
  simp

/-- The actual unweighted integrand of the archimedean jump energy. -/
theorem integral_shiftEnergy_off_diagonal (T r : ℝ) (hT : 0 < T) {m n : ℕ}
    (hmn : m ≠ n) :
    (∫ t : ℝ, (zeroExtendedSine T m (t + r) - zeroExtendedSine T m t) *
      (zeroExtendedSine T n (t + r) - zeroExtendedSine T n t)) =
      -sineShiftEntry T m n r := by
  let f := zeroExtendedSine T m
  let g := zeroExtendedSine T n
  have h01 : Integrable (fun t : ℝ => f t * g (t + r)) :=
    integrable_sine_product T r m n
  have h10 : Integrable (fun t : ℝ => f (t + r) * g t) := by
    simpa only [f, g, mul_comm] using integrable_sine_product T r n m
  have h00 : Integrable (fun t : ℝ => f t * g t) := by
    simpa only [f, g, add_zero] using integrable_sine_product T 0 m n
  have h11 : Integrable (fun t : ℝ => f (t + r) * g (t + r)) :=
    (measurePreserving_add_right volume r).integrable_comp_of_integrable h00
  have hzero : (∫ t : ℝ, f t * g t) = 0 := by
    simpa only [sineCorrelation, add_zero, f, g] using sineCorrelation_zero_shift T hT hmn
  have hflip : (∫ t : ℝ, f (t + r) * g t) = sineCorrelation T n m r := by
    unfold sineCorrelation
    exact integral_congr_ae (Filter.Eventually.of_forall (fun t => mul_comm _ _))
  calc
    _ = ∫ t : ℝ, (f (t + r) * g (t + r) - f (t + r) * g t) -
        (f t * g (t + r) - f t * g t) := by
      apply integral_congr_ae
      filter_upwards [] with t
      change (f (t + r) - f t) * (g (t + r) - g t) = _
      ring
    _ = _ := by
      have hsubtract := integral_sub (h11.sub h10) (h01.sub h00)
      simp only [Pi.sub_apply] at hsubtract
      rw [hsubtract, integral_sub h11 h10, integral_sub h01 h00, integral_add_right_eq_self (fun t : ℝ => f t * g t) r,
        hzero, hflip]
      change 0 - sineCorrelation T n m r - (sineCorrelation T m n r - 0) = _
      unfold sineShiftEntry
      ring

/-- The constant archimedean term vanishes off the diagonal, leaving the
signed gamma-weighted shift integral. -/
theorem sineArchimedeanEntry_off_diagonal (T c : ℝ) (a : ℕ) (hT : 0 < T)
    {m n : ℕ} (hmn : m ≠ n) :
    sineArchimedeanEntry T c a m n =
      -(∫ r in Ioi (0 : ℝ), parityKernel a r * sineShiftEntry T m n r) := by
  have hzero : (∫ t : ℝ, zeroExtendedSine T m t * zeroExtendedSine T n t) = 0 := by
    simpa only [sineCorrelation, add_zero] using sineCorrelation_zero_shift T hT hmn
  unfold sineArchimedeanEntry
  rw [hzero, mul_zero, zero_add]
  simp_rw [integral_shiftEnergy_off_diagonal T _ hT hmn, mul_neg, integral_neg]

private theorem sineCorrelation_eq_zero_of_cutoff (T r : ℝ) (m n : ℕ)
    (hr : 2 * T ≤ r) : sineCorrelation T m n r = 0 := by
  have hs : overlap T r ⊆ {(-T)} := by
    intro t ht
    rw [mem_singleton_iff]
    exact le_antisymm (by linarith [ht.2.trans (min_le_right T (T - r))])
      ((le_max_left (-T) (-T - r)).trans ht.1)
  have hnull : volume (overlap T r) = 0 := measure_mono_null hs (measure_singleton _)
  unfold sineCorrelation
  rw [sine_product_on_overlap, integral_indicator (by exact measurableSet_Icc)]
  exact setIntegral_measure_zero _ hnull

/-- The endpoint itself can be dropped from the support inventory. -/
theorem sineShiftEntry_eq_zero_of_cutoff (T r : ℝ) (m n : ℕ) (hr : 2 * T ≤ r) :
    sineShiftEntry T m n r = 0 := by
  simp [sineShiftEntry, sineCorrelation_eq_zero_of_cutoff, hr]

end GRWTSK.NumberTheory.WeilQuadraticForm.OddShiftEnergy
