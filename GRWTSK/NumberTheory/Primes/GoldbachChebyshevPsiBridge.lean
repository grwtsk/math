/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.NumberTheory.Primes.GoldbachVonMangoldtFiniteSum
import Mathlib.NumberTheory.Chebyshev
import Mathlib.Tactic

/-!
# Inclusive finite total psi mass equals canonical Chebyshev psi

The canonical definition uses Ioc 0 floor(x), and the pinned
Chebyshev.psi_eq_sum_Icc supplies the inclusive zero-based form.
SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
-/

set_option autoImplicit false

namespace GRWTSK.NumberTheory.Primes.GoldbachChebyshevPsiBridge

open scoped BigOperators
open GRWTSK.NumberTheory.Primes.GoldbachNonunitBudget
open GRWTSK.NumberTheory.Primes.GoldbachVonMangoldtFiniteSum

/-- Inclusive finite total prime-power mass agrees with Chebyshev psi. -/
theorem totalPsiMass_eq_chebyshev_psi (N : ℕ) :
    totalPsiMass N = Chebyshev.psi (N : ℝ) := by
  rw [totalPsiMass_eq_vonMangoldt_sum, Chebyshev.psi_eq_sum_Icc]
  simp only [Nat.floor_natCast]
  rw [Nat.range_eq_Icc_zero_sub_one (N + 1) (Nat.succ_ne_zero N)]
  simp

end GRWTSK.NumberTheory.Primes.GoldbachChebyshevPsiBridge
