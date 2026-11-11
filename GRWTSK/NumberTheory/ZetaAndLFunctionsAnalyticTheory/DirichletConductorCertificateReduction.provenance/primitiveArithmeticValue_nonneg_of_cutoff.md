# primitiveArithmeticValue_nonneg_of_cutoff

Declaration: `GRWTSK.NumberTheory.WeilQuadraticForm.ConductorCertificates.primitiveArithmeticValue_nonneg_of_cutoff`.

## Exact statement and source map

Write `V = primitiveArithmeticValue chi hp hn T f`, `E = energy f`, `M(T) = primeMass T`, `c0 = gammaConstant 1 0`, `B(T,delta) = exp(M(T)-c0+delta)`, and `C(T) = Nat.ceil(B(T,0))`. For every nonzero native modulus q, native primitive character chi with chi != 1, real T, and f in L2 with integrable original gamma-correction density on (0,infinity), `C(T) <= chi.conductor` implies `0 <= V`. No support hypothesis is needed for this finite-cutoff comparison; a full-source application must additionally justify the support/cutoff match.

Direct dependency: Program 7 `ConductorProfiles.primitiveArithmeticValue_margin_of_threshold` with delta = 0. The new integer cutoff is the natural ceiling of the exact real threshold, not the existing coarse integer budget.

## Primary argument and consumer

The ceiling inequality gives `B(T,0) <= C(T)`. Cast the assumed integer conductor inequality to the reals and compose. The existing margin theorem then gives `0 * E <= V`, hence nonnegativity. This supplies the entire large-conductor branch of `primitiveGRH_of_conductor_filtered_coverage`, without a certificate for that branch.

## Hostile checks and limitations

At an integral threshold, equality belongs to the nonnegative branch; strict positivity is not asserted. Removing primitivity does not license replacing the conductor by an inflated modulus. The principal source is excluded, not stripped of its poles. This theorem bounds the unchanged arithmetic expression, not an unidentified spectral approximation; it does not prove the explicit formula or GRH.

## Identity, dependencies and verification

Local authorship: grwtsk contributors. Classification: local consequence / interface composition, not a direct formalization of a newly claimed external theorem. No novelty assertion. Source file: `GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/DirichletConductorCertificateReduction.lean`. Source SHA-256: `21c40f017b83393c2ee2f750a7e5ec70063bd0bcc12f00854fc9428db2db7644`.

Inspected canonical mathematical revision: `grwtsk/math@5f66eb82a40921253664f53602851091ccd01d94`. The reused Program 7 source is [`DirichletConductorProfileBounds.lean`](https://github.com/grwtsk/math/blob/5f66eb82a40921253664f53602851091ccd01d94/GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/DirichletConductorProfileBounds.lean), blob `de5e4060dcc86e920cb0b8da85f544828126c831`; original arithmetic definition: `WeilConductorFrontier.lean`, blob `697bcf855b895beb679b863cbf7c6da183f0b788ef`. Its written source is the [DCU note, T4 and T6](https://github.com/grwtsk/knot-linked-number-systems-and-their-geometry/blob/9364603bb5453e3d71f4739ef04ba609fa541504/research/06-weil-spectral/source-exact-cofinal-transfer/dirichlet-conductor-uniform-v1.md), SHA-256 `5ee31c36bbf282a56e6a9870d91974fc23653f49c4ef3d9a35895c5f9ecf14b8`. That written argument is not independent Lean evidence.

Environment pins: Lean `v4.34.1`; mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`. The intended module check is `lake env lean GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/DirichletConductorCertificateReduction.lean` in a complete pinned checkout; this command was NOT_RUN. Import closure compilation, fresh kernel replay, transitive axiom audit, independent analytical review and CI: NOT_RUN. Source status: `SOURCE_PROOF_CANDIDATE`. The unavailable canonical proof-automation source prevents dependent execution; no proof receipt is inferred from source publication. Mathematical consumer / coordination: math issue #1804 and research issue #50. No root import, toolchain, claim status or original source definition changes.
