# conductor_le_threshold_of_upper_bound

Declaration: `GRWTSK.NumberTheory.WeilQuadraticForm.ConductorCertificates.conductor_le_threshold_of_upper_bound`.

## Exact statement and source map

For every nonzero native modulus q, primitive nonprincipal native character chi, real T and upper endpoint u, and f in L2 with integrable original gamma-correction density, assume `E = energy f > 0` and `V = primitiveArithmeticValue chi hp hn T f <= u`. Then

`(chi.conductor : Real) <= exp(primeMass T-gammaConstant 1 0+u/E)`.

The endpoint u need not be negative. The theorem uses Program 7 `primitiveArithmeticValue_lower_bound`; the conductor equals the native modulus by primitivity, not by an additional arbitrary profile parameter.

## Primary argument and consumer

Combine `(log q+c0-M(T))*E <= V` with `V <= u`. Divide by the strictly positive E and rearrange to obtain `log q <= M(T)-c0+u/E`. Monotonicity of exp, q > 0, and `exp(log q)=q` give the result. This is the quantitative conductor localization used when Program 2 produces the upper endpoint `-m0` for the very same source value.

## Hostile checks and limitations

For u < 0 the resulting real ceiling is smaller than the zero-margin threshold. For u >= 0 no negativity is inferred. A zero-energy test cannot be substituted into the division; a genuine negative value discharges that obligation through `energy_pos_of_negative`. Changing the source by a positive scalar shift changes u and cannot preserve the conclusion unchanged. No numerical special-function evaluation or zero search is performed.

## Identity, dependencies and verification

Local authorship: grwtsk contributors. Classification: local consequence / interface composition, not a direct formalization of a newly claimed external theorem. No novelty assertion. Source file: `GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/DirichletConductorCertificateReduction.lean`. Source SHA-256: `21c40f017b83393c2ee2f750a7e5ec70063bd0bcc12f00854fc9428db2db7644`.

Inspected canonical mathematical revision: `grwtsk/math@5f66eb82a40921253664f53602851091ccd01d94`. The reused Program 7 source is [`DirichletConductorProfileBounds.lean`](https://github.com/grwtsk/math/blob/5f66eb82a40921253664f53602851091ccd01d94/GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/DirichletConductorProfileBounds.lean), blob `de5e4060dcc86e920cb0b8da85f544828126c831`; original arithmetic definition: `WeilConductorFrontier.lean`, blob `697bcf855b895beb679b863cbf7c6da183f0b788ef`. Its written source is the [DCU note, T4 and T6](https://github.com/grwtsk/knot-linked-number-systems-and-their-geometry/blob/9364603bb5453e3d71f4739ef04ba609fa541504/research/06-weil-spectral/source-exact-cofinal-transfer/dirichlet-conductor-uniform-v1.md), SHA-256 `5ee31c36bbf282a56e6a9870d91974fc23653f49c4ef3d9a35895c5f9ecf14b8`. That written argument is not independent Lean evidence.

Environment pins: Lean `v4.34.1`; mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`. The intended module check is `lake env lean GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/DirichletConductorCertificateReduction.lean` in a complete pinned checkout; this command was NOT_RUN. Import closure compilation, fresh kernel replay, transitive axiom audit, independent analytical review and CI: NOT_RUN. Source status: `SOURCE_PROOF_CANDIDATE`. The unavailable canonical proof-automation source prevents dependent execution; no proof receipt is inferred from source publication. Mathematical consumer / coordination: math issue #1804 and research issue #50. No root import, toolchain, claim status or original source definition changes.
