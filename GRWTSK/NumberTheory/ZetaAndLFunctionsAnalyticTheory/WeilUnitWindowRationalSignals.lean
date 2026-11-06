/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilUnitWindowOddEntries
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddBoundaryObservation
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddMultiplierObservation

/-!
# Rational enclosures of the unit-window boundary and pole signals

Enclose the frequency using the pinned bounds on pi. For the exponential
weight, reduce to a power of exp(-1), with a rational majorant after the
first sixteen indices. The boundary summand has nonnegative numerator
and positive denominator, so their endpoints give rational bounds in
opposite directions. Round each term outwards before summing on the
common grid, then include the complete positive tail.

For the archimedean diagonal, the signed boundary tail goes only into the
lower endpoint. The logarithmic integral and the first omitted multiplier
term enclose the positive multiplier tail. A rational Taylor enclosure of
that logarithm applies through mode 257.

For the pole column, use the two Taylor enclosures at ±1/2. The
magnitude interval strips off the exact alternating sign. These bounds
concern the literal real odd source at radius one. Their consumption by
the full retained matrix and independent analytical review are pending.
-/

set_option autoImplicit false
open scoped BigOperators

namespace GRWTSK.NumberTheory.WeilQuadraticForm.UnitWindowRationalSignals

open OddRootProjection OddOutputTrace OddBoundarySignalBounds OddBoundaryObservation
open OddDiagonalObservation OddDiagonalSeriesTail
open OddMultiplierBounds OddMultiplierObservation
open OddResidualSourceComparison UnitWindowOddEntries

private def piLo : ℚ := 3.14159265358979323846
private def piHi : ℚ := 3.14159265358979323847
private def expLo : ℚ := 0.36787944117144232159
private def expHi : ℚ := 0.36787944117144232160

set_option maxRecDepth 4096 in
private theorem exp_neg_one_bounds :
    (expLo : ℝ) ≤ Real.exp (-1) ∧ Real.exp (-1) ≤ (expHi : ℝ) := by
  have h := Real.exp_approx_end 25 26 (-1) rfl (by norm_num)
  norm_num [Real.expNear, Finset.sum_range_succ, Nat.factorial_succ] at h
  rw [abs_le] at h
  norm_num [expLo, expHi]
  constructor <;> linarith only [h.1, h.2]

private def rate (j : ℕ) : ℚ := 2 * j + 1 / 2
private def omegaLo (n : ℕ) : ℚ := piLo * n
private def omegaHi (n : ℕ) : ℚ := piHi * n

private theorem omega_bounds (n : ℕ) :
    0 ≤ (omegaLo n : ℝ) ∧
    (omegaLo n : ℝ) ≤ frequency 1 n ∧ frequency 1 n ≤ (omegaHi n : ℝ) := by
  simp only [omegaLo, omegaHi, Rat.cast_mul, Rat.cast_natCast, frequency, div_one]
  refine ⟨mul_nonneg (by norm_num [piLo]) (by positivity), ?_, ?_⟩
  · apply mul_le_mul_of_nonneg_right _ (by positivity)
    exact_mod_cast Real.pi_gt_d20.le
  · apply mul_le_mul_of_nonneg_right _ (by positivity)
    exact_mod_cast Real.pi_lt_d20.le

private def decayLo (j : ℕ) : ℚ := if j < 16 then expLo ^ (4 * j + 1) else 0
private def decayHi (j : ℕ) : ℚ := if j < 16 then expHi ^ (4 * j + 1) else 1 / 2 ^ (65 : ℕ)

private theorem decay_bounds (j : ℕ) :
    (decayLo j : ℝ) ≤ Real.exp (-2 * (rate j : ℝ)) ∧
      Real.exp (-2 * (rate j : ℝ)) ≤ (decayHi j : ℝ) ∧ (decayHi j : ℝ) ≤ 1 := by
  have hExp : Real.exp (-2 * (rate j : ℝ)) = Real.exp (-1) ^ (4 * j + 1) := by
    rw [← Real.exp_nat_mul]
    push_cast [rate]
    ring_nf
  rw [hExp]
  by_cases hj : j < 16
  · simp only [decayLo, decayHi, ite_eq_left hj, Rat.cast_pow]
    exact ⟨pow_le_pow_left₀ (by norm_num [expLo]) exp_neg_one_bounds.1 _,
      pow_le_pow_left₀ (Real.exp_pos _).le exp_neg_one_bounds.2 _,
      pow_le_one₀ (by norm_num [expHi]) (by norm_num [expHi])⟩
  · simp only [decayLo, decayHi, ite_eq_right hj, Rat.cast_zero, Rat.cast_div, Rat.cast_one,
      Rat.cast_pow, Rat.cast_ofNat]
    have hexp : Real.exp (-1) ^ (4 * j + 1) ≤ (1 / 2 : ℝ) ^ (4 * j + 1) :=
      pow_le_pow_left₀ (Real.exp_pos _).le Real.exp_neg_one_lt_half.le _
    have hpower : (1 / 2 : ℝ) ^ (4 * j + 1) ≤ (1 / 2 : ℝ) ^ (65 : ℕ) :=
      pow_le_pow_of_le_one (by norm_num) (by norm_num) (by omega)
    exact ⟨by positivity, (hexp.trans hpower).trans_eq (by norm_num), by norm_num⟩

private def boundaryTermLower (n j : ℕ) : ℚ :=
  (1 - decayHi j) / (rate j ^ 2 + omegaHi n ^ 2)

private def boundaryTermUpper (n j : ℕ) : ℚ :=
  (1 - decayLo j) / (rate j ^ 2 + omegaLo n ^ 2)

private theorem boundaryTerm_bounds (n j : ℕ) :
    (boundaryTermLower n j : ℝ) ≤ boundarySignalTerm 1 n j ∧
      boundarySignalTerm 1 n j ≤ (boundaryTermUpper n j : ℝ) := by
  obtain ⟨hLo, hHi, hOne⟩ := decay_bounds j
  obtain ⟨hW₀, hW₁, hW₂⟩ := omega_bounds n
  have hW : 0 ≤ frequency 1 n := hW₀.trans hW₁
  have hRate : 0 < (rate j : ℝ) := by unfold rate; push_cast; positivity
  have hTerm : boundarySignalTerm 1 n j =
      (1 - Real.exp (-2 * (rate j : ℝ))) / ((rate j : ℝ) ^ 2 + frequency 1 n ^ 2) := by
    change (1 - Real.exp (-2 * (2 * (j : ℝ) + 1 / 2) * 1)) / _ = _
    simp [rate, frequency]
  rw [hTerm]
  simp only [boundaryTermLower, boundaryTermUpper, Rat.cast_div, Rat.cast_sub,
    Rat.cast_one, Rat.cast_add, Rat.cast_pow]
  constructor
  · apply div_le_div₀ (sub_nonneg.mpr (hHi.trans hOne)) (sub_le_sub_left hHi _)
      (by positivity)
    exact add_le_add_right (pow_le_pow_left₀ hW hW₂ _) _
  · apply div_le_div₀ (sub_nonneg.mpr (hLo.trans (hHi.trans hOne))) (sub_le_sub_left hLo _)
      (by positivity)
    exact add_le_add_right (pow_le_pow_left₀ hW₀ hW₁ _) _

private def lowerSum (bits K : ℕ) (f : ℕ → ℚ) : ℚ :=
  ((∑ j ∈ Finset.range K, ⌊2 ^ bits * f j⌋ : ℤ) : ℚ) / (2 : ℚ) ^ bits

private def upperSum (bits K : ℕ) (f : ℕ → ℚ) : ℚ :=
  ((∑ j ∈ Finset.range K, ⌈2 ^ bits * f j⌉ : ℤ) : ℚ) / (2 : ℚ) ^ bits

private theorem lowerSum_le (bits K : ℕ) {f : ℕ → ℚ} {g : ℕ → ℝ}
    (h : ∀ j ∈ Finset.range K, (f j : ℝ) ≤ g j) :
    (lowerSum bits K f : ℝ) ≤ ∑ j ∈ Finset.range K, g j := by
  have hGrid : 0 < (2 : ℝ) ^ bits := by positivity
  unfold lowerSum
  push_cast
  rw [div_le_iff₀ hGrid, Finset.sum_mul]
  apply Finset.sum_le_sum
  intro j hj
  have hr : ((⌊2 ^ bits * f j⌋ : ℤ) : ℝ) ≤ (f j : ℝ) * 2 ^ bits := by
    exact_mod_cast (Int.floor_le ((2 : ℚ) ^ bits * f j)).trans_eq (mul_comm _ _)
  exact hr.trans (mul_le_mul_of_nonneg_right (h j hj) hGrid.le)

private theorem le_upperSum (bits K : ℕ) {f : ℕ → ℚ} {g : ℕ → ℝ}
    (h : ∀ j ∈ Finset.range K, g j ≤ (f j : ℝ)) :
    (∑ j ∈ Finset.range K, g j) ≤ (upperSum bits K f : ℝ) := by
  have hGrid : 0 < (2 : ℝ) ^ bits := by positivity
  unfold upperSum
  push_cast
  rw [le_div_iff₀ hGrid, Finset.sum_mul]
  apply Finset.sum_le_sum
  intro j hj
  have hr : (f j : ℝ) * 2 ^ bits ≤ ((⌈2 ^ bits * f j⌉ : ℤ) : ℝ) := by
    exact_mod_cast (mul_comm (f j) ((2 : ℚ) ^ bits)).le.trans (Int.le_ceil _)
  exact (mul_le_mul_of_nonneg_right (h j hj) hGrid.le).trans hr

/-- Fixed-grid lower sum for the unit-radius boundary signal. -/
def boundaryLower (bits n K : ℕ) : ℚ := lowerSum bits K (boundaryTermLower n)

/-- Fixed-grid upper sum with the complete tail beyond positive `K`. -/
def boundaryUpper (bits n K : ℕ) : ℚ := upperSum bits K (boundaryTermUpper n) +
  1 / (4 * (K : ℚ) - 1)

/-- The same grid sums enclose the retained terms before the positive tail is added. -/
theorem boundaryPartial_bounds (bits n K : ℕ) :
    (boundaryLower bits n K : ℝ) ≤ OddBoundaryObservation.boundarySignalPartial 1 n K ∧
      OddBoundaryObservation.boundarySignalPartial 1 n K ≤
        ((boundaryUpper bits n K - 1 / (4 * (K : ℚ) - 1) : ℚ) : ℝ) := by
  constructor
  · exact lowerSum_le bits K (fun j _ => (boundaryTerm_bounds n j).1)
  · simpa only [boundaryUpper, add_sub_cancel_right, OddBoundaryObservation.boundarySignalPartial] using
      le_upperSum bits K (fun j _ => (boundaryTerm_bounds n j).2)

/-- Exact rational grid bounds on the full boundary signal, for every mode. -/
theorem boundary_bounds (bits n : ℕ) {K : ℕ} (hK : 0 < K) :
    (boundaryLower bits n K : ℝ) ≤ boundarySignal 1 n ∧
      boundarySignal 1 n ≤ (boundaryUpper bits n K : ℝ) := by
  obtain ⟨hL, hU⟩ := boundarySignal_truncation_bounds 1 (by norm_num) n hK
  have hLower := lowerSum_le bits K (fun j _ => (boundaryTerm_bounds n j).1)
  have hUpper := le_upperSum bits K (fun j _ => (boundaryTerm_bounds n j).2)
  refine ⟨hLower.trans hL, hU.trans ?_⟩
  simpa [boundaryUpper, boundarySignalTailBound, OddBoundaryObservation.boundarySignalPartial]
    using add_le_add_right hUpper
    (boundarySignalTailBound K)

private def correctionTermLower (n j : ℕ) : ℚ :=
  -(2 * omegaHi n ^ 2 * (1 - decayLo j)) / (rate j ^ 2 + omegaLo n ^ 2) ^ 2

private def correctionTermUpper (n j : ℕ) : ℚ :=
  -(2 * omegaLo n ^ 2 * (1 - decayHi j)) / (rate j ^ 2 + omegaHi n ^ 2) ^ 2

private theorem correctionTerm_bounds (n j : ℕ) :
    (correctionTermLower n j : ℝ) ≤ sineBoundaryTerm 1 n j ∧
      sineBoundaryTerm 1 n j ≤ (correctionTermUpper n j : ℝ) := by
  obtain ⟨hLo, hHi, hOne⟩ := decay_bounds j
  obtain ⟨hW₀, hW₁, hW₂⟩ := omega_bounds n
  have hW : 0 ≤ frequency 1 n := hW₀.trans hW₁
  have hRate : 0 < (rate j : ℝ) := by unfold rate; push_cast; positivity
  have hLeft := pow_le_pow_left₀ hW₀ hW₁ 2
  have hRight := pow_le_pow_left₀ hW hW₂ 2
  have hTerm : sineBoundaryTerm 1 n j =
      -(2 * frequency 1 n ^ 2 * (1 - Real.exp (-2 * (rate j : ℝ)))) /
        ((rate j : ℝ) ^ 2 + frequency 1 n ^ 2) ^ 2 := by
    simpa [rate] using sineBoundaryTerm_eq_exponential 1 (by norm_num) n j
  rw [hTerm]
  simp only [correctionTermLower, correctionTermUpper, Rat.cast_div, Rat.cast_mul,
    Rat.cast_neg, Rat.cast_ofNat, Rat.cast_pow, Rat.cast_add, Rat.cast_sub, Rat.cast_one, neg_div]
  constructor <;> apply neg_le_neg <;> apply div_le_div₀
  · exact mul_nonneg (by positivity) (sub_nonneg.mpr (hLo.trans (hHi.trans hOne)))
  · exact mul_le_mul (mul_le_mul_of_nonneg_left hRight (by norm_num))
      (sub_le_sub_left hLo _) (sub_nonneg.mpr (hHi.trans hOne)) (by positivity)
  · positivity
  · exact pow_le_pow_left₀ (by positivity) (add_le_add_right hLeft _) _
  · exact mul_nonneg (by positivity) (sub_nonneg.mpr (hHi.trans hOne))
  · exact mul_le_mul (mul_le_mul_of_nonneg_left hLeft (by norm_num))
      (sub_le_sub_left hHi _) (sub_nonneg.mpr hOne) (by positivity)
  · positivity
  · exact pow_le_pow_left₀ (by positivity) (add_le_add_right hRight _) _

/-- Outward lower endpoint of the full negative diagonal boundary correction. -/
def correctionLower (bits n K : ℕ) : ℚ := lowerSum bits K (correctionTermLower n) -
  omegaHi n ^ 2 / (24 * ((K : ℚ) - 1) ^ 3)

/-- The upper endpoint can omit the nonpositive remainder. -/
def correctionUpper (bits n K : ℕ) : ℚ := upperSum bits K (correctionTermUpper n)

theorem correction_bounds (bits : ℕ) {n K : ℕ} (hn : 0 < n) (hK : 1 < K) :
    (correctionLower bits n K : ℝ) ≤ ∑' j, sineBoundaryTerm 1 n j ∧
      (∑' j, sineBoundaryTerm 1 n j) ≤ (correctionUpper bits n K : ℝ) := by
  let S := ∑ j ∈ Finset.range K, sineBoundaryTerm 1 n j
  have hA := (hasSum_sineBoundaryTerm 1 (by norm_num) hn).tsum_eq
  have hTail := abs_sineArchimedeanEntry_sub_partialSum_le 1 (by norm_num) hn K hK
  rw [abs_le] at hTail
  have hActualLower : S - frequency 1 n ^ 2 / (24 * ((K : ℝ) - 1) ^ 3) ≤
      ∑' j, sineBoundaryTerm 1 n j := by
    simp only [mul_one] at hTail
    dsimp [S]
    linarith only [hTail.1, hA]
  have hActualUpper : (∑' j, sineBoundaryTerm 1 n j) ≤ S := by
    rw [← (hasSum_sineBoundaryTerm 1 (by norm_num) hn).summable.sum_add_tsum_nat_add K]
    exact add_le_of_nonpos_right (tsum_nonpos fun j => sineBoundaryTerm_nonpos 1 (by norm_num) n _)
  have hKl : (1 : ℝ) < K := by exact_mod_cast hK
  obtain ⟨hW₀, hW₁, hW₂⟩ := omega_bounds n
  have hError := div_le_div_of_nonneg_right (pow_le_pow_left₀ (hW₀.trans hW₁) hW₂ 2)
    (by positivity : 0 ≤ (24 : ℝ) * ((K : ℝ) - 1) ^ 3)
  constructor
  · apply le_trans _ hActualLower
    unfold correctionLower
    push_cast
    exact sub_le_sub (lowerSum_le bits K (fun j _ => (correctionTerm_bounds n j).1)) hError
  · exact hActualUpper.trans (le_upperSum bits K (fun j _ => (correctionTerm_bounds n j).2))

private def multiplierTermLower (n j : ℕ) : ℚ :=
  2 * omegaLo n ^ 2 / (rate j * (rate j ^ 2 + omegaHi n ^ 2))

private def multiplierTermUpper (n j : ℕ) : ℚ :=
  2 * omegaHi n ^ 2 / (rate j * (rate j ^ 2 + omegaLo n ^ 2))

private theorem multiplierTerm_bounds (n j : ℕ) :
    (multiplierTermLower n j : ℝ) ≤ periodicMultiplierTerm 0 (frequency 1 n) j ∧
      periodicMultiplierTerm 0 (frequency 1 n) j ≤ (multiplierTermUpper n j : ℝ) := by
  obtain ⟨hW₀, hW₁, hW₂⟩ := omega_bounds n
  have hW : 0 ≤ frequency 1 n := hW₀.trans hW₁
  have hRate : 0 < (rate j : ℝ) := by unfold rate; push_cast; positivity
  have hLeft := pow_le_pow_left₀ hW₀ hW₁ 2
  have hRight := pow_le_pow_left₀ hW hW₂ 2
  have hr : multiplierRate 0 (j : ℝ) = (rate j : ℝ) := by simp [rate, multiplierRate]
  have hTerm : periodicMultiplierTerm 0 (frequency 1 n) (j : ℝ) =
      2 * frequency 1 n ^ 2 / ((rate j : ℝ) * ((rate j : ℝ) ^ 2 + frequency 1 n ^ 2)) := by
    rw [periodicMultiplierTerm, hr, PeriodicBoundary.multiplierSummand, mul_div_assoc]
  rw [hTerm]
  simp only [multiplierTermLower, multiplierTermUpper, Rat.cast_div, Rat.cast_mul,
    Rat.cast_ofNat, Rat.cast_pow, Rat.cast_add]
  constructor
  · exact div_le_div₀ (by positivity) (mul_le_mul_of_nonneg_left hLeft (by norm_num))
      (by positivity) (mul_le_mul_of_nonneg_left (add_le_add_right hRight _) hRate.le)
  · exact div_le_div₀ (by positivity) (mul_le_mul_of_nonneg_left hRight (by norm_num))
      (by positivity) (mul_le_mul_of_nonneg_left (add_le_add_right hLeft _) hRate.le)

private def logCenter (terms : ℕ) (x : ℚ) : ℚ :=
  -(∑ i ∈ Finset.range terms, (-x) ^ (i+1) / ((i : ℚ) + 1))

private def logRadius (terms : ℕ) (x : ℚ) : ℚ := x ^ (terms+1) / (1-x)

private theorem log_bounds (terms : ℕ) {x : ℚ} (hx : 0 ≤ x) (hx' : x < 1) :
    ((logCenter terms x - logRadius terms x : ℚ) : ℝ) ≤ Real.log (1 + (x : ℝ)) ∧
      Real.log (1 + (x : ℝ)) ≤ ((logCenter terms x + logRadius terms x : ℚ) : ℝ) := by
  have hNonneg : (0 : ℝ) ≤ (x : ℝ) := by exact_mod_cast hx
  have hlt : (x : ℝ) < 1 := by exact_mod_cast hx'
  have hAbs : |-(x : ℝ)| = (x : ℝ) := by rw [abs_neg, abs_of_nonneg hNonneg]
  have h := Real.abs_log_sub_add_sum_range_le (x := -(x : ℝ)) (by simpa [hAbs] using hlt) terms
  rw [hAbs, sub_neg_eq_add, abs_le] at h
  simp only [logCenter, logRadius, Rat.cast_add, Rat.cast_sub, Rat.cast_neg, Rat.cast_div,
    Rat.cast_pow, Rat.cast_one, Rat.cast_sum, Rat.cast_natCast]
  constructor <;> linarith only [h.1, h.2]

private def tailRatioLower (n : ℕ) : ℚ := omegaLo n ^ 2 / rate 1024 ^ 2
private def tailRatioUpper (n : ℕ) : ℚ := omegaHi n ^ 2 / rate 1024 ^ 2

/-- Lower endpoint of the full periodic multiplier at a retained mode. -/
def multiplierLower (bits terms n : ℕ) : ℚ :=
  lowerSum bits 1024 (multiplierTermLower n) +
    (logCenter terms (tailRatioLower n) - logRadius terms (tailRatioLower n)) / 2

/-- Upper endpoint includes the first omitted multiplier term. -/
def multiplierUpper (bits terms n : ℕ) : ℚ :=
  upperSum bits 1024 (multiplierTermUpper n) +
    ((logCenter terms (tailRatioUpper n) + logRadius terms (tailRatioUpper n)) / 2 +
      multiplierTermUpper n 1024)

theorem multiplier_bounds (bits terms : ℕ) {n : ℕ} (hn : n ≤ 257) :
    (multiplierLower bits terms n : ℝ) ≤ periodicMultiplier 0 (frequency 1 n) ∧
      periodicMultiplier 0 (frequency 1 n) ≤ (multiplierUpper bits terms n : ℝ) := by
  have hnQ : (n : ℚ) ≤ 257 := by exact_mod_cast hn
  have hOmegaHi : omegaHi n ≤ piHi * 257 := mul_le_mul_of_nonneg_left hnQ (by norm_num [piHi])
  have hOmegaNonneg : 0 ≤ omegaHi n :=
    mul_nonneg (by norm_num [piHi]) (Nat.cast_nonneg n)
  have hRatioUpper : tailRatioUpper n < 1 := by
    unfold tailRatioUpper
    apply (div_lt_iff₀ (by norm_num [rate])).mpr
    rw [one_mul]
    apply (pow_le_pow_left₀ hOmegaNonneg hOmegaHi 2).trans_lt
    norm_num [piHi, rate]
  obtain ⟨hW₀, hW₁, hW₂⟩ := omega_bounds n
  have hW : 0 ≤ frequency 1 n := hW₀.trans hW₁
  have hLower : (tailRatioLower n : ℝ) ≤ frequency 1 n ^ 2 / multiplierRate 0 1024 ^ 2 := by
    have hr : multiplierRate 0 (1024 : ℝ) = (rate 1024 : ℝ) := by norm_num [rate, multiplierRate]
    rw [hr]
    push_cast [tailRatioLower]
    exact div_le_div_of_nonneg_right (pow_le_pow_left₀ hW₀ hW₁ 2) (by positivity)
  have hUpper : frequency 1 n ^ 2 / multiplierRate 0 1024 ^ 2 ≤ (tailRatioUpper n : ℝ) := by
    have hr : multiplierRate 0 (1024 : ℝ) = (rate 1024 : ℝ) := by norm_num [rate, multiplierRate]
    rw [hr]
    push_cast [tailRatioUpper]
    exact div_le_div_of_nonneg_right (pow_le_pow_left₀ hW hW₂ 2) (by positivity)
  have hLowerLt : tailRatioLower n < 1 := by
    have h : tailRatioLower n ≤ tailRatioUpper n := by exact_mod_cast hLower.trans hUpper
    exact h.trans_lt hRatioUpper
  have hLogL := (log_bounds terms (by unfold tailRatioLower; positivity) hLowerLt).1
  have hLogU := (log_bounds terms (by unfold tailRatioUpper; positivity) hRatioUpper).2
  push_cast at hLogL hLogU
  have hLog1 := Real.log_le_log (by unfold tailRatioLower; push_cast; positivity)
    (add_le_add_right hLower 1)
  have hLog2 := Real.log_le_log (by positivity : 0 < 1 + frequency 1 n ^ 2 / multiplierRate 0 1024 ^ 2)
    (add_le_add_right hUpper 1)
  obtain ⟨hFirst, hSecond⟩ := periodicMultiplier_truncation_bounds 0 (frequency 1 n) 1024
  have hSumL := lowerSum_le bits 1024 (fun j _ => (multiplierTerm_bounds n j).1)
  have hSumU := le_upperSum bits 1024 (fun j _ => (multiplierTerm_bounds n j).2)
  constructor
  · apply le_trans _ hFirst
    unfold multiplierLower periodicMultiplierPartial periodicMultiplierTailIntegral
    push_cast
    exact add_le_add hSumL (by linarith only [hLogL, hLog1])
  · apply hSecond.trans
    unfold multiplierUpper periodicMultiplierPartial periodicMultiplierTailIntegral
    push_cast
    exact add_le_add hSumU (add_le_add (by linarith only [hLogU, hLog2]) (multiplierTerm_bounds n 1024).2)

/-- An outward interval for each retained archimedean diagonal entry. -/
theorem archimedeanDiagonal_bounds (bits terms : ℕ) {n : ℕ} (hn : 0 < n) (hn' : n ≤ 257) :
    ((-5.382 + multiplierLower bits terms n + correctionLower bits n 1024 : ℚ) : ℝ) ≤
        sineArchimedeanEntry 1 (gammaConstant 1 0) 0 n n ∧
      sineArchimedeanEntry 1 (gammaConstant 1 0) 0 n n ≤
        ((-5.362 + multiplierUpper bits terms n + correctionUpper bits n 1024 : ℚ) : ℝ) := by
  have hEntry := (hasSum_sineBoundaryTerm 1 (by norm_num) hn).tsum_eq
  obtain ⟨hM₀, hM₁⟩ := multiplier_bounds bits terms hn'
  obtain ⟨hC₀, hC₁⟩ := correction_bounds bits hn (by decide : 1 < 1024)
  obtain ⟨hG₀, hG₁⟩ := gammaConstant_one_zero_interval
  push_cast
  constructor <;> linarith only [hEntry, hM₀, hM₁, hC₀, hC₁, hG₀, hG₁]

private def poleScaleLo : ℚ := 1.04219061098749472324
private def poleScaleHi : ℚ := 1.04219061098749472325

set_option maxRecDepth 4096 in
private theorem poleScale_bounds :
    (poleScaleLo : ℝ) ≤ 2 * Real.sinh (1 / 2) ∧ 2 * Real.sinh (1 / 2) ≤ (poleScaleHi : ℝ) := by
  have h₁ := Real.exp_approx_end 23 24 (1 / 2) rfl (by norm_num)
  have h₂ := Real.exp_approx_end 23 24 (- (1 / 2)) rfl (by norm_num)
  norm_num [Real.expNear, Finset.sum_range_succ, Nat.factorial_succ] at h₁ h₂
  rw [abs_le] at h₁ h₂
  norm_num [poleScaleLo, poleScaleHi, Real.sinh_eq]
  constructor <;> linarith only [h₁.1, h₁.2, h₂.1, h₂.2]

/-- Lower bound for the magnitude after removing the exact alternating pole sign. -/
def poleMagnitudeLower (n : ℕ) : ℚ := poleScaleLo * omegaLo n / (1 / 4 + omegaHi n ^ 2)

/-- Upper bound for the magnitude after removing the exact alternating pole sign. -/
def poleMagnitudeUpper (n : ℕ) : ℚ := poleScaleHi * omegaHi n / (1 / 4 + omegaLo n ^ 2)

theorem poleMagnitude_bounds {n : ℕ} (hn : 0 < n) :
    (poleMagnitudeLower n : ℝ) ≤ (-1 : ℝ) ^ (n + 1) * literalPoleEntry 1 n ∧
      (-1 : ℝ) ^ (n + 1) * literalPoleEntry 1 n ≤ (poleMagnitudeUpper n : ℝ) := by
  obtain ⟨hW₀, hW₁, hW₂⟩ := omega_bounds n
  have hW : 0 ≤ frequency 1 n := hW₀.trans hW₁
  obtain ⟨hS₁, hS₂⟩ := poleScale_bounds
  have hS₀ : 0 ≤ (poleScaleLo : ℝ) := by norm_num [poleScaleLo]
  have hS : 0 ≤ 2 * Real.sinh (1 / 2) := hS₀.trans hS₁
  have hp : (-1 : ℝ) ^ (n + 1) * literalPoleEntry 1 n =
      (2 * Real.sinh (1 / 2)) * frequency 1 n / (1 / 4 + frequency 1 n ^ 2) := by
    rw [literalPoleEntry_one hn, ← mul_div_assoc]
    have hs : (-1 : ℝ) ^ (n + 1) * (-1 : ℝ) ^ (n + 1) = 1 := by
      rw [← mul_pow]
      norm_num
    calc
      _ = ((-1 : ℝ) ^ (n + 1) * (-1 : ℝ) ^ (n + 1)) *
          ((2 * Real.sinh (1 / 2)) * frequency 1 n) / (1 / 4 + frequency 1 n ^ 2) := by ring
      _ = _ := by rw [hs, one_mul]
  rw [hp]
  simp only [poleMagnitudeLower, poleMagnitudeUpper, Rat.cast_div, Rat.cast_mul,
    Rat.cast_add, Rat.cast_pow, Rat.cast_one, Rat.cast_ofNat]
  constructor
  · exact div_le_div₀ (mul_nonneg hS hW) (mul_le_mul hS₁ hW₁ hW₀ hS)
      (by positivity) (add_le_add_right (pow_le_pow_left₀ hW hW₂ _) _)
  · exact div_le_div₀ (mul_nonneg (hS.trans hS₂) (hW.trans hW₂))
      (mul_le_mul hS₂ hW₂ hW (hS.trans hS₂))
      (by positivity) (add_le_add_right (pow_le_pow_left₀ hW₀ hW₁ _) _)

/-- The pole observation retains its sign in the center and pays its full width. -/
theorem abs_literalPoleEntry_sub_rational_le {n : ℕ} (hn : 0 < n) :
    |literalPoleEntry 1 n -
      (((-1 : ℚ) ^ (n+1) * ((poleMagnitudeLower n + poleMagnitudeUpper n) / 2)) : ℝ)| ≤
      (((poleMagnitudeUpper n - poleMagnitudeLower n) / 2 : ℚ) : ℝ) := by
  let s : ℝ := (-1) ^ (n+1)
  have hSq : s * s = 1 := by
    dsimp only [s]
    rw [← mul_pow]
    norm_num
  have hAbs : |s| = 1 := by simp [s, abs_pow]
  have hEntry : literalPoleEntry 1 n = s * (s * literalPoleEntry 1 n) := by
    rw [← mul_assoc, hSq, one_mul]
  push_cast
  change |literalPoleEntry 1 n - s * _| ≤ _
  nth_rw 1 [hEntry]
  rw [← mul_sub, abs_mul, hAbs, one_mul, abs_le]
  obtain ⟨hL, hU⟩ := poleMagnitude_bounds hn
  change (poleMagnitudeLower n : ℝ) ≤ s * literalPoleEntry 1 n at hL
  change s * literalPoleEntry 1 n ≤ (poleMagnitudeUpper n : ℝ) at hU
  constructor <;> linarith only [hL, hU]

end GRWTSK.NumberTheory.WeilQuadraticForm.UnitWindowRationalSignals
