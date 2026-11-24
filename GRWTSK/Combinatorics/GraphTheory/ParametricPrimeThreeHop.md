# Dimension-parametric balanced prime routing (math #1844)

## Status and preserved baseline

This extension is stacked on verified 64D transport PR #1854, commit
`a1bb0137ecef187612a6be590b0697feb0452a5a`, with the original 177
scoped-verified theorem declarations unchanged. The three new modules
contain 127 theorem declarations (49 core, 37 coherent schedules,
41 successive embeddings/directory extension), 53 definitions, four
structures and two type abbreviations. New Lean proofs are candidates,
not verified until the pinned compiler and audit actually pass.

## Mathematical construction

Write d = 2^m, K = 2^(d-m). For the actual binary cube, the surjective
syndrome H has kernel size K. A schedule uses a permutation P of the
m-bit port space and nonzero offset a with P(s) different from s and s+a.
The three ports are P(s), P(s)+a, s+a, always evaluated at the original
syndrome. They and s are pairwise distinct. Their sum is s in F2.
The first-stage syndrome is s+P(s), the second is s+a, and the last is
zero. The designated primary endpoint remains the unique actual face
guidepost. The designated second endpoint is exactly Hamming distance
three, is not the primary endpoint, and is assigned a distinct actual
prime under every injective prime directory.

For a syndrome-dependent translation x -> x+d(s), a target cell with
syndrome t has exactly one preimage per source syndrome s satisfying
s+H(d(s))=t. This gives the exact cardinality of every stage fiber.
Each port is used K times at each stage, every second-stage cell receives
one arrival, and every frozen beacon receives d primary and d logical
arrivals. These are stagewise counts, not simultaneous network capacity.

Two roots are deliberately retained:
- root 3: P3(x,y,z)=(y,x+y,z+1), a=(1,0,0), covering all m>=3;
- root 4: the exact verified 16D schedule, covering m>=4 with its original
  prime/route identity. The verified root-4 permutation does not restrict
  to the standard zero-padded 3-bit subspace (its fourth bit is toggled),
  so the roots must not be conflated.

At each root every occupied first-target syndrome fiber has size two.
Append an unchanged high bit for the first extension. Thereafter the
new high bit shears the previous high bit while keeping its own value.
In closed form the tail is the invertible Gray map t XOR (t >> 1).
The root part of the first-target syndrome retains its nonzero anchor;
the tail part is t >> 1. Thus all nonempty first-stage fibers have
size four after the first extension, uniformly in m; other fibers are
empty. The maximum is attained. The schedules commute with successive
zero padding. Among affine prefix-preserving port permutations, a
maximum two after a one-bit extension is impossible: every first-target
syndrome has highest bit zero, but zero must be avoided, so the
pigeonhole lower bound is at least three, and nonempty affine fibers
have powers-of-two sizes. This obstruction is a mathematical explanation,
not an additional claimed Lean theorem.

## Successive embeddings and prime directory

Use literal zero-extension of cube coordinates. The generic geometry
theorems establish induced face adjacency, Hamming isometry, syndrome
and neighbor compatibility. Schedule embeddings commute at all three
native stages, compose, and preserve all chart-restricted arrival counts.
The root-4 double lift is the existing concrete 16D-to-64D embedding;
the native 64D member agrees with the verified embedded route on the old
chart, not necessarily on the rest of the 64D cube.

A native numerical prime directory may be extended injectively to the
larger kernel by retaining the old labels and assigning fresh nth
primes above their maximum to previously unassigned beacons. A recursive
tower preserves old prime identities at every step. An arbitrary chosen
finite rank is an existence construction, not a canonical persistent
serialization; any implemented placement must retain the rank/epoch.
No fixed bound on the numerical value of all newly assigned primes or
physical realization of enormous native cubes is asserted.

## Evidence

Independent Python control executed in this session:
PASS_FINITE_PARAMETRIC_CONTROL; 27 root/dimension cases, 262120 syndrome
samples (exhaustive per case through m=16), 131328 fully enumerated native
cells (m=3 and both m=4 schedules), 787968 embedded stage identities
(one- and two-step embeddings of those cells), zero counterexamples.
This is not an enumeration of all larger native cells, and is not Lean
proof acceptance. Executed script Git blob:
`87a293c876e4f86fc9fade94adcb9f135ce15a3c`.

Pinned verification manifest contains 304 theorem declarations across
12 modules. Previously verified 177 remain unchanged. New Lean
compilation, combined axiom audit and independent fresh replay NOT_RUN;
Lean/Lake are unavailable in this authoring environment.

```sh
python3 scripts/check_parametric_prime_routing.py
python3 scripts/verify_frozen_prime_atlas.py \
  --config verification/parametric-balanced-prime-routing.toml \
  --all-diagnostics --timeout 120 \
  --report /tmp/parametric-balanced-prime-routing.json
```

Use Lean 4.34.1 and Mathlib d13f23b723b8a846827a245b89c10fc7d3f11612.
This is a combinatorial atlas theorem, not a claim about RH/GRH,
spectral optimization, fixed numerical cutoffs, or hardware capacity.
