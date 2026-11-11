# conductor_bounds_of_pairing_budget

Declaration: `GRWTSK.NumberTheory.WeilQuadraticForm.ConductorCertificates.conductor_bounds_of_pairing_budget`.

## Exact statement and source map

Let V be the unchanged native primitive nonprincipal arithmetic value at T and f, with f in L2 and original gamma-correction density integrable. Use Program 2's complex signed pairing

`P(u,v) = sum_i m(i) * u(i) * conjugate(v(j(i)))`.

Assume m,w >= 0, w(j(i)) = w(i), S,E >= 0, `norm(u(i)) <= S*w(i)`, `norm(e(i)) <= E*w(i)`, summability of `m(i)*w(i)^2`, and total weighted mass at most M. Assume `Re P(u,u) <= -2*m0+tail`, `tail+M*(2*S*E+E^2) <= m0`, and m0 > 0. Finally require the exact source equality `V = Re P(u+e,u+e)`. Then the source energy `Ef = energy f` is positive, the real conductor is at most `exp(primeMass T-gammaConstant 1 0-m0/Ef)`, and the integer conductor is strictly below `conductorCutoff T`.

Additional pinned dependency: `GRWTSK/FunctionalAnalysis/WeightedConjugatePairing.lean`, blob `727272783e1502265da0cb4281bd5c793a924e69`, at the mathematical revision below; exact declaration `GRWTSK.FunctionalAnalysis.WeightedConjugatePairing.pairing_add_self_re_le_neg`. This is a local consequence of that whole-pairing theorem, not a proof of an arithmetic divisor realization.

## Primary argument and consumer

The Program 2 bound controls both cross terms and the error-error term, giving `Re P(u+e,u+e) <= -m0`. Rewrite using the exact source equality. Since m0 > 0, V is negative. Apply the local energy-positivity lemma, the upper-endpoint conductor theorem with u = -m0, and the strict integer-cutoff theorem. This connects Program 2 negative-witness budgets to Program 7's residual conductor search region.

## Hostile checks and limitations

Finite-head negativity without the whole weighted budget is insufficient. Real ordinates alone do not replace the complex divisor or the actual involution. The abstract pairing result does not itself construct Fourier data, prove arithmetic zero counts, match multiplicities, or supply the completed explicit formula. Those are part of the exact source-equality and domain obligations, not inferred from a numerical resemblance. No auxiliary positive operator is substituted for V; no arithmetic negative witness is asserted to exist.

## Identity, dependencies and verification

Local authorship: grwtsk contributors. Classification: local consequence / interface composition, not a direct formalization of a newly claimed external theorem. No novelty assertion. Source file: `GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/DirichletConductorCertificateReduction.lean`. Source SHA-256: `21c40f017b83393c2ee2f750a7e5ec70063bd0bcc12f00854fc9428db2db7644`.

Inspected canonical mathematical revision: `grwtsk/math@5f66eb82a40921253664f53602851091ccd01d94`. The reused Program 7 source is [`DirichletConductorProfileBounds.lean`](https://github.com/grwtsk/math/blob/5f66eb82a40921253664f53602851091ccd01d94/GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/DirichletConductorProfileBounds.lean), blob `de5e4060dcc86e920cb0b8da85f544828126c831`; original arithmetic definition: `WeilConductorFrontier.lean`, blob `697bcf855b895beb679b863cbf7c6da183f0b788ef`. Its written source is the [DCU note, T4 and T6](https://github.com/grwtsk/knot-linked-number-systems-and-their-geometry/blob/9364603bb5453e3d71f4739ef04ba609fa541504/research/06-weil-spectral/source-exact-cofinal-transfer/dirichlet-conductor-uniform-v1.md), SHA-256 `5ee31c36bbf282a56e6a9870d91974fc23653f49c4ef3d9a35895c5f9ecf14b8`. That written argument is not independent Lean evidence.

Environment pins: Lean `v4.34.1`; mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`. The intended module check is `lake env lean GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/DirichletConductorCertificateReduction.lean` in a complete pinned checkout; this command was NOT_RUN. Import closure compilation, fresh kernel replay, transitive axiom audit, independent analytical review and CI: NOT_RUN. Source status: `SOURCE_PROOF_CANDIDATE`. The unavailable canonical proof-automation source prevents dependent execution; no proof receipt is inferred from source publication. Mathematical consumer / coordination: math issue #1804 and research issue #50. No root import, toolchain, claim status or original source definition changes.
