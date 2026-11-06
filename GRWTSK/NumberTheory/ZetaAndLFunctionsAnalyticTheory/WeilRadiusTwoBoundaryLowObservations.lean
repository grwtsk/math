/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilRadiusTwoBoundaryLowBounds
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilRadiusTwoGammaPoleObservations

/-!
# Rational low-mode boundary endpoint provider

Fold a unit arctangent argument around one half. The two small
arguments use sixteen rational Taylor terms with a geometric remainder.
Combine the resulting outward endpoints with the source's retained
integer-grid boundary sum and the checked trapezoid truncation error.
The output grid agrees with the fixed dyadic low-mode comparison.

Local attribution is to grwtsk contributors.
Independent mathematical review and novelty assessment are pending.
-/

set_option autoImplicit false
noncomputable section

namespace GRWTSK.NumberTheory.WeilQuadraticForm.RadiusTwoBoundaryLowObservations

open GRWTSK.Algebra.LinearAlgebra.RationalRealBounds
open RadiusTwoBoundaryLowBounds RadiusTwoGammaPoleObservations
open OddBoundarySignalBounds
open OddOutputTrace (frequency)
open OddRationalTrapezoid (kernel)

/-- Sixteen exact Taylor terms for a small arctangent argument. -/
def atanSmallCenter (x : ℚ) : ℚ :=
  ∑ j ∈ Finset.range 16, (-1 : ℚ)^j*x^(2*j+1)/((2*j+1 : ℕ):ℚ)

private theorem atanSmall_error {x : ℚ} (hx : |x| ≤ 1/2) :
    |Real.arctan (x:ℝ) - (atanSmallCenter x:ℝ)| ≤ 1/(10:ℝ)^9 := by
  have hAbs : |(x:ℝ)| ≤ 1/2 := by
    simpa only [Rat.cast_abs, Rat.cast_div, Rat.cast_one, Rat.cast_ofNat] using
      (Rat.cast_le (K := ℝ)).2 hx
  let f (j : ℕ) := (-1 : ℝ)^j*(x:ℝ)^(2*j+1)/((2*j+1 : ℕ):ℝ)
  have hs : HasSum f (Real.arctan (x:ℝ)) :=
    Real.hasSum_arctan (by rw [Real.norm_eq_abs]; exact hAbs.trans_lt (by norm_num))
  have hTerm (j : ℕ) : ‖f (j+16)‖ ≤ (1/2:ℝ)^33*(1/4:ℝ)^j := by
    simp only [f, Real.norm_eq_abs, abs_div, abs_mul, abs_pow, abs_neg, abs_one, one_pow, one_mul,
      abs_of_nonneg (Nat.cast_nonneg (α := ℝ) _)]
    have hOne : (1:ℝ) ≤ ((2*(j+16)+1 : ℕ):ℝ) := by
      exact_mod_cast (show 1 ≤ 2*(j+16)+1 by omega)
    calc
      _ ≤ |(x:ℝ)|^(2*(j+16)+1) := div_le_self (by positivity) hOne
      _ ≤ (1/2:ℝ)^(2*(j+16)+1) := pow_le_pow_left₀ (abs_nonneg _) hAbs _
      _ = _ := by
        rw [show 2*(j+16)+1 = 33+2*j by omega, pow_add, pow_mul]
        norm_num
  have hg := (summable_geometric_of_lt_one (by norm_num : (0:ℝ) ≤ 1/4)
    (by norm_num : (1:ℝ)/4 < 1)).mul_left ((1/2:ℝ)^33)
  have hTail := Summable.of_nonneg_of_le (fun _ => norm_nonneg _) hTerm hg
  have hErr : |∑' j, f (j+16)| ≤ 1/(10:ℝ)^9 := by
    rw [← Real.norm_eq_abs]
    refine ((norm_tsum_le_tsum_norm hTail).trans (hTail.tsum_le_tsum hTerm hg)).trans ?_
    rw [tsum_mul_left,tsum_geometric_of_lt_one (by norm_num) (by norm_num)]
    norm_num
  have hPartial : (∑ j ∈ Finset.range 16, f j) = (atanSmallCenter x:ℝ) := by
    simp [f,atanSmallCenter]
  have hSplit := hs.summable.sum_add_tsum_nat_add 16
  rw [hs.tsum_eq,hPartial] at hSplit
  rw [← hSplit, add_sub_cancel_left]
  exact hErr

/-- A fixed-degree rational center on the complete unit interval. -/
def atanUnitCenter (x : ℚ) : ℚ :=
  atanSmallCenter (1/2) + atanSmallCenter ((x-1/2)/(1+x/2))

/-- The folded rational center has a uniform arctangent error. -/
theorem atanUnitCenter_error {x : ℚ} (hx : 0 ≤ x) (hx' : x ≤ 1) :
    |Real.arctan (x:ℝ) - (atanUnitCenter x:ℝ)| ≤ 2/(10:ℝ)^9 := by
  have hxR : (0:ℝ) ≤ x := by exact_mod_cast hx
  have hxR' : (x:ℝ) ≤ 1 := by exact_mod_cast hx'
  let y : ℚ := (x-1/2)/(1+x/2)
  have hyR : (y:ℝ) = ((x:ℝ)-1/2)/(1+(x:ℝ)/2) := by
    push_cast [y]
    rfl
  have hFold := arctan_folded_unit hxR hxR'
  dsimp only at hFold
  rw [← hyR] at hFold
  have hy : |y| ≤ 1/2 := by
    have h : |(y:ℝ)| ≤ ((1/2:ℚ):ℝ) := by norm_num at *; exact hFold.1
    exact (Rat.cast_le (K := ℝ)).1 (by simpa only [Rat.cast_abs] using h)
  have hA := atanSmall_error (x := (1/2:ℚ)) (by norm_num)
  norm_num only [Rat.cast_div, Rat.cast_one,Rat.cast_ofNat] at hA
  have hB := atanSmall_error hy
  rw [hFold.2]
  change |Real.arctan (1/2) + Real.arctan (y:ℝ) -
    ((atanSmallCenter (1/2) + atanSmallCenter y : ℚ):ℝ)| ≤ _
  rw [Rat.cast_add, add_sub_add_comm]
  exact (abs_add_le _ _).trans ((add_le_add hA hB).trans_eq (by ring))

/-- Endpoint lifting for rational arctangent arguments on the unit interval. -/
def atanUnitBoundsFrom (lo hi : ℚ) : Bounds :=
  (atanUnitCenter lo - 2/10^9, atanUnitCenter hi + 2/10^9)

/-- Interval soundness for the fixed-degree arctangent evaluator. -/
theorem atanUnitBoundsFrom_sound {lo hi : ℚ} {x : ℝ}
    (hx : Encloses (lo,hi) x) (hlo : 0 ≤ lo) (hhi : hi ≤ 1) :
    Encloses (atanUnitBoundsFrom lo hi) (Real.arctan x) := by
  have hle : lo ≤ hi := (Rat.cast_le (K := ℝ)).1 (hx.1.trans hx.2)
  have hL := abs_le.mp (atanUnitCenter_error hlo (hle.trans hhi))
  have hU := abs_le.mp (atanUnitCenter_error (hlo.trans hle) hhi)
  unfold atanUnitBoundsFrom Encloses
  push_cast
  exact ⟨(by linarith only [hL.1] : _ ≤ Real.arctan (lo:ℝ)).trans
      (Real.arctan_mono hx.1),
    (Real.arctan_mono hx.2).trans (by linarith only [hU.2])⟩

private def piBounds : Bounds :=
  (3.14159265358979323846, 3.14159265358979323847)

private theorem piBounds_sound : Encloses piBounds Real.pi :=
  ⟨Real.pi_gt_d20.le, Real.pi_lt_d20.le⟩

private def ratioLo (n : ℕ) : ℚ := piBounds.1*n/4097
private def ratioHi (n : ℕ) : ℚ := piBounds.2*n/4097

private theorem ratio_sound (n : ℕ) :
    Encloses (ratioLo n,ratioHi n) (frequency 2 n/(4097/2:ℝ)) := by
  have hEq : frequency 2 n/(4097/2:ℝ) = Real.pi*(n:ℝ)/4097 := by unfold frequency; ring
  rw [hEq]
  unfold Encloses ratioLo ratioHi
  push_cast
  exact ⟨div_le_div_of_nonneg_right
    (mul_le_mul_of_nonneg_right piBounds_sound.1 (Nat.cast_nonneg _)) (by norm_num),
    div_le_div_of_nonneg_right
      (mul_le_mul_of_nonneg_right piBounds_sound.2 (Nat.cast_nonneg _)) (by norm_num)⟩

/-- The scaled arctangent component on the fixed 48-bit output grid. -/
def scaledArctanBounds (n : ℕ) : Bounds :=
  round 48 (mul (atanUnitBoundsFrom (ratioLo n) (ratioHi n)) (inv piBounds))

theorem scaledArctanBounds_sound {n : ℕ} (hn : n ≤ 1023) :
    Encloses (scaledArctanBounds n) (Real.arctan (frequency 2 n/(4097/2:ℝ))/Real.pi) := by
  have hlo : 0 ≤ ratioLo n := by unfold ratioLo piBounds; positivity
  have hhi : ratioHi n ≤ 1 := by
    have hnQ : (n:ℚ) ≤ 1023 := by exact_mod_cast hn
    unfold ratioHi piBounds
    apply (div_le_one (by norm_num)).2
    linarith
  have hAtan := atanUnitBoundsFrom_sound (ratio_sound n) hlo hhi
  have hPi := inv_sound piBounds_sound (by norm_num [piBounds])
  simpa only [scaledArctanBounds, div_eq_mul_inv] using round_sound 48 (mul_sound hAtan hPi)

private def freqLo (n : ℕ) : ℚ := piBounds.1*n/2
private def freqHi (n : ℕ) : ℚ := piBounds.2*n/2

private theorem freq_sound (n : ℕ) : Encloses (freqLo n,freqHi n) (frequency 2 n) := by
  unfold Encloses freqLo freqHi frequency
  push_cast
  exact ⟨div_le_div_of_nonneg_right
    (mul_le_mul_of_nonneg_right piBounds_sound.1 (Nat.cast_nonneg _)) (by norm_num),
    div_le_div_of_nonneg_right
      (mul_le_mul_of_nonneg_right piBounds_sound.2 (Nat.cast_nonneg _)) (by norm_num)⟩

/-- The scaled half-summand at the tail start on the fixed 48-bit grid. -/
def scaledHalfKernelBounds (n : ℕ) : Bounds :=
  round 48 (((n:ℚ)/2)/((4097/2)^2+(freqHi n)^2),
    ((n:ℚ)/2)/((4097/2)^2+(freqLo n)^2))

theorem scaledHalfKernelBounds_sound (n : ℕ) :
    Encloses (scaledHalfKernelBounds n) (((n:ℝ)/2)*kernel (frequency 2 n) 1024) := by
  have hlo : 0 ≤ (freqLo n:ℝ) := by unfold freqLo piBounds; push_cast; positivity
  have hw := freq_sound n
  have hwl : 0 ≤ frequency 2 n := hlo.trans hw.1
  apply round_sound
  unfold Encloses kernel
  push_cast
  norm_num only [Nat.cast_ofNat]
  rw [← div_eq_mul_inv]
  exact ⟨div_le_div_of_nonneg_left (by positivity) (by positivity)
      (add_le_add le_rfl (pow_le_pow_left₀ hwl hw.2 2)),
    div_le_div_of_nonneg_left (by positivity) (by positivity)
      (add_le_add le_rfl (pow_le_pow_left₀ hlo hw.1 2))⟩

/-- Complete low-mode boundary interval on the 49-bit center grid. -/
def scaledLowBoundaryBounds (n : ℕ) : Bounds :=
  round 49 (scaledLowBoundsFrom n (boundaryPartialBoundsGrid 48 n 1024)
    (scaledArctanBounds n) (scaledHalfKernelBounds n))

/-- The provider encloses the scaled literal radius-two boundary signal. -/
theorem scaledLowBoundaryBounds_sound {n : ℕ} (hn : 0 < n) (hn' : n ≤ 1023) :
    Encloses (scaledLowBoundaryBounds n) ((n:ℝ)*boundarySignal 2 n) :=
  round_sound 49 (scaledLowBoundsFrom_sound hn hn' (boundaryPartialBoundsGrid_sound 48 n 1024)
    (scaledArctanBounds_sound hn') (scaledHalfKernelBounds_sound n))

end GRWTSK.NumberTheory.WeilQuadraticForm.RadiusTwoBoundaryLowObservations
