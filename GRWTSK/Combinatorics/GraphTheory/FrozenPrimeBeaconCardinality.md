# Exact 4096-beacon cardinality and distinct-prime labeling

Source: [FrozenPrimeBeaconCardinality.lean](FrozenPrimeBeaconCardinality.lean)
Coordination: [math #1842](https://github.com/grwtsk/math/issues/1842)

## Analytical proof

The additive homomorphism `syndromeHom` has the original
`syndrome : Cell m → Port m` as its underlying map.
Its surjectivity is established by the already checked impulse identity:
for any target `i`, `syndrome (impulse i)=i`.

The finite additive-group identity
`Nat.card ker * Nat.card codomain = Nat.card domain`
therefore specializes to `N * 16 = 65536` at `m=4`.
It follows algebraically that the frozen kernel contains
**exactly 4096** beacons.

A noncomputable `Fintype.equivFinOfCardEq` identifies that kernel
with `Fin 4096`. Prime labels are the actual values
`Nat.nth Nat.Prime i`, using the pinned Mathlib
`prime_nth_prime` and `primeCounting'_nth_eq` to prove
primality and injectivity.

The chosen equivalence is *not* a stable canonical runtime ordering
and cannot by itself be used for reproducible disk addresses.
An explicit canonical ranking algorithm must be provided separately.

## Remaining finite numeric obligation

`PrefixFits16` is exactly
`Nat.nth Nat.Prime 4095 ≤ 65536`.
The theorem `beaconPrimeLabel_le_of_prefix` consumes that
statement instead of inventing a bound. A reproducible Python sieve
gives the 4096th prime as **38873**, with 6542 primes at or
below 65536, but a Lean-checkable finite source certificate for
this inequality remains to be supplied.

## Exact reference correspondence

- [FrozenPrimeHypercube.lean](FrozenPrimeHypercube.lean):
  original binary carrier and syndrome.
- Mathlib `GroupTheory/Index.lean`:
  `AddSubgroup.card_ker_mul_card_of_surjective`.
- Mathlib `NumberTheory/PrimeCounting.lean`:
  `Nat.prime_nth_prime`, `Nat.primeCounting'_nth_eq`.
- Mathlib `Data/Fintype/EquivFin.lean`:
  `Fintype.equivFinOfCardEq`.

All imports use the root Lean 4.34.1 and pinned Mathlib
`d13f23b723b8a846827a245b89c10fc7d3f11612`.
There is no dependency on RH/Dirichlet GRH.

## Status

SOURCE_PROOF_CANDIDATE. New source not compiled in this session:
elaboration, fresh kernel replay and transitive axiom audit NOT_RUN.
Previously checked 40 theorem endpoints remain separate.
No new `sorry`, `admit`, `axiom`, `unsafe` or
`native_decide` is introduced.

A local failure must be recorded and repaired at the exact
source revision, preserving theorem statements and all other work.

## First frontier build failure: source-local kernel-cardinality repair (2026-11-22)

The user's pinned `python3 scripts/verify_frozen_prime_atlas.py --config verification/frozen-prime-frontier.toml`
run passed preflight (9 modules / 59 declarations) and all five previous
module builds. The new `FrozenPrimeBeaconCardinality.lean` build **FAILED**
(exit 1) with one reported error at line 60: unknown constant
`AddSubgroup.card_ker_mul_card_of_surjective`.

**Root cause:** that theorem name is not present in the pinned Mathlib
`d13f23b723b8a846827a245b89c10fc7d3f11612`. The pinned
`Mathlib/GroupTheory/Index.lean` does expose two relevant theorems:

- `AddSubgroup.index_ker` — subgroup kernel index equals the cardinality
  of the homomorphism's range.
- `AddSubgroup.card_mul_index` — subgroup size times index equals the
  cardinality of the ambient group.

The repair explicitly proves the kernel-index identity, using the
already authored `syndromeHom_surjective 4` and the pinned
`range_eq_top_of_surjective` theorem, then applies
`card_mul_index`. The exact user-facing `beacon_card_four` statement
and all other theorem declarations, arguments and imports are retained.

**Revised source blob:** `67a13b3e10081c7853fb92aaa220c2f5f43f4d76`.
**Previously failed source blob:** `a7558915ecbecb8a5d722b352892e1b0a991d2db`.
`verification/frozen-prime-frontier.toml` is updated to require the
corrected blob before attempting a Lean build.

The original source's local build is **FAILED**, not NOT_RUN. Compilation
and axiom audit for the revised source are **NOT_RUN** in the assistant's
environment. The preceding 40-declaration scoped test was confirmed by
the user and remains a separate passing result. No universal RH/GRH
consequence is promoted.
