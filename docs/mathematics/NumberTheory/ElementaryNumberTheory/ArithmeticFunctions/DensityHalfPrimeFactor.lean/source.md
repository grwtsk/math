# Complete source: GRWTSK.NumberTheory.ArithmeticFunctions.DensityHalfPrimeFactor

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `360b92fe6e8cc25cb7eba1f75c4047a5b4340cdb` · SHA-256 `ff5f91d051597bd8d4f0825b3e76ebc3bee9a9d0822a67a6cb3e8cdf1ec94e40`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI Codex.
Mathlib results retain upstream authorship and Apache-2.0 licensing. -/
import GRWTSK.NumberTheory.ArithmeticFunctions.DensityCorrectionPrimeSeries
import Mathlib.Analysis.Real.Sqrt

/-!
# Half-moment prime factors of the density correction

Human mathematical direction: grwtsk contributors.
Formalization assistance: OpenAI Codex.
Full omitted positive powers are retained. Local factors do not supply a
global arithmetic growth witness or the global aggregate envelope consumer.
-/
noncomputable section
set_option autoImplicit false
namespace GRWTSK.NumberTheory.ArithmeticFunctions

theorem density_half_prime_denominator_lower {x : ℝ} (hx : 2 ≤ x) :
    3 * x / 4 ≤ x + 1 - Real.sqrt x := by
  have hs := Real.sq_sqrt (show 0 ≤ x by linarith)
  nlinarith [sq_nonneg (Real.sqrt x - 2)]

theorem density_half_prime_factor_bounds {x : ℝ} (hx : 2 ≤ x) :
    1 ≤ x / (x + 1 - Real.sqrt x) ∧
      x / (x + 1 - Real.sqrt x) ≤ 4 / 3 := by
  have hl := density_half_prime_denominator_lower hx
  have hd : 0 < x + 1 - Real.sqrt x := by linarith
  have hs : 1 ≤ Real.sqrt x := by
    have h := Real.sqrt_le_sqrt (show (1 : ℝ) ≤ x by linarith)
    simpa only [Real.sqrt_one] using h
  constructor
  · apply (le_div_iff₀ hd).mpr
    linarith
  · apply (div_le_iff₀ hd).mpr
    linarith

theorem density_half_prime_square_excess {x : ℝ} (hx : 2 ≤ x) :
    0 ≤ (x / (x + 1 - Real.sqrt x)) ^ 2 - 1 ∧
      (x / (x + 1 - Real.sqrt x)) ^ 2 - 1 ≤ 7 / (3 * Real.sqrt x) := by
  have hb := density_half_prime_factor_bounds hx
  have hd : 0 < x + 1 - Real.sqrt x := by
    have h := density_half_prime_denominator_lower hx
    linarith
  have hs : 0 < Real.sqrt x := Real.sqrt_pos.mpr (by linarith)
  have he : x / (x + 1 - Real.sqrt x) - 1 ≤ 1 / Real.sqrt x := by
    apply (le_div_iff₀ hs).mpr
    have ht : Real.sqrt x * (x / (x + 1 - Real.sqrt x) - 1) =
        (x - Real.sqrt x) / (x + 1 - Real.sqrt x) := by
      have ht := Real.sq_sqrt (show 0 ≤ x by linarith)
      field_simp
      nlinarith
    rw [mul_comm, ht]
    apply (div_le_one hd).mpr
    linarith
  constructor
  · nlinarith
  · have hprod := mul_le_mul_of_nonneg_right he
      (show 0 ≤ x / (x + 1 - Real.sqrt x) + 1 by linarith [hb.1])
    have hprod2 := mul_le_mul_of_nonneg_left
      (show x / (x + 1 - Real.sqrt x) + 1 ≤ (7 : ℝ) / 3 by linarith [hb.2])
      (one_div_nonneg.mpr hs.le)
    have halgebra : (1 / Real.sqrt x) * ((7 : ℝ) / 3) =
        7 / (3 * Real.sqrt x) := by ring
    rw [halgebra] at hprod2
    nlinarith

theorem density_prime_half_mass_algebra {p : ℕ} (hp : p.Prime) :
    (1 / Real.sqrt (p : ℝ)) /
        (((p : ℝ) + 1) * (1 - 1 / Real.sqrt (p : ℝ))) =
      1 / (((p : ℝ) + 1) * (Real.sqrt (p : ℝ) - 1)) := by
  have hp1 : (1 : ℝ) < p := by exact_mod_cast hp.one_lt
  have hs1 : 1 < Real.sqrt (p : ℝ) := by
    simpa only [Real.sqrt_one] using
      (Real.sqrt_lt_sqrt_iff (show 0 ≤ (1 : ℝ) by norm_num)).mpr hp1
  have hs0 : Real.sqrt (p : ℝ) ≠ 0 := by linarith
  have hm : Real.sqrt (p : ℝ) - 1 ≠ 0 := by linarith
  field_simp [hs0, hm]

theorem density_correction_prime_half_hasSum {p : ℕ} (hp : p.Prime) :
    HasSum (fun k : ℕ => densityMoebiusCorrection (p ^ (k + 1)) /
      Real.sqrt (p : ℝ) ^ (k + 1))
      (1 / (((p : ℝ) + 1) * (Real.sqrt (p : ℝ) - 1))) := by
  have hp1 : (1 : ℝ) < p := by exact_mod_cast hp.one_lt
  have hs1 : 1 < Real.sqrt (p : ℝ) := by
    simpa only [Real.sqrt_one] using
      (Real.sqrt_lt_sqrt_iff (show 0 ≤ (1 : ℝ) by norm_num)).mpr hp1
  have hs0 : 0 < Real.sqrt (p : ℝ) := by linarith
  have hq : 1 / Real.sqrt (p : ℝ) < 1 := (div_lt_one hs0).mpr hs1
  have h := density_correction_prime_hasSum_tail hp (one_div_nonneg.mpr hs0.le) hq 0
  simpa only [Nat.add_zero, zero_add, pow_one, one_div_pow, ← div_eq_mul_one_div,
    density_prime_half_mass_algebra hp] using h

theorem density_correction_prime_half_tail {p : ℕ} (hp : p.Prime) (K : ℕ) :
    (∑' k : ℕ, densityMoebiusCorrection (p ^ (k + K + 1)) /
      Real.sqrt (p : ℝ) ^ (k + K + 1)) =
      (1 / Real.sqrt (p : ℝ)) ^ K /
        (((p : ℝ) + 1) * (Real.sqrt (p : ℝ) - 1)) := by
  have hp1 : (1 : ℝ) < p := by exact_mod_cast hp.one_lt
  have hs1 : 1 < Real.sqrt (p : ℝ) := by
    simpa only [Real.sqrt_one] using
      (Real.sqrt_lt_sqrt_iff (show 0 ≤ (1 : ℝ) by norm_num)).mpr hp1
  have hs0 : 0 < Real.sqrt (p : ℝ) := by linarith
  have hq : 1 / Real.sqrt (p : ℝ) < 1 := (div_lt_one hs0).mpr hs1
  have h := density_correction_prime_tsum_tail hp (one_div_nonneg.mpr hs0.le) hq K
  simp only [one_div_pow, ← div_eq_mul_one_div] at h
  rw [h]
  calc
    (1 / Real.sqrt (p : ℝ) ^ (K + 1)) /
        (((p : ℝ) + 1) * (1 - 1 / Real.sqrt (p : ℝ))) =
        (1 / Real.sqrt (p : ℝ)) ^ K *
          ((1 / Real.sqrt (p : ℝ)) /
            (((p : ℝ) + 1) * (1 - 1 / Real.sqrt (p : ℝ)))) := by
      rw [← one_div_pow, pow_succ]
      ring
    _ = (1 / Real.sqrt (p : ℝ)) ^ K /
        (((p : ℝ) + 1) * (Real.sqrt (p : ℝ) - 1)) := by
      rw [density_prime_half_mass_algebra hp]
      ring

end GRWTSK.NumberTheory.ArithmeticFunctions
```
