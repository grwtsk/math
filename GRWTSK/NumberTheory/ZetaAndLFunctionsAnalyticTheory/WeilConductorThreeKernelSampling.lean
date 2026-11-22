/-
Copyright (c) 2026 grwtsk contributors. MIT.
Authors: grwtsk contributors.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilConductorThreeKernel
import Mathlib.MeasureTheory.Function.Floor
import Mathlib.Topology.MetricSpace.Lipschitz
import Mathlib.Tactic

/-!
# Finite sampling of the native conductor-three integrated kernel

The exact finite-gamma kernel retains the original signed prime hinges. Its
proved global Lipschitz constant yields a whole-cell error, not merely an
error on sampled points. An explicit midpoint grid on [-4,4] supplies all
cell assignments and the covering radius, including the right endpoint.

Finite gamma truncation alone is not finite rank. The sampled matrix kernel
is the separate finite-rank approximation. Full-gamma truncation, arithmetic
entry rounding, integral return, and derivative-to-physical norm comparisons
remain their own steps. No source positivity is inferred from this sampling.
-/

set_option autoImplicit false
noncomputable section
open Set MeasureTheory
open scoped BigOperators ComplexConjugate

namespace GRWTSK.NumberTheory.WeilQuadraticForm.ConductorThreeRadiusFourScrewGreen

open CharacterWindow OddRootProjection LowSchur
open GRWTSK.NumberTheory.Zeta.Riemann.DirichletModThreeQuadraticConstruction

private theorem exp_nonpos_sub_le {a b : ℝ} (ha : a ≤ 0) (hb : b ≤ 0) :
    |Real.exp a - Real.exp b| ≤ |a - b| := by
  suffices h : ∀ a b : ℝ, a ≤ b → b ≤ 0 → Real.exp b - Real.exp a ≤ b - a by
    rcases le_total a b with hab | hba
    · rw [abs_of_nonpos (sub_nonpos.mpr (Real.exp_le_exp.mpr hab)),
        abs_of_nonpos (sub_nonpos.mpr hab)]
      linarith [h a b hab hb]
    · rw [abs_of_nonneg (sub_nonneg.mpr (Real.exp_le_exp.mpr hba)),
        abs_of_nonneg (sub_nonneg.mpr hba)]
      exact h b a hba ha
  intro a b hab hb
  have hstep : 1 - Real.exp (a - b) ≤ b - a := by
    linarith [Real.add_one_le_exp (a - b)]
  have hnn : 0 ≤ 1 - Real.exp (a - b) :=
    sub_nonneg.mpr (Real.exp_le_one_iff.mpr (sub_nonpos.mpr hab))
  calc
    Real.exp b - Real.exp a = Real.exp b * (1 - Real.exp (a - b)) := by
      rw [mul_sub, mul_one, ← Real.exp_add, show b + (a - b) = a by ring]
    _ ≤ 1 * (1 - Real.exp (a - b)) :=
      mul_le_mul_of_nonneg_right (Real.exp_le_one_iff.mpr hb) hnn
    _ ≤ b - a := by simpa only [one_mul] using hstep

private theorem abs_hinge_sub_le (r s t : ℝ) :
    |max (|s| - r) 0 - max (|t| - r) 0| ≤ |s - t| := by
  calc
    _ ≤ |(|s| - r) - (|t| - r)| := abs_max_sub_max_le_abs _ _ _
    _ = abs (|s| - |t|) := by congr 1; ring
    _ ≤ |s - t| := abs_abs_sub_abs_le _ _

private theorem abs_gamma_summand_sub_le {a : ℝ} (ha : 0 < a) (s t : ℝ) :
    |(1 - Real.exp (-a * |s|)) / a ^ 2 -
      (1 - Real.exp (-a * |t|)) / a ^ 2| ≤ a⁻¹ * |s - t| := by
  have he := exp_nonpos_sub_le
    (a := -a * |s|) (b := -a * |t|)
    (mul_nonpos_of_nonpos_of_nonneg (neg_nonpos.mpr ha.le) (abs_nonneg _))
    (mul_nonpos_of_nonpos_of_nonneg (neg_nonpos.mpr ha.le) (abs_nonneg _))
  have hb : |Real.exp (-a * |s|) - Real.exp (-a * |t|)| ≤ a * |s - t| := by
    calc
      _ ≤ abs (-a * |s| - -a * |t|) := he
      _ = a * abs (|s| - |t|) := by
        rw [← mul_sub, abs_mul, abs_neg, abs_of_pos ha]
      _ ≤ a * |s - t| := mul_le_mul_of_nonneg_left (abs_abs_sub_abs_le _ _) ha.le
  calc
    _ = |Real.exp (-a * |s|) - Real.exp (-a * |t|)| / a ^ 2 := by
      rw [← sub_div, abs_div, abs_of_nonneg (sq_nonneg a)]
      congr 1
      rw [show 1 - Real.exp (-a * |s|) - (1 - Real.exp (-a * |t|)) =
        -(Real.exp (-a * |s|) - Real.exp (-a * |t|)) by ring, abs_neg]
    _ ≤ (a * |s - t|) / a ^ 2 := div_le_div_of_nonneg_right hb (sq_nonneg a)
    _ = a⁻¹ * |s - t| := by field_simp

/-- Absolute coefficient mass is used only to pay approximation error. The
source kernel itself still retains every signed arithmetic coefficient. -/
def primeLipschitzConstant : ℝ :=
  ∑ n ∈ activePrimePowers 4,
    |primeWeight n * (conj (modThreeQuadratic n)).re|

/-- The finite-gamma source has a finite, explicit global Lipschitz price. -/
def partialLipschitzConstant (M : ℕ) : ℝ :=
  |gammaConstant 3 1| / 2 +
    (∑ m ∈ Finset.range M, (gammaRate m)⁻¹) + primeLipschitzConstant

theorem primeLipschitzConstant_nonneg : 0 ≤ primeLipschitzConstant := by
  exact Finset.sum_nonneg (fun _ _ => abs_nonneg _)

theorem partialLipschitzConstant_nonneg (M : ℕ) : 0 ≤ partialLipschitzConstant M := by
  unfold partialLipschitzConstant
  exact add_nonneg (add_nonneg (by positivity)
    (Finset.sum_nonneg (fun m _ => inv_nonneg.mpr (gammaRate_pos m).le)))
      primeLipschitzConstant_nonneg

/-- Literal cancellation of the original factor two against the hinge half.
No sign, character sector, or prime-power cutoff is replaced. -/
theorem primeHinges_eq_sum (t : ℝ) :
    primeHinges t = ∑ n ∈ activePrimePowers 4,
      (primeWeight n * (conj (modThreeQuadratic n)).re) *
        max (|t| - Real.log (n : ℝ)) 0 := by
  simp only [primeHinges, twistedPrime, Complex.mul_re,
    Complex.ofReal_re, Complex.ofReal_im, mul_zero, sub_zero, Finset.mul_sum]
  apply Finset.sum_congr rfl
  intro n _
  ring

@[simp]
theorem primeHinges_neg (t : ℝ) : primeHinges (-t) = primeHinges t := by
  simp only [primeHinges, abs_neg]

@[simp]
theorem primeHinges_zero : primeHinges 0 = 0 := by
  rw [primeHinges_eq_sum]
  apply Finset.sum_eq_zero
  intro n hn
  have hn2 : 2 ≤ n := (Finset.mem_filter.mp hn).2.1
  have hn1 : (1 : ℝ) ≤ n := by exact_mod_cast (show 1 ≤ n by omega)
  have hlog : 0 ≤ Real.log (n : ℝ) := Real.log_nonneg hn1
  simp [max_eq_right (neg_nonpos.mpr hlog)]

@[simp]
theorem partialSourceKernel_zero (M : ℕ) : partialSourceKernel M 0 = 0 := by
  simp [partialSourceKernel]

@[simp]
theorem partialSourceKernel_neg (M : ℕ) (t : ℝ) :
    partialSourceKernel M (-t) = partialSourceKernel M t := by
  simp only [partialSourceKernel, abs_neg, primeHinges_neg]

/-- Global error for the actual signed finite prime-hinge sum. -/
theorem abs_primeHinges_sub_le (s t : ℝ) :
    |primeHinges s - primeHinges t| ≤ primeLipschitzConstant * |s - t| := by
  rw [primeHinges_eq_sum s, primeHinges_eq_sum t, ← Finset.sum_sub_distrib]
  calc
    _ ≤ ∑ n ∈ activePrimePowers 4,
        |(primeWeight n * (conj (modThreeQuadratic n)).re) *
            max (|s| - Real.log (n : ℝ)) 0 -
          (primeWeight n * (conj (modThreeQuadratic n)).re) *
            max (|t| - Real.log (n : ℝ)) 0| := Finset.abs_sum_le_sum_abs _ _
    _ ≤ ∑ n ∈ activePrimePowers 4,
        |primeWeight n * (conj (modThreeQuadratic n)).re| * |s - t| := by
      apply Finset.sum_le_sum
      intro n _
      rw [← mul_sub, abs_mul]
      exact mul_le_mul_of_nonneg_left (abs_hinge_sub_le _ s t) (abs_nonneg _)
    _ = primeLipschitzConstant * |s - t| := by
      rw [primeLipschitzConstant, Finset.sum_mul]

/-- Global Lipschitz estimate for the actual finite-gamma kernel. It includes
the exact gamma constant, all retained gamma terms and all signed prime hinges. -/
theorem abs_partialSourceKernel_sub_le (M : ℕ) (s t : ℝ) :
    |partialSourceKernel M s - partialSourceKernel M t| ≤
      partialLipschitzConstant M * |s - t| := by
  have hc : |(-gammaConstant 3 1 * |s| / 2) -
      (-gammaConstant 3 1 * |t| / 2)| ≤ |gammaConstant 3 1| / 2 * |s - t| := by
    calc
      _ = (|gammaConstant 3 1| / 2) * abs (|s| - |t|) := by
        rw [← sub_div, ← mul_sub, abs_div, abs_mul, abs_neg]
        norm_num
        ring
      _ ≤ _ := mul_le_mul_of_nonneg_left (abs_abs_sub_abs_le _ _) (by positivity)
  have hs : |(∑ m ∈ Finset.range M,
        (1 - Real.exp (-gammaRate m * |s|)) / gammaRate m ^ 2) -
      (∑ m ∈ Finset.range M,
        (1 - Real.exp (-gammaRate m * |t|)) / gammaRate m ^ 2)| ≤
      (∑ m ∈ Finset.range M, (gammaRate m)⁻¹) * |s - t| := by
    rw [← Finset.sum_sub_distrib]
    calc
      _ ≤ ∑ m ∈ Finset.range M,
          |(1 - Real.exp (-gammaRate m * |s|)) / gammaRate m ^ 2 -
            (1 - Real.exp (-gammaRate m * |t|)) / gammaRate m ^ 2| :=
        Finset.abs_sum_le_sum_abs _ _
      _ ≤ ∑ m ∈ Finset.range M, (gammaRate m)⁻¹ * |s - t| :=
        Finset.sum_le_sum (fun m _ => abs_gamma_summand_sub_le (gammaRate_pos m) s t)
      _ = _ := (Finset.sum_mul ..).symm
  have hp := abs_primeHinges_sub_le s t
  have htri := abs_add_le
    ((-gammaConstant 3 1 * |s| / 2 - -gammaConstant 3 1 * |t| / 2) -
      ((∑ m ∈ Finset.range M, (1 - Real.exp (-gammaRate m * |s|)) / gammaRate m ^ 2) -
       (∑ m ∈ Finset.range M, (1 - Real.exp (-gammaRate m * |t|)) / gammaRate m ^ 2)))
    (primeHinges s - primeHinges t)
  have htri2 := abs_add_le
    (-gammaConstant 3 1 * |s| / 2 - -gammaConstant 3 1 * |t| / 2)
    (-((∑ m ∈ Finset.range M, (1 - Real.exp (-gammaRate m * |s|)) / gammaRate m ^ 2) -
      (∑ m ∈ Finset.range M, (1 - Real.exp (-gammaRate m * |t|)) / gammaRate m ^ 2)))
  simp only [← sub_eq_add_neg, abs_neg] at htri2
  have heq : partialSourceKernel M s - partialSourceKernel M t =
      ((-gammaConstant 3 1 * |s| / 2 - -gammaConstant 3 1 * |t| / 2) -
        ((∑ m ∈ Finset.range M, (1 - Real.exp (-gammaRate m * |s|)) / gammaRate m ^ 2) -
         (∑ m ∈ Finset.range M, (1 - Real.exp (-gammaRate m * |t|)) / gammaRate m ^ 2))) +
      (primeHinges s - primeHinges t) := by
    unfold partialSourceKernel
    ring
  rw [heq]
  unfold partialLipschitzConstant
  nlinarith

/-- Bundled Lipschitz regularity supplies continuity and measurability. -/
theorem partialSourceKernel_lipschitz (M : ℕ) :
    LipschitzWith ⟨partialLipschitzConstant M, partialLipschitzConstant_nonneg M⟩
      (partialSourceKernel M) := by
  apply LipschitzWith.of_dist_le_mul
  intro s t
  change |partialSourceKernel M s - partialSourceKernel M t| ≤
    partialLipschitzConstant M * |s - t|
  exact abs_partialSourceKernel_sub_le M s t

/-- The convolution kernel is Lipschitz in both input coordinates. -/
theorem partialSourceKernel_two_coordinate_error (M : ℕ) (x y x' y' : ℝ) :
    |partialSourceKernel M (x - y) - partialSourceKernel M (x' - y')| ≤
      partialLipschitzConstant M * (|x - x'| + |y - y'|) := by
  have h := abs_partialSourceKernel_sub_le M (x - y) (x' - y')
  have hd : |(x - y) - (x' - y')| ≤ |x - x'| + |y - y'| := by
    rw [show (x - y) - (x' - y') = (x - x') - (y - y') by ring]
    simpa only [← sub_eq_add_neg, abs_neg] using abs_add_le (x - x') (-(y - y'))
  exact h.trans (mul_le_mul_of_nonneg_left hd (partialLipschitzConstant_nonneg M))

/-- The N+1 exact midpoint representatives in the radius-four source window. -/
def gridPoint (N : ℕ) (i : Fin (N + 1)) : ℝ :=
  -4 + 8 * (((i.val : ℝ) + 1 / 2) / (N + 1 : ℕ))

/-- A total finite cell assignment, clamped at the right endpoint. -/
def gridCell (N : ℕ) (x : ℝ) : Fin (N + 1) :=
  ⟨min ⌊((x + 4) / 8) * (N + 1 : ℕ)⌋₊ N, by omega⟩

/-- All concrete cells are measurable, so their full integral moments exist
for every L1 test. -/
theorem gridCell_measurable (N : ℕ) : Measurable (gridCell N) := by
  let clamp : ℕ → Fin (N + 1) := fun k => ⟨min k N, by omega⟩
  have hc : Measurable clamp := measurable_of_countable _
  exact hc.comp ((show Measurable (fun x : ℝ => ((x + 4) / 8) * (N + 1 : ℕ)) by
    fun_prop).nat_floor)

theorem gridCell_measurableSet (N : ℕ) (i : Fin (N + 1)) :
    MeasurableSet {x : ℝ | gridCell N x = i} :=
  (gridCell_measurable N) (measurableSet_singleton i)

/-- Complete geometric coverage, including both window endpoints. -/
theorem gridCell_error (N : ℕ) {x : ℝ} (hx : x ∈ Icc (-4 : ℝ) 4) :
    |x - gridPoint N (gridCell N x)| ≤ 4 / (N + 1 : ℕ) := by
  let y : ℝ := (x + 4) / 8 * (N + 1 : ℕ)
  have hy : 0 ≤ y := by
    have hx0 : 0 ≤ x + 4 := by linarith [hx.1]
    dsimp [y]
    positivity
  have hyN : y ≤ (N + 1 : ℕ) := by
    dsimp [y]
    have h : (x + 4) / 8 ≤ 1 := by linarith [hx.2]
    simpa using mul_le_mul_of_nonneg_right h (Nat.cast_nonneg (N+1))
  have hc : ((gridCell N x).val : ℝ) ≤ y ∧ y ≤ (gridCell N x).val + 1 := by
    dsimp only [gridCell]
    change ((min ⌊y⌋₊ N : ℕ) : ℝ) ≤ y ∧ y ≤ ((min ⌊y⌋₊ N : ℕ) : ℝ) + 1
    by_cases hn : ⌊y⌋₊ ≤ N
    · rw [min_eq_left hn]
      exact ⟨Nat.floor_le hy, (Nat.lt_floor_add_one y).le⟩
    · rw [min_eq_right (Nat.le_of_lt (Nat.lt_of_not_ge hn))]
      constructor
      · have h : (N : ℝ) ≤ (⌊y⌋₊ : ℝ) := by exact_mod_cast (Nat.le_of_lt (Nat.lt_of_not_ge hn))
        exact h.trans (Nat.floor_le hy)
      · simpa using hyN
  have hN : (0 : ℝ) < (N + 1 : ℕ) := by positivity
  have heq : x - gridPoint N (gridCell N x) =
      ((8 : ℝ) / (N + 1 : ℕ)) * (y - ((gridCell N x).val + 1 / 2)) := by
    dsimp only [gridPoint, y]
    field_simp
    ring
  rw [heq, abs_mul, abs_of_pos (div_pos (by norm_num) hN)]
  have hb : |y - ((gridCell N x).val + 1 / 2)| ≤ (1 / 2 : ℝ) := by
    rw [abs_le]
    constructor <;> linarith [hc.1, hc.2]
  calc
    _ ≤ ((8 : ℝ) / (N + 1 : ℕ)) * (1 / 2) :=
      mul_le_mul_of_nonneg_left hb (by positivity)
    _ = (4 : ℝ) / (N + 1 : ℕ) := by ring


/-- The exact source values at the representative differences. These entries
still require certified arithmetic enclosures for an executable rational checker. -/
def sampleMatrix (M N : ℕ) : Matrix (Fin (N + 1)) (Fin (N + 1)) ℝ :=
  fun i j => partialSourceKernel M (gridPoint N i - gridPoint N j)

@[simp]
theorem sampleMatrix_diagonal (M N : ℕ) (i : Fin (N + 1)) :
    sampleMatrix M N i i = 0 := by
  simp [sampleMatrix]

/-- Evenness of the actual source gives a real symmetric sample matrix. -/
theorem sampleMatrix_symmetric (M N : ℕ) (i j : Fin (N + 1)) :
    sampleMatrix M N i j = sampleMatrix M N j i := by
  unfold sampleMatrix
  rw [show gridPoint N i - gridPoint N j = -(gridPoint N j - gridPoint N i) by ring,
    partialSourceKernel_neg]

/-- The one-cell case is an exact zero matrix; its nonzero approximation
cost is still charged by sampleMatrix_error. -/
theorem sampleMatrix_oneCell (M : ℕ) : sampleMatrix M 0 = 0 := by
  ext i j
  have hi : i = 0 := by apply Fin.ext; omega
  have hj : j = 0 := by apply Fin.ext; omega
  subst i
  subst j
  simp [sampleMatrix]

/-- Uniform whole-square error for the actual sampled matrix kernel. -/
theorem sampleMatrix_error (M N : ℕ) {x y : ℝ}
    (hx : x ∈ Icc (-4 : ℝ) 4) (hy : y ∈ Icc (-4 : ℝ) 4) :
    |partialSourceKernel M (x - y) - sampleMatrix M N (gridCell N x) (gridCell N y)| ≤
      8 * partialLipschitzConstant M / (N + 1 : ℕ) := by
  have h := partialSourceKernel_two_coordinate_error M x y
    (gridPoint N (gridCell N x)) (gridPoint N (gridCell N y))
  have hx' := gridCell_error N hx
  have hy' := gridCell_error N hy
  have hL := partialLipschitzConstant_nonneg M
  dsimp only [sampleMatrix]
  calc
    _ ≤ partialLipschitzConstant M *
        (|x - gridPoint N (gridCell N x)| + |y - gridPoint N (gridCell N y)|) := h
    _ ≤ partialLipschitzConstant M *
        ((4 : ℝ) / (N + 1 : ℕ) + (4 : ℝ) / (N + 1 : ℕ)) := by gcongr
    _ = _ := by ring

/-- Finer concrete grids give uniformly arbitrarily accurate finite-rank
approximations of each fixed finite-gamma kernel on the entire source square. -/
theorem sampleMatrix_uniform_approximation (M : ℕ) {ε : ℝ} (hε : 0 < ε) :
    ∃ N : ℕ, ∀ K : ℕ, N ≤ K → ∀ x ∈ Icc (-4 : ℝ) 4, ∀ y ∈ Icc (-4 : ℝ) 4,
      |partialSourceKernel M (x - y) - sampleMatrix M K (gridCell K x) (gridCell K y)| < ε := by
  obtain ⟨N, hN⟩ := exists_nat_gt (8 * partialLipschitzConstant M / ε)
  refine ⟨N, ?_⟩
  intro K hNK x hx y hy
  apply (sampleMatrix_error M K hx hy).trans_lt
  rw [div_lt_iff₀ (by positivity : (0 : ℝ) < (K + 1 : ℕ))]
  have hN' : 8 * partialLipschitzConstant M < (N : ℝ) * ε :=
    (div_lt_iff₀ hε).mp hN
  have hNK' : (N : ℝ) ≤ K := by exact_mod_cast hNK
  have hstep := mul_le_mul_of_nonneg_right hNK' hε.le
  push_cast
  nlinarith

end GRWTSK.NumberTheory.WeilQuadraticForm.ConductorThreeRadiusFourScrewGreen
