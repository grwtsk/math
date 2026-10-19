import Mathematics.SemiLocalDefect.WP0.PrimeHorizon.Cut

/-!
# One-prime insertion primitive
-/

namespace Mathematics.SemiLocalDefect.SoninCore

structure PrimeInsertionEdge
    (U : FinitePrimeHorizon) where
  source : PrimeCut U
  prime : U.Prime
  prime_not_mem : prime ∉ source

def PrimeInsertionEdge.target
    {U : FinitePrimeHorizon}
    (e : PrimeInsertionEdge U) :
    PrimeCut U :=
  insert e.prime e.source

theorem PrimeInsertionEdge.source_subset_target
    {U : FinitePrimeHorizon}
    (e : PrimeInsertionEdge U) :
    e.source ⊆ e.target := by
  intro p hp
  exact Finset.mem_insert_of_mem hp

@[simp]
theorem PrimeInsertionEdge.prime_mem_target
    {U : FinitePrimeHorizon}
    (e : PrimeInsertionEdge U) :
    e.prime ∈ e.target := by
  simp [PrimeInsertionEdge.target]

@[simp]
theorem PrimeInsertionEdge.target_card
    {U : FinitePrimeHorizon}
    (e : PrimeInsertionEdge U) :
    e.target.card = e.source.card + 1 := by
  simp [
    PrimeInsertionEdge.target,
    e.prime_not_mem
  ]

end Mathematics.SemiLocalDefect.SoninCore
