# Global prime directory with optimized assignment and 64×64 square

Source: [HierarchicalPrimeDirectory16.lean](HierarchicalPrimeDirectory16.lean).
Issue: [math #1844](https://github.com/grwtsk/math/issues/1844).

## Address ontology

The `Cell 4` carrier is a 16-bit address *inside one tile only*.
The `PrimeAddress` has explicit universe and tile identifiers,
placement epoch, prime ordinal, four three-bit hierarchy fields
(forest, tree, neighborhood, node), 64×64 beacon-square row and
column, replica-layer bit, and the tile-local 16-bit vertex code.

The 4096 prime identities correspond to the 64×64 square, with
three-bit hierarchy field sizes 8×8×8×8=4096 and a 12-bit
local primary-beacon rank. The code proves the rank is fully
recoverable from both the 64×64 pair and the four-tier directory
fields. Global addresses are therefore NOT sixteen-bit addresses.

## Post-optimization placement contract

A `PlacedAtlas` has a bijection
`Fin 4096 ≃ Beacon 4`. It is selected by an optimizer and published
with a distinct epoch. The inverse map is available for exact prime
lookup. Prime IDs are the actual Mathlib nth primes, irrespective of
which base address is chosen.

The same ID receives a second physical replica at
`replicaPosition (P.position i)`. The two copies have the same
forest/tree/square directory key and distinct local position/layer.
Every cell sees two **different prime numeric identities** under
every injective placement, because the replica adjacency theorem
proves the two recovered base beacons differ.

This demonstrates **feasibility and identity stability**, NOT that
the placement is optimal for reciprocal-prime arcs, log-frequency,
Dirichlet characters, Langlands transfers, CPU cache movement, or SSD
locality. Those require a defined workload cost, optimizer, and an
independently checkable optimality bound.

The four-tier numeric rank buckets are a partition. They are NOT
automatically additive subgroups. The sibling
`PrimeForestSubgroupFlags16.lean` develops actual group/subgroup
coset criteria; an explicit systematic-bit equivalence relating
that source to this directory remains an open formal bridge.

## Verification

The 59-theorem old base passed the user's Lean builds and axiom audit.
This source depends on still-new candidate modules and has
Lean compilation/axiom checks NOT_RUN. No admission of unproved
RH/GRH or motivic-L-function assumptions.
