# Complete source: GRWTSK.NumberTheory.Moebius.ReciprocalPrefixVariationPowerSaving

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a33c8dc857f4ab2859f3830f9313611613d83604` · SHA-256 `989dc07a24b5d021ce373c91c35195ea2bbc69d452a407fab6acfe39b895c2b8`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors; OpenAI Codex formalization assistance.
Mathlib imports retain upstream authorship and Apache-2.0 licensing. -/
import GRWTSK.NumberTheory.Moebius.ReciprocalPrefixDensityAdapter
import GRWTSK.NumberTheory.Moebius.ReciprocalPrefixVariationSummability

/-!
# Power saving in reciprocal-prefix square variation

The elementary bound on the reciprocal Möbius prefix gives the linear
baseline for its endpoint-centered square variation.  Any positive power
saving from that baseline absorbs the logarithmic deterministic kernel cost,
makes the explicit variation majorant summable, and therefore proves the
critical vertical-line estimate.

The power-saving premise for the actual Möbius prefix remains open.
-/

set_option autoImplicit false
noncomputable section

open scoped BigOperators

namespace GRWTSK.NumberTheory.Moebius.ReciprocalPrefixVariationPowerSaving

open GRWTSK.NumberTheory.Moebius.ReciprocalPrefix
open GRWTSK.NumberTheory.Moebius.ReciprocalPrefixDensityAdapter
open GRWTSK.NumberTheory.Moebius.ReciprocalPrefixVariationEnergy
open GRWTSK.NumberTheory.Moebius.ReciprocalPrefixVariationSummability
open GRWTSK.NumberTheory.Moebius.CriticalIntervalBlocks

/-- Elementary linear baseline for endpoint-centered square variation. -/
theorem reciprocalPrefixVariationSquare_le_four_mul (n : ℕ) :
    reciprocalPrefixVariationSquare n ≤ 4 * n := by
  unfold reciprocalPrefixVariationSquare
  calc
    (∑ k ∈ Finset.range n,
        (pickupReciprocalPrefix k - pickupReciprocalPrefix n) ^ 2) ≤
        ∑ _k ∈ Finset.range n, (4 : ℝ) := by
      apply Finset.sum_le_sum
      intro k _hk
      have habs :
          |pickupReciprocalPrefix k - pickupReciprocalPrefix n| ≤ 2 := by
        calc
          |pickupReciprocalPrefix k - pickupReciprocalPrefix n| ≤
              |pickupReciprocalPrefix k| + |pickupReciprocalPrefix n| :=
            abs_sub _ _
          _ ≤ 1 + 1 := add_le_add
            (pickupReciprocalPrefix_abs_le_one k)
            (pickupReciprocalPrefix_abs_le_one n)
          _ = 2 := by norm_num
      rw [← sq_abs]
      nlinarith [abs_nonneg (pickupReciprocalPrefix k - pickupReciprocalPrefix n)]
    _ = 4 * n := by simp [mul_comm]

/-- A positive power saving from the elementary linear variation scale. -/
def ReciprocalVariationPowerSaving : Prop :=
  ∃ C δ : ℝ, 0 ≤ C ∧ 0 < δ ∧
    ∀ n : ℕ, 1 ≤ n →
      reciprocalPrefixVariationSquare n ≤ C * (n : ℝ) ^ (1 - δ)

/-- The logarithm in the explicit majorant costs only half of any available
power saving. -/
theorem reciprocalLogVariationMajorant_le_of_powerSaving
    {C δ : ℝ} (hC : 0 ≤ C) (hδ : 0 < δ)
    (hV : ∀ n : ℕ, 1 ≤ n →
      reciprocalPrefixVariationSquare n ≤ C * (n : ℝ) ^ (1 - δ))
    (n : ℕ) :
    reciprocalLogVariationMajorant n ≤
      (4 * C * (4 + 4 / δ)) * (n : ℝ) ^ (-1 - δ / 2) := by
  rcases n with _ | n
  · simp [reciprocalLogVariationMajorant, reciprocalPrefixVariationSquare]
    positivity
  · have hn : 1 ≤ n + 1 := by omega
    have hx : (0 : ℝ) < (n + 1 : ℕ) := by positivity
    have hx1 : (1 : ℝ) ≤ (n + 1 : ℕ) := by exact_mod_cast hn
    have hδ2 : 0 < δ / 2 := by positivity
    have hp : 1 ≤ ((n + 1 : ℕ) : ℝ) ^ (δ / 2) :=
      Real.one_le_rpow hx1 hδ2.le
    have hlog := Real.log_natCast_le_rpow_div (n + 1) hδ2
    have hkernel :
        4 + 2 * Real.log ((n + 1 : ℕ) : ℝ) ≤
          (4 + 4 / δ) * ((n + 1 : ℕ) : ℝ) ^ (δ / 2) := by
      calc
        4 + 2 * Real.log ((n + 1 : ℕ) : ℝ) ≤
            4 + 2 * (((n + 1 : ℕ) : ℝ) ^ (δ / 2) / (δ / 2)) := by
              gcongr
        _ = 4 + (4 / δ) * ((n + 1 : ℕ) : ℝ) ^ (δ / 2) := by
              field_simp
              ring
        _ ≤ 4 * ((n + 1 : ℕ) : ℝ) ^ (δ / 2) +
            (4 / δ) * ((n + 1 : ℕ) : ℝ) ^ (δ / 2) := by
              gcongr
              nlinarith
        _ = (4 + 4 / δ) * ((n + 1 : ℕ) : ℝ) ^ (δ / 2) := by ring
    have hpow :
        ((n + 1 : ℕ) : ℝ) ^ (δ / 2) *
            ((n + 1 : ℕ) : ℝ) ^ (1 - δ) *
            ((n + 1 : ℕ) : ℝ) ^ (-(2 : ℝ)) =
          ((n + 1 : ℕ) : ℝ) ^ (-1 - δ / 2) := by
      rw [← Real.rpow_add hx, ← Real.rpow_add hx]
      congr 1
      ring
    have hV0 : 0 ≤ reciprocalPrefixVariationSquare (n + 1) := by
      unfold reciprocalPrefixVariationSquare
      positivity
    have hVbound := hV (n + 1) hn
    unfold reciprocalLogVariationMajorant
    calc
      4 * (4 + 2 * Real.log ((n + 1 : ℕ) : ℝ)) *
            reciprocalPrefixVariationSquare (n + 1) *
            ((n + 1 : ℕ) : ℝ) ^ (-(2 : ℝ)) ≤
          4 * ((4 + 4 / δ) * ((n + 1 : ℕ) : ℝ) ^ (δ / 2)) *
            (C * ((n + 1 : ℕ) : ℝ) ^ (1 - δ)) *
            ((n + 1 : ℕ) : ℝ) ^ (-(2 : ℝ)) := by
              gcongr
      _ = (4 * C * (4 + 4 / δ)) *
          ((n + 1 : ℕ) : ℝ) ^ (-1 - δ / 2) := by
            rw [← hpow]
            ring

/-- A power saving in endpoint-centered square variation pays the explicit
logarithmically weighted summability debt. -/
theorem reciprocalLogVariationSummable_of_powerSaving
    (hV : ReciprocalVariationPowerSaving) :
    ReciprocalLogVariationSummable := by
  obtain ⟨C, δ, hC, hδ, hbound⟩ := hV
  unfold ReciprocalLogVariationSummable
  apply Summable.of_nonneg_of_le
    reciprocalLogVariationMajorant_nonneg
    (reciprocalLogVariationMajorant_le_of_powerSaving hC hδ hbound)
  apply Summable.mul_left
  exact Real.summable_nat_rpow.mpr (by linarith)

/-- The reciprocal-prefix variation power saving is a concrete sufficient
arithmetic condition for the completed critical vertical-line estimate. -/
theorem criticalBoundary_of_reciprocalPrefixVariationPowerSaving
    (hV : ReciprocalVariationPowerSaving) :
    CriticalBoundaryVerticalLineUniform :=
  criticalBoundary_of_reciprocalLogVariationSummable
    (reciprocalLogVariationSummable_of_powerSaving hV)

end GRWTSK.NumberTheory.Moebius.ReciprocalPrefixVariationPowerSaving

#print axioms GRWTSK.NumberTheory.Moebius.ReciprocalPrefixVariationPowerSaving.reciprocalPrefixVariationSquare_le_four_mul
#print axioms GRWTSK.NumberTheory.Moebius.ReciprocalPrefixVariationPowerSaving.reciprocalLogVariationMajorant_le_of_powerSaving
#print axioms GRWTSK.NumberTheory.Moebius.ReciprocalPrefixVariationPowerSaving.reciprocalLogVariationSummable_of_powerSaving
#print axioms GRWTSK.NumberTheory.Moebius.ReciprocalPrefixVariationPowerSaving.criticalBoundary_of_reciprocalPrefixVariationPowerSaving
```
