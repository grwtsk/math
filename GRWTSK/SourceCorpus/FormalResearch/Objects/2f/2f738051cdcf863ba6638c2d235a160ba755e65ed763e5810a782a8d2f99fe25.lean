import Mathematics.SemiLocalDefect.Basic
import Mathlib.Data.Nat.Prime.Basic
import Mathlib.Data.Fintype.Prod
import Mathlib.Tactic.DeriveFintype

/-!
# Finite prime universes

One graph-access invocation uses one finite prime carrier.  Cofinal growth is
represented by certified embeddings between such universes.
-/

namespace Mathematics.SemiLocalDefect

universe uPrime

set_option linter.checkUnivs false in
structure FinitePrimeUniverse where
  Prime : Type uPrime
  primeFintype : Fintype Prime
  primeDecEq : DecidableEq Prime
  primeOrder : LinearOrder Prime
  value : Prime → Nat
  value_injective : Function.Injective value
  value_prime : ∀ prime, Nat.Prime (value prime)

attribute [instance]
  FinitePrimeUniverse.primeFintype
  FinitePrimeUniverse.primeDecEq
  FinitePrimeUniverse.primeOrder

structure PrimeUniverseEmbedding
    (source target : FinitePrimeUniverse) where
  map : source.Prime → target.Prime
  injective : Function.Injective map
  value_preserving :
    ∀ prime,
      target.value (map prime) =
        source.value prime

structure PrimeInsertionEdge
    (primeUniverse : FinitePrimeUniverse) where
  source : Finset primeUniverse.Prime
  prime : primeUniverse.Prime
  prime_not_mem : prime ∉ source
deriving DecidableEq

def PrimeInsertionEdge.target
    {primeUniverse : FinitePrimeUniverse}
    (edge : PrimeInsertionEdge primeUniverse) :
    Finset primeUniverse.Prime :=
  insert edge.prime edge.source

theorem PrimeInsertionEdge.source_ssubset_target
    {primeUniverse : FinitePrimeUniverse}
    (edge : PrimeInsertionEdge primeUniverse) :
    edge.source ⊂ edge.target := by
  exact Finset.ssubset_iff_subset_ne.mpr
    ⟨Finset.subset_insert _ _, by
      intro equality
      have :
          edge.prime ∈ edge.source := by
        rw [equality]
        exact Finset.mem_insert_self _ _
      exact edge.prime_not_mem this⟩

noncomputable instance
    (primeUniverse : FinitePrimeUniverse) :
    Finite (PrimeInsertionEdge primeUniverse) := by
  classical
  letI : Fintype primeUniverse.Prime :=
    primeUniverse.primeFintype
  letI : Fintype (Finset primeUniverse.Prime) :=
    Finset.fintype
  letI :
      Fintype
        (Finset primeUniverse.Prime ×
          primeUniverse.Prime) :=
    inferInstance
  refine Finite.of_injective
    (fun edge => (edge.source, edge.prime)) ?_
  intro left right equality
  cases left with
  | mk leftSource leftPrime leftNotMem =>
      cases right with
      | mk rightSource rightPrime rightNotMem =>
          cases equality
          rfl

noncomputable instance
    (primeUniverse : FinitePrimeUniverse) :
    Fintype (PrimeInsertionEdge primeUniverse) :=
  Fintype.ofFinite _

theorem finitePrimeUniverse_node_count
    (primeUniverse : FinitePrimeUniverse) :
    Fintype.card (Finset primeUniverse.Prime) =
      2 ^ Fintype.card primeUniverse.Prime :=
  Fintype.card_finset

structure PrimeCutCardinalityCertificate
    (primeUniverse : FinitePrimeUniverse) where
  edgeCount :
    Fintype.card (PrimeInsertionEdge primeUniverse) =
      Fintype.card primeUniverse.Prime *
        2 ^ (Fintype.card primeUniverse.Prime - 1)
  shellCount :
    ∀ depth,
      Fintype.card
        {cut : Finset primeUniverse.Prime //
          cut.card = depth} =
        Nat.choose
          (Fintype.card primeUniverse.Prime)
          depth
  descendantConeCount :
    ∀ _edge : PrimeInsertionEdge primeUniverse,
      Nat
  descendantConeCount_eq :
    ∀ edge,
      descendantConeCount edge =
        2 ^
          (Fintype.card primeUniverse.Prime -
            edge.source.card - 1)

end Mathematics.SemiLocalDefect
