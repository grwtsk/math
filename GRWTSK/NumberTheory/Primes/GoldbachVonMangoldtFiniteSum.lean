/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.NumberTheory.Primes.GoldbachVonMangoldtPointwise
import GRWTSK.NumberTheory.Primes.GoldbachNonunitBudget

/-!
# Finite total prime-power mass as canonical von Mangoldt sum

This transports the source-level pointwise identification through
the exact inclusive cutoff range. It is a finite sum identity, not
an asymptotic Chebyshev estimate.
SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
-/

set_option autoImplicit false

namespace GRWTSK.NumberTheory.Primes.GoldbachVonMangoldtFiniteSum

open scoped BigOperators
open GRWTSK.NumberTheory.Primes.GoldbachNonunitBudget
open GRWTSK.NumberTheory.Primes.GoldbachVonMangoldtPointwise

/-- The repository's finite total psi mass is the inclusive von Mangoldt sum. -/
theorem totalPsiMass_eq_vonMangoldt_sum (N : ℕ) :
    totalPsiMass N =
      ∑ n ∈ Finset.range (N + 1), ArithmeticFunction.vonMangoldt n := by
  unfold totalPsiMass
  apply Finset.sum_congr rfl
  intro n hn
  exact primePowerWeight_eq_vonMangoldt n

end GRWTSK.NumberTheory.Primes.GoldbachVonMangoldtFiniteSum
