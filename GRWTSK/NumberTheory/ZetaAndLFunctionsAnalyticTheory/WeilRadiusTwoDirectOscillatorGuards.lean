/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilRadiusTwoDirectOscillator
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilRadiusTwoPackedOperandChunks

/-!
# Packed magnitude guards for radius-two oscillator tapes

The direct oscillator checker consumes biased base-`2^165` integer
digits. A mask selects every bit at or above a declared cutoff within
each covered digit. A zero intersection makes every digit strictly
smaller than `2^cutoff`. This stronger check supplies the existing
inclusive magnitude traversal, preserving its exact residual and
weighted-sum equalities and all analytic source hypotheses.

The mask is computed by repeated squaring and the finite geometric
identity. This is the same positional representation as the existing
checker, not an independent oscillator error estimate. Concrete tape
guards and complete source coverage must be checked separately.
Independent mathematical review and novelty assessment are pending.
-/

set_option autoImplicit false

namespace GRWTSK.NumberTheory.WeilQuadraticForm.RadiusTwoDirectOscillatorGuards

open GRWTSK.Algebra.LinearAlgebra
open FiniteSignDyadicLDL PackedCovarianceConvolution
open PackedOscillatorTransitions RadiusTwoDirectOscillator

def upperDigit (keep : ℕ) : ℕ := (2^165-1) ^^^ (2^keep-1)

/-- Repeated high-bit mask, evaluated by multiplication and exact division. -/
def upperMask (n keep : ℕ) : ℕ :=
  upperDigit keep * ((binaryPowerOfTwo 30 (165*n)-1)/(packBase-1))

theorem upperMask_eq (n keep : ℕ) (hSize : 165*n < 2^30) :
    upperMask n keep = pack packBase n (fun _ => upperDigit keep) := by
  unfold upperMask pack
  rw [← Finset.mul_sum, Nat.geomSum_eq (by norm_num [packBase] : 2 ≤ packBase) n]
  unfold packBase
  rw [← Nat.pow_mul, binaryPowerOfTwo_eq 30 (165*n) hSize]

private theorem upperDigit_lt {keep : ℕ} (hk : keep ≤ 165) :
    upperDigit keep < packBase := by
  unfold upperDigit packBase
  have hp : (2:ℕ)^keep ≤ 2^165 := Nat.pow_le_pow_right (by decide) hk
  have hpos := Nat.two_pow_pos keep
  exact Nat.xor_lt_two_pow (by omega) (by omega)

private theorem laneBit (raw q r : ℕ) (hr : r < 165) :
    (raw/packBase^q%packBase).testBit r = raw.testBit (165*q+r) := by
  unfold packBase
  rw [← Nat.pow_mul, Nat.testBit_mod_two_pow, Nat.testBit_div_two_pow]
  simp [hr, Nat.add_comm]

private theorem maskBit {n keep q r : ℕ} (hk : keep ≤ 165)
    (hSize : 165*n < 2^30) (hq : q < n) (hr₀ : keep ≤ r) (hr₁ : r < 165) :
    (upperMask n keep).testBit (165*q+r) = true := by
  rw [← laneBit _ q r hr₁, upperMask_eq n keep hSize,
    read_pack packBase n (fun _ => upperDigit keep) (by norm_num [packBase])
      (fun _ _ => upperDigit_lt hk) hq]
  rw [upperDigit, Nat.testBit_xor, Nat.testBit_two_pow_sub_one,
    Nat.testBit_two_pow_sub_one]
  simp [hr₁, show ¬r < keep by omega]

/-- One packed guard controls every covered digit, with no omitted end row. -/
theorem digit_lt_of_guard {n keep raw : ℕ} (hk : keep ≤ 165)
    (hSize : 165*n < 2^30) (hGuard : raw &&& upperMask n keep = 0)
    {q : ℕ} (hq : q < n) : raw/packBase^q%packBase < 2^keep := by
  apply Nat.lt_pow_two_of_testBit
  intro r hr
  by_cases hTop : r < 165
  · have h := congrArg (fun a : ℕ => a.testBit (165*q+r)) hGuard
    simp only [Nat.testBit_and, maskBit hk hSize hq hr hTop, Bool.and_true,
      Nat.zero_testBit] at h
    exact (laneBit raw q r hTop).trans h
  · apply Nat.testBit_lt_two_pow
    exact (Nat.mod_lt _ (by norm_num [packBase] : 0 < packBase)).trans_le
      (by unfold packBase; exact Nat.pow_le_pow_right (by decide) (by omega))

private theorem limits_of_digits {n raw limit : ℕ}
    (h : ∀ i < n, rawLaneDigit packBase raw i ≤ (limit:ℤ)) :
    limits limit n raw = true := by
  induction n generalizing raw with
  | zero => rfl
  | succ n ih =>
    rw [limits, Bool.and_eq_true_iff]
    constructor
    · apply decide_eq_true
      have h₀ := h 0 (by omega)
      simp only [rawLaneDigit, pow_zero, Nat.div_one] at h₀
      exact Int.ofNat_le.mp h₀
    · apply ih
      intro i hi
      have h₁ := h (i+1) (by omega)
      simpa only [rawLaneDigit, pow_succ', Nat.div_div_eq_div_mul] using h₁

/-- The strict bit guard supplies the original inclusive digit traversal. -/
theorem limits_of_guard {n keep raw : ℕ} (hk : keep ≤ 165)
    (hSize : 165*n < 2^30) (hGuard : raw &&& upperMask n keep = 0) :
    limits (2^keep) n raw = true := by
  apply limits_of_digits
  intro i hi
  unfold rawLaneDigit
  exact Int.ofNat_le.mpr (digit_lt_of_guard hk hSize hGuard hi).le

/-- The original oscillator check with packed magnitude guards. -/
def Check (n : ℕ) (c s : ℤ) (a : Lane) : Prop :=
  (|c| ≤ 2*RadiusTwoOscillatorAnalytic.scale80 ∧
    |s| ≤ 2*RadiusTwoOscillatorAnalytic.scale80) ∧
  (a.x &&& upperMask (n+1) 82 = 0 ∧ a.y &&& upperMask (n+1) 82 = 0 ∧
    a.re &&& upperMask n 81 = 0 ∧ a.im &&& upperMask n 81 = 0) ∧
  (packed n a.re residualBias =
    RadiusTwoOscillatorAnalytic.scale80*packed n (a.x/packBase) stateBias +
      (-c)*packed n a.x stateBias+s*packed n a.y stateBias) ∧
  (packed n a.im residualBias =
    RadiusTwoOscillatorAnalytic.scale80*packed n (a.y/packBase) stateBias +
      (-s)*packed n a.x stateBias+(-c)*packed n a.y stateBias)

instance (n : ℕ) (c s : ℤ) (a : Lane) : Decidable (Check n c s a) := by
  unfold Check
  infer_instance

/-- Return to the exact existing checker; neither transition sign changes. -/
theorem check_of_guard {n : ℕ} {c s : ℤ} {a : Lane}
    (hSize : 165*(n+1) < 2^30) (h : Check n c s a) :
    RadiusTwoDirectOscillator.Check n c s a := by
  have hShort : 165*n < 2^30 := by omega
  refine ⟨h.1, ⟨?_, ?_, ?_, ?_⟩, h.2.2⟩
  · simpa only [stateBias, show 2*(2^81:ℕ) = 2^82 by norm_num] using
      limits_of_guard (by decide : 82 ≤ 165) hSize h.2.1.1
  · simpa only [stateBias, show 2*(2^81:ℕ) = 2^82 by norm_num] using
      limits_of_guard (by decide : 82 ≤ 165) hSize h.2.1.2.1
  · simpa only [residualBias, show 2*(2^80:ℕ) = 2^81 by norm_num] using
      limits_of_guard (by decide : 81 ≤ 165) hShort h.2.1.2.2.1
  · simpa only [residualBias, show 2*(2^80:ℕ) = 2^81 by norm_num] using
      limits_of_guard (by decide : 81 ≤ 165) hShort h.2.1.2.2.2

def WeightedCheck (n : ℕ) (w : Fin 53 → ℤ) (raw : Fin 53 → ℕ) (out : ℕ) : Prop :=
  out &&& upperMask n 151 = 0 ∧
  packed n out weightedBias =
    (List.ofFn fun q => w q * packed n (raw q) stateBias).sum

instance (n : ℕ) (w : Fin 53 → ℤ) (raw : Fin 53 → ℕ) (out : ℕ) :
    Decidable (WeightedCheck n w raw out) := by
  unfold WeightedCheck
  infer_instance

/-- The same packed weighted equality with one sufficient packed magnitude check. -/
theorem weightedCheck_of_guard {n out : ℕ} {w : Fin 53 → ℤ} {raw : Fin 53 → ℕ}
    (hSize : 165*n < 2^30) (h : WeightedCheck n w raw out) :
    RadiusTwoDirectOscillator.WeightedCheck n w raw out := by
  refine ⟨?_, h.2⟩
  simpa only [weightedBias, show 2*(2^150:ℕ) = 2^151 by norm_num] using
    limits_of_guard (by decide : 151 ≤ 165) hSize h.1

end GRWTSK.NumberTheory.WeilQuadraticForm.RadiusTwoDirectOscillatorGuards
