# Complete source: GRWTSK.NumberTheory.ElementaryNumberTheory.ArithmeticFunctions.SourceAlphaBalance.Variant3dea2bdb64aa22c8ba385cc400b9bdfefded07b9e76e9e6f1bf70ab9c38d0b7f

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `384898f884e2ef5b2cb86e1ba4f40f98e8ff22fa` · SHA-256 `3dea2bdb64aa22c8ba385cc400b9bdfefded07b9e76e9e6f1bf70ab9c38d0b7f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import SourceLargePrimeDiagonal

/-!
Actual finite Mobius mean balance with its exact natural quotient/modulus correction.
Direction and conceptual origin: grwtsk contributors.
Finite arithmetic calculation and formalization: OpenAI Codex assistance.
-/
set_option autoImplicit false
noncomputable section
namespace RH16AlphaBalance
open scoped BigOperators
open ArithmeticFunction
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open EstimateVaughanIdentity EstimateBetaCentering

theorem actual_quotient_moebius_sum (U : ℕ) (hU : 1 ≤ U) :
    (∑ d ∈ Finset.Icc 1 U, (moebius d : ℝ) * ((U / d : ℕ) : ℝ)) = 1 := by
  classical
  have hrow (n : ℕ) (hn : n ∈ Finset.Ioc 0 U) :
      (∑ d ∈ Finset.Icc 1 U, if d ∣ n then (moebius d : ℝ) else 0) =
        if n = 1 then 1 else 0 := by
    have hn0 : 0 < n := (Finset.mem_Ioc.mp hn).1
    have hnU : n ≤ U := (Finset.mem_Ioc.mp hn).2
    have hb := beta_zero_of_le U n hnU
    rw [beta_eq_delta_sub_short, short_divisor_sum_eq_indicator U n hn0] at hb
    linarith only [hb]
  calc
    _ = ∑ d ∈ Finset.Icc 1 U, ∑ n ∈ Finset.Ioc 0 U,
        if d ∣ n then (moebius d : ℝ) else 0 := by
      apply Finset.sum_congr rfl
      intro d _
      rw [← multiples_prefix_sum U d, Finset.mul_sum]
      apply Finset.sum_congr rfl
      intro n _
      split_ifs <;> simp
    _ = ∑ n ∈ Finset.Ioc 0 U, ∑ d ∈ Finset.Icc 1 U,
        if d ∣ n then (moebius d : ℝ) else 0 := Finset.sum_comm
    _ = ∑ n ∈ Finset.Ioc 0 U, if n = 1 then (1 : ℝ) else 0 :=
      Finset.sum_congr rfl hrow
    _ = 1 := by simp [Finset.mem_Ioc, hU]

theorem actual_alpha_modulus_recovery (U : ℕ) (hU : 1 ≤ U) :
    (U : ℝ) * alpha U = 1 +
      ∑ d ∈ Finset.Icc 1 U, (moebius d : ℝ) * ((U % d : ℕ) : ℝ) / (d : ℝ) := by
  classical
  have hc (d : ℕ) (hd : d ∈ Finset.Icc 1 U) :
      (U : ℝ) / (d : ℝ) = ((U / d : ℕ) : ℝ) + ((U % d : ℕ) : ℝ) / (d : ℝ) := by
    have hd0 : (d : ℝ) ≠ 0 := by exact_mod_cast (show d ≠ 0 by
      have := (Finset.mem_Icc.mp hd).1; omega)
    have hdiv : ((U / d : ℕ) : ℝ) * (d : ℝ) + ((U % d : ℕ) : ℝ) = (U : ℝ) := by
      exact_mod_cast (show U / d * d + U % d = U by
        simpa only [Nat.mul_comm] using Nat.div_add_mod U d)
    field_simp
    nlinarith only [hdiv]
  calc
    _ = ∑ d ∈ Finset.Icc 1 U, (moebius d : ℝ) * ((U : ℝ) / (d : ℝ)) := by
      unfold alpha
      rw [Finset.mul_sum]
      apply Finset.sum_congr rfl
      intro d _
      ring
    _ = (∑ d ∈ Finset.Icc 1 U, (moebius d : ℝ) * ((U / d : ℕ) : ℝ)) +
        ∑ d ∈ Finset.Icc 1 U, (moebius d : ℝ) * ((U % d : ℕ) : ℝ) / (d : ℝ) := by
      rw [← Finset.sum_add_distrib]
      apply Finset.sum_congr rfl
      intro d hd
      rw [hc d hd]
      ring
    _ = _ := by rw [actual_quotient_moebius_sum U hU]

theorem actual_alpha_abs_le_one (U : ℕ) (hU : 1 ≤ U) : |alpha U| ≤ 1 := by
  classical
  let error (d : ℕ) : ℝ := (moebius d : ℝ) * ((U % d : ℕ) : ℝ) / (d : ℝ)
  have he0 : error 1 = 0 := by simp [error, Nat.mod_one]
  have he (d : ℕ) (hd : d ∈ Finset.Ioc 1 U) : |error d| ≤ 1 := by
    have hd0 : 0 < d := by have := (Finset.mem_Ioc.mp hd).1; omega
    have hmu : |(moebius d : ℝ)| ≤ 1 := by
      exact_mod_cast (ArithmeticFunction.abs_moebius_le_one (n := d))
    have hr0 : 0 ≤ (((U % d : ℕ) : ℝ) / (d : ℝ)) := by positivity
    have hr1 : (((U % d : ℕ) : ℝ) / (d : ℝ)) ≤ 1 := by
      apply (div_le_one (by exact_mod_cast hd0)).mpr
      exact_mod_cast (Nat.mod_lt U hd0).le
    dsimp only [error]
    rw [mul_div_assoc]
    rw [abs_mul, abs_of_nonneg hr0]
    nlinarith
  have hsum : |∑ d ∈ Finset.Icc 1 U, error d| ≤ (U : ℝ) - 1 := by
    rw [← Finset.Ioc_insert_left hU, Finset.sum_insert (by simp), he0, zero_add]
    calc
      _ ≤ ∑ d ∈ Finset.Ioc 1 U, |error d| := Finset.abs_sum_le_sum_abs _ _
      _ ≤ ∑ d ∈ Finset.Ioc 1 U, (1 : ℝ) := Finset.sum_le_sum he
      _ = _ := by simp [Nat.cast_sub hU]
  have hr := actual_alpha_modulus_recovery U hU
  change (U : ℝ) * alpha U = 1 + ∑ d ∈ Finset.Icc 1 U, error d at hr
  have hUa : |(U : ℝ) * alpha U| ≤ (U : ℝ) := by
    rw [hr]
    exact (abs_add_le 1 _).trans (by simp only [abs_one]; linarith only [hsum])
  rw [abs_mul, abs_of_nonneg (by positivity : (0 : ℝ) ≤ U)] at hUa
  have hUp : 0 < (U : ℝ) := by exact_mod_cast (show 0 < U by omega)
  nlinarith only [hUa, hUp]

theorem actual_alpha_minus_one_bounds (U : ℕ) (hU : 1 ≤ U) :
    -2 ≤ alpha U - 1 ∧ alpha U - 1 ≤ 0 ∧ |alpha U - 1| ≤ 2 := by
  have ha := actual_alpha_abs_le_one U hU
  have hb := abs_le.mp ha
  refine ⟨by linarith, by linarith, ?_⟩
  apply abs_le.mpr
  constructor <;> linarith

end RH16AlphaBalance
```
