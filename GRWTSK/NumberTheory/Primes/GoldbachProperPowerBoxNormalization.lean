/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.NumberTheory.Primes.GoldbachProperPowerBoxSumTransport
import Mathlib.Tactic

/-!
# Finite supported triple packet to membership-subtype sum

The finite set's attach operation enumerates precisely its members,
each exactly once. This is a source proof candidate for the remaining
filtered-box normalization, not a claim of compiler acceptance.

SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
-/

set_option autoImplicit false

namespace GRWTSK.NumberTheory.Primes.GoldbachProperPowerBoxNormalization

open scoped BigOperators
open GRWTSK.NumberTheory.Primes.GoldbachProperPowerTriplePacket
open GRWTSK.NumberTheory.Primes.GoldbachProperPowerTripleEquiv
open GRWTSK.NumberTheory.Primes.GoldbachProperPowerBoxSumTransport

noncomputable section

/-- The filtered triple packet equals the finite membership-subtype sum. -/
theorem supportedTriplePacketMass_eq_box_sum (q N : ℕ) :
    supportedTriplePacketMass q N =
      ∑ t : BoxIndex N, boxWeight q N t := by
  classical
  unfold supportedTriplePacketMass
  change (∑ t ∈ supportedTripleBox N,
      if ¬ IsUnit ((t.1 : ℕ) : ZMod q) then
        Real.log (t.2.1 : ℝ) else 0) =
    ∑ t : { t : ℕ × ℕ × ℕ // t ∈ supportedTripleBox N },
      (if ¬ IsUnit ((t.1.1 : ℕ) : ZMod q) then
        Real.log (t.1.2.1 : ℝ) else 0)
  exact (Finset.sum_attach (supportedTripleBox N)
    (fun t : ℕ × ℕ × ℕ =>
      if ¬ IsUnit ((t.1 : ℕ) : ZMod q) then
        Real.log (t.2.1 : ℝ) else 0)).symm

end
end GRWTSK.NumberTheory.Primes.GoldbachProperPowerBoxNormalization
