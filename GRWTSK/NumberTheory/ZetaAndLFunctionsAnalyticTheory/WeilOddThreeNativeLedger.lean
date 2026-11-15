/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors. Development provenance: AI-assisted.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddSineProjection
import Mathlib.Analysis.Complex.ExponentialBounds
import Mathlib.NumberTheory.ArithmeticFunction.VonMangoldt
import Mathlib.Tactic

/-!
# The signed conductor-three radius-one prime-power ledger

The native cutoff and weights used by the source multiplier. These declarations
use only the arithmetic definitions and the native character parity. Their names
also serve the physical shift-energy arguments in the original import paths.
Source correspondence is tracked at grwtsk/math#1814.
Independent analytical review: NOT_RUN.
-/

set_option autoImplicit false
noncomputable section

namespace GRWTSK.NumberTheory.WeilQuadraticForm

open LowSchur OddRootProjection

namespace GammaShiftCoupling

/-- Native parity-one character modulo three really has value -1 at
the integer two. No other conductor or phase is silently included. -/
theorem odd_character_three_at_two
    (chi : DirichletCharacter ℂ 3)
    (hodd : gammaParity chi = 1) :
    chi (2 : ZMod 3) = -1 := by
  have hnotEven : ¬ chi.Even := by
    intro heven
    have heq : chi (-1) = 1 := heven
    have hp0 : gammaParity chi = 0 := by
      simp [gammaParity, heq]
    omega
  have hchiOdd : chi.Odd := (chi.even_or_odd).resolve_left hnotEven
  have htwo : (2 : ZMod 3) = (-1 : ZMod 3) := by decide
  rw [htwo]
  exact hchiOdd

/-- The actual native weight, including the von Mangoldt prime-two
factor and the character phase, not an invented normalization. -/
theorem odd_character_three_primeTwo_weight
    (chi : DirichletCharacter ℂ 3)
    (hodd : gammaParity chi = 1) :
    pairedPrimeWeight chi 2 = -(Real.log 2 / Real.sqrt 2) := by
  have hchi := odd_character_three_at_two chi hodd
  have hΛ : ArithmeticFunction.vonMangoldt 2 = Real.log 2 :=
    ArithmeticFunction.vonMangoldt_apply_prime Nat.prime_two
  unfold pairedPrimeWeight primeWeight
  simp only [Nat.cast_ofNat]
  rw [hΛ, hchi]
  norm_num

end GammaShiftCoupling

namespace OddThreeFullSignedShift

/-- The native stage-zero exponential cutoff satisfies 7 < exp 2 < 8.
The strict inequalities keep all original integer endpoints. -/
theorem seven_lt_exp_two_lt_eight :
    (7 : ℝ) < Real.exp 2 ∧ Real.exp 2 < (8 : ℝ) := by
  have hlo : (27 / 10 : ℝ) < Real.exp 1 := by
    have h := Real.exp_one_gt_d9
    linarith
  have hhi : Real.exp 1 < (11 / 4 : ℝ) := by
    have h := Real.exp_one_lt_d9
    linarith
  have hsq : Real.exp (2 : ℝ) = (Real.exp 1) ^ 2 := by
    rw [show (2 : ℝ) = 1 + 1 by norm_num, Real.exp_add]
    ring
  constructor
  · rw [hsq]
    have hpos : 0 < (Real.exp 1 - 27 / 10) *
        (Real.exp 1 + 27 / 10) :=
      mul_pos (sub_pos.mpr hlo) (by positivity)
    nlinarith
  · rw [hsq]
    have hpos : 0 < (11 / 4 - Real.exp 1) *
        (11 / 4 + Real.exp 1) :=
      mul_pos (sub_pos.mpr hhi) (by positivity)
    nlinarith

/-- Exact original strict cutoff, not a prime-only replacement. -/
theorem activePrimePowers_one_eq_Icc :
    activePrimePowers (1 : ℝ) = Finset.Icc 2 7 := by
  obtain ⟨hlo, hhi⟩ := seven_lt_exp_two_lt_eight
  ext n
  simp only [activePrimePowers, Finset.mem_filter, Finset.mem_range,
    Nat.lt_ceil, Finset.mem_Icc, mul_one]
  constructor
  · rintro ⟨hne, htwo, hreal⟩
    have hnr : (n : ℝ) < 8 := hreal.trans hhi
    have hn : n < 8 := by exact_mod_cast hnr
    exact ⟨htwo, by omega⟩
  · rintro ⟨htwo, hseven⟩
    have hnr : (n : ℝ) ≤ 7 := by exact_mod_cast hseven
    have hlt : (n : ℝ) < Real.exp 2 := hnr.trans_lt hlo
    exact ⟨hlt, htwo, hlt⟩

/-- Native residues in the original nonprincipal parity-one q3 sector. -/
theorem odd_three_native_character_values
    (chi : DirichletCharacter ℂ 3)
    (hodd : gammaParity chi = 1) :
    chi (2 : ZMod 3) = -1 ∧ chi (3 : ZMod 3) = 0 ∧
    chi (4 : ZMod 3) = 1 ∧ chi (5 : ZMod 3) = -1 ∧
    chi (6 : ZMod 3) = 0 ∧ chi (7 : ZMod 3) = 1 := by
  have htwo := GammaShiftCoupling.odd_character_three_at_two chi hodd
  refine ⟨htwo, ?_, ?_, ?_, ?_, ?_⟩
  · rw [show (3 : ZMod 3) = 0 by decide]
    exact chi.map_zero' (by decide)
  · rw [show (4 : ZMod 3) = 1 by decide]
    exact map_one chi
  · simpa only [show (5 : ZMod 3) = (2 : ZMod 3) by decide] using htwo
  · rw [show (6 : ZMod 3) = 0 by decide]
    exact chi.map_zero' (by decide)
  · rw [show (7 : ZMod 3) = 1 by decide]
    exact map_one chi

/-- Critical factor at the squared prime: Λ(2²)=log 2, not log 4. -/
theorem vonMangoldt_four_eq_log_two :
    ArithmeticFunction.vonMangoldt 4 = Real.log 2 := by
  have hpow := ArithmeticFunction.vonMangoldt_apply_pow
    (n := 2) (k := 2) (by decide)
  have hprime := ArithmeticFunction.vonMangoldt_apply_prime Nat.prime_two
  have h4 : ArithmeticFunction.vonMangoldt 4 =
      ArithmeticFunction.vonMangoldt 2 := by
    simpa only [show (2 ^ 2 : ℕ) = 4 by norm_num] using hpow
  exact h4.trans hprime

/-- Literal signed q3 weights for n = 2,...,7, including 4, 3 and 6. -/
theorem odd_three_native_signed_weights
    (chi : DirichletCharacter ℂ 3) (hodd : gammaParity chi = 1) :
    pairedPrimeWeight chi 2 = -(Real.log 2 / Real.sqrt 2) ∧
    pairedPrimeWeight chi 3 = 0 ∧
    pairedPrimeWeight chi 4 = Real.log 2 / 2 ∧
    pairedPrimeWeight chi 5 = -(Real.log 5 / Real.sqrt 5) ∧
    pairedPrimeWeight chi 6 = 0 ∧
    pairedPrimeWeight chi 7 = Real.log 7 / Real.sqrt 7 := by
  obtain ⟨h2, h3, h4, h5, h6, h7⟩ := odd_three_native_character_values chi hodd
  refine ⟨GammaShiftCoupling.odd_character_three_primeTwo_weight chi hodd,
    ?_, ?_, ?_, ?_, ?_⟩
  · unfold pairedPrimeWeight
    simp only [Nat.cast_ofNat]
    rw [h3]
    simp
  · have hΛ := vonMangoldt_four_eq_log_two
    unfold pairedPrimeWeight primeWeight
    simp only [Nat.cast_ofNat]
    rw [h4, hΛ]
    norm_num
  · have hΛ : ArithmeticFunction.vonMangoldt 5 = Real.log 5 :=
      ArithmeticFunction.vonMangoldt_apply_prime (by decide)
    unfold pairedPrimeWeight primeWeight
    simp only [Nat.cast_ofNat]
    rw [h5, hΛ]
    norm_num
  · unfold pairedPrimeWeight
    simp only [Nat.cast_ofNat]
    rw [h6]
    simp
  · have hΛ : ArithmeticFunction.vonMangoldt 7 = Real.log 7 :=
      ArithmeticFunction.vonMangoldt_apply_prime (by decide)
    unfold pairedPrimeWeight primeWeight
    simp only [Nat.cast_ofNat]
    rw [h7, hΛ]
    norm_num

end OddThreeFullSignedShift

end GRWTSK.NumberTheory.WeilQuadraticForm
