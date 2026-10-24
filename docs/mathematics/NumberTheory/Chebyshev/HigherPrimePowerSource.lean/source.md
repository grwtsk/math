# Complete source: GRWTSK.NumberTheory.Chebyshev.HigherPrimePowerSource

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `648ba8cc9873e647af70dd079847d85f7eea27f4` · SHA-256 `56b8f10587659ddcb05456c33ded1bc9e241bc5f0215ae64c75ec8f5dc46715d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human research direction: grwtsk contributors. Proof drafting assistance: OpenAI ChatGPT.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Chebyshev.QuadraticIntervals
import GRWTSK.NumberTheory.Chebyshev.HigherPrimePowers
import GRWTSK.Analysis.ErrorBounds.FiniteSquareBudget
import Mathlib.NumberTheory.Chebyshev

/-!
# Exact source binding of the higher-prime-power correction

The existing `SourcePairing.chebyshevPrimePower` is retained. Its equality with
Mathlib's closed-right `Chebyshev.psi` removes only the zero-weight integer one.
A finite bijection, not a supplied decomposition field, identifies all positive
prime-power exponents in the square interval. Splitting exponent one yields the
actual prime-only increment and the complete higher-power correction.

All results remain source drafts pending pinned elaboration and trust audit.
There is no zero-divisor source, explicit formula, cancellation bound or RH claim.
-/

namespace GRWTSK.NumberTheory.Chebyshev.HigherPrimePowerSource

open scoped BigOperators
open GRWTSK.RiemannHypothesis.SourcePairing
open GRWTSK.NumberTheory.Chebyshev.QuadraticIntervals
open GRWTSK.NumberTheory.Chebyshev.HigherPrimePowers
open GRWTSK.Analysis.ErrorBounds.FiniteSquareBudget

noncomputable section

/-- The existing source and Mathlib psi differ only by the zero-weight index one. -/
theorem source_eq_mathlib_psi (x : ℝ) :
    chebyshevPrimePower x = _root_.Chebyshev.psi x := by
  unfold chebyshevPrimePower _root_.Chebyshev.psi
  apply Finset.sum_subset
  · intro m hm
    have h := Finset.mem_Icc.mp hm
    exact Finset.mem_Ioc.mpr ⟨by omega, h.2⟩
  · intro m hm hnot
    have h := Finset.mem_Ioc.mp hm
    have hmone : m = 1 := by
      by_contra hne
      exact hnot (Finset.mem_Icc.mpr ⟨by omega, h.2⟩)
    simpa only [hmone] using ArithmeticFunction.vonMangoldt_apply_one

/-- Finite endpoint subtraction with the exact left-open/right-closed inventory. -/
theorem sum_Ioc_difference (a b : ℕ) (hab : a ≤ b) (f : ℕ → ℝ) :
    (∑ m ∈ Finset.Ioc 0 b, f m) - (∑ m ∈ Finset.Ioc 0 a, f m) =
      ∑ m ∈ Finset.Ioc a b, f m := by
  have hsub : Finset.Ioc 0 a ⊆ Finset.Ioc 0 b := by
    intro m hm
    exact Finset.mem_Ioc.mpr ⟨(Finset.mem_Ioc.mp hm).1, (Finset.mem_Ioc.mp hm).2.trans hab⟩
  have hset : Finset.Ioc 0 b \ Finset.Ioc 0 a = Finset.Ioc a b := by
    ext m
    simp only [Finset.mem_sdiff, Finset.mem_Ioc]
    omega
  have hsum := Finset.sum_sdiff (f := f) hsub
  rw [hset] at hsum
  linarith

/-- The actual source square increment, with no analytic or surrogate count. -/
theorem squareIncrement_eq_vonMangoldt_sum (n : ℕ) :
    squareIncrement n =
      ∑ m ∈ Finset.Ioc (n ^ 2) ((n + 1) ^ 2), ArithmeticFunction.vonMangoldt m := by
  have hright : ((n : ℝ) + 1) ^ 2 = (((n + 1) ^ 2 : ℕ) : ℝ) := by
    simp only [Nat.cast_pow, Nat.cast_add, Nat.cast_one]
  have hleft : (n : ℝ) ^ 2 = ((n ^ 2 : ℕ) : ℝ) := (Nat.cast_pow n 2).symm
  rw [squareIncrement, hright, hleft, source_eq_mathlib_psi, source_eq_mathlib_psi]
  simp only [_root_.Chebyshev.psi, Nat.floor_natCast]
  exact sum_Ioc_difference _ _ (pow_le_pow_left₀ (Nat.zero_le n) (by omega : n ≤ n + 1) 2) _

/-- The prime-only increment is defined from Mathlib theta, not fitted to the correction. -/
def squarePrimeIncrement (n : ℕ) : ℝ :=
  _root_.Chebyshev.theta (((n + 1) ^ 2 : ℕ) : ℝ) -
    _root_.Chebyshev.theta ((n ^ 2 : ℕ) : ℝ)

/-- Exponent one selects exactly the primes in the square interval. -/
theorem primePowerBases_one (n : ℕ) :
    primePowerBases n 1 = (Finset.Ioc (n ^ 2) ((n + 1) ^ 2)).filter Nat.Prime := by
  ext p
  simp only [primePowerBases, Finset.mem_filter, Finset.mem_Icc, Finset.mem_Ioc, pow_one]
  constructor
  · rintro ⟨⟨_, _⟩, hp, hl, hu⟩
    exact ⟨⟨hl, hu⟩, hp⟩
  · rintro ⟨⟨hl, hu⟩, hp⟩
    exact ⟨⟨hp.two_le, hu⟩, hp, hl, hu⟩

/-- The first-exponent fiber is the exact Mathlib theta difference. -/
theorem squarePrimeIncrement_eq_first_fiber (n : ℕ) :
    squarePrimeIncrement n = ∑ p ∈ primePowerBases n 1, Real.log p := by
  unfold squarePrimeIncrement
  simp only [_root_.Chebyshev.theta, Nat.floor_natCast, Finset.sum_filter]
  rw [sum_Ioc_difference _ _ (pow_le_pow_left₀ (Nat.zero_le n) (by omega : n ≤ n + 1) 2)]
  rw [primePowerBases_one, Finset.sum_filter]

/-- All positive exponents and their actual prime bases, at the complete finite cutoff. -/
def primePowerPairs (n : ℕ) : Finset (ℕ × ℕ) :=
  ((Finset.Icc 1 (exponentCutoff n)) ×ˢ (Finset.Icc 2 ((n + 1) ^ 2))).filter
    (fun kp ↦ kp.2.Prime ∧ n ^ 2 < kp.2 ^ kp.1 ∧ kp.2 ^ kp.1 ≤ (n + 1) ^ 2)

/-- Both finite cutoffs cover every pair satisfying the mathematical interval predicate. -/
theorem mem_primePowerPairs_iff (n k p : ℕ) :
    (k, p) ∈ primePowerPairs n ↔
      0 < k ∧ p.Prime ∧ n ^ 2 < p ^ k ∧ p ^ k ≤ (n + 1) ^ 2 := by
  simp only [primePowerPairs, Finset.mem_filter, Finset.mem_product, Finset.mem_Icc]
  constructor
  · rintro ⟨⟨⟨hk, _⟩, _⟩, hp, hl, hu⟩
    exact ⟨hk, hp, hl, hu⟩
  · rintro ⟨hk, hp, hl, hu⟩
    exact ⟨⟨⟨hk, exponent_le_cutoff n p k hp.two_le hu⟩,
      ⟨hp.two_le, (le_self_pow₀ hp.one_le hk.ne').trans hu⟩⟩, hp, hl, hu⟩

/-- The prime-power map is bijective on the interval inventory and preserves the log weight.
Injectivity uses actual prime-factor uniqueness, not the fixed-exponent occupancy bound. -/
theorem pair_mass_eq_vonMangoldt_sum (n : ℕ) :
    (∑ kp ∈ primePowerPairs n, Real.log kp.2) =
      ∑ m ∈ (Finset.Ioc (n ^ 2) ((n + 1) ^ 2)).filter IsPrimePow,
        ArithmeticFunction.vonMangoldt m := by
  refine Finset.sum_bij (i := fun kp _ ↦ kp.2 ^ kp.1) ?_ ?_ ?_ ?_
  · rintro ⟨k, p⟩ hkp
    have h := (mem_primePowerPairs_iff n k p).mp hkp
    exact Finset.mem_filter.mpr ⟨Finset.mem_Ioc.mpr h.2.2,
      h.2.1.isPrimePow.pow h.1.ne'⟩
  · rintro ⟨k, p⟩ hkp ⟨l, q⟩ hlq heq
    have hp := (mem_primePowerPairs_iff n k p).mp hkp
    have hq := (mem_primePowerPairs_iff n l q).mp hlq
    have hb : p = q := by
      have hm := congrArg Nat.minFac heq
      simpa only [hp.2.1.pow_minFac hp.1.ne', hq.2.1.pow_minFac hq.1.ne'] using hm
    subst q
    have he : k = l := Nat.pow_right_injective hp.2.1.two_le heq
    exact Prod.ext he rfl
  · intro m hm
    have h := Finset.mem_filter.mp hm
    obtain ⟨p, k, hp, hk, rfl⟩ := (isPrimePow_nat_iff m).mp h.2
    exact ⟨(k, p), (mem_primePowerPairs_iff n k p).mpr
      ⟨hk, hp, (Finset.mem_Ioc.mp h.1).1, (Finset.mem_Ioc.mp h.1).2⟩, rfl⟩
  · rintro ⟨k, p⟩ hkp
    have h := (mem_primePowerPairs_iff n k p).mp hkp
    exact ((ArithmeticFunction.vonMangoldt_apply_pow h.1.ne').trans
      (ArithmeticFunction.vonMangoldt_apply_prime h.2.1)).symm

/-- Reindex the same pair inventory by exponents without omitting or duplicating terms. -/
theorem pair_mass_eq_exponent_sum (n : ℕ) :
    (∑ kp ∈ primePowerPairs n, Real.log kp.2) =
      ∑ k ∈ Finset.Icc 1 (exponentCutoff n), ∑ p ∈ primePowerBases n k, Real.log p := by
  simp only [primePowerPairs, primePowerBases, Finset.sum_filter, Finset.sum_product]

/-- The exact finite arithmetic decomposition, derived from the source definitions. -/
theorem squareIncrement_decomposition (n : ℕ) (hn : 1 ≤ n) :
    squareIncrement n = squarePrimeIncrement n + higherPrimePowerMass n := by
  have hcut := two_le_exponentCutoff n hn
  have hset : Finset.Icc 1 (exponentCutoff n) =
      insert 1 (Finset.Icc 2 (exponentCutoff n)) := by
    ext k
    simp only [Finset.mem_Icc, Finset.mem_insert]
    omega
  have hnot : 1 ∉ Finset.Icc 2 (exponentCutoff n) := by simp
  calc
    squareIncrement n =
        ∑ m ∈ Finset.Ioc (n ^ 2) ((n + 1) ^ 2), ArithmeticFunction.vonMangoldt m :=
      squareIncrement_eq_vonMangoldt_sum n
    _ = ∑ m ∈ (Finset.Ioc (n ^ 2) ((n + 1) ^ 2)).filter IsPrimePow,
        ArithmeticFunction.vonMangoldt m :=
      (Finset.sum_filter_of_ne (fun m _ hm ↦ ArithmeticFunction.vonMangoldt_ne_zero_iff.mp hm)).symm
    _ = ∑ kp ∈ primePowerPairs n, Real.log kp.2 := (pair_mass_eq_vonMangoldt_sum n).symm
    _ = ∑ k ∈ Finset.Icc 1 (exponentCutoff n), ∑ p ∈ primePowerBases n k, Real.log p :=
      pair_mass_eq_exponent_sum n
    _ = squarePrimeIncrement n + higherPrimePowerMass n := by
      rw [hset, Finset.sum_insert hnot, ← squarePrimeIncrement_eq_first_fiber]
      rfl

/-- The logarithmic correction bound applies to the actual source, not just a standalone sum. -/
theorem source_correction_bounds (n : ℕ) (hn : 1 ≤ n) :
    0 ≤ squareIncrement n - squarePrimeIncrement n ∧
      squareIncrement n - squarePrimeIncrement n ≤
        2 * Real.log (n + 1 : ℕ) * Real.log (exponentCutoff n) := by
  rw [squareIncrement_decomposition n hn, add_sub_cancel_left]
  exact ⟨higherPrimePowerMass_nonneg n, higherPrimePowerMass_le_log_budget n hn⟩

/-- Exact signed-error transport into the pre-existing finite square budget. -/
theorem prime_error_eq (n : ℕ) (hn : 1 ≤ n) :
    squarePrimeIncrement n - (2 * (n : ℝ) + 1) =
      (squareIncrement n - (2 * (n : ℝ) + 1)) - higherPrimePowerMass n := by
  rw [squareIncrement_decomposition n hn]
  ring

/-- A finite prime-only error budget charges the complete higher-power correction. -/
theorem prime_error_square_sum_le (S : Finset ℕ) (hS : ∀ n ∈ S, 1 ≤ n) :
    (∑ n ∈ S, (squarePrimeIncrement n - (2 * (n : ℝ) + 1)) ^ 2) ≤
      2 * (∑ n ∈ S, (squareIncrement n - (2 * (n : ℝ) + 1)) ^ 2) +
        2 * (∑ n ∈ S, higherPrimePowerMass n ^ 2) := by
  calc
    _ = ∑ n ∈ S, ((squareIncrement n - (2 * (n : ℝ) + 1)) - higherPrimePowerMass n) ^ 2 := by
      apply Finset.sum_congr rfl
      intro n hn
      rw [prime_error_eq n (hS n hn)]
    _ ≤ _ := sum_sub_sq_le S (fun n ↦ squareIncrement n - (2 * (n : ℝ) + 1)) higherPrimePowerMass

/-- The reverse finite error comparison charges the same exact correction. -/
theorem source_error_square_sum_le (S : Finset ℕ) (hS : ∀ n ∈ S, 1 ≤ n) :
    (∑ n ∈ S, (squareIncrement n - (2 * (n : ℝ) + 1)) ^ 2) ≤
      2 * (∑ n ∈ S, (squarePrimeIncrement n - (2 * (n : ℝ) + 1)) ^ 2) +
        2 * (∑ n ∈ S, higherPrimePowerMass n ^ 2) := by
  have hsum :
      (∑ n ∈ S, ((squareIncrement n - (2 * (n : ℝ) + 1)) - higherPrimePowerMass n) ^ 2) =
        ∑ n ∈ S, (squarePrimeIncrement n - (2 * (n : ℝ) + 1)) ^ 2 := by
    apply Finset.sum_congr rfl
    intro n hn
    rw [prime_error_eq n (hS n hn)]
  have h := sum_sq_le_twice_sub_sq S
    (fun n ↦ squareIncrement n - (2 * (n : ℝ) + 1)) higherPrimePowerMass
  rw [hsum] at h
  exact h

/-- The actual correction-square budget is bounded by explicit logarithmic quantities.
This finite inequality does not assert a little-o estimate for either arithmetic error. -/
theorem correction_square_sum_le_log_budget (S : Finset ℕ) (hS : ∀ n ∈ S, 1 ≤ n) :
    (∑ n ∈ S, higherPrimePowerMass n ^ 2) ≤
      ∑ n ∈ S, (2 * Real.log (n + 1 : ℕ) * Real.log (exponentCutoff n)) ^ 2 := by
  apply Finset.sum_le_sum
  intro n hn
  have hp := higherPrimePowerMass_nonneg n
  have hb := higherPrimePowerMass_le_log_budget n (hS n hn)
  exact (sq_le_sq₀ hp (hp.trans hb)).mpr hb

end

end GRWTSK.NumberTheory.Chebyshev.HigherPrimePowerSource
```
