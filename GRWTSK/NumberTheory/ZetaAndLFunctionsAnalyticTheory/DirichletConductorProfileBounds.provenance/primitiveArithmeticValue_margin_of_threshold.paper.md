# Prescribed margins at the genuine primitive conductor

Local attribution: grwtsk contributors.

## Exact source identity

Declaration: `GRWTSK.NumberTheory.WeilQuadraticForm.ConductorProfiles.primitiveArithmeticValue_margin_of_threshold`.
Canonical source: `../DirichletConductorProfileBounds.lean`.
Source candidate revision: `613790e5aa55e2408d6db9fb1befbc0f8ec5fc5d`; Git blob `de5e4060dcc86e920cb0b8da85f544828126c831`; SHA-256 `275c39e404fc2ae0c91a23637b4960bc5ee5968dc03a4b2f0af8073a5c998619`.
Dependency baseline: `grwtsk/math@6cab1fb0725c00a9d06b112ffc215e3523396c50`; Lean `v4.34.1`; Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`.
Coordination: https://github.com/grwtsk/math/issues/1804.

## Mathematical-source correspondence

Source: grwtsk contributors, *RP-OC-07 v1: conductor-uniform bounds and a backward Dirichlet-GRH reduction*, 2026-11-10-v1, section 5, DCU-T4 equation (11) and its threshold, with the residual-branch consumer in section 7, DCU-T6 equation (15).
Exact edition: https://github.com/grwtsk/knot-linked-number-systems-and-their-geometry/blob/9364603bb5453e3d71f4739ef04ba609fa541504/research/06-weil-spectral/source-exact-cofinal-transfer/dirichlet-conductor-uniform-v1.md.
Source SHA-256: `5ee31c36bbf282a56e6a9870d91974fc23653f49c4ef3d9a35895c5f9ecf14b8`.
Program source: *Typed Mathematical Architecture and Zero-Distribution-Dependent Continuity*, Edition 1.0, November 10, 2026, section 20.3, by grwtsk contributors; SHA-256 `ad73ead982fb2bb80c89e4c0a0373edf37385b8716ac6c4a71481c68faebca15`.
Relation: local consequence extending the zero-margin threshold to a prescribed real margin. It is not the numerical certificate of DCU-T5.

## Statement and primary argument

Retain exactly the primitive nonprincipal character, native L2 hypothesis and gamma-integrability hypothesis of primitiveArithmeticValue_lower_bound. For arbitrary real T and margin d, assume

`exp(primeMass T - gammaConstant 1 0 + d) <= (chi.conductor : R)`.

Then `d*energy f <= primitiveArithmeticValue chi hp hn T f`. Primitivity supplies chi.conductor=q. Applying monotonicity of log to the positive exponential gives primeMass(T)-gammaConstant(1,0)+d<=log(q). Thus d<=log(q)+gammaConstant(1,0)-primeMass(T). Multiply by nonnegative energy and apply the preceding source lower bound. No root-number phase, prime power or gamma term is replaced.

For d>0 and positive energy this is strict positivity. The Lean theorem admits negative and zero d as well, so its declaration is a margin theorem, not an assertion that its real parameter is always positive.

## Consumer, hostile cases and remaining mathematics

The consumer is the large-conductor branch of the existing cofinal source-return argument. This removes only conductors beyond the support-dependent threshold. It neither proves small-conductor bounds nor controls every support for a fixed conductor. Raising an imprimitive modulus cannot instantiate hp; ignoring this creates a false conductor gain. Even when prime readouts agree, transferring a bound from a high conductor to a low one must subtract the logarithmic conductor difference times energy.

The exact numerical implication q>=100000 at support one needs a separate Lean certificate for the coefficient and its true finite prime inventory. The completed explicit formula, test-domain correspondence, zeta pole ledger and universal residual sign are also not supplied. No new GRH predicate or unconditional GRH theorem is introduced.

## Evidence

SOURCE_PROOF_CANDIDATE. The source argument was inspected. Lean elaboration, fresh kernel replay, transitive axiom audit and independent analytical review: NOT_RUN. Novelty UNASSESSED, none asserted. This proof depends on the preceding lower bound and is not an independent second proof. This provenance record does not assert main publication or upgrade the evidence of imported declarations.
