# Corrected 16D prime adjacency semantics — two replicas, two distinct IDs

Source: [ReplicatedPrimeAdjacency16.lean](ReplicatedPrimeAdjacency16.lean).
Issue: [math #1844](https://github.com/grwtsk/math/issues/1844).
Existing one-neighbor verification remains under [#1842](https://github.com/grwtsk/math/issues/1842).

## Mathematical obstruction that cannot be optimized away

In the real 16D binary hypercube Q16, N=65536 cells, degree 16.
For an arbitrary set S of marked positions, the number of incidence
pairs `(x,s)` with `x` face-adjacent to `s ∈ S` is `16|S|`.
If every x has at least two **distinct marked physical neighbors**,
there must be at least `2N=131072` incidences. Hence
`|S|≥8192`. The original 4096 occupied positions cannot provide
the user's two-face-neighbor requirement under ANY placement. The
previously checked theorem `existsUnique_frozen_neighbor` explicitly
established exactly one neighbor in the original C0.

This double-counting argument is analytic and unconditional. Its
general Finset double-count formalization is a **separate proof
obligation**; the new Lean `original_layout_not_two` directly
proves the incompatibility for the maintained syndrome layout.

## Exact corrected physical construction

Let H be the already verified 4-bit syndrome; choose the nonzero
syndrome a=(1,0,0,0). Mark both C0=H^{-1}(0) and Ca=H^{-1}(a).
For every x and syndrome target t, the unique face neighbor is

`neighbor x (t - H(x))`.

The two choices t=0 and t=a correspond to **distinct** ports,
hence to different physical neighbor vertices. There are exactly
4096 occupied positions in each class, giving 8192 occupied
positions and exactly two marked face-neighbors for every cell.

To retain **4096 distinct numerical prime identities**, associate
each c∈C0 with c+e_a∈Ca, using the SAME prime identity in both
positions. The paired replicas are face-adjacent to one another.
The hypercube is triangle-free, so no cell has both copies of the
same prime among its two different face neighbors. Thus every
cell observes two distinct prime IDs, not only two marked flags.

The implementation treats prime values as stored immutable
identifiers that may have two physical replicas. It is **NOT** the
original permutation of each integer 1..65536 onto exactly one cell.
That unique-integer model has only 6542 occupied prime positions,
also below the necessary 8192.

The exact 4096-prime assignment can be ANY injective map from the
C0 base addresses to prime labels, including a permutation chosen
after an optimizer has converged. The physical occupancy theorem
is unchanged by such a relabeling, and the two observed IDs remain
distinct. The optimizer still needs its own objective, a feasible
permutation, an exact score and a lower-bound certificate; nothing
here proves that its output is globally optimal.

## Separate one-copy alternative

If exactly 4096 physical prime-marked cells is non-negotiable,
a second prime must use a virtual routing edge, not a face edge.
One can use three distinct bit flips whose port labels XOR to
H(x). The resulting endpoint lies in C0 at Hamming distance 3,
and is different from the primary distance-one beacon.
At x∈C0 no distance-two distinct-port return to C0 exists, so
distance 3 is sharp for the existing base layout. This *different
graph adjacency rule* requires a separate formal contract.

## Addressing requirements and evidence

A 16-bit word is only the **tile-local vertex coordinate**. The
global key also needs universe/forest identity, tile/chart version,
tree and neighborhood subgroup path, 64×64 beacon-square address,
replica class, inbound face direction, prime identity, and optimizer
epoch/source hash. A proposed deterministic 12-bit systematic
parameterization uses parity pivots {1,2,4,8}, yielding four
three-bit hierarchy components. Their genuine nested subgroup
structure must be proved, not inferred from numerical buckets.

Independent exhaustive Python control (separate from Lean):
65536 vertices tested, 4096+4096 occupied positions, exactly
two face-neighbors each, zero same-identity collisions.
The 4096th actual prime is 38873 and π(65536)=6542.

Status of this file: **SOURCE_PROOF_CANDIDATE**. Lean elaboration,
full pinned build, transitive axioms, fresh replay and independent
mathematical review **NOT_RUN**. It imports only the earlier
59-theorem verified base and does not assume new open analytic
or prismatic propositions.
