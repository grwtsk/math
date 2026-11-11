# conductor_lt_cutoff_of_negative

Declaration: `GRWTSK.NumberTheory.WeilQuadraticForm.ConductorCertificates.conductor_lt_cutoff_of_negative`.

## Exact statement and source map

For every nonzero native modulus q, primitive nonprincipal native character chi, real T, and f in L2 with integrable original gamma-correction density, a strictly negative original value implies `chi.conductor < conductorCutoff T`, where `conductorCutoff T = Nat.ceil(exp(primeMass T-gammaConstant 1 0))`.

Direct dependency: the local `primitiveArithmeticValue_nonneg_of_cutoff`, itself a specialization of the existing Program 7 margin theorem.

## Primary argument and consumer

If the strict integer cutoff inequality failed, total ordering would give `conductorCutoff T <= chi.conductor`. The large-conductor theorem would make the same source value nonnegative, a contradiction. This places any genuine negative witness in the same residual conductor branch used by the positive certificate reduction.

## Hostile checks and limitations

The conclusion is per window; it does not give one global conductor cutoff independent of T. There remain infinitely many support windows and infinitely many tests. A finite computation on conductors below one cutoff is not GRH. A nonnegative or inconclusive upper endpoint is not a negative witness, and omitted gamma terms or prime powers would change the source.

## Identity, dependencies and verification

Local authorship: grwtsk contributors. Classification: local consequence / interface composition, not a direct formalization of a newly claimed external theorem. No novelty assertion. Source file: `GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/DirichletConductorCertificateReduction.lean`. Source SHA-256: `21c40f017b83393c2ee2f750a7e5ec70063bd0bcc12f00854fc9428db2db7644`.

Inspected canonical mathematical revision: `grwtsk/math@5f66eb82a40921253664f53602851091ccd01d94`. The reused Program 7 source is [`DirichletConductorProfileBounds.lean`](https://github.com/grwtsk/math/blob/5f66eb82a40921253664f53602851091ccd01d94/GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/DirichletConductorProfileBounds.lean), blob `de5e4060dcc86e920cb0b8da85f544828126c831`; original arithmetic definition: `WeilConductorFrontier.lean`, blob `697bcf855b895beb679b863cbf7c6da183f0b788ef`. Its written source is the [DCU note, T4 and T6](https://github.com/grwtsk/knot-linked-number-systems-and-their-geometry/blob/9364603bb5453e3d71f4739ef04ba609fa541504/research/06-weil-spectral/source-exact-cofinal-transfer/dirichlet-conductor-uniform-v1.md), SHA-256 `5ee31c36bbf282a56e6a9870d91974fc23653f49c4ef3d9a35895c5f9ecf14b8`. That written argument is not independent Lean evidence.

Environment pins: Lean `v4.34.1`; mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`. The intended module check is `lake env lean GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/DirichletConductorCertificateReduction.lean` in a complete pinned checkout; this command was NOT_RUN. Import closure compilation, fresh kernel replay, transitive axiom audit, independent analytical review and CI: NOT_RUN. Source status: `SOURCE_PROOF_CANDIDATE`. The unavailable canonical proof-automation source prevents dependent execution; no proof receipt is inferred from source publication. Mathematical consumer / coordination: math issue #1804 and research issue #50. No root import, toolchain, claim status or original source definition changes.
