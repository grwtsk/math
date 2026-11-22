/-
Copyright (c) 2026 grwtsk contributors. MIT.
Authors: grwtsk contributors.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilConductorThreeTwoCellCertificate
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilFinitePrimeObservations

/-!
# Actual complete-source scalar enclosures for the four-cell grid

The four midpoint cells on the unchanged radius-four window have separations
two, four and six. Exact support reduction retains every nonzero signed
prime hinge at each separation. A 256-term gamma head, rational observations
of the actual exponential and the complete one-sided remainder enclose all
three values of `sourceKernel`. The auxiliary gamma cutoff does not change
the sampled source. Matrix sign and arithmetic return are separate consumers.
-/

set_option autoImplicit false
noncomputable section
open scoped BigOperators ComplexConjugate

namespace GRWTSK.NumberTheory.WeilQuadraticForm.ConductorThreeRadiusFourScrewGreen

open LowSchur OddRootProjection
open GRWTSK.NumberTheory.Zeta.Riemann.DirichletModThreeQuadraticConstruction
open GRWTSK.Algebra.LinearAlgebra.RationalRealBounds

namespace FourCellBounds

private theorem mem_active {T : ℝ} {n : ℕ} :
    n ∈ activePrimePowers T ↔ 2 ≤ n ∧ (n : ℝ) < Real.exp (2 * T) := by
  simp only [activePrimePowers, Finset.mem_filter, Finset.mem_range, Nat.lt_ceil]
  tauto

private theorem active_eq {T : ℝ} {b : ℕ}
    (hlo : (b : ℝ) < Real.exp (2 * T))
    (hhi : Real.exp (2 * T) < (b : ℝ) + 1) :
    activePrimePowers T = Finset.Icc 2 b := by
  ext n
  rw [mem_active, Finset.mem_Icc]
  constructor
  · rintro ⟨hn, hne⟩
    have hnlt : n < b + 1 := by exact_mod_cast hne.trans hhi
    exact ⟨hn, by omega⟩
  · rintro ⟨hn, hnb⟩
    exact ⟨hn, (show (n : ℝ) ≤ b by exact_mod_cast hnb).trans_lt hlo⟩

/-- Only zero hinges are discarded from the original radius-four inventory. -/
theorem primeHinges_even_eq (k b : ℕ) (hk : k ≤ 4)
    (hcut : activePrimePowers (k : ℝ) = Finset.Icc 2 b) :
    primeHinges (2 * (k : ℝ)) = ∑ n ∈ Finset.Icc 2 b,
      (PrimeBounds.characterCoefficient n : ℝ) * primeWeight n *
        (2 * (k : ℝ) - Real.log (n : ℝ)) := by
  have hkR : (k : ℝ) ≤ 4 := by exact_mod_cast hk
  have hsub : activePrimePowers (k : ℝ) ⊆ activePrimePowers 4 := by
    intro n hn
    obtain ⟨hn₂, hnexp⟩ := mem_active.mp hn
    exact mem_active.mpr ⟨hn₂,
      hnexp.trans_le (Real.exp_le_exp.mpr (by linarith))⟩
  have hsum : (∑ n ∈ activePrimePowers (k : ℝ),
      (primeWeight n * (conj (modThreeQuadratic n)).re) *
        max (|2 * (k : ℝ)| - Real.log (n : ℝ)) 0) =
      ∑ n ∈ activePrimePowers 4,
      (primeWeight n * (conj (modThreeQuadratic n)).re) *
        max (|2 * (k : ℝ)| - Real.log (n : ℝ)) 0 := by
    apply Finset.sum_subset hsub
    intro n hn hnsmall
    have hn₂ := (mem_active.mp hn).1
    have hnpos : (0 : ℝ) < n := by exact_mod_cast (show 0 < n by omega)
    have hlog : 2 * (k : ℝ) ≤ Real.log (n : ℝ) := by
      apply (Real.le_log_iff_exp_le hnpos).mpr
      by_contra h
      apply hnsmall
      exact mem_active.mpr ⟨hn₂, lt_of_not_ge h⟩
    have hz : max (|2 * (k : ℝ)| - Real.log (n : ℝ)) 0 = 0 := by
      rw [abs_of_nonneg (by positivity), max_eq_right (by linarith)]
    rw [hz, mul_zero]
  rw [primeHinges_eq_sum, ← hsum, hcut]
  apply Finset.sum_congr rfl
  intro n hn
  have hnsmall : n ∈ activePrimePowers (k : ℝ) := by rwa [hcut]
  obtain ⟨hn₂, hnexp⟩ := mem_active.mp hnsmall
  have hnpos : (0 : ℝ) < n := by exact_mod_cast (show 0 < n by omega)
  have hlog : Real.log (n : ℝ) < 2 * (k : ℝ) :=
    (Real.log_lt_iff_lt_exp hnpos).mpr hnexp
  rw [abs_of_nonneg (by positivity), max_eq_left (by linarith),
    PrimeBounds.characterCoefficient_eq]
  ring

/-- The exact natural cutoffs are 7, 54 and 403, including zero-weight terms. -/
theorem activePrimePowers_three : activePrimePowers 3 = Finset.Icc 2 403 := by
  apply active_eq
  · have hpow := pow_lt_pow_left₀ Real.exp_one_gt_d9
      (by norm_num : (0 : ℝ) ≤ 2.7182818283) (by decide : (6 : ℕ) ≠ 0)
    have heq : Real.exp (2 * 3) = Real.exp 1 ^ (6 : ℕ) := by
      rw [← Real.exp_nat_mul]
      norm_num
    rw [heq]
    exact lt_trans (by norm_num) hpow
  · have hpow := pow_lt_pow_left₀ Real.exp_one_lt_d9
      (Real.exp_pos 1).le (by decide : (6 : ℕ) ≠ 0)
    have heq : Real.exp (2 * 3) = Real.exp 1 ^ (6 : ℕ) := by
      rw [← Real.exp_nat_mul]
      norm_num
    rw [heq]
    exact hpow.trans (by norm_num)

/-- Per-integer outward observations retain the actual character and weight. -/
def primeTermBounds (k n : ℕ) : Bounds :=
  round 24 (scale (PrimeBounds.characterCoefficient n)
    (mul (FinitePrimeObservations.primeWeightBounds n)
      (sub (point (2 * k)) (FinitePrimeObservations.logBounds n))))

theorem primeTermBounds_sound (k : ℕ) {n : ℕ} (hn : 0 < n) :
    Encloses (primeTermBounds k n)
      ((PrimeBounds.characterCoefficient n : ℝ) * primeWeight n *
        (2 * (k : ℝ) - Real.log (n : ℝ))) := by
  have h := round_sound 24 (scale_sound (PrimeBounds.characterCoefficient n)
    (mul_sound (FinitePrimeObservations.primeWeightBounds_sound hn)
      (sub_sound (point_sound (2 * (k : ℚ)))
        (FinitePrimeObservations.logBounds_sound hn))))
  simpa only [primeTermBounds, Rat.cast_mul, Rat.cast_ofNat, Rat.cast_natCast,
    mul_assoc] using h

def primeBounds (k b : ℕ) : Bounds := sum (Finset.Icc 2 b) (primeTermBounds k)

theorem primeBounds_sound (k b : ℕ) (hk : k ≤ 4)
    (hcut : activePrimePowers (k : ℝ) = Finset.Icc 2 b) :
    Encloses (primeBounds k b) (primeHinges (2 * (k : ℝ))) := by
  rw [primeHinges_even_eq k b hk hcut]
  exact sum_sound _ (fun n hn => primeTermBounds_sound k
    (by have := (Finset.mem_Icc.mp hn).1; omega))

/-- Retain the complete existing conductor/parity observation, including
its finite harmonic-sum error for the Euler constant. -/
theorem gammaConstant_bounds :
    -(1133 / 1000 : ℝ) ≤ gammaConstant 3 1 ∧
      gammaConstant 3 1 ≤ -(1131 / 1000 : ℝ) :=
  ScalarBounds.gammaConstant_three_one_bounds

private def decayBounds (k m : ℕ) : Bounds :=
  if m < 4 then
    ((0.3678794411 : ℚ) ^ (k * (4 * m + 3)),
      (0.3678794412 : ℚ) ^ (k * (4 * m + 3)))
  else (0, 1 / 100000000)

private theorem decayBounds_sound (k m : ℕ) (hk : 0 < k) :
    Encloses (decayBounds k m) (Real.exp (-gammaRate m * (2 * (k : ℝ)))) := by
  have heq : Real.exp (-gammaRate m * (2 * (k : ℝ))) =
      Real.exp (-1) ^ (k * (4 * m + 3)) := by
    rw [← Real.exp_nat_mul]
    congr 1
    push_cast [gammaRate]
    ring
  rw [heq]
  by_cases hm : m < 4
  · simp only [decayBounds, ite_eq_left hm, Encloses, Rat.cast_pow]
    have hlo : ((0.3678794411 : ℚ) : ℝ) ≤ Real.exp (-1) := by
      norm_num
      linarith [Real.exp_neg_one_gt_d9]
    have hhi : Real.exp (-1) ≤ ((0.3678794412 : ℚ) : ℝ) := by
      norm_num
      linarith [Real.exp_neg_one_lt_d9]
    constructor
    · exact pow_le_pow_left₀ (by norm_num) hlo _
    · exact pow_le_pow_left₀ (Real.exp_pos _).le hhi _
  · simp only [decayBounds, ite_eq_right hm, Encloses, Rat.cast_zero,
      Rat.cast_div, Rat.cast_one, Rat.cast_ofNat]
    refine ⟨by positivity, ?_⟩
    have he : Real.exp (-1) ≤ (3 / 8 : ℝ) := by
      linarith [Real.exp_neg_one_lt_d9]
    calc
      _ ≤ (3 / 8 : ℝ) ^ (k * (4 * m + 3)) :=
        pow_le_pow_left₀ (Real.exp_pos _).le he _
      _ ≤ (3 / 8 : ℝ) ^ (19 : ℕ) :=
        pow_le_pow_of_le_one (by norm_num) (by norm_num) (by nlinarith)
      _ ≤ _ := by norm_num

/-- Small-index exponential powers and a proved tail majorant enclose the
actual gamma term; endpoint rounding is always outward. -/
def gammaTermBounds (k m : ℕ) : Bounds :=
  round 24 (scale ((ScalarBounds.gammaRateRat m ^ 2)⁻¹)
    (sub (point 1) (decayBounds k m)))

theorem gammaTermBounds_sound (k m : ℕ) (hk : 0 < k) :
    Encloses (gammaTermBounds k m)
      ((1 - Real.exp (-gammaRate m * (2 * (k : ℝ)))) / gammaRate m ^ 2) := by
  have h := round_sound 24 (scale_sound ((ScalarBounds.gammaRateRat m ^ 2)⁻¹)
    (sub_sound (point_sound 1) (decayBounds_sound k m hk)))
  simpa only [gammaTermBounds, Rat.cast_inv, Rat.cast_pow,
    ScalarBounds.gammaRateRat_cast, Rat.cast_one, div_eq_mul_inv, mul_comm] using h

def gammaHeadBounds (k : ℕ) : Bounds := sum (Finset.range 256) (gammaTermBounds k)

theorem gammaHeadBounds_sound (k : ℕ) (hk : 0 < k) :
    Encloses (gammaHeadBounds k)
      (∑ m ∈ Finset.range 256,
        (1 - Real.exp (-gammaRate m * (2 * (k : ℝ)))) / gammaRate m ^ 2) :=
  sum_sound _ (fun m _ => gammaTermBounds_sound k m hk)

set_option maxRecDepth 20000 in
set_option maxHeartbeats 4000000 in
/-- The nearest-neighbour gamma observation also prices the complete
source modulus at the four-cell mesh width. -/
theorem gammaHead_two_upper_guard :
    (gammaHeadBounds 1).2 + (1 / 1025 : ℚ) ≤ 5 / 8 := by
  decide +kernel

theorem gammaHead_two_le :
    (∑ m ∈ Finset.range 256,
      (1 - Real.exp (-gammaRate m * 2)) / gammaRate m ^ 2) ≤
        (5 / 8 : ℝ) - 1 / 1025 := by
  have h := gammaHeadBounds_sound 1 (by decide)
  norm_num only [Nat.cast_one, mul_one] at h
  have hguard : ((gammaHeadBounds 1).2 : ℝ) + (1 / 1025 : ℝ) ≤ 5 / 8 := by
    simpa only [Rat.cast_add, Rat.cast_div, Rat.cast_one, Rat.cast_ofNat] using
      (Rat.cast_le (K := ℝ)).2 gammaHead_two_upper_guard
  linarith [h.2]

/-- Full source interval: the complete one-sided gamma remainder subtracts
`1/1025` from only the lower endpoint. -/
def sourceBounds (k b : ℕ) : Bounds :=
  add (sub (scale (-(k : ℚ)) (-1133 / 1000, -1131 / 1000))
    (gammaHeadBounds k)) (add (primeBounds k b) (-1 / 1025, 0))

theorem sourceBounds_sound (k b : ℕ) (hk : 0 < k) (hk₄ : k ≤ 4)
    (hcut : activePrimePowers (k : ℝ) = Finset.Icc 2 b) :
    Encloses (sourceBounds k b) (sourceKernel (2 * (k : ℝ))) := by
  have hc : Encloses (-1133 / 1000, -1131 / 1000)
      (gammaConstant 3 1) := by
    simpa only [Encloses, Rat.cast_neg, Rat.cast_div, Rat.cast_ofNat, neg_div] using
      gammaConstant_bounds
  have ht : Encloses (-1 / 1025, 0)
      (sourceKernel (2 * (k : ℝ)) - partialSourceKernel 256 (2 * (k : ℝ))) := by
    have h := sourceKernel_sub_partial_bounds 256 (2 * (k : ℝ))
    norm_num only [truncationBudget, Nat.cast_ofNat] at h
    simpa only [Encloses, Rat.cast_div, Rat.cast_neg, Rat.cast_one,
      Rat.cast_ofNat, Rat.cast_zero, neg_div] using h
  have h := add_sound
    (sub_sound (scale_sound (-(k : ℚ)) hc) (gammaHeadBounds_sound k hk))
    (add_sound (primeBounds_sound k b hk₄ hcut) ht)
  unfold sourceBounds
  convert h using 1
  simp only [Rat.cast_neg, Rat.cast_natCast, partialSourceKernel,
    abs_of_nonneg (by positivity : 0 ≤ 2 * (k : ℝ))]
  ring

set_option maxRecDepth 20000 in
set_option maxHeartbeats 8000000 in
theorem sourceBounds_coarse :
    -(152 / 1000 : ℚ) ≤ (sourceBounds 1 7).1 ∧
      (sourceBounds 1 7).2 ≤ -(148 / 1000 : ℚ) ∧
    -(76 / 1000 : ℚ) ≤ (sourceBounds 2 54).1 ∧
      (sourceBounds 2 54).2 ≤ -(70 / 1000 : ℚ) ∧
    -(130 / 1000 : ℚ) ≤ (sourceBounds 3 403).1 ∧
      (sourceBounds 3 403).2 ≤ -(122 / 1000 : ℚ) := by
  decide +kernel

/-- Actual complete source value at the nearest four-cell separation. -/
theorem sourceKernel_two_bounds :
    -(152 / 1000 : ℝ) ≤ sourceKernel 2 ∧ sourceKernel 2 ≤ -(148 / 1000 : ℝ) := by
  have h := sourceBounds_sound 1 7 (by decide) (by decide)
    (by simpa only [Nat.cast_one] using UnitWindowPrimeData.activePrimePowers_one)
  norm_num only [Nat.cast_one, mul_one] at h
  have hlo : -(152 / 1000 : ℝ) ≤ ((sourceBounds 1 7).1 : ℝ) := by
    simpa only [Rat.cast_neg, Rat.cast_div, Rat.cast_ofNat] using
      (Rat.cast_le (K := ℝ)).2 sourceBounds_coarse.1
  have hhi : ((sourceBounds 1 7).2 : ℝ) ≤ -(148 / 1000 : ℝ) := by
    simpa only [Rat.cast_neg, Rat.cast_div, Rat.cast_ofNat] using
      (Rat.cast_le (K := ℝ)).2 sourceBounds_coarse.2.1
  exact ⟨hlo.trans h.1, h.2.trans hhi⟩

/-- A refined complete-source enclosure at separation four. -/
theorem sourceKernel_four_tight_bounds :
    -(76 / 1000 : ℝ) ≤ sourceKernel 4 ∧ sourceKernel 4 ≤ -(70 / 1000 : ℝ) := by
  have h := sourceBounds_sound 2 54 (by decide) (by decide)
    RadiusTwoPrimeNorm.activePrimePowers_two
  norm_num only [Nat.cast_ofNat] at h
  have hlo : -(76 / 1000 : ℝ) ≤ ((sourceBounds 2 54).1 : ℝ) := by
    simpa only [Rat.cast_neg, Rat.cast_div, Rat.cast_ofNat] using
      (Rat.cast_le (K := ℝ)).2 sourceBounds_coarse.2.2.1
  have hhi : ((sourceBounds 2 54).2 : ℝ) ≤ -(70 / 1000 : ℝ) := by
    simpa only [Rat.cast_neg, Rat.cast_div, Rat.cast_ofNat] using
      (Rat.cast_le (K := ℝ)).2 sourceBounds_coarse.2.2.2.1
  exact ⟨hlo.trans h.1, h.2.trans hhi⟩

/-- Actual complete source value at the largest four-cell separation. -/
theorem sourceKernel_six_bounds :
    -(130 / 1000 : ℝ) ≤ sourceKernel 6 ∧ sourceKernel 6 ≤ -(122 / 1000 : ℝ) := by
  have h := sourceBounds_sound 3 403 (by decide) (by decide) activePrimePowers_three
  norm_num only [Nat.cast_ofNat] at h
  have hlo : -(130 / 1000 : ℝ) ≤ ((sourceBounds 3 403).1 : ℝ) := by
    simpa only [Rat.cast_neg, Rat.cast_div, Rat.cast_ofNat] using
      (Rat.cast_le (K := ℝ)).2 sourceBounds_coarse.2.2.2.2.1
  have hhi : ((sourceBounds 3 403).2 : ℝ) ≤ -(122 / 1000 : ℝ) := by
    simpa only [Rat.cast_neg, Rat.cast_div, Rat.cast_ofNat] using
      (Rat.cast_le (K := ℝ)).2 sourceBounds_coarse.2.2.2.2.2
  exact ⟨hlo.trans h.1, h.2.trans hhi⟩

end FourCellBounds

end GRWTSK.NumberTheory.WeilQuadraticForm.ConductorThreeRadiusFourScrewGreen
