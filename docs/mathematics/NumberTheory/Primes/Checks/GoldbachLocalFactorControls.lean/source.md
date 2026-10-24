# Complete source: GRWTSK.NumberTheory.Primes.Checks.GoldbachLocalFactorControls

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b0d869d096e9dd7f5cdf054d3faf58bdedc56af5` · SHA-256 `947ba4b16bd0568c5685fc97b17f209256f83c380268db3717edba35fbac75f9`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human research direction: grwtsk contributors. Proof drafting assistance: OpenAI ChatGPT.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Primes.GoldbachLocalFactors
import Mathlib.Tactic.NormNum

set_option autoImplicit false

/-!
# Goldbach local-factor scope controls

These finite controls preserve the parity obstruction, the distinction between
local admissibility and an actual prime representation, and the exact rational
normalization. They have not been executed in Lean.

SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.
-/

namespace GRWTSK.NumberTheory.Primes.Checks.GoldbachLocalFactorControls

open scoped BigOperators
open GRWTSK.NumberTheory.Primes.ConfigurationCounts
open GRWTSK.NumberTheory.Primes.GoldbachLocalFactors

/-- An even target has one admissible class modulo two. -/
theorem two_even_residue_count :
    goldbachPrimeResidueCount 2 10 = 1 := by decide

/-- An odd target has no admissible class modulo two. -/
theorem two_odd_residue_count :
    goldbachPrimeResidueCount 2 9 = 0 := by decide

/-- When three divides the target, both nonzero residue classes survive. -/
theorem three_divisor_residue_count :
    goldbachPrimeResidueCount 3 6 = 2 := by decide

/-- When three does not divide the target, exactly one class survives. -/
theorem three_nondivisor_residue_count :
    goldbachPrimeResidueCount 3 4 = 1 := by decide

/-- The normalized modulus-two factor is two on an even target. -/
theorem two_even_local_factor :
    goldbachPrimeLocalFactor 2 10 = 2 := by
  norm_num [goldbachPrimeLocalFactor, goldbachPrimeResidueCount,
    goldbachPrimeResidues]

/-- The normalized modulus-two factor vanishes on an odd target. -/
theorem two_odd_local_factor :
    goldbachPrimeLocalFactor 2 9 = 0 := by
  norm_num [goldbachPrimeLocalFactor, goldbachPrimeResidueCount,
    goldbachPrimeResidues]

/-- A dividing odd prime contributes the exact correction-enhanced factor. -/
theorem five_divisor_local_factor :
    goldbachPrimeLocalFactor 5 10 = 5 / 4 := by
  norm_num [goldbachPrimeLocalFactor, goldbachPrimeResidueCount,
    goldbachPrimeResidues]

/-- A nondividing odd prime contributes the universal factor. -/
theorem five_nondivisor_local_factor :
    goldbachPrimeLocalFactor 5 12 = 15 / 16 := by
  norm_num [goldbachPrimeLocalFactor, goldbachPrimeResidueCount,
    goldbachPrimeResidues]

/-- The corresponding divisor correction is `(5-1)/(5-2)`. -/
theorem five_divisor_correction :
    goldbachDivisorCorrection 5 10 = 4 / 3 := by
  norm_num [goldbachDivisorCorrection]

/-- Positive odd-prime local density alone does not prove a Goldbach
representation; the target one has no two-prime sum. -/
theorem odd_local_factor_not_global_witness :
    0 < goldbachPrimeLocalFactor 3 1 ∧ goldbachCount 1 = 0 := by
  constructor
  · norm_num [goldbachPrimeLocalFactor, goldbachPrimeResidueCount,
      goldbachPrimeResidues]
  · decide

/-- Omitting the modulus-two factor leaves a positive finite odd-prime product
on an inadmissible odd target. -/
theorem omitted_two_false_positive :
    0 < finiteGoldbachLocalProduct {3, 5} 1 := by
  norm_num [finiteGoldbachLocalProduct, goldbachPrimeLocalFactor,
    goldbachPrimeResidueCount, goldbachPrimeResidues]

/-- Restoring the modulus-two factor rejects the same odd target. -/
theorem retained_two_rejects_odd :
    finiteGoldbachLocalProduct {2, 3, 5} 1 = 0 := by
  norm_num [finiteGoldbachLocalProduct, goldbachPrimeLocalFactor,
    goldbachPrimeResidueCount, goldbachPrimeResidues]

end GRWTSK.NumberTheory.Primes.Checks.GoldbachLocalFactorControls
```
