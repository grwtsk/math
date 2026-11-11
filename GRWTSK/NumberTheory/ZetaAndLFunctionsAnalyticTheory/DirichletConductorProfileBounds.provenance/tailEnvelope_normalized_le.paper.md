# Log-conductor normalized tail ceiling

Local attribution: grwtsk contributors.

## Exact source identity

Declaration: `GRWTSK.NumberTheory.WeilQuadraticForm.ConductorProfiles.tailEnvelope_normalized_le`.
Canonical source: `../DirichletConductorProfileBounds.lean`.
Source candidate revision: `613790e5aa55e2408d6db9fb1befbc0f8ec5fc5d`; Git blob `de5e4060dcc86e920cb0b8da85f544828126c831`; SHA-256 `275c39e404fc2ae0c91a23637b4960bc5ee5968dc03a4b2f0af8073a5c998619`.
Dependency baseline: `grwtsk/math@6cab1fb0725c00a9d06b112ffc215e3523396c50`; Lean `v4.34.1`; Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`.
Coordination: https://github.com/grwtsk/math/issues/1804.

## Mathematical-source correspondence

Source: grwtsk contributors, *RP-OC-07 v1: conductor-uniform bounds and a backward Dirichlet-GRH reduction*, 2026-11-10-v1, section 2, DCU-T1 equation (5).
Exact edition: https://github.com/grwtsk/knot-linked-number-systems-and-their-geometry/blob/9364603bb5453e3d71f4739ef04ba609fa541504/research/06-weil-spectral/source-exact-cofinal-transfer/dirichlet-conductor-uniform-v1.md.
Source SHA-256: `5ee31c36bbf282a56e6a9870d91974fc23653f49c4ef3d9a35895c5f9ecf14b8`.
Program source: *Typed Mathematical Architecture and Zero-Distribution-Dependent Continuity*, Edition 1.0, November 10, 2026, section 20.3, by grwtsk contributors; SHA-256 `ad73ead982fb2bb80c89e4c0a0373edf37385b8716ac6c4a71481c68faebca15`.
Relation: direct formalization candidate of the displayed envelope inequality, with an extension of its algebraic domain to real q>=2 and T>0. It is not the zero-counting or measure-tail theorem.

## Statement and primary argument

For s>1, q>=2 and T>0, U_s(q,T)/log(2q) is at most

`s*T^(1-s)*((1+log((T+2)/2)/log(4))/(s-1)+1/((s-1)^2*log(4)))`.

The private `normalized_tail_identity` uses q*(T+2)=(2q)*((T+2)/2) to split the logarithm, with all logarithm arguments and denominators positive. Since log(2q)>=log(4)>0 and log((T+2)/2)>=0, replacing log(2q) by log(4) in each positive denominator increases the result. The remaining prefactor is nonnegative.

Mathematical consumer: logarithmically normalized family tails in DCU-T1 and, after an independent arithmetic-tail comparison, the manuscript's supportwise continuity criterion. The bound is uniform in q but still depends on the fixed exponent and cutoff.

## Boundaries and hostile checks

For q close to 1/2, log(2q) degenerates; q>=2 cannot be dropped from this proof. A bound on an explicit function is not a theorem identifying that function with a zero sum. The limit of the ceiling as T tends to infinity is not formalized here. Multiplicity, Fourier decay, and the counting-to-tail integral are still separate source obligations. Normalization by a positive scalar cannot create a missing lower sign.

## Evidence

SOURCE_PROOF_CANDIDATE. Source-level algebra inspection only. Lean elaboration, fresh kernel replay, transitive axiom audit and independent analytical review: NOT_RUN. Novelty: UNASSESSED; no novelty claim. The exact source depends on the private denominator-clearing identity as well as Mathlib logarithm/order lemmas. No independent arithmetic proof or main publication is recorded by this provenance file.
