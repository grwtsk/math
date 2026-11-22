# Perfect open-neighborhood binary atlas — source-bound review

Canonical source: [FrozenPrimeHypercube.lean](FrozenPrimeHypercube.lean).
Coordination: [math #1842](https://github.com/grwtsk/math/issues/1842).

## Exact objects

For each `m : ℕ`, `Port m = Fin m → ZMod 2` is a binary signature of
cardinality `2^m`. An address is `Cell m = Port m → ZMod 2`: a binary
hypercube of dimension `2^m`, containing `2^(2^m)` cells.

For each coordinate `i`, `impulse i` is its unit vector, and
`neighbor x i = x + impulse i`. The one-bit adjacency is **open**, not
reflexive. Define `syndrome x = ∑ i, (x i) • i`, with the sum taken in
the actual vector space `Port m`. The primary frozen set is the zero
syndrome fiber. Set `guidepost x = neighbor x (-syndrome x)`.

## Proof argument

`syndrome (impulse i) = i` follows from the supported single-coordinate
sum. Additivity gives `syndrome (neighbor x i) = syndrome x + i`.
Consequently `neighbor x i` is frozen iff `i = -syndrome x`.
The address has exactly one adjacent frozen beacon, including when it is
itself frozen. A zero-syndrome word's neighbor along the zero port is
also frozen; no self-adjacency is used.

For `m=4`, the port count is 16, the address count is 65,536, and each
vertex has sixteen *distinct* geometric neighbors. The exact cardinality
4,096 of the frozen fiber follows mathematically from the surjective
syndrome homomorphism; its Lean proof is a **subsequent obligation**, not
one of the declarations authored in this increment.

These results concern binary addresses and selected beacon positions.
They do not attach the 4,096 distinct numerical prime labels or prove
that an arbitrary attached label is prime.

## External proof and repo correspondence

- The November 2026 Alpöge RH/Dirichlet GRH development has an independently
  verified theorem at Lean 4.33.1 / Mathlib v4.33.1. No external declaration
  is imported into this module and no RH or GRH theorem is concluded.
- The root grwtsk/math environment uses Lean 4.34.1 and Mathlib
  d13f23b723b8a846827a245b89c10fc7d3f11612.
- The existing `FinitePrimeConceptAddress.lean` supplies a separate candidate
  numerical prime-basis representation, with its own NOT_RUN evidence.
- The existing `CompleteCubicalAdjacencyAndProofs.lean` defines face adjacency
  for a different historical cube provider. An actual carrier equivalence
  and preserved adjacency proof would be required for source reuse.
- No arithmetic zero identity, Weil criterion, prismatic cohomology, cubical
  chain complex, geometric foliation or continuum inference is obtained here.

## Mathematical audit and hostile controls

- No coordinate with zero syndrome is considered adjacent to itself;
  the zero direction port still flips one nonzero coordinate impulse.
- A one-bit change is not a zero-bit movement, and two distinct ports
  produce different neighbors.
- The parity of the address does not imply the syndrome zero criterion.
- The port label `0` denotes the all-zero **signature**, but its impulse
  is a nonzero one-coordinate change.
- The index `m=0` yields a one-coordinate two-vertex cube, which is
  correctly totally dominated by its two frozen vertices.
- Higher-dimensional cardinalities do not imply physical allocation.

## Verification record

Status at publication: SOURCE_PROOF_CANDIDATE.
- GitHub commit and source blob: record after publication.
- Static theorem-count and file readback: record after publication.
- Lean elaboration and build: **NOT_RUN** (no Lean/Lake executable available).
- Fresh proof-term kernel replay: **NOT_RUN**.
- Transitive axiom audit: **NOT_RUN**.
- Independent mathematical review: **NOT_RUN**.
- Runtime exhaustive finite-model check: separate non-Lean evidence if executed.

No `sorry`, `admit`, novel `axiom`, `native_decide` or `unsafe`
is intentionally introduced.

The next mathematical step is an exact reversible transformation structure
preserving both frozen identities and guidepost ownership, followed by a
genuine cubical/PL foliation and an independently verified prime-label map.

## Local Lean build failure and repair candidate (November 22, 2026)

The user ran the pinned verification suite against source blob
`feac3ba4fad22e28634c3bc1b5f196ea30bfd76e` on Lean 4.34.1 after a successful preflight
(5 modules / 40 theorem names). The first module's `lake build`
**FAILED** (exit 1). The exact failure in `frozen_neighbor_zero_port`
at line 128 was an unclosed goal `syndrome c = 0`, despite the
existing hypothesis `hc : syndrome c = 0`. The original tactic
`simp [Frozen, syndrome_neighbor, Frozen] at *` had not closed it.

The revised source changes only that proof to:
```lean
  change syndrome (neighbor c 0) = 0
  rw [syndrome_neighbor, add_zero]
  exact hc
```
This preserves exactly the previously stated theorem and consumes
the original `hc` hypothesis explicitly. The two warnings on that
build are also addressed: remove the unused `add_assoc` simp
argument in `neighbor_frozen_iff`, and explicitly simplify
`Finset.card_univ` in the final cardinality proof.

**Revised Lean source blob:** `0b4c3ff28335529f28ca1986c66416082624dc72`.
The `verification/frozen-prime-atlas.toml` source pin must match that
blob. Static comparison confirms no theorem statement, theorem count,
import, or other source file was changed in this repair.

**Actual evidence:** previous original-source build **FAILED**; corrected
source compilation **NOT_RUN** in the assistant environment. Fresh
kernel replay, transitive axiom audit and independent mathematical
review remain **NOT_RUN**. Do not promote the corrected source
to verified until the user reruns the pinned build and the full
verification suite. If additional failures appear, preserve their
diagnostics and repair separately.
