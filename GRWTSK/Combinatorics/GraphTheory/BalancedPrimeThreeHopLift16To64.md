# Balanced three-hop routing: 16D to 64D chart transport

Math #1844. Base: verified 16D PR #1852, commit
`49d5462d4c3f5c6619be5e31d5123ff0485251e4`.
The supplied user run passed 111 theorem reports with the standard
axiom union only. This extension leaves those source bytes unchanged.

## Mathematical contract

Use the existing `addressLift`, `portLift`, `portDrop` and their
compatibility laws from `ConcretePrimeAtlasLift16To64`. The new
`hopOne64`, `hopTwo64`, and `routeEnd64` are defined by actual
64D coordinate flips, with all three ports selected from the original
syndrome via projection to four bits and zero-extension back to six.
They are not defined by conjugating the terminal map.

The commuting-square theorem is `routing_commuting_square`:
`addressLift ∘ routeEnd = routeEnd64 ∘ addressLift`.
The preceding stage identities, primary guidepost identity, induced
face adjacency, and equality of changed-coordinate sets establish an
isometry on the chart. The terminal Hamming distance is exactly 3
with no zero-, one-, or two-hop ambient shortcut, including routes
through vertices outside the chart.

The source/target fiber equivalence is `fiberTransport`. It gives exact
stagewise counts for native 64D operations restricted to the actual
image subtype. The chart has 65536 cells and 4096 frozen beacons.
Every old port is used 4096 times per stage; the remaining 48 are
never used. First-stage arrivals are 0/2, second-stage arrivals 1,
and each frozen beacon receives 16 primary and 16 terminal arrivals.
All stages stay inside the chart. These are not simultaneous traffic
capacity guarantees.

The lifted directory is `PlacedAtlas.position.trans embeddedBeaconEquiv`.
It assigns precisely the original 4096 IDs to the actual frozen chart
beacons. Both native endpoint lookups preserve the original prime
index, numerical prime, and epoch's placement bijection. The 64D
locator is an ambient cell, not the original 16-bit serialization code.
No replica, new prime label, or assignment to off-chart beacons is
introduced. No RH/GRH or global Q64 coverage claim is made.

## Evidence and reproduction

The new module contains 47 theorem declarations, 17 definitions and two
type abbreviations. Its source blob is
`e47450b634d2255b30d8468347527223e53dbd81`.
The dedicated 9-module manifest contains 177 declarations:
111 scoped verified 16D declarations, 19 existing embedding declarations,
and 47 new transport declarations. The original 16D manifest is untouched.

Independent Python finite model: PASS_FINITE_EMBEDDED_CHART, 65536 chart
cells, 4096 beacons, 1048576 source edges, 196608 stage identities,
zero counterexamples. Histograms: {0:32768,2:32768}, {1:65536},
{0:61440,16:4096}. Exact executed script blob:
`43d7fc86fbfe035b127987928ee033949aa4a6ce`.

The user-provided local run at b52c751fe998e526cddb951b75f88abffd2cf6c6
passed the finite chart control, preflight, and seven dependency builds.
ConcretePrimeAtlasLift16To64 failed elaboration, blocking the transport
module. The current sources repair the observed port-padding proofs,
coordinate vanishing and compatibility theorem applications. The subsequent user run at c341d1b7efe8082953003c88c1c545a2eceb71d0
passed all eight dependency builds, including the repaired concrete
embedding. The transport module reported a rewrite failure in
first_load64_at_most_two. The current proof uses explicit cardinality
equality and the verified 16D inequality instead of rewrite matching.
Repaired transport compilation and the combined audit remain NOT_RUN.
Fresh independent dependency replay and checker remain NOT_RUN. The earlier 16D scoped
PASS is not transferred to new declarations.

```sh
python3 scripts/check_balanced_prime_three_hop_lift64.py
python3 scripts/verify_frozen_prime_atlas.py \
  --config verification/balanced-prime-three-hop-lift64.toml \
  --all-diagnostics --timeout 120 \
  --report /tmp/balanced-prime-three-hop-lift64.json
```

Use the pinned root Lean 4.34.1 and Mathlib revision
d13f23b723b8a846827a245b89c10fc7d3f11612. The audit must reject all
axioms beyond Classical.choice, Quot.sound and propext. Record source
identity, actual diagnostics, and independent replay separately.
