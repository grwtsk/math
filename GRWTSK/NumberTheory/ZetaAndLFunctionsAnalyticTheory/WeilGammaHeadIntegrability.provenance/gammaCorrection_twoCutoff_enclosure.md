# Two-endpoint enclosure of the unchanged gamma correction

Declaration: `GRWTSK.NumberTheory.WeilQuadraticForm.GammaHeadIntegrability.gammaCorrection_twoCutoff_enclosure`.

MSC2020: primary 11M06; supporting 26A42.

## Exact statement

For all natural a,n, supported complex L2 Lipschitz f, A>=0, R>0,
R>=2A and 0<=epsilon<=R, define

    M = integral_(epsilon,R] gammaCorrectionDensity(a,f,r) dr,
    E = energy f,
    P = tailPrefix(a,n,R),
    C = (2A+R)*L^2*(R+1/2), U = tailUpper(a+2n,R).

Then for the original full gamma correction Gamma,

    M+P*E <= Gamma <= M+P*E + C*epsilon^2/2 + U*E.

The same function, original physical support and original kernel occur
in every term. All n and both cutoff parameters remain quantified.

## Proof and exact remainder

Full integrability is derived, not assumed. Split (0,R] into the
DISJOINT sets (0,epsilon] and (epsilon,R], using separately proved
integrability and `setIntegral_union`. The existing exact far-tail return
then gives Gamma=H+M+tailMass(a,R)*E. The head satisfies
0<=H<=C*epsilon^2/2. The prior exact finite-tail recurrence gives
0<tailMass(a,R)-P<=U. Multiply by E>=0 and add. For the zero test the
strict scalar tail lower bound becomes a non-strict energy bound, as
required. This is the primary argument for the declaration.

An alternative check is to retain the exact omitted quantity
H+tailMass(a+2n,R)*E before applying either upper estimate. This is a
check of the same source identity, not independent mathematical review.

## Scope and hostile cases

n=0, epsilon=0 and epsilon=R are included. A finite exponential prefix
is not silently equated with the infinite tail. The estimate budgets
only the two omitted physical-translation regions. Finite integration,
source basis approximation and special-function/rounding errors remain
separate. It is NOT the Fourier-frequency tail in a Galerkin matrix.
It does not establish positive semidefiniteness or certificate existence
for any complete test class, let alone all windows or conductors.

## Source, provenance and evidence

Local attribution: grwtsk contributors. Source date: 2026-11-11.
Canonical source: [`GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/WeilGammaHeadIntegrability.lean`](../WeilGammaHeadIntegrability.lean).
Source SHA-256: `c38741ef2863553c72ded8d2da9743b0e1d2b225ee50d47412931c6f2d3330e9`.
Inspected math main: `4363be401abeff44c5620dc3be90f757731c84c9`.
Lean `leanprover/lean4:v4.34.1`; Mathlib
`d13f23b723b8a846827a245b89c10fc7d3f11612`.

This is a source-local elementary consequence, not a copied Yang--Mills
proof or a claim to have formalized a new external paper theorem. The exact
native objects come from `WeilGammaData`, `WeilSourcePrimeCorrelation`,
`WeilConductorFrontier` and `WeilExactGammaTail` at the inspected revision.
Their historical arithmetic context is Connes--Consani--Moscovici,
*Zeta Spectral Triples*, arXiv:2511.22755v1 (27 November 2025),
(2.1)--(2.5) for the complex correlation convention and (3.19)--(3.20)
as identified by the canonical gamma sources. No new paper attribution,
explicit-formula proof or theorem novelty is inferred from that context.

Status: `SOURCE_PROOF_CANDIDATE`. Written analytical derivation: supplied.
Lean elaboration, full dependency build, fresh kernel replay, transitive
axiom audit, independent analytical review and repository-wide validation:
`NOT_RUN`. Novelty: `UNASSESSED`; no novelty asserted. Static source
inspection is not Lean evidence. Historical checks of dependencies do not
verify this increment. Source and publication coordination: issue #1789.

The canonical proof-automation skill was inaccessible (404) at
`grwtsk/noeaaeue@8b50d43323f27bb13bdcae9f2e2b4a81c9895827`; dependent execution
was not run. No verified local skill checkout or Lean/Lake executable was
available. Source-only publication does not alter imports in the root
aggregator, dependency pins, workflows or prior evidence statuses.
