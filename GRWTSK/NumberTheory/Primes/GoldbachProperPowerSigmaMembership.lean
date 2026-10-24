/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.NumberTheory.Primes.GoldbachProperPowerSigmaSum
import GRWTSK.NumberTheory.Primes.GoldbachProperPowerFiberIndex
import Mathlib.Tactic

/-!
# Exact finite sigma support membership for prime-power fibers

The sigma-support membership criterion is stated explicitly, without
claiming a subtype equivalence or sum equality.
SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
-/

set_option autoImplicit false

namespace GRWTSK.NumberTheory.Primes.GoldbachProperPowerSigmaMembership

open GRWTSK.NumberTheory.Primes.GoldbachProperPowerSigmaPacket
open GRWTSK.NumberTheory.Primes.GoldbachProperPowerOriginalPairFilter

/-- Membership in the finite sigma support retains both dependent conditions. -/
theorem mem_sigmaSupport_iff (N n : ℕ) (t : ℕ × ℕ) :
    (⟨n, t⟩ : Σ n : ℕ, ℕ × ℕ) ∈ sigmaSupport N ↔
      n ∈ Finset.range (N + 1) ∧ t ∈ pairSupportAt n := by
  simp [sigmaSupport, Finset.mem_sigma]

end GRWTSK.NumberTheory.Primes.GoldbachProperPowerSigmaMembership
