/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddRationalTrapezoid
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddBoundaryObservation
import GRWTSK.LinearAndMultilinearAlgebraMatrixTheory.BasicLinearAlgebra.RationalRealBounds

/-!
# Tight literal radius-two boundary truncation for low modes

Keep the literal exponential factors in the finite partial sum. Replace
the rational portion of the omitted series by its arctangent integral
plus half the first omitted summand. The previously checked trapezoid
tail pays a cubic radius. A separate geometric estimate pays the
omitted exponential correction. At cutoff 1024 the scaled analytic
radius on modes 1 through 1023 is below 1.2e-7.

Local attribution is to grwtsk contributors.
Independent mathematical review and novelty assessment are pending.
-/

set_option autoImplicit false
noncomputable section

open MeasureTheory Set

namespace GRWTSK.NumberTheory.WeilQuadraticForm.RadiusTwoBoundaryLowBounds

open OddBoundaryObservation OddBoundarySignalBounds
open OddOutputTrace (frequency)
open OddRationalTrapezoid (kernel halfLine_error_le_invCube integral_kernel)

private theorem expNegEight_le : Real.exp (-8) ≤ (1 / 9 : ℝ) := by
  rw [Real.exp_neg, ← one_div]
  apply one_div_le_one_div_of_le (by norm_num)
  linarith only [Real.add_one_le_exp (8 : ℝ)]

private theorem expWeight_two (j : ℕ) :
    Real.exp (-2 * (2 * (j : ℝ) + 1 / 2) * 2) =
      Real.exp (-2) * Real.exp (-8)^j := by
  rw [← Real.exp_nat_mul, ← Real.exp_add]
  congr 1
  ring

private theorem term_factor (n j : ℕ) :
    boundarySignalTerm 2 n j =
      (1 - Real.exp (-2) * Real.exp (-8)^j) * kernel (frequency 2 n) j := by
  change (1 - Real.exp (-2 * (2 * (j : ℝ) + 1 / 2) * 2)) /
      ((2 * (j : ℝ) + 1 / 2)^2 + frequency 2 n^2) = _
  rw [expWeight_two, div_eq_mul_inv]
  rfl

private theorem expTail_bound (w : ℝ) {K : ℕ} (hK : 16 ≤ K) :
    let e := fun j : ℕ => (Real.exp (-2) * Real.exp (-8)^(j+K)) *
      kernel w ((j+K : ℕ) : ℝ)
    Summable e ∧ 0 ≤ ∑' j, e j ∧ (∑' j, e j) ≤ 1 / (10:ℝ)^15 := by
  dsimp only
  let e := fun j : ℕ => (Real.exp (-2) * Real.exp (-8)^(j+K)) *
    kernel w ((j+K : ℕ) : ℝ)
  let major := fun j : ℕ => (1/9 : ℝ)^16 * (1/9 : ℝ)^j
  have hg := (summable_geometric_of_lt_one (by norm_num : (0:ℝ) ≤ 1/9)
    (by norm_num : (1:ℝ)/9 < 1)).mul_left ((1/9 : ℝ)^16)
  change Summable major at hg
  have hNonneg (j : ℕ) : 0 ≤ e j := by unfold e kernel; positivity
  have hPoint (j : ℕ) : e j ≤ major j := by
    have hk : (16:ℝ) ≤ ((j+K : ℕ) : ℝ) := by
      exact_mod_cast (show 16 ≤ j+K by omega)
    have hRate : (1:ℝ) ≤ 2 * ((j+K : ℕ) : ℝ) + 1/2 := by linarith
    have hDen : (1:ℝ) ≤ (2 * ((j+K : ℕ) : ℝ) + 1/2)^2 + w^2 := by
      exact (by simpa only [one_pow] using
        pow_le_pow_left₀ (by norm_num : (0:ℝ) ≤ 1) hRate 2 : (1:ℝ) ≤ _).trans
        (le_add_of_nonneg_right (sq_nonneg w))
    have hKer : kernel w ((j+K : ℕ) : ℝ) ≤ 1 := by
      unfold kernel
      exact inv_le_one_of_one_le₀ hDen
    have he : Real.exp (-2) ≤ 1 := Real.exp_le_one_iff.mpr (by norm_num)
    have hp : Real.exp (-8)^(j+K) ≤ (1/9:ℝ)^(j+K) :=
      pow_le_pow_left₀ (Real.exp_nonneg _) expNegEight_le _
    have hKpow : (1/9:ℝ)^K ≤ (1/9:ℝ)^16 :=
      pow_le_pow_of_le_one (by norm_num) (by norm_num) hK
    unfold e major
    calc
      _ ≤ Real.exp (-2) * Real.exp (-8)^(j+K) :=
        mul_le_of_le_one_right (by positivity) hKer
      _ ≤ (1/9:ℝ)^(j+K) := by
        have h := mul_le_mul he hp (by positivity) (by norm_num : (0:ℝ) ≤ 1)
        simpa only [one_mul] using h
      _ ≤ _ := by
        rw [pow_add, mul_comm ((1/9:ℝ)^j)]
        exact mul_le_mul_of_nonneg_right hKpow (by positivity)
  have hs := Summable.of_nonneg_of_le hNonneg hPoint hg
  refine ⟨hs, tsum_nonneg hNonneg, (hs.tsum_le_tsum hPoint hg).trans ?_⟩
  unfold major
  rw [tsum_mul_left, tsum_geometric_of_lt_one (by norm_num) (by norm_num)]
  norm_num

private theorem exact_tailIntegral {w : ℝ} (hw : 0 < w) (K : ℕ) :
    (∫ x in Ioi (K:ℝ), kernel w x) =
      Real.arctan (w/(2*(K:ℝ)+1/2))/(2*w) := by
  let a : ℝ := 2*(K:ℝ)+1/2
  have ha : 0 < a := by unfold a; positivity
  have hArg : 0 < a/w := div_pos ha hw
  have hAtan := Real.arctan_inv_of_pos hArg
  have hinv : (a/w)⁻¹ = w/a := inv_div _ _
  rw [hinv] at hAtan
  rw [integral_kernel hw (Nat.cast_nonneg K)]
  change Real.pi/(4*w) - Real.arctan (a/w)/(2*w) = Real.arctan (w/a)/(2*w)
  rw [hAtan]
  field_simp [hw.ne']
  ring

/-- Truncation center retaining exactly the first K literal boundary terms. -/
def lowApprox (n K : ℕ) : ℝ :=
  let w := frequency 2 n
  boundarySignalPartial 2 n K + Real.arctan (w/(2*(K:ℝ)+1/2))/(2*w) + kernel w K / 2

/-- The trapezoid radius and negligible exponential tail enclose
the actual complete radius-two boundary scalar. -/
theorem abs_boundarySignal_sub_lowApprox_le {n K : ℕ} (hn : 0 < n) (hK : 16 ≤ K) :
    |boundarySignal 2 n - lowApprox n K| ≤ 1/(8*((K:ℝ)-1)^3) + 1/(10:ℝ)^15 := by
  let w := frequency 2 n
  have hw : 0 < w := by
    unfold w frequency
    positivity
  have hK1 : (1:ℝ) < K := by exact_mod_cast (show 1 < K by omega)
  let f := fun j : ℕ => kernel w ((K:ℝ)+j)
  let e := fun j : ℕ => (Real.exp (-2) * Real.exp (-8)^(j+K)) *
    kernel w ((j+K : ℕ) : ℝ)
  have hExp := expTail_bound w hK
  dsimp only at hExp
  change Summable e ∧ 0 ≤ ∑' j, e j ∧ (∑' j, e j) ≤ 1/(10:ℝ)^15 at hExp
  have hTerm (j : ℕ) : boundarySignalTerm 2 n (j+K) = f j - e j := by
    rw [term_factor]
    change (1 - Real.exp (-2) * Real.exp (-8)^(j+K)) * kernel w ((j+K : ℕ):ℝ) = _
    simp only [f,e,Nat.cast_add,add_comm (j:ℝ)]
    ring
  have hLit := boundarySignal_summable 2 (by norm_num) n
  have hTail := (summable_nat_add_iff (f := boundarySignalTerm 2 n) K).2 hLit
  have hUnweighted : Summable f := by
    apply (hTail.add hExp.1).congr
    intro j
    rw [hTerm]
    ring
  have hSplit : boundarySignal 2 n =
      boundarySignalPartial 2 n K + (∑' j, f j) - ∑' j, e j := by
    calc
      _ = boundarySignalPartial 2 n K + ∑' j : ℕ, boundarySignalTerm 2 n (j+K) :=
        (hLit.sum_add_tsum_nat_add K).symm
      _ = _ := by
        simp_rw [hTerm]
        rw [hUnweighted.tsum_sub hExp.1]
        ring
  have hTr := halfLine_error_le_invCube hw hK1
  rw [exact_tailIntegral hw K] at hTr
  change |(∑' j, f j) -
    (Real.arctan (w/(2*(K:ℝ)+1/2))/(2*w) + kernel w K/2)| ≤ _ at hTr
  rw [hSplit]
  unfold lowApprox
  change |boundarySignalPartial 2 n K + (∑' j, f j) - (∑' j, e j) -
    (boundarySignalPartial 2 n K + Real.arctan (w/(2*(K:ℝ)+1/2))/(2*w)+kernel w K/2)| ≤ _
  rw [show boundarySignalPartial 2 n K + (∑' j, f j) - (∑' j, e j) -
    (boundarySignalPartial 2 n K + Real.arctan (w/(2*(K:ℝ)+1/2))/(2*w)+kernel w K/2) =
    ((∑' j, f j) - (Real.arctan (w/(2*(K:ℝ)+1/2))/(2*w)+kernel w K/2)) -
      (∑' j, e j) by ring]
  refine (abs_sub_le _ 0 _).trans ?_
  simp only [sub_zero,zero_sub,abs_neg,abs_of_nonneg hExp.2.1]
  exact add_le_add hTr hExp.2.2

/-- At cutoff 1024 all low modes need at most this scaled analytic
error before the rational scalar observation. -/
theorem abs_scaled_boundarySignal_sub_lowApprox_le {n : ℕ} (hn : 0 < n) (hn' : n ≤ 1023) :
    |(n : ℝ) * boundarySignal 2 n - (n : ℝ) * lowApprox n 1024| ≤ 12/100000000 := by
  have h := abs_boundarySignal_sub_lowApprox_le hn (K := 1024) (by decide)
  have hnR : (n:ℝ) ≤ 1023 := by exact_mod_cast hn'
  rw [← mul_sub, abs_mul, abs_of_nonneg (Nat.cast_nonneg n)]
  refine (mul_le_mul_of_nonneg_left h (Nat.cast_nonneg n)).trans ?_
  norm_num only [Nat.cast_ofNat] at *
  exact (mul_le_mul_of_nonneg_right hnR (by positivity)).trans (by norm_num)

/-- The scaled arctangent tail divides by pi, with the physical mode
number exactly canceled. -/
theorem scaled_lowApprox_eq {n K : ℕ} (hn : 0 < n) :
    (n : ℝ) * lowApprox n K =
      (n : ℝ) * boundarySignalPartial 2 n K +
        Real.arctan (frequency 2 n/(2*(K:ℝ)+1/2))/Real.pi +
        ((n:ℝ)/2) * kernel (frequency 2 n) K := by
  have hnR : (0:ℝ) < n := by exact_mod_cast hn
  unfold lowApprox
  dsimp only
  let t := Real.arctan (frequency 2 n/(2*(K:ℝ)+1/2))
  change (n:ℝ) * (boundarySignalPartial 2 n K + t/(2*frequency 2 n) +
    kernel (frequency 2 n) K/2) = _
  have hFreq : 2*frequency 2 n = Real.pi*(n:ℝ) := by unfold frequency; ring
  rw [hFreq]
  change (n:ℝ) * (boundarySignalPartial 2 n K + t/(Real.pi*(n:ℝ)) +
    kernel (frequency 2 n) K/2) = (n:ℝ) * boundarySignalPartial 2 n K + t/Real.pi +
    ((n:ℝ)/2)*kernel (frequency 2 n) K
  field_simp [Real.pi_ne_zero, hnR.ne']

/-- The low-frequency tail uses an arctangent argument in the unit interval. -/
theorem lowRatio_mem_Icc {n : ℕ} (hn : n ≤ 1023) :
    frequency 2 n / (4097/2 : ℝ) ∈ Icc (0:ℝ) 1 := by
  have hnR : (n:ℝ) ≤ 1023 := by exact_mod_cast hn
  constructor
  · unfold frequency
    positivity
  · unfold frequency
    apply (div_le_one (by norm_num)).2
    have h := mul_le_mul Real.pi_lt_d4.le hnR (Nat.cast_nonneg _) (by norm_num : (0:ℝ) ≤ 3.1416)
    linarith

/-- A single addition at one half folds the entire unit interval to
arguments of absolute value at most one half. -/
theorem arctan_folded_unit {x : ℝ} (hx : 0 ≤ x) (hx' : x ≤ 1) :
    let y := (x-1/2)/(1+x/2)
    |y| ≤ 1/2 ∧ Real.arctan x = Real.arctan (1/2) + Real.arctan y := by
  dsimp only
  let y := (x-1/2)/(1+x/2)
  have hD : 0 < 1+x/2 := by positivity
  have hy : |y| ≤ 1/2 := by
    unfold y
    rw [abs_le]
    exact ⟨(le_div_iff₀ hD).2 (by linarith), (div_le_iff₀ hD).2 (by linarith)⟩
  refine ⟨hy, ?_⟩
  have harg : (y+1/2)/(1-y*(1/2)) = x := by
    apply (div_eq_iff (by linarith [(abs_le.mp hy).2] : 1-y*(1/2) ≠ 0)).2
    unfold y
    field_simp [hD.ne']
    ring
  have hA := Real.arctan_add (x := y) (y := 1/2) (by linarith [(abs_le.mp hy).2])
  rw [harg] at hA
  linarith only [hA]

open GRWTSK.Algebra.LinearAlgebra.RationalRealBounds

/-- Combine the exact retained sum observation with the two scaled tail
observations and the analytic error at cutoff 1024. -/
def scaledLowBoundsFrom (n : ℕ) (retained atan halfKernel : Bounds) : Bounds :=
  add (add (scale (n:ℚ) retained) (add atan halfKernel))
    (-12/100000000, 12/100000000)

/-- Exact source soundness of the low-mode observation from component bounds. -/
theorem scaledLowBoundsFrom_sound {n : ℕ} (hn : 0 < n) (hn' : n ≤ 1023)
    {retained atan halfKernel : Bounds}
    (hp : Encloses retained (boundarySignalPartial 2 n 1024))
    (ha : Encloses atan (Real.arctan (frequency 2 n/(4097/2 : ℝ))/Real.pi))
    (hk : Encloses halfKernel (((n:ℝ)/2)*kernel (frequency 2 n) 1024)) :
    Encloses (scaledLowBoundsFrom n retained atan halfKernel) ((n:ℝ)*boundarySignal 2 n) := by
  have hObs := add_sound (scale_sound (n:ℚ) hp) (add_sound ha hk)
  have hC := scaled_lowApprox_eq (K := 1024) hn
  norm_num only [Nat.cast_ofNat] at hC
  have hCenter : Encloses (add (scale (n:ℚ) retained) (add atan halfKernel))
      ((n:ℝ)*lowApprox n 1024) := by
    rw [hC]
    simpa only [Rat.cast_natCast,add_assoc] using hObs
  have hErr := abs_le.mp (abs_scaled_boundarySignal_sub_lowApprox_le hn hn')
  have hE : Encloses (-12/100000000,12/100000000)
      ((n:ℝ)*boundarySignal 2 n-(n:ℝ)*lowApprox n 1024) := by
    simpa only [Encloses, Rat.cast_div,Rat.cast_neg,Rat.cast_ofNat,neg_div] using hErr
  unfold scaledLowBoundsFrom
  convert add_sound hCenter hE using 1
  ring

end GRWTSK.NumberTheory.WeilQuadraticForm.RadiusTwoBoundaryLowBounds
