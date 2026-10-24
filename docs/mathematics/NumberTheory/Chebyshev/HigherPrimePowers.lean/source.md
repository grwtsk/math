# Complete source: GRWTSK.NumberTheory.Chebyshev.HigherPrimePowers

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6dac989dfd24f1a125653b4dbdb16a9663314610` · SHA-256 `bd739b54cf2c5612027e90bd89a2e57120c0ef987d9a865442328738e7d5e9f7`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human research direction: grwtsk contributors. Proof drafting assistance: OpenAI ChatGPT.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Chebyshev.PowerOccupancy
import Mathlib.Algebra.Order.Floor.Semiring
import Mathlib.NumberTheory.ArithmeticFunction.VonMangoldt
import Mathlib.NumberTheory.Harmonic.Bounds
import Mathlib.Data.Finset.Card
import Mathlib.Tactic

/-!
# Complete finite higher-prime-power inventory and logarithmic budget

Finite prime bases are tested against the exact integer powers and both square
endpoints. The logarithmic cutoff is proved to cover every possible exponent;
an arbitrary shorter prefix is not the complete mass. The connection to the
repository's actual Chebyshev count belongs to `HigherPrimePowerSource`.
Source draft; no elaboration, axiom audit, numerical certificate or replay claim.
-/

namespace GRWTSK.NumberTheory.Chebyshev.HigherPrimePowers

open scoped BigOperators
open GRWTSK.NumberTheory.Chebyshev.PowerOccupancy

noncomputable section

/-- Exact prime bases at one exponent, retaining the left-open/right-closed interval. -/
def primePowerBases (n k : ℕ) : Finset ℕ :=
  (Finset.Icc 2 ((n + 1) ^ 2)).filter
    (fun p ↦ p.Prime ∧ n ^ 2 < p ^ k ∧ p ^ k ≤ (n + 1) ^ 2)

/-- The base upper bound is redundant at every positive exponent. -/
theorem mem_primePowerBases_iff (n k p : ℕ) (hk : 0 < k) :
    p ∈ primePowerBases n k ↔
      p.Prime ∧ n ^ 2 < p ^ k ∧ p ^ k ≤ (n + 1) ^ 2 := by
  constructor
  · exact fun h ↦ (Finset.mem_filter.mp h).2
  · intro h
    exact Finset.mem_filter.mpr ⟨Finset.mem_Icc.mpr
      ⟨h.1.two_le, (le_self_pow₀ h.1.one_le hk.ne').trans h.2.2⟩, h⟩

/-- Fixed-exponent inventory cardinality is at most one, not necessarily one. -/
theorem primePowerBases_card_le_one (n k : ℕ) (hk : 2 ≤ k) :
    (primePowerBases n k).card ≤ 1 := by
  apply Finset.card_le_one.mpr
  intro p hp q hq
  have hpf := (mem_primePowerBases_iff n k p (by omega)).mp hp
  have hqf := (mem_primePowerBases_iff n k q (by omega)).mp hq
  exact square_interval_power_base_unique n p q k hpf.1.one_le hqf.1.one_le hk
    hpf.2.1 hpf.2.2 hqf.2.1 hqf.2.2

/-- Largest potentially occupied exponent, in the selected logarithmic convention. -/
def exponentCutoff (n : ℕ) : ℕ :=
  ⌊2 * Real.log (n + 1 : ℕ) / Real.log 2⌋₊

/-- Taking logarithms preserves the exact natural-power upper bound. -/
theorem exponent_mul_log_base_le (n p k : ℕ) (hp : 2 ≤ p)
    (hupper : p ^ k ≤ (n + 1) ^ 2) :
    (k : ℝ) * Real.log p ≤ 2 * Real.log (n + 1 : ℕ) := by
  have hpR : (0 : ℝ) < p := by exact_mod_cast (show 0 < p by omega)
  have huR : (p : ℝ) ^ k ≤ ((n + 1 : ℕ) : ℝ) ^ 2 := by exact_mod_cast hupper
  have hlog := Real.log_le_log (pow_pos hpR k) huR
  simpa only [Real.log_pow, Nat.cast_ofNat] using hlog

/-- Every occupied prime-power exponent is covered, with no search assumption. -/
theorem exponent_le_cutoff (n p k : ℕ) (hp : 2 ≤ p)
    (hupper : p ^ k ≤ (n + 1) ^ 2) : k ≤ exponentCutoff n := by
  apply Nat.le_floor
  apply (le_div_iff₀ (Real.log_pos (by norm_num : (1 : ℝ) < 2))).mpr
  have hbase : Real.log 2 ≤ Real.log (p : ℝ) :=
    Real.log_le_log (by norm_num) (by exact_mod_cast hp)
  exact (mul_le_mul_of_nonneg_left hbase (Nat.cast_nonneg k)).trans
    (exponent_mul_log_base_le n p k hp hupper)

/-- Positive square stages admit a cutoff of at least two. -/
theorem two_le_exponentCutoff (n : ℕ) (hn : 1 ≤ n) : 2 ≤ exponentCutoff n := by
  apply Nat.le_floor
  apply (le_div_iff₀ (Real.log_pos (by norm_num : (1 : ℝ) < 2))).mpr
  have hlog : Real.log 2 ≤ Real.log (n + 1 : ℕ) :=
    Real.log_le_log (by norm_num) (by exact_mod_cast (show 2 ≤ n + 1 by omega))
  exact mul_le_mul_of_nonneg_left hlog (by norm_num)

/-- A purported occupied exponent beyond the complete cutoff is impossible. -/
theorem primePowerBases_eq_empty_above_cutoff (n k : ℕ) (hk : exponentCutoff n < k) :
    primePowerBases n k = ∅ := by
  apply Finset.eq_empty_iff_forall_notMem.mpr
  intro p hp
  have h := (Finset.mem_filter.mp hp).2
  exact (not_le_of_gt hk) (exponent_le_cutoff n p k h.1.two_le h.2.2)

/-- A finite prefix mass; completeness is not implied by the name or its existence. -/
def higherPrimePowerMassUpTo (n K : ℕ) : ℝ :=
  ∑ k ∈ Finset.Icc 2 K, ∑ p ∈ primePowerBases n k, Real.log p

/-- The complete higher-power mass uses the proved covering cutoff. -/
def higherPrimePowerMass (n : ℕ) : ℝ := higherPrimePowerMassUpTo n (exponentCutoff n)

/-- Enlarging an already complete exponent cutoff adds only empty fibers. -/
theorem massUpTo_eq_complete (n K : ℕ) (hK : exponentCutoff n ≤ K) :
    higherPrimePowerMassUpTo n K = higherPrimePowerMass n := by
  unfold higherPrimePowerMass higherPrimePowerMassUpTo
  symm
  apply Finset.sum_subset
  · intro k hk
    exact Finset.mem_Icc.mpr ⟨(Finset.mem_Icc.mp hk).1, (Finset.mem_Icc.mp hk).2.trans hK⟩
  · intro k hk hnot
    have htwo := (Finset.mem_Icc.mp hk).1
    have hlarge : exponentCutoff n < k := by
      by_contra h
      exact hnot (Finset.mem_Icc.mpr ⟨htwo, by omega⟩)
    rw [primePowerBases_eq_empty_above_cutoff n k hlarge, Finset.sum_empty]

/-- Each possible base contributes at most the logarithmic upper bound divided by its exponent. -/
theorem log_base_le (n p k : ℕ) (hk : 0 < k) (hp : 2 ≤ p)
    (hupper : p ^ k ≤ (n + 1) ^ 2) :
    Real.log p ≤ 2 * Real.log (n + 1 : ℕ) / (k : ℝ) := by
  apply (le_div_iff₀ (show (0 : ℝ) < k by exact_mod_cast hk)).mpr
  simpa only [mul_comm] using exponent_mul_log_base_le n p k hp hupper

/-- At-most-one occupancy, including the empty case, gives the weighted fiber budget. -/
theorem fiber_mass_le (n k : ℕ) (hk : 2 ≤ k) :
    (∑ p ∈ primePowerBases n k, Real.log p) ≤
      2 * Real.log (n + 1 : ℕ) / (k : ℝ) := by
  have hnonneg : 0 ≤ 2 * Real.log (n + 1 : ℕ) / (k : ℝ) :=
    div_nonneg (mul_nonneg (by norm_num) (Real.log_natCast_nonneg _)) (Nat.cast_nonneg k)
  calc
    _ ≤ ∑ _p ∈ primePowerBases n k, 2 * Real.log (n + 1 : ℕ) / (k : ℝ) := by
      apply Finset.sum_le_sum
      intro p hp
      have h := (Finset.mem_filter.mp hp).2
      exact log_base_le n p k (by omega) h.1.two_le h.2.2
    _ = ((primePowerBases n k).card : ℝ) *
        (2 * Real.log (n + 1 : ℕ) / (k : ℝ)) := by simp
    _ ≤ 1 * (2 * Real.log (n + 1 : ℕ) / (k : ℝ)) :=
      mul_le_mul_of_nonneg_right (by exact_mod_cast primePowerBases_card_le_one n k hk) hnonneg
    _ = _ := one_mul _

/-- Complete nonnegativity retains every occupied exponent and prime weight. -/
theorem higherPrimePowerMass_nonneg (n : ℕ) : 0 ≤ higherPrimePowerMass n := by
  unfold higherPrimePowerMass higherPrimePowerMassUpTo
  apply Finset.sum_nonneg
  intro k hk
  exact Finset.sum_nonneg (fun p _ ↦ Real.log_natCast_nonneg p)

/-- The precise finite harmonic-sum bound precedes any asymptotic estimate. -/
theorem massUpTo_le_harmonic_sum (n K : ℕ) :
    higherPrimePowerMassUpTo n K ≤
      2 * Real.log (n + 1 : ℕ) * ∑ k ∈ Finset.Icc 2 K, 1 / (k : ℝ) := by
  calc
    _ ≤ ∑ k ∈ Finset.Icc 2 K, 2 * Real.log (n + 1 : ℕ) / (k : ℝ) :=
      Finset.sum_le_sum (fun k hk ↦ fiber_mass_le n k (Finset.mem_Icc.mp hk).1)
    _ = _ := by simp only [Finset.mul_sum, mul_one_div]

/-- Remove the first harmonic summand before using Mathlib's logarithmic bound. -/
theorem harmonic_sum_from_two_le_log (K : ℕ) (hK : 1 ≤ K) :
    (∑ k ∈ Finset.Icc 2 K, 1 / (k : ℝ)) ≤ Real.log K := by
  have hset : (Finset.Icc 1 K).erase 1 = Finset.Icc 2 K := by
    ext k
    simp only [Finset.mem_erase, Finset.mem_Icc]
    omega
  have hsplit : (harmonic K : ℝ) = 1 + ∑ k ∈ Finset.Icc 2 K, 1 / (k : ℝ) := by
    simp only [harmonic_eq_sum_Icc, Rat.cast_sum, Rat.cast_inv, Rat.cast_natCast]
    rw [← Finset.sum_erase_add (Finset.Icc 1 K) _ (Finset.left_mem_Icc.mpr hK), hset]
    simp only [Nat.cast_one, inv_one, one_div, add_comm]
  have hbound := harmonic_le_one_add_log K
  rw [hsplit] at hbound
  linarith

/-- The complete exact logarithmic budget at every positive square stage. -/
theorem higherPrimePowerMass_le_log_budget (n : ℕ) (hn : 1 ≤ n) :
    higherPrimePowerMass n ≤
      2 * Real.log (n + 1 : ℕ) * Real.log (exponentCutoff n) := by
  exact (massUpTo_le_harmonic_sum n (exponentCutoff n)).trans
    (mul_le_mul_of_nonneg_left
      (harmonic_sum_from_two_le_log _ (by have := two_le_exponentCutoff n hn; omega))
      (mul_nonneg (by norm_num) (Real.log_natCast_nonneg _)))

/-- At square stage two, exponent three contributes and cannot be truncated away. -/
theorem exponent_three_present_control : 2 ∈ primePowerBases 2 3 := by
  norm_num [primePowerBases]

/-- The same stage also retains the right-hand prime square. -/
theorem right_prime_square_present_control : 3 ∈ primePowerBases 2 2 := by
  norm_num [primePowerBases]

/-- At-most-one occupancy permits an empty exponent fiber. -/
theorem empty_fiber_control : primePowerBases 1 3 = ∅ := by
  decide

/-- Composite bases can duplicate one power value; the prime filter is indispensable. -/
theorem composite_base_duplicate_control :
    (4 : ℕ) ^ 3 = 8 ^ 2 ∧ 4 ∉ primePowerBases 7 3 ∧ 8 ∉ primePowerBases 7 2 := by
  norm_num [primePowerBases]

end

end GRWTSK.NumberTheory.Chebyshev.HigherPrimePowers
```
