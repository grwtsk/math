/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.NumberTheory.Primes.GoldbachProperPowerFiberSumTransport
import Mathlib.Tactic

/-!
# Finite dependent fiber packet and subtype normalization

The finite sigma-style packet uses the original outer n range and
the fixed-n pairSupportAt fiber. The identity to the original packet
is a definitional unfolding of the previously established fiber sum.
The subtype normalization is still a separate obligation.

SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
-/

set_option autoImplicit false

namespace GRWTSK.NumberTheory.Primes.GoldbachProperPowerFiberPacket

open scoped BigOperators
open GRWTSK.NumberTheory.Primes.GoldbachProperPowerOriginalPairFilter
open GRWTSK.NumberTheory.Primes.GoldbachProperPowerFiberSum
open GRWTSK.NumberTheory.Primes.GoldbachProperPowerOriginalPacket

noncomputable section

/-- The dependent finite fiber packet with the original nonunit weight. -/
def dependentFiberPacketMass (q N : ℕ) : ℝ :=
  ∑ n ∈ Finset.range (N + 1),
    ∑ t ∈ pairSupportAt n,
      if ¬ IsUnit (n : ZMod q) then
        Real.log (t.1 : ℝ)
      else 0

/-- The original packet is exactly the dependent fiber packet. -/
theorem originalPacketMass_eq_dependentFiberPacketMass (q N : ℕ) :
    originalPacketMass q N = dependentFiberPacketMass q N := by
  exact originalPacketMass_eq_fiber_sum q N

end
end GRWTSK.NumberTheory.Primes.GoldbachProperPowerFiberPacket
