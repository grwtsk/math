# Conductor monotonicity of the explicit tail envelope

Local attribution: grwtsk contributors.

## Exact source identity

Declaration: `GRWTSK.NumberTheory.WeilQuadraticForm.ConductorProfiles.tailEnvelope_mono_conductor`.
Canonical source: `../DirichletConductorProfileBounds.lean`.
Source candidate revision: `613790e5aa55e2408d6db9fb1befbc0f8ec5fc5d`, Git blob `de5e4060dcc86e920cb0b8da85f544828126c831`, SHA-256 `275c39e404fc2ae0c91a23637b4960bc5ee5968dc03a4b2f0af8073a5c998619`.
Dependency baseline: `grwtsk/math@6cab1fb0725c00a9d06b112ffc215e3523396c50`, Lean `v4.34.1`, Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`.
Coordination: https://github.com/grwtsk/math/issues/1804.

## Mathematical-source correspondence

Source authors: grwtsk contributors. Title: *RP-OC-07 v1: conductor-uniform bounds and a backward Dirichlet-GRH reduction*, edition 2026-11-10-v1, section 2 (DCU-T1), the envelope definition and the passage from (1) to (2).
Exact edition: https://github.com/grwtsk/knot-linked-number-systems-and-their-geometry/blob/9364603bb5453e3d71f4739ef04ba609fa541504/research/06-weil-spectral/source-exact-cofinal-transfer/dirichlet-conductor-uniform-v1.md.
Source SHA-256: `5ee31c36bbf282a56e6a9870d91974fc23653f49c4ef3d9a35895c5f9ecf14b8`.
Program source: *Typed Mathematical Architecture and Zero-Distribution-Dependent Continuity*, Edition 1.0, November 10, 2026, section 20.3, by grwtsk contributors. Monograph SHA-256: `ad73ead982fb2bb80c89e4c0a0373edf37385b8716ac6c4a71481c68faebca15`.
Relation: local consequence, not a formalization of the arithmetic zero-count theorem.

## Statement and primary argument

For real s,q,Q,T with s>1, q>0, q<=Q and T>0, the displayed function U_s(q,T)=s*T^(1-s)*(log(q*(T+2))/(s-1)+1/(s-1)^2) satisfies U_s(q,T)<=U_s(Q,T). The logarithm arguments are positive and ordered. Divide their ordered logarithms by the positive s-1, add the same term, and multiply by the nonnegative s*T^(1-s).

The statement extends the envelope algebra to positive real conductor labels and T>0. It does not extend the arithmetic counting theorem to nonintegral conductors or low heights. Its consumer is the bounded-conductor replacement q<=Q in DCU-T1 (2). The missing arithmetic input remains a bound of the actual multiplicity-counted zero sum by this envelope.

## Boundaries and hostile checks

A nonpositive q invalidates the positive-logarithm argument; s=1 is excluded from the analytic envelope. Increasing q cannot establish a conductor-independent ceiling for the unnormalized expression. No zero divisor is defined by this formula. The proof shares the definition and order lemmas with the normalized-ceiling theorem and is not an independent arithmetic argument.

## Evidence

SOURCE_PROOF_CANDIDATE. The declaration and primary algebraic argument were inspected in source. Lean elaboration, fresh kernel replay, transitive axiom audit and independent analytical review: NOT_RUN. Novelty: UNASSESSED; no novelty asserted for logarithm monotonicity. This record neither qualifies imported proof candidates nor records main publication. The preceding candidate commit was not advanced to main because its connector-selected commit identity failed repository policy.
