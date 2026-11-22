# Universal 16D two-prime face adjacency lower bound

Lean source: [PrimeFaceIncidenceLowerBound16.lean](PrimeFaceIncidenceLowerBound16.lean).
Correction issue [math #1844](https://github.com/grwtsk/math/issues/1844).

For **any** finite occupied set S of 16D cube positions, count pairs
(x,i) with x an arbitrary vertex, i one of sixteen face directions,
and the neighbor of x in direction i marked. Translation by a fixed
coordinate impulse is a bijection of the original binary address
group, so each marked position contributes exactly sixteen pairs.
The global count is 16|S|.

If every x has two **distinct** marked coordinate ports, there are
at least two such pairs for each of 65,536 vertices. Thus
16|S|≥131,072, forcing |S|≥8,192. This is not an asymptotic
density estimate: it is the exact finite regular-graph obstruction.
It applies to all placements, even an alleged global optimum.

The replicated two-syndrome layout proposed in the sibling
`ReplicatedPrimeAdjacency16` uses 8192 physical marked positions,
so it saturates the universal lower bound. It carries 4096
**unique** prime IDs by duplicating each one in paired physical
locations. Replication changes the storage semantics; it is
not the original one-prime-value-per-vertex integer permutation.

The numerical condition on the number of primes ≤65536 is separate
from this pure adjacency statement. A position is a marker and a
prime label is an arithmetic identifier. The theorem never treats
a numeric rank as a proof of primality.

Source candidate. Only source hash and theorem declarations have
been reviewed; actual Lean 4.34.1 build, transitive axiom audit and
fresh independent replay NOT_RUN. The 59 verified baseline
theorems are unchanged.
