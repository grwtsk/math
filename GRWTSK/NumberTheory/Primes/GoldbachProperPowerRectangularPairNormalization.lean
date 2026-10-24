/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.NumberTheory.Primes.GoldbachProperPowerRectangularPairEquiv
import Mathlib.Tactic

/-!
# Rectangular filtered pair packet to membership-subtype sum

Finite attach normalization retains each supported pair and its
nonunit prime-log weight. This is a source candidate only.
SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
-/

set_option autoImplicit false

namespace GRWTSK.NumberTheory.Primes.GoldbachProperPowerRectangularPairNormalization

open scoped BigOperators
open GRWTSK.NumberTheory.Primes.GoldbachProperPowerRectangularPairSupport
open GRWTSK.NumberTheory.Primes.GoldbachProperPowerRectangularPairSum
open GRWTSK.NumberTheory.Primes.GoldbachProperPowerRectangularPairEquiv

noncomputable section

/-- Exact normalization of the filtered pair sum to PairIndex. -/
theorem rectangularProperPowerMass_eq_pairIndex_sum (q N : ℕ) :
    rectangularProperPowerMass q N =
      ∑ t : PairIndex N,
        if ¬ IsUnit ((t.1.1 ^ t.1.2 : ℕ) : ZMod q) then
          Real.log (t.1.1 : ℝ)
        else 0 := by
  classical
  rw [rectangularProperPowerMass_eq_pair_sum]
  change (∑ t ∈ rectangularPairSupport N,
      if ¬ IsUnit ((t.1 ^ t.2 : ℕ) : ZMod q) then
        Real.log (t.1 : ℝ) else 0) =
    ∑ t : { t : ℕ × ℕ // t ∈ rectangularPairSupport N },
      (if ¬ IsUnit ((t.1.1 ^ t.1.2 : ℕ) : ZMod q) then
        Real.log (t.1.1 : ℝ) else 0)
  exact (Finset.sum_attach (rectangularPairSupport N)
    (fun t : ℕ × ℕ =>
      if ¬ IsUnit ((t.1 ^ t.2 : ℕ) : ZMod q) then
        Real.log (t.1 : ℝ) else 0)).symm

end
end GRWTSK.NumberTheory.Primes.GoldbachProperPowerRectangularPairNormalization
