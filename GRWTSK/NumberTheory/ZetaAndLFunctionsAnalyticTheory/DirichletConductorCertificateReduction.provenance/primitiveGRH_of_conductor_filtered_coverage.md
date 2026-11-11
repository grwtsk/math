# primitiveGRH_of_conductor_filtered_coverage

Declaration: `GRWTSK.NumberTheory.WeilQuadraticForm.ConductorCertificates.primitiveGRH_of_conductor_filtered_coverage`.

## Exact statement and source map

Use Program 10's actual `PrimitiveDirichletSource` and `PrimitiveDirichletGRH`; the latter quantifies critical-strip zeros of the analytically continued `DirichletCharacter.LFunction`, including the modulus-one zeta source. No replacement GRH definition is added.

For each natural window A, supply a topological space `Window A`, dense encoding `Code A -> Window A`, and continuous real form for every exact primitive source. For each nonprincipal source supply `ArithmeticWindowModel`: a represented L2 test supported in [-A,A], integrable original gamma correction, and an equality between the form and the original `primitiveArithmeticValue`. Supply an existing sound `CertificateChecker` for each exact source/test/accuracy judgment `-2^(-k) <= form source A (encode A d)`.

Positive certificate coverage is required for every test code and accuracy, but only for nonprincipal sources satisfying `source.character.conductor < conductorCutoff A`. Separately assume nonnegativity for all principal-source windows and tests, and the arithmetic implication from all represented nonnegative forms to the full actual `PrimitiveDirichletGRH` target. Under all these hypotheses the target follows.

Additional pinned dependencies: `WeilDenseCertificateReduction.lean`, blob `e84a5fded7bb33672f1c80d3e729bb28b2aee83e`, and `ApproximateCertificateCoverage.lean`, blob `70056bee85f26c04010dc8091aecab228f849de5`, at the canonical mathematical revision below. Reused declarations: `dense_nonneg_of_complete_coverage` and `dyadic_errors_arbitrarily_small`.

## Primary argument and consumer

Fix a source, A, and represented test. In the principal case use the separate premise. For a nonprincipal source below the cutoff, checker soundness gives arbitrarily small-error lower bounds on every encoded test; their limit gives nonnegativity there, and continuity plus density extends it to the window. At or above the cutoff, rewrite with `ArithmeticWindowModel.source_eq` and apply the existing arithmetic large-conductor comparison. All source/window/test values are now nonnegative, so the explicitly supplied full arithmetic return applies.

## Hostile checks and limitations

Soundness alone does not imply universal certificate coverage. Empty test spaces or a convenient pointwise topology cannot discharge the full-source return by fiat. The model does not construct a smooth dictionary, prove its density, prove continuity, identify the zero-side formula, or establish exhaustive coverage of the actual compactly supported smooth test domain. The principal source must retain both pole orientations. Finite many conductors per window does not make the theorem a finite algorithm: the windows, tests, and accuracies remain universal. This is a conditional specialization of Program 10, not a proved analytic sign theorem or completed GRH proof.

## Identity, dependencies and verification

Local authorship: grwtsk contributors. Classification: local consequence / interface composition, not a direct formalization of a newly claimed external theorem. No novelty assertion. Source file: `GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/DirichletConductorCertificateReduction.lean`. Source SHA-256: `21c40f017b83393c2ee2f750a7e5ec70063bd0bcc12f00854fc9428db2db7644`.

Inspected canonical mathematical revision: `grwtsk/math@5f66eb82a40921253664f53602851091ccd01d94`. The reused Program 7 source is [`DirichletConductorProfileBounds.lean`](https://github.com/grwtsk/math/blob/5f66eb82a40921253664f53602851091ccd01d94/GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/DirichletConductorProfileBounds.lean), blob `de5e4060dcc86e920cb0b8da85f544828126c831`; original arithmetic definition: `WeilConductorFrontier.lean`, blob `697bcf855b895beb679b863cbf7c6da183f0b788ef`. Its written source is the [DCU note, T4 and T6](https://github.com/grwtsk/knot-linked-number-systems-and-their-geometry/blob/9364603bb5453e3d71f4739ef04ba609fa541504/research/06-weil-spectral/source-exact-cofinal-transfer/dirichlet-conductor-uniform-v1.md), SHA-256 `5ee31c36bbf282a56e6a9870d91974fc23653f49c4ef3d9a35895c5f9ecf14b8`. That written argument is not independent Lean evidence.

Environment pins: Lean `v4.34.1`; mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`. The intended module check is `lake env lean GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/DirichletConductorCertificateReduction.lean` in a complete pinned checkout; this command was NOT_RUN. Import closure compilation, fresh kernel replay, transitive axiom audit, independent analytical review and CI: NOT_RUN. Source status: `SOURCE_PROOF_CANDIDATE`. The unavailable canonical proof-automation source prevents dependent execution; no proof receipt is inferred from source publication. Mathematical consumer / coordination: math issue #1804 and research issue #50. No root import, toolchain, claim status or original source definition changes.
