/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.NumberTheory.Primes.FiniteResidueCharacterTransfer
import Mathlib.Tactic

/-!
# Exact finite modular residue fibers

This module specializes the finite residue-fiber construction to ZMod q.
It does not identify ZMod q with its unit group or assert that arbitrary
residue filters are spanned by multiplicative characters.

SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
-/

set_option autoImplicit false

namespace GRWTSK.NumberTheory.Primes.FiniteModularResidueFibers

open scoped BigOperators
open GRWTSK.NumberTheory.Primes.FiniteResidueCharacterTransfer

noncomputable section

/-- A finite sum over the exact congruence class represented by a : ZMod q. -/
def modularFiberWeight
    (q N : ℕ) (a : ZMod q) (weight : ℕ → ℂ) : ℂ :=
  residueFiberWeight N (fun n : ℕ => (n : ZMod q)) weight a

/-- Exact agreement between the modular fiber and the corresponding
integer-indexed congruence-filtered sum. -/
theorem modularFiberWeight_eq_sum_filter
    (q N : ℕ) (a : ZMod q) (weight : ℕ → ℂ) :
    modularFiberWeight q N a weight =
      ∑ n ∈ Finset.range (N + 1) with (n : ZMod q) = a, weight n := by
  rfl

end
end GRWTSK.NumberTheory.Primes.FiniteModularResidueFibers
