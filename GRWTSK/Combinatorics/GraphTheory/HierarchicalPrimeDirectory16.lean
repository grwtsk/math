/-
Copyright (c) 2026 grwtsk contributors. MIT.
Authors: grwtsk contributors.
SOURCE_PROOF_CANDIDATE: Lean, kernel and axiom audit NOT_RUN.
-/
import GRWTSK.Combinatorics.GraphTheory.ReplicatedPrimeAdjacency16
import GRWTSK.Combinatorics.GraphTheory.CanonicalPrimeBeaconIndex16

/-!
# Hierarchical global identifiers, prime identity and optimized placement

The 16-bit integer is ONLY the local vertex coordinate of a tile.
An address also includes universe, tile, immutable placement epoch,
64x64 beacon-square coordinates, four 3-bit directory components,
replica layer and immutable prime-identity ordinal.

Every proposed optimizer is obliged to return a *bijection* between
4096 distinct prime IDs and the 4096 primary beacons. This module
proves that arbitrary such permutations retain exact one-per-layer
adjacency and different observed prime identities. No optimality of
the selected permutation is asserted without a separate certificate.

The four 3-bit directory components are an exact numeric partition.
Their agreement with chosen additive subgroup flags is a further
formalization obligation, not an implicit theorem.
-/

set_option autoImplicit false
noncomputable section

namespace GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.HierarchicalPrimeDirectory16

open GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.FrozenPrimeHypercube
open GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.FrozenPrimeBeaconCardinality
open GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.CanonicalPrimeBeaconIndex16
open GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.ReplicatedPrimeAdjacency16

/-- External optimization can change the prime-to-beacon permutation,
but must return a bijection and publish a new placement epoch. -/
structure PlacedAtlas where
  universe : ℕ
  tile : ℕ
  epoch : ℕ
  position : Fin 4096 ≃ Beacon 4

/-- A global prime locator, not just a 16-bit address. -/
structure PrimeAddress where
  universe : ℕ
  tile : ℕ
  epoch : ℕ
  primeIndex : Fin 4096
  forest : Fin 8
  tree : Fin 8
  neighborhood : Fin 8
  node : Fin 8
  squareRow : Fin 64
  squareColumn : Fin 64
  replica : Bool
  localCell : Fin 65536

def forestOfRank (r : Fin 4096) : Fin 8 :=
  ⟨r.val / 512, by omega⟩

def treeOfRank (r : Fin 4096) : Fin 8 :=
  ⟨(r.val / 64) % 8, by omega⟩

def neighborhoodOfRank (r : Fin 4096) : Fin 8 :=
  ⟨(r.val / 8) % 8, by omega⟩

def nodeOfRank (r : Fin 4096) : Fin 8 :=
  ⟨r.val % 8, by omega⟩

def rowOfRank (r : Fin 4096) : Fin 64 :=
  ⟨r.val / 64, by omega⟩

def columnOfRank (r : Fin 4096) : Fin 64 :=
  ⟨r.val % 64, by omega⟩

/-- A 64×64 square reconstructs the exact twelve-bit beacon rank. -/
theorem square_rank_reconstruction (r : Fin 4096) :
    (rowOfRank r).val * 64 + (columnOfRank r).val = r.val := by
  dsimp [rowOfRank, columnOfRank]
  omega

/-- Four three-bit fields also reconstruct all 4096 beacon addresses. -/
theorem forest_rank_reconstruction (r : Fin 4096) :
    (forestOfRank r).val * 512 + (treeOfRank r).val * 64 +
      (neighborhoodOfRank r).val * 8 + (nodeOfRank r).val = r.val := by
  dsimp [forestOfRank, treeOfRank, neighborhoodOfRank, nodeOfRank]
  omega

/-- The optimized dictionary is precisely invertible for each prime ID. -/
def indexAtBeacon (P : PlacedAtlas) (b : Beacon 4) : Fin 4096 :=
  P.position.symm b

theorem index_position_roundtrip (P : PlacedAtlas) (i : Fin 4096) :
    indexAtBeacon P (P.position i) = i :=
  P.position.symm_apply_apply i

/-- A numerical prime identifier is immutable across layout permutations. -/
def primeNumber (i : Fin 4096) : ℕ :=
  indexedPrime i

theorem primeNumber_prime (i : Fin 4096) :
    Nat.Prime (primeNumber i) :=
  indexedPrime_prime i

/-- Base prime-occupied position. -/
def primaryPosition (P : PlacedAtlas) (i : Fin 4096) : Cell 4 :=
  (P.position i).1

/-- Same prime identity physically replicated in the second syndrome layer. -/
def secondaryPosition (P : PlacedAtlas) (i : Fin 4096) : Cell 4 :=
  replicaPosition (P.position i)

theorem primaryPosition_syndrome (P : PlacedAtlas) (i : Fin 4096) :
    syndrome (primaryPosition P i) = 0 := by
  exact beacon_is_frozen (P.position i)

theorem secondaryPosition_syndrome (P : PlacedAtlas) (i : Fin 4096) :
    syndrome (secondaryPosition P i) = secondarySyndrome :=
  replicaPosition_syndrome (P.position i)

/-- Two replica positions of the same prime are distinct. -/
theorem replica_positions_distinct (P : PlacedAtlas) (i : Fin 4096) :
    primaryPosition P i ≠ secondaryPosition P i := by
  intro h
  have hs := congrArg syndrome h
  rw [primaryPosition_syndrome, secondaryPosition_syndrome] at hs
  exact secondarySyndrome_ne_zero hs.symm

/-- The two prime IDs observed at every cell remain different under
ANY valid post-optimization placement permutation. -/
theorem observed_prime_indices_distinct (P : PlacedAtlas) (x : Cell 4) :
    indexAtBeacon P (primaryBase x) ≠
      indexAtBeacon P (secondaryBase x) :=
  P.position.symm.injective.ne (primaryBase_ne_secondaryBase x)

/-- The actual numerical prime labels observed at every cell differ. -/
theorem observed_prime_numbers_distinct (P : PlacedAtlas) (x : Cell 4) :
    primeNumber (indexAtBeacon P (primaryBase x)) ≠
      primeNumber (indexAtBeacon P (secondaryBase x)) :=
  indexedPrime_injective.ne (observed_prime_indices_distinct P x)

/-- Address construction is from the *chosen* optimized permutation,
not a fabricated address derived from a prime's numeric value. -/
def locate (P : PlacedAtlas) (i : Fin 4096) (isReplica : Bool) : PrimeAddress :=
  let rank := canonicalBeaconIndex (P.position i)
  let point := if isReplica then secondaryPosition P i else primaryPosition P i
  { universe := P.universe
    tile := P.tile
    epoch := P.epoch
    primeIndex := i
    forest := forestOfRank rank
    tree := treeOfRank rank
    neighborhood := neighborhoodOfRank rank
    node := nodeOfRank rank
    squareRow := rowOfRank rank
    squareColumn := columnOfRank rank
    replica := isReplica
    localCell := addressCode point }

/-- The optimized directory never changes the stored prime identity. -/
theorem locate_preserves_prime_id (P : PlacedAtlas)
    (i : Fin 4096) (replica : Bool) :
    (locate P i replica).primeIndex = i := rfl

/-- Both replicas have identical global forest/tree/square navigation keys
and differ only in replica layer and local coordinate. -/
theorem paired_replicas_same_square (P : PlacedAtlas) (i : Fin 4096) :
    (locate P i false).squareRow = (locate P i true).squareRow ∧
    (locate P i false).squareColumn = (locate P i true).squareColumn := by
  exact ⟨rfl, rfl⟩

/-- Replica layer is an explicit address field, never inferred from the
numeric value of a prime. -/
theorem locate_replica_flag (P : PlacedAtlas)
    (i : Fin 4096) (replica : Bool) :
    (locate P i replica).replica = replica := rfl

end GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.HierarchicalPrimeDirectory16
