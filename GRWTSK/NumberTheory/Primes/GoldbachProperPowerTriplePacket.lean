/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.NumberTheory.Primes.GoldbachProperPowerOriginalPacket
import Mathlib.Tactic

/-!
# Finite original proper-power support as an explicit filtered triple

This intermediate finite sum makes the original support predicate
visible in one Finset filter. It does not claim equality with the
dependent original packet until the nested-sum normalization is proved.

SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
-/

set_option autoImplicit false

namespace GRWTSK.NumberTheory.Primes.GoldbachProperPowerTriplePacket

open scoped BigOperators
open GRWTSK.NumberTheory.Primes.GoldbachProperPowerIndexSupport

noncomputable section

/-- A finite box containing all original supported triples. -/
def tripleBox (N : ℕ) : Finset (ℕ × ℕ × ℕ) :=
  ((Finset.range (N + 1)).product
    ((Finset.range (N + 1)).product (Finset.Icc 2 N)))

/-- Filter the box by the exact dependent original support. -/
def supportedTripleBox (N : ℕ) : Finset (ℕ × ℕ × ℕ) :=
  (tripleBox N).filter
    (fun t => OriginalSupport N t.2.1 t.2.2 t.1)

/-- The explicit supported triple packet, preserving the nonunit
indicator at the represented integer. -/
def supportedTriplePacketMass (q N : ℕ) : ℝ :=
  ∑ t ∈ supportedTripleBox N,
    if ¬ IsUnit ((t.1 : ℕ) : ZMod q) then
      Real.log (t.2.1 : ℝ)
    else 0

/-- Every member of the supported box satisfies the original support. -/
theorem mem_supportedTripleBox_support (N : ℕ) (t : ℕ × ℕ × ℕ)
    (ht : t ∈ supportedTripleBox N) :
    OriginalSupport N t.2.1 t.2.2 t.1 := by
  exact (Finset.mem_filter.mp ht).2

end
end GRWTSK.NumberTheory.Primes.GoldbachProperPowerTriplePacket
