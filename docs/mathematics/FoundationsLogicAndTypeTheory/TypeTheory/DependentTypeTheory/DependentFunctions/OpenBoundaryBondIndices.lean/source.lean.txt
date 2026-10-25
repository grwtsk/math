/-
Open-boundary dependent bond indices
ATTRIBUTION_CLARIFICATION_NEEDED
Issue: https://github.com/grwtsk/math/issues/254
Provisional mathematical ideas/direction: grwtsk contributors.
Provisional composite search, probabilistic symbolic recombination and linearized diffusive computation: OpenAI/Codex.
Cache warming and model sculpting: the countless, often unnamed mathematicians, enthusiasts, and curious minds whose work and questions have helped shape these tools, and who now have new ways to pursue mathematical answers to the endlessly deep question: “Why?”
Source original SHA-256: 61ddd674c4a185bd8c2369c52e856d523fd19b8d77537cab2b20d474480411f1
Manual conceptual split; uncompiled and not mathematically admitted.
These provisional roles and computational characterizations are user-supplied.
Existing source attribution, source identities and notices remain preserved in the immutable source archive.
The original whole-file documentation below describes the unsplit source. Physical configuration counting and supplied virtual dimensions are separate; no tensor contraction, rank theorem or bond bound is constructed.
-/
import Mathlib.Data.Fintype.BigOperators

/-!
# Finite tensor-network indices

The physical configuration space and the virtual bond profile are distinct.
The basis cardinality is `D ^ N`; the qubit specialization is a separate
theorem rather than a silent replacement of `D` by two.
-/

namespace GRWTSK.FoundationsLogicAndTypeTheory.TypeTheory.DependentTypeTheory.DependentFunctions.OpenBoundaryBondIndices

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

end GRWTSK.FoundationsLogicAndTypeTheory.TypeTheory.DependentTypeTheory.DependentFunctions.OpenBoundaryBondIndices
