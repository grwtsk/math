/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.NumberTheory.Primes.GoldbachProperPowerSigmaFiberEquiv
import Mathlib.Tactic

/-!
# Sigma packet membership-subtype sum normalization

The finite sigma packet is a sum over sigmaSupport; its attached
membership subtype enumerates exactly those indices once each.
No arithmetic hypotheses are added.

SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
-/

set_option autoImplicit false

namespace GRWTSK.NumberTheory.Primes.GoldbachProperPowerSigmaNormalization

open scoped BigOperators
open GRWTSK.NumberTheory.Primes.GoldbachProperPowerSigmaPacket
open GRWTSK.NumberTheory.Primes.GoldbachProperPowerSigmaFiberEquiv

noncomputable section

/-- The sigma packet equals the finite sum over its membership subtype. -/
theorem sigmaPacketMass_eq_subtype_sum (q N : ℕ) :
    sigmaPacketMass q N =
      ∑ t : SigmaSupportedIndex N,
        if ¬ IsUnit (t.1.1 : ZMod q) then
          Real.log (t.1.2.1 : ℝ)
        else 0 := by
  classical
  unfold sigmaPacketMass
  change (∑ t ∈ sigmaSupport N,
      if ¬ IsUnit (t.1 : ZMod q) then
        Real.log (t.2.1 : ℝ) else 0) =
    ∑ t : { t : Σ n : ℕ, ℕ × ℕ // t ∈ sigmaSupport N },
      (if ¬ IsUnit (t.1.1 : ZMod q) then
        Real.log (t.1.2.1 : ℝ) else 0)
  exact (Finset.sum_attach (sigmaSupport N)
    (fun t : Σ n : ℕ, ℕ × ℕ =>
      if ¬ IsUnit (t.1 : ZMod q) then
        Real.log (t.2.1 : ℝ) else 0)).symm

end
end GRWTSK.NumberTheory.Primes.GoldbachProperPowerSigmaNormalization
