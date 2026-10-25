/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.NumberTheory.Primes.GoldbachProperPowerWeightTransport
import Mathlib.Tactic

/-!
# Finite sum transport across supported prime-power indices

The equivalence of original and rectangular supported indices and
the equality of their weights give an exact finite sum identity.
Normalization to the original nested sums remains separate.

SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
-/

set_option autoImplicit false

namespace GRWTSK.NumberTheory.Primes.GoldbachProperPowerSumTransport

open scoped BigOperators
open GRWTSK.NumberTheory.Primes.GoldbachProperPowerIndexEquiv
open GRWTSK.NumberTheory.Primes.GoldbachProperPowerWeightTransport

noncomputable section

/-- Finite sum over the original supported triples. -/
def originalSupportedMass (q N : ℕ) : ℝ :=
  ∑ t : OriginalIndex N, originalWeight q N t

/-- Finite sum over the rectangular supported pairs. -/
def rectangularSupportedMass (q N : ℕ) : ℝ :=
  ∑ t : RectangularIndex N, rectangularWeight q N t

/-- Exact finite sum transport through the supported-index equivalence. -/
theorem originalSupportedMass_eq_rectangularSupportedMass
    (q N : ℕ) :
    originalSupportedMass q N = rectangularSupportedMass q N := by
  classical
  unfold originalSupportedMass rectangularSupportedMass
  rw [← Equiv.sum_comp (indexEquiv N) (rectangularWeight q N)]
  apply Finset.sum_congr rfl
  intro t ht
  exact (weight_toRectangular q N t).symm

end
end GRWTSK.NumberTheory.Primes.GoldbachProperPowerSumTransport
