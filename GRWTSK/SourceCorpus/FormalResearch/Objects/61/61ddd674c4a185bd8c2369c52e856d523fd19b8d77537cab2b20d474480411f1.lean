import Mathlib.Data.Fintype.BigOperators

/-!
# Finite tensor-network indices

The physical configuration space and the virtual bond profile are distinct.
The basis cardinality is `D ^ N`; the qubit specialization is a separate
theorem rather than a silent replacement of `D` by two.
-/

namespace Mathematics.TensorNetwork

/-- One physical basis configuration for `N` sites of local dimension `D`. -/
abbrev PhysicalConfiguration (N D : Nat) :=
  Fin N → Fin D

/-- The exact number of physical basis configurations. -/
theorem physicalConfiguration_card (N D : Nat) :
    Fintype.card (PhysicalConfiguration N D) = D ^ N := by
  simp [PhysicalConfiguration]

/-- The binary specialization is valid only after fixing local dimension two. -/
theorem qubitConfiguration_card (N : Nat) :
    Fintype.card (PhysicalConfiguration N 2) = 2 ^ N := by
  simp [PhysicalConfiguration]

/-- Open-boundary virtual dimensions, including both one-dimensional ends. -/
structure BondProfile (sites : Nat) where
  dimension : Fin (sites + 1) → Nat
  positive : ∀ index, 0 < dimension index
  leftBoundary :
    dimension ⟨0, Nat.zero_lt_succ sites⟩ = 1
  rightBoundary :
    dimension ⟨sites, Nat.lt_succ_self sites⟩ = 1

/-- A uniform bond bound is additional supplied data. -/
def BondProfile.UniformlyBounded
    {sites : Nat}
    (profile : BondProfile sites)
    (bound : Nat) : Prop :=
  ∀ index, profile.dimension index ≤ bound

/-- Virtual indices for one complete contraction path. -/
abbrev VirtualConfiguration
    {sites : Nat}
    (profile : BondProfile sites) :=
  ∀ index, Fin (profile.dimension index)

end Mathematics.TensorNetwork
