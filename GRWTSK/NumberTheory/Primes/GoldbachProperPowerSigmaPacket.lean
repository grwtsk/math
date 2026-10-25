/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.NumberTheory.Primes.GoldbachProperPowerFiberPacket
import Mathlib.Tactic

/-!
# Dependent prime-power fiber packet: explicit sigma indexing

The finite sigma set retains the actual n-dependent pair support.
This is a definition, not an asserted equivalence or a completed
sum reindexing. SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
-/

set_option autoImplicit false

namespace GRWTSK.NumberTheory.Primes.GoldbachProperPowerSigmaPacket

open scoped BigOperators
open GRWTSK.NumberTheory.Primes.GoldbachProperPowerOriginalPairFilter

/-- Finite sigma support over n≤N and (p,k) in pairSupportAt n. -/
def sigmaSupport (N : ℕ) : Finset (Σ n : ℕ, ℕ × ℕ) :=
  (Finset.range (N + 1)).sigma (fun n => pairSupportAt n)

/-- Weight on the sigma packet, retaining the nonunit test at n. -/
noncomputable def sigmaPacketMass (q N : ℕ) : ℝ :=
  ∑ t ∈ sigmaSupport N,
    if ¬ IsUnit (t.1 : ZMod q) then
      Real.log (t.2.1 : ℝ)
    else 0

end GRWTSK.NumberTheory.Primes.GoldbachProperPowerSigmaPacket
