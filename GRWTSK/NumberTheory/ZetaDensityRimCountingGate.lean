import Mathlib

/-!
# Finite zero-density counting gate for rim obstruction witnesses

Copyright (c) 2026 grwtsk contributors. MIT.

A density upper bound cannot show that the off-rim set is empty unless
an independent lower bound strictly exceeds it (or an emptiness theorem
is supplied). The injection below must be constructed from actual prime
and zero-source data in any future analytic application.

SOURCE_CANDIDATE. Compilation, fresh kernel replay and transitive axiom
audit are NOT_RUN. No RH claim.
-/

namespace GRWTSK.NumberTheory.ZetaDensityRimCountingGate

/-- A finite injection of off-rim graph witnesses into analytic zero records
transfers an upper bound on zero records to graph witnesses. -/
theorem rim_witnesses_le_zero_records
    {Graph Zero : Type*} [DecidableEq Graph] [DecidableEq Zero]
    (witnesses : Finset Graph) (zeros : Finset Zero)
    (toZero : Graph → Zero)
    (maps : ∀ w ∈ witnesses, toZero w ∈ zeros)
    (inj : Set.InjOn toZero (↑witnesses : Set Graph)) :
    witnesses.card ≤ zeros.card := by
  exact Finset.card_le_card_of_injOn toZero maps inj

/-- Any independently certified excess of distinct graph witnesses
contradicts the zero-density budget. The excess is NOT inferred from
the topology of a spherical coordinate diagram. -/
theorem no_excess_rim_witnesses
    {Graph Zero : Type*} [DecidableEq Graph] [DecidableEq Zero]
    (witnesses : Finset Graph) (zeros : Finset Zero)
    (toZero : Graph → Zero) (budget : ℕ)
    (maps : ∀ w ∈ witnesses, toZero w ∈ zeros)
    (inj : Set.InjOn toZero (↑witnesses : Set Graph))
    (density : zeros.card ≤ budget) :
    ¬ budget < witnesses.card := by
  intro excess
  have h := rim_witnesses_le_zero_records witnesses zeros toZero maps inj
  omega

end GRWTSK.NumberTheory.ZetaDensityRimCountingGate
