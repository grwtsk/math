# Paper-to-formalization: PR103 causal Möbius calculus closure

Local mathematical attribution: grwtsk contributors. Formalization assistance: OpenAI ChatGPT. Date: 2026-11-02.

## Source package

- Lean source: `GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/MoebiusStrongFixedPowerCalculusClosure.lean`
- Source merge: `ecd1dfc6df1ec90e5028a2ed36838f98e6eb369b`
- Source blob: `c1ba0aabd513e6e2f3955d787ae1e3dbbf8d4ca7`
- Mathematical review: [`docs/mathematics/_support/reviews/moebius-strong-fixed-power-calculus-closure-2026-11-02.md`](../../../reviews/moebius-strong-fixed-power-calculus-closure-2026-11-02.md)
- Source ledger: [`docs/mathematics/_support/reference/literature/reading-background/moebius-strong-fixed-power-calculus-closure-references.md`](moebius-strong-fixed-power-calculus-closure-references.md)

## Formalized connection

The module closes two local, arithmetic-free propositions that were deliberately visible in the PR103 fixed-power programme:

1. `PickupVelocityPowerEnergyTransfer`: if `|pickupVelocity u| <= C*exp(rho*u)` with `rho>0`, then the unchanged cumulative energy is at most `C^2/(2*rho^3)*exp(2*rho*T)`.
2. `StrongPacketFixedRateReturn`: an energy bound `A*exp(r*T)` pays the complete original signed strong packet at the same positive rate with explicit constant `A+36/r^2+2/r`.

The proofs use the pinned interval-integral norm majorant, exact exponential integration, the existing diagonal estimate, the existing Putnam sparse-gap payment, and the existing weak-overlap threshold. No arithmetic coefficient, source support, birth convention, orientation, or signed packet is replaced.

## Remaining boundaries

The external PR103 modulus-one zeta adapter and the zero-free-to-Mertens Perron/contour bridge remain visible inputs. Compilation, expected-type checks, fresh-kernel replay, transitive axiom audit, and native execution remain `NOT_RUN`. The all-positive-rate endpoint supplier and RH remain `UNPROVED`.
