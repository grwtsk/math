# Complete source: GRWTSK.NumberTheory.Moebius.CenteredLowGCDDivisorSquareMass

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `876e5a5d69c9ecc54575bcf44bf4266cfa19a9bb` · SHA-256 `87d0de5ca0590eb5ce70d0942fce15df631f34e41d78f53a99669f6cd915c20b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors.
Formalization assistance: OpenAI ChatGPT.
Imported Mathlib results retain their original credits and Apache-2.0 license.
Status: SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
-/
import GRWTSK.NumberTheory.FiniteDivisorSummatoryBound
import GRWTSK.NumberTheory.Moebius.CenteredLowGCDDivisorSqrtBound
import Mathlib.Tactic

/-!
# Finite divisor-square mass on the centered low-gcd octave

The pointwise square-root bound is combined with the separately owned finite
divisor-summatory estimate.  No analytic-number-theory premise is introduced.
-/

set_option autoImplicit false
noncomputable section
open scoped BigOperators ArithmeticFunction ArithmeticFunction.Moebius

namespace GRWTSK.NumberTheory.Moebius.CenteredLowGCD

open ArithmeticFunction
open GRWTSK.NumberTheory.FiniteDivisorCounting

/-- Sum of squared divisor counts over the exact octave. -/
def octaveDivisorSquareMass (X : ℕ) : ℝ :=
  ∑ n ∈ octaveIndexSet X,
    ((n.divisors.card : ℝ) ^ 2)

/-- Finite mean-square divisor estimate sufficient for the diagonal.
It deliberately reuses the separately owned finite divisor-summatory theorem
rather than duplicating that proof. -/
theorem octaveDivisorSquareMass_le
    {X : ℕ}
    (hX : 1 ≤ X) :
    octaveDivisorSquareMass X ≤
      24 * (X : ℝ) * Real.sqrt (X : ℝ) *
        (1 + Real.log ((4 * X : ℕ) : ℝ)) := by
  have hpoint :
      ∀ n ∈ octaveIndexSet X,
        ((n.divisors.card : ℝ) ^ 2) ≤
          (6 * Real.sqrt (X : ℝ)) *
            (n.divisors.card : ℝ) := by
    intro n hn
    have htau := card_divisors_cast_le_six_mul_sqrt_scale hX hn
    have htaunonneg : 0 ≤ (n.divisors.card : ℝ) := by positivity
    nlinarith
  have hsubset :
      octaveIndexSet X ⊆ Finset.Ioc 0 (4 * X) := by
    intro n hn
    exact Finset.mem_Ioc.mpr
      ⟨(octave_mem_bounds hn).1,
       (octave_mem_bounds hn).2⟩
  have hsumCount :
      (∑ n ∈ octaveIndexSet X,
        (n.divisors.card : ℝ)) ≤
        positiveDivisorIncidenceMass (4 * X) := by
    unfold positiveDivisorIncidenceMass
    exact Finset.sum_le_sum_of_subset_of_nonneg
      hsubset
      (fun n hnBig hnSmall => by positivity)
  have hB : 1 ≤ 4 * X := by omega
  have hsumBound := positiveDivisorIncidenceMass_le hB
  have hsqrtNonneg : 0 ≤ 6 * Real.sqrt (X : ℝ) := by positivity
  calc
    octaveDivisorSquareMass X ≤
        ∑ n ∈ octaveIndexSet X,
          (6 * Real.sqrt (X : ℝ)) *
            (n.divisors.card : ℝ) := by
      unfold octaveDivisorSquareMass
      exact Finset.sum_le_sum hpoint
    _ = (6 * Real.sqrt (X : ℝ)) *
        ∑ n ∈ octaveIndexSet X,
          (n.divisors.card : ℝ) := by
      rw [Finset.mul_sum]
    _ ≤ (6 * Real.sqrt (X : ℝ)) *
        positiveDivisorIncidenceMass (4 * X) := by
      exact mul_le_mul_of_nonneg_left hsumCount hsqrtNonneg
    _ ≤ (6 * Real.sqrt (X : ℝ)) *
        (((4 * X : ℕ) : ℝ) *
          (1 + Real.log ((4 * X : ℕ) : ℝ))) := by
      exact mul_le_mul_of_nonneg_left hsumBound hsqrtNonneg
    _ = 24 * (X : ℝ) * Real.sqrt (X : ℝ) *
        (1 + Real.log ((4 * X : ℕ) : ℝ)) := by
      push_cast
      ring


end GRWTSK.NumberTheory.Moebius.CenteredLowGCD
```
