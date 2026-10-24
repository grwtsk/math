# Complete source: GRWTSK.NumberTheory.FiniteDivisorSummatoryBound

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `719f1c90ece6815ba301158911ecb7a54f438fc9` · SHA-256 `c0f9c23b5307d14d591defeabc605d2fee71d81dd16b657ffd59549387f8856a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI ChatGPT. -/
import Mathlib.Analysis.PSeries
import Mathlib.Data.Nat.Factorization.Basic
import Mathlib.NumberTheory.Divisors
import Mathlib.NumberTheory.Harmonic.Bounds
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section
open scoped BigOperators

/-!
# A finite divisor-summatory bound

This reusable arithmetic packet proves the exact finite double count

  sum_{1 <= a <= B} tau(a) = sum_{1 <= d <= B} floor(B/d)

and, for B >= 1, the explicit estimate

  sum_{1 <= a <= B} tau(a) <= B * (1 + log B).

No asymptotic theorem or analytic-number-theory premise is used.

SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED /
FINITE_DIVISOR_SUM_BOUND_SOURCE_PROVED.
-/

namespace GRWTSK.NumberTheory.FiniteDivisorCounting

/-- Positive divisor incidences `(a,d)` with `1 <= a <= B` and `d | a`. -/
def positiveDivisorIncidenceSet
    (B : ℕ) : Finset (Σ _a : ℕ, ℕ) :=
  (Finset.Ioc 0 B).sigma fun a => a.divisors

/-- Real mass of positive divisor incidences up to `B`. -/
def positiveDivisorIncidenceMass
    (B : ℕ) : ℝ :=
  ∑ a ∈ Finset.Ioc 0 B, (a.divisors.card : ℝ)

/-- The incidence finset has the expected divisor-summatory cardinality. -/
theorem positiveDivisorIncidenceSet_card
    (B : ℕ) :
    (positiveDivisorIncidenceSet B).card =
      ∑ a ∈ Finset.Ioc 0 B, a.divisors.card := by
  simp [positiveDivisorIncidenceSet, Finset.card_sigma]

/-- Casting the incidence cardinal gives the real incidence mass. -/
theorem positiveDivisorIncidenceSet_card_cast
    (B : ℕ) :
    ((positiveDivisorIncidenceSet B).card : ℝ) =
      positiveDivisorIncidenceMass B := by
  rw [positiveDivisorIncidenceSet_card]
  simp [positiveDivisorIncidenceMass]

/-- Exact double-counting identity: the divisor-summatory mass is the sum of
integer quotients `floor(B/d)`. -/
theorem positiveDivisorIncidenceMass_eq_sum_floor
    (B : ℕ) :
    positiveDivisorIncidenceMass B =
      ∑ d ∈ Finset.Ioc 0 B, ((B / d : ℕ) : ℝ) := by
  calc
    positiveDivisorIncidenceMass B =
        ∑ a ∈ Finset.Ioc 0 B,
          ∑ d ∈ Finset.Ioc 0 B,
            if d ∣ a then (1 : ℝ) else 0 := by
      unfold positiveDivisorIncidenceMass
      apply Finset.sum_congr rfl
      intro a ha
      have haI := Finset.mem_Ioc.mp ha
      have hfilter :
          (Finset.Ioc 0 B).filter (fun d => d ∣ a) =
            a.divisors := by
        ext d
        simp only [Finset.mem_filter, Finset.mem_Ioc,
          Nat.mem_divisors]
        constructor
        · rintro ⟨⟨hd0, hdB⟩, hda⟩
          exact ⟨hda, Nat.ne_of_gt haI.1⟩
        · rintro ⟨hda, ha0⟩
          have hd0 : 0 < d :=
            Nat.pos_of_dvd_of_pos hda haI.1
          have hda_le : d ≤ a :=
            Nat.le_of_dvd haI.1 hda
          exact ⟨⟨hd0, hda_le.trans haI.2⟩, hda⟩
      rw [Finset.sum_boole, hfilter]
    _ =
        ∑ d ∈ Finset.Ioc 0 B,
          ∑ a ∈ Finset.Ioc 0 B,
            if d ∣ a then (1 : ℝ) else 0 := by
      rw [Finset.sum_comm]
    _ = ∑ d ∈ Finset.Ioc 0 B, ((B / d : ℕ) : ℝ) := by
      apply Finset.sum_congr rfl
      intro d hd
      rw [Finset.sum_boole]
      exact_mod_cast Nat.Ioc_filter_dvd_card_eq_div B d

/-- Reusable finite divisor-summatory estimate.  The explicit `1 <= B`
hypothesis is retained so later logarithmic and quotient bounds cannot silently
use a zero scale. -/
theorem positiveDivisorIncidenceMass_le
    {B : ℕ}
    (hB : 1 ≤ B) :
    positiveDivisorIncidenceMass B ≤
      (B : ℝ) * (1 + Real.log (B : ℝ)) := by
  rw [positiveDivisorIncidenceMass_eq_sum_floor]
  have hBpos : 0 < (B : ℝ) := by
    exact_mod_cast (lt_of_lt_of_le Nat.zero_lt_one hB)
  have hI : Finset.Ioc 0 B = Finset.Icc 1 B := by
    ext d
    simp
    omega
  have hharm :
      (∑ d ∈ Finset.Ioc 0 B, ((d : ℝ)⁻¹)) =
        (harmonic B : ℝ) := by
    rw [hI, harmonic_eq_sum_Icc]
    simp only [Rat.cast_sum, Rat.cast_inv, Rat.cast_natCast]
  calc
    (∑ d ∈ Finset.Ioc 0 B, ((B / d : ℕ) : ℝ)) ≤
        ∑ d ∈ Finset.Ioc 0 B,
          (B : ℝ) / (d : ℝ) := by
      apply Finset.sum_le_sum
      intro d hd
      exact Nat.cast_div_le
    _ = (B : ℝ) *
        ∑ d ∈ Finset.Ioc 0 B, ((d : ℝ)⁻¹) := by
      simp_rw [div_eq_mul_inv]
      rw [Finset.mul_sum]
    _ = (B : ℝ) * (harmonic B : ℝ) := by rw [hharm]
    _ ≤ (B : ℝ) * (1 + Real.log (B : ℝ)) := by
      exact mul_le_mul_of_nonneg_left
        (harmonic_le_one_add_log B)
        hBpos.le


end GRWTSK.NumberTheory.FiniteDivisorCounting
```
