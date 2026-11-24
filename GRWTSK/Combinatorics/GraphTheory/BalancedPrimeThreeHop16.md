# Balanced single-occupancy three-hop routing (math #1844)

## Contract

This is the single-occupancy alternative to `ReplicatedPrimeAdjacency16`.
The 16-dimensional tile retains the original 4096 zero-syndrome positions.
The physical reference is the existing unique open face guidepost; the
logical reference is an explicitly distinct type and terminates at another
existing primary position. Both are resolved through the inverse of the
same `PlacedAtlas.position` bijection and `locate ... false`. Routing does
not change the placement epoch, allocate replicas, or assert that a
canonical rank is an optimized assignment.

For source syndrome s=(s0,s1,s2,s3), with little-endian bits and arithmetic
over F2, use ports

- p1=(s1,s2,s0+s1,s3+1);
- p2=p1+(1,0,0,0);
- p3=s+(1,0,0,0).

All ports are evaluated on the **original** syndrome. The four labels
s,p1,p2,p3 are pairwise distinct, and p1+p2+p3=s. Therefore the route
ends in C0 and changes exactly three coordinates, while the physical
guidepost changes only the coordinate s. The second reference cannot be
reached in zero, one or two flips. This is a geodesic, not an extra face.

## Balance and limits

Each port schedule is a permutation of the 16 syndromes. Each input
syndrome has 4096 cells. The exact load is consequently 4096 uses of every
port in each stage, not an expectation under a random model.

The first target syndrome t=s+p1 has high bit 1 and the two source
syndromes are indexed by the original high bit b:
(s0,s1,s2,s3)=(t1+t2,t0+t1+t2,t0+t2,b).
For each compatible input syndrome the route is a fixed translation, hence
there is exactly one source cell per such syndrome and target cell. Thus
32768 cells have first-hop load 2, the other 32768 have load 0. The first
hop never lands on a frozen beacon. An everywhere non-frozen first stage
cannot be injective (finite endomorphism injectivity forces surjectivity),
so maximum load 2 is optimal subject to this non-frozen requirement.

The second target syndrome is p3, a permutation. Every cell has exactly
one second-hop arrival. There are 4096 routes whose second-hop transit is
itself a frozen beacon (third port zero); this is permitted and is not
the declared terminal reference. Both the physical and the logical
terminal maps have exactly 16 arrivals at each frozen beacon. This
balances logical references, not traffic timing, latency, or simultaneous
undirected-link capacity. No full Q64 coverage, RH or GRH consequence
is asserted.

## Evidence and reproduction

Base inspected: 371e6c363914f602c6ed0d9077ce6e78fa35f62e.
The 49 new declarations, 23 definitions and two structures in
`BalancedPrimeThreeHop16.lean` are SOURCE_PROOF_CANDIDATE. Lean source blob
`3fd4c3126ab9cde80901e7b05763f1a213479041`.
The six-module dedicated manifest has 111 public theorem declarations
(62 imported dependency declarations and 49 new). All pinned source blobs
and ordered inventories were checked against GitHub readback. The earlier
59-theorem locally verified baseline and root dependency pins are unchanged.

The exact published Python script (Git blob
`69ade89617a45b47cdca634f80362471602257d8`) was executed on a byte-identical
local copy: PASS_FINITE_MODEL, 65536 cells, zero counterexamples. Stage
arrival histograms: {0:32768,2:32768}, {1:65536}, {0:61440,16:4096}.
This evidence is independent finite computation, not Lean proof acceptance.

From the branch checkout:

```sh
python3 scripts/check_balanced_prime_three_hop.py
python3 scripts/verify_frozen_prime_atlas.py \
  --config verification/balanced-prime-three-hop.toml \
  --preflight-only
python3 scripts/verify_frozen_prime_atlas.py \
  --config verification/balanced-prime-three-hop.toml \
  --all-diagnostics --timeout 120 \
  --report /tmp/balanced-prime-three-hop.json
```

Pinned Lean 4.34.1 / Mathlib d13f23b723b8a846827a245b89c10fc7d3f11612
are required. Actual Lean elaboration/build, transitive axiom audit and
fresh independent kernel replay remain NOT_RUN; Lean and Lake were not
available in the authoring environment. Do not merge on the basis of the
Python result. Preserve exact theorem statements when addressing any
elaboration diagnostics; retain independent replay as a distinct gate.
