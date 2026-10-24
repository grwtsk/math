/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.NumberTheory.Primes.GoldbachVonMangoldtPointwise
import GRWTSK.NumberTheory.Primes.GoldbachNonunitBudget

/-!
# Nonunit finite mass as a canonical von Mangoldt filtered sum

This transports the pointwise identity through the exact nonunit
filter on ZMod q. No coprimality or positive-modulus restriction is
inserted, and no analytic estimate is inferred.
SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
-/

set_option autoImplicit false

namespace GRWTSK.NumberTheory.Primes.GoldbachVonMangoldtNonunitBridge

open scoped BigOperators
open GRWTSK.NumberTheory.Primes.GoldbachNonunitBudget
open GRWTSK.NumberTheory.Primes.GoldbachVonMangoldtPointwise

/-- Nonunit psi mass equals the canonical von Mangoldt sum on
the exact nonunit residue support. -/
theorem nonunitPsiMass_eq_vonMangoldt_sum (q N : ℕ) :
    nonunitPsiMass q N =
      ∑ n ∈ (Finset.range (N + 1)).filter
        (fun n => ¬ IsUnit (n : ZMod q)),
        ArithmeticFunction.vonMangoldt n := by
  unfold nonunitPsiMass
  apply Finset.sum_congr rfl
  intro n hn
  exact primePowerWeight_eq_vonMangoldt n

end GRWTSK.NumberTheory.Primes.GoldbachVonMangoldtNonunitBridge
