# Complete source: GRWTSK.NumberTheory.ArithmeticFunctions.ExcludedDensityCorrection

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `dbd76c9bcd8ab8764e07242a352a67dadd8c8b24` · SHA-256 `bd84cf6f2380d0ffd92d7050b6146b20de6ad5cd20a039f2b96eb22b7841ee96`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI Codex.
Mathlib results retain upstream authorship and Apache-2.0 licensing. -/
import GRWTSK.NumberTheory.ArithmeticFunctions.PositiveDensityCorrection

/-!
# Density correction after excluding specified prime factors

Human mathematical direction: grwtsk contributors.
Formalization assistance: OpenAI Codex.
The fixed source is masked by coprimality before Dirichlet convolution.
Every correction prime power remains present. No cancellation rate is assumed.
-/
noncomputable section
set_option autoImplicit false
namespace GRWTSK.NumberTheory.ArithmeticFunctions
open scoped ArithmeticFunction.Moebius ArithmeticFunction.zeta

def excludedDensityMoebius (d : ℕ) : ArithmeticFunction ℝ :=
  ⟨fun n => if n.Coprime d then densityMobiusCoefficient n else 0, by simp [density_mobius_coefficient_zero]⟩

def excludedDensityCorrection (d : ℕ) : ArithmeticFunction ℝ :=
  excludedDensityMoebius d * ζ

theorem excluded_density_source_apply (d n : ℕ) :
    excludedDensityMoebius d n = if n.Coprime d then densityMobiusCoefficient n else 0 := rfl

theorem excluded_density_source_one (d : ℕ) : excludedDensityMoebius d 1 = 1 := by
  simp [excludedDensityMoebius, density_mobius_coefficient_one]

theorem excluded_density_source_multiplicative (d : ℕ) :
    (excludedDensityMoebius d).IsMultiplicative := by
  refine ⟨excluded_density_source_one d, ?_⟩
  intro m n h
  simp only [excluded_density_source_apply, Nat.coprime_mul_iff_left]
  by_cases hm : m.Coprime d
  · by_cases hn : n.Coprime d
    · rw [if_pos ⟨hm, hn⟩, if_pos hm, if_pos hn, density_coefficient_mul_of_coprime h]
    · simp only [if_neg ((fun h : m.Coprime d ∧ n.Coprime d => hn h.2)), if_neg hn, mul_zero]
  · simp only [if_neg ((fun h : m.Coprime d ∧ n.Coprime d => hm h.1)), if_neg hm, zero_mul]

theorem excluded_density_correction_multiplicative (d : ℕ) :
    (excludedDensityCorrection d).IsMultiplicative :=
  (excluded_density_source_multiplicative d).mul ArithmeticFunction.isMultiplicative_zeta.natCast

theorem excluded_density_correction_return (d : ℕ) :
    (μ : ArithmeticFunction ℝ) * excludedDensityCorrection d = excludedDensityMoebius d := by
  unfold excludedDensityCorrection
  calc
    _ = (μ * ζ) * excludedDensityMoebius d := by ring
    _ = _ := by rw [ArithmeticFunction.coe_moebius_mul_coe_zeta, one_mul]

theorem excluded_density_correction_divisors (d n : ℕ) :
    excludedDensityCorrection d n =
      ∑ a ∈ n.divisors, if a.Coprime d then densityMobiusCoefficient a else 0 := by
  exact ArithmeticFunction.coe_mul_zeta_apply

theorem excluded_density_correction_one (d : ℕ) : excludedDensityCorrection d 1 = 1 := by
  rw [excluded_density_correction_divisors]
  simp [density_mobius_coefficient_one]

theorem excluded_density_source_prime_power (d : ℕ) {p k : ℕ}
    (hp : p.Prime) (hk : k ≠ 0) :
    excludedDensityMoebius d (p^k) =
      if p.Coprime d then (if k=1 then densityMobiusCoefficient p else 0) else 0 := by
  simp only [excluded_density_source_apply, Nat.coprime_pow_left_iff (Nat.pos_of_ne_zero hk),
    density_coefficient_prime_power hp hk]

theorem excluded_density_correction_prime_power (d : ℕ) {p k : ℕ}
    (hp : p.Prime) (hk : k ≠ 0) :
    excludedDensityCorrection d (p^k) = if p.Coprime d then 1/((p:ℝ)+1) else 1 := by
  induction k with
  | zero => exact False.elim (hk rfl)
  | succ k ih =>
    by_cases hk0 : k=0
    · subst k
      rw [excluded_density_correction_divisors, pow_one, hp.divisors]
      simp only [Finset.sum_pair hp.ne_one.symm, if_pos (Nat.coprime_one_left d),
        density_mobius_coefficient_one]
      by_cases hpd : p.Coprime d
      · rw [if_pos hpd, if_pos hpd, density_mobius_coefficient_prime hp]
        have he : (p:ℝ)+1 ≠ 0 := by positivity
        field_simp
        ring
      · simp [hpd]
    · have hs : (∑ x ∈ Finset.range (k+1),
          if (p^x).Coprime d then densityMobiusCoefficient (p^x) else 0) =
          excludedDensityCorrection d (p^k) := by
        rw [excluded_density_correction_divisors, Nat.sum_divisors_prime_pow hp]
      rw [excluded_density_correction_divisors, Nat.sum_divisors_prime_pow hp,
        Finset.sum_range_succ, hs, ih hk0]
      have hz : (if (p^(k+1)).Coprime d then densityMobiusCoefficient (p^(k+1)) else 0) = 0 := by
        simp only [density_coefficient_prime_power hp (by omega : k+1 ≠ 0), if_neg (by omega : k+1 ≠ 1), ite_self]
      rw [hz, add_zero]

theorem excluded_density_correction_bounds (d n : ℕ) :
    0 ≤ excludedDensityCorrection d n ∧ excludedDensityCorrection d n ≤ 1 := by
  induction n using Nat.recOnPosPrimePosCoprime with
  | zero => simp
  | one => simp [excluded_density_correction_one]
  | prime_pow p k hp hk =>
    rw [excluded_density_correction_prime_power d hp hk.ne']
    split_ifs
    · constructor
      · positivity
      · apply (div_le_one (by positivity : (0:ℝ) < p+1)).mpr
        have hp0 : (0:ℝ) ≤ p := Nat.cast_nonneg p
        linarith
    · norm_num
  | coprime a b _ha _hb hab ha' hb' =>
    rw [excluded_density_correction_multiplicative d |>.map_mul_of_coprime hab]
    refine ⟨mul_nonneg ha'.1 hb'.1, ?_⟩
    simpa only [one_mul] using mul_le_mul ha'.2 hb'.2 hb'.1 (by norm_num : (0:ℝ) ≤ 1)

theorem excluded_density_correction_pos (d : ℕ) {n : ℕ} (hn : n ≠ 0) :
    0 < excludedDensityCorrection d n := by
  revert hn
  induction n using Nat.recOnPosPrimePosCoprime with
  | zero => simp
  | one => intro _; simp [excluded_density_correction_one]
  | prime_pow p k hp hk =>
    intro _
    rw [excluded_density_correction_prime_power d hp hk.ne']
    split_ifs <;> positivity
  | coprime a b ha hb hab ha' hb' =>
    intro _
    rw [excluded_density_correction_multiplicative d |>.map_mul_of_coprime hab]
    exact mul_pos (ha' (by omega)) (hb' (by omega))

end GRWTSK.NumberTheory.ArithmeticFunctions
```
