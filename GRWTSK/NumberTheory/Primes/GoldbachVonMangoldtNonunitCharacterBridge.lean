/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.NumberTheory.Primes.GoldbachPsiUnitNonunit
import GRWTSK.NumberTheory.Primes.GoldbachVonMangoldtNonunitBridge
import Mathlib.Tactic

/-!
# Complex nonunit correction equals canonical von Mangoldt mass

This is an exact cast identity for the existing nonunit residue
filter. It does not supply character cancellation.
SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
-/

set_option autoImplicit false

namespace GRWTSK.NumberTheory.Primes.GoldbachVonMangoldtNonunitCharacterBridge

open scoped BigOperators
open GRWTSK.NumberTheory.Primes.GoldbachPsiUnitNonunit
open GRWTSK.NumberTheory.Primes.GoldbachNonunitBudget
open GRWTSK.NumberTheory.Primes.GoldbachVonMangoldtNonunitBridge
open GRWTSK.NumberTheory.Primes.FiniteReducedResidueFibers

/-- The complex nonunit correction is the real canonical von Mangoldt
nonunit mass, transported through the real-to-complex cast. -/
theorem nonunitPsiTotal_eq_canonical_cast (q N : ℕ) :
    nonunitPsiTotal q N =
      ((∑ n ∈ (Finset.range (N + 1)).filter
        (fun n => ¬ IsUnit (n : ZMod q)),
        ArithmeticFunction.vonMangoldt n : ℝ) : ℂ) := by
  rw [← nonunitPsiMass_eq_vonMangoldt_sum]
  unfold nonunitPsiTotal nonunitPsiMass nonunitResidueWeight
  push_cast
  rfl

end GRWTSK.NumberTheory.Primes.GoldbachVonMangoldtNonunitCharacterBridge
