# Complete source: GRWTSK.NumberTheory.PrimeCounting.ReciprocalPrimeIntervalBounds

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e74d9863290524e76e06a096d0408230dabf56b6` · SHA-256 `13ebfe87b63b505450e0151b1d8da88f82e6aedee538c892b1db435c2bf60a34`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathlib.NumberTheory.Chebyshev
import Mathlib.NumberTheory.Harmonic.Bounds
import GRWTSK.NumberTheory.Moebius.FiniteProductResponseIdentification
import GRWTSK.Analysis.AsymptoticAnalysis.ExponentialEnergyObstruction

/-!
# Independent finite prime-harmonic bounds

These theorems use Mathlib's proved elementary Chebyshev bound, not PNT.
They control an actual finite prime interval and, in particular, fixed-ratio
blocks near the horizon.  The complete estimate Omega(T)=O(log(2+T)) is not
asserted in this file; its complete Lean proof is in PrimeHarmonicLog.lean.
-/

noncomputable section

open scoped BigOperators

namespace PPNCP04.PrimeHarmonic

def inventoryHarmonicMass (T : ℝ) : ℝ :=
  PPNCP04.Obstruction.harmonicMass (primeInventory T)

/-- A complete all-horizon bound available without any prime-distribution
assumption.  Its linear T cost is too weak for the desired closure. -/
theorem inventory_harmonic_linear_bound {T : ℝ} (hT : 0 ≤ T) :
    inventoryHarmonicMass T ≤ 1 + T := by
  have hsubset : primeInventory T ⊆ integerInventory T := Finset.filter_subset _ _
  have hsum : (∑ p ∈ primeInventory T, 1 / (p : ℝ)) ≤
      ∑ n ∈ integerInventory T, 1 / (n : ℝ) := by
    apply Finset.sum_le_sum_of_subset_of_nonneg hsubset
    intro n hn hnot
    positivity
  have heq : (∑ n ∈ integerInventory T, 1 / (n : ℝ)) =
      (harmonic ⌊Real.exp T⌋₊ : ℝ) := by
    simp only [integerInventory, harmonic_eq_sum_Icc, Rat.cast_sum,
      Rat.cast_inv, Rat.cast_natCast, one_div]
  have hx : 1 ≤ Real.exp T := by simpa using Real.exp_le_exp.mpr hT
  unfold inventoryHarmonicMass PPNCP04.Obstruction.harmonicMass
  calc
    (∑ p ∈ primeInventory T, 1 / (p : ℝ)) ≤
        ∑ n ∈ integerInventory T, 1 / (n : ℝ) := hsum
    _ = (harmonic ⌊Real.exp T⌋₊ : ℝ) := heq
    _ ≤ 1 + Real.log (Real.exp T) := harmonic_floor_le_one_add_log _ hx
    _ = 1 + T := by rw [Real.log_exp]

theorem harmonicMass_le_card_div_lower {B : Finset ℕ} {y : ℝ}
    (hy : 0 < y) (hlower : ∀ p ∈ B, y ≤ (p : ℝ)) :
    PPNCP04.Obstruction.harmonicMass B ≤ (B.card : ℝ) / y := by
  unfold PPNCP04.Obstruction.harmonicMass
  calc
    (∑ p ∈ B, 1 / (p : ℝ)) ≤ ∑ _p ∈ B, 1 / y := by
      exact Finset.sum_le_sum (fun p hp => one_div_le_one_div_of_le hy (hlower p hp))
    _ = (B.card : ℝ) / y := by simp [div_eq_mul_inv]

/-- Explicit finite interval bound from the established Chebyshev upper
bound for prime counts.  All members of B must be actual source primes. -/
theorem prime_interval_harmonic_bound {B : Finset ℕ} {x y : ℝ}
    (hx : 1 < x) (hy : 0 < y)
    (hsubset : B ⊆ Nat.primesLE ⌊x⌋₊)
    (hlower : ∀ p ∈ B, y ≤ (p : ℝ)) :
    PPNCP04.Obstruction.harmonicMass B ≤
      (Real.log 4 * x / Real.log (Real.sqrt x) + Real.sqrt x) / y := by
  have hcard : B.card ≤ (Nat.primesLE ⌊x⌋₊).card := Finset.card_le_card hsubset
  rw [Nat.primesLE_card_eq_primeCounting] at hcard
  have hcardReal : (B.card : ℝ) ≤ (Nat.primeCounting ⌊x⌋₊ : ℝ) := by
    exact_mod_cast hcard
  calc
    PPNCP04.Obstruction.harmonicMass B ≤ (B.card : ℝ) / y :=
      harmonicMass_le_card_div_lower hy hlower
    _ ≤ (Nat.primeCounting ⌊x⌋₊ : ℝ) / y :=
      div_le_div_of_nonneg_right hcardReal hy.le
    _ ≤ (Real.log 4 * x / Real.log (Real.sqrt x) + Real.sqrt x) / y :=
      div_le_div_of_nonneg_right (Chebyshev.pi_le_log4_mul_div hx) hy.le

/-- A fixed-ratio horizon block has an independently proved small
harmonic mass: no asymptotic prime-distribution input is used. -/
theorem fixed_ratio_horizon_mass_bound {B : Finset ℕ} {T K : ℝ}
    (hT : 0 < T) (hK : 0 < K)
    (hsubset : B ⊆ primeInventory T)
    (hlower : ∀ p ∈ B, Real.exp T / K ≤ (p : ℝ)) :
    PPNCP04.Obstruction.harmonicMass B ≤
      K * (2 * Real.log 4 / T + Real.exp (-T / 2)) := by
  have hx : 1 < Real.exp T := by simpa using Real.exp_lt_exp.mpr hT
  have hy : 0 < Real.exp T / K := div_pos (Real.exp_pos T) hK
  have hs : B ⊆ Nat.primesLE ⌊Real.exp T⌋₊ := by
    simpa only [primeInventory_eq] using hsubset
  have hbound := prime_interval_harmonic_bound hx hy hs hlower
  have hlog : Real.log (Real.sqrt (Real.exp T)) = T / 2 := by
    rw [Real.log_sqrt (Real.exp_pos T).le, Real.log_exp]
  have hratio : Real.sqrt (Real.exp T) / Real.exp T = Real.exp (-T / 2) := by
    rw [← Real.exp_half, ← Real.exp_sub]
    congr 1
    ring
  calc
    PPNCP04.Obstruction.harmonicMass B ≤
        (Real.log 4 * Real.exp T / Real.log (Real.sqrt (Real.exp T)) +
          Real.sqrt (Real.exp T)) / (Real.exp T / K) := hbound
    _ = K * (2 * Real.log 4 / T + Real.sqrt (Real.exp T) / Real.exp T) := by
      rw [hlog]
      field_simp
    _ = K * (2 * Real.log 4 / T + Real.exp (-T / 2)) := by rw [hratio]

end PPNCP04.PrimeHarmonic

#print axioms PPNCP04.PrimeHarmonic.prime_interval_harmonic_bound
#print axioms PPNCP04.PrimeHarmonic.fixed_ratio_horizon_mass_bound
#print axioms PPNCP04.PrimeHarmonic.inventory_harmonic_linear_bound
```
