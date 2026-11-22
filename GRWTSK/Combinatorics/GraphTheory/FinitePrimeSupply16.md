# Finite prime-supply certificate for the 16D atlas

Source: [FinitePrimeSupply16.lean](FinitePrimeSupply16.lean).
Consumer: [math #1842](https://github.com/grwtsk/math/issues/1842).

## Exact target and principal argument

The already compiled `FrozenPrimeBeaconCardinality` module needs
`PrefixFits16 := Nat.nth Nat.Prime 4095 ≤ 65536`. This module proves
that it follows from the exact finite predicate
`4095 < Nat.primeCounting' 38874` using Mathlib
`Nat.nth_lt_of_lt_count`. This is a theorem about the genuine
`Nat.Prime` predicate, not a positive surrogate.

The source attempts a *direct decidable proof* of that finite count.
The count is 4096 by independent Python/sympy computation:
the 4096th prime is 38873. The proof uses ordinary `decide`, not
`native_decide`, and a locally expanded recursion-depth budget.
The tactic may be computationally expensive in the pinned Lean
environment. Its *compilation and kernel status is NOT_RUN*, and
runtime/resource feasibility is an open check. Do not claim the
bound is formally established until the specific source compiles
and passes the axiom audit. A segmented finite certificate is
the preferred fallback if monolithic reflection exhausts resources.

The consequent theorem returns to the original `beaconPrimeLabel`
supplied by the previously verified finite 4096-beacon count and
actual prime injection. It introduces no new label assignment.

## Independence, scope and provenance

The 2026-11-22 59/59 scoped Lean verification covers the earlier
nine modules, not this one. No external GRH theorem, formal-machine
claim, spectral approximation or prismatic structure is used here.

Verification evidence at publication: source/manifest readback
planned; Lean elaboration NOT_RUN, kernel replay NOT_RUN,
axiom audit NOT_RUN, external mathematical review NOT_RUN.
