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
