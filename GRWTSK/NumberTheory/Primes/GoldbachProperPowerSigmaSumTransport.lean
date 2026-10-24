/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.NumberTheory.Primes.GoldbachProperPowerSigmaWeight
import Mathlib.Tactic

/-!
# Exact finite sigma-subtype to fiber-subtype sum transport

The index equivalence and definitional weight preservation yield
the finite weighted-sum identity. This remains a source candidate
until Lean elaboration and kernel checking are authorized.
SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
-/

set_option autoImplicit false

namespace GRWTSK.NumberTheory.Primes.GoldbachProperPowerSigmaSumTransport

open scoped BigOperators
open GRWTSK.NumberTheory.Primes.GoldbachProperPowerSigmaFiberEquiv
open GRWTSK.NumberTheory.Primes.GoldbachProperPowerSigmaWeight
open GRWTSK.NumberTheory.Primes.GoldbachProperPowerFiberSumTransport
open GRWTSK.NumberTheory.Primes.GoldbachProperPowerFiberWeight

noncomputable section

/-- Transport the complete finite supported sigma mass to FiberIndex. -/
theorem sigma_subtype_sum_eq_fiberSupportedMass (q N : ℕ) :
    (∑ t : SigmaSupportedIndex N, sigmaWeight q N t) =
      fiberSupportedMass q N := by
  classical
  unfold fiberSupportedMass
  rw [← Equiv.sum_comp (sigmaFiberEquiv N) (fiberWeight q N)]
  apply Finset.sum_congr rfl
  intro t ht
  exact sigmaWeight_eq_fiberWeight q N t

end
end GRWTSK.NumberTheory.Primes.GoldbachProperPowerSigmaSumTransport
