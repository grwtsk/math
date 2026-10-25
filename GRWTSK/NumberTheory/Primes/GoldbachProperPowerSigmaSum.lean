/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.NumberTheory.Primes.GoldbachProperPowerSigmaPacket
import Mathlib.Tactic

/-!
# Exact finite sigma-sum decomposition for proper-power fibers

This source candidate identifies the dependent nested fiber packet
with the sigma-indexed packet using finite sigma summation. No
prime-power uniqueness or analytic estimate is required.

SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
-/

set_option autoImplicit false

namespace GRWTSK.NumberTheory.Primes.GoldbachProperPowerSigmaSum

open scoped BigOperators
open GRWTSK.NumberTheory.Primes.GoldbachProperPowerFiberPacket
open GRWTSK.NumberTheory.Primes.GoldbachProperPowerSigmaPacket

noncomputable section

/-- The dependent finite fiber packet equals its sigma-indexed sum. -/
theorem dependentFiberPacketMass_eq_sigmaPacketMass (q N : ℕ) :
    dependentFiberPacketMass q N = sigmaPacketMass q N := by
  classical
  unfold dependentFiberPacketMass sigmaPacketMass sigmaSupport
  rw [Finset.sum_sigma]
  rfl

end
end GRWTSK.NumberTheory.Primes.GoldbachProperPowerSigmaSum
