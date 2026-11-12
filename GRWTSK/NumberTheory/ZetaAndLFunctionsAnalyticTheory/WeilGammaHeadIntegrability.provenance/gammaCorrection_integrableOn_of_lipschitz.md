# Full gamma integrability from head regularity and the exact far tail

Declaration: `GRWTSK.NumberTheory.WeilQuadraticForm.GammaHeadIntegrability.gammaCorrection_integrableOn_of_lipschitz`.

MSC2020: primary 11M06; supporting 28A25.

## Exact statement and consumer

For every a in Nat and complex f with MemLp f 2 volume, a genuine global
Lipschitz constant, support in [-A,A] and A>=0, the ORIGINAL
`gammaCorrectionDensity a f` is integrable on (0,infinity).
The statement has no gamma-integrability premise. Its consumer is the
existing `gammaCorrectionIntegral_eq_head_add_tail` and all subsequent
source-exact arithmetic assembly on this test class.

## Analytical proof

Choose R=2A+1>0. `gammaCorrection_integrableOn_head` proves integrability
on (0,R] by the explicit linear majorant. The existing
`ExactGammaTail.gammaTail_integrable_and_eq` proves integrability on
(R,infinity) from physical support disjointness and an exponential
majorant for the original gamma kernel. These sets are disjoint and
cover (0,infinity). `IntegrableOn.union` joins the two integrability
facts. Integrability at zero is therefore discharged, not encoded in
another structure or inferred from totalized integral notation.

The two mechanisms are intentionally different: regularity controls
small shifts, while compact physical support evaluates sufficiently
large shifts. Bounding only the kernel at infinity cannot control zero.

## Boundaries

No H1 completion, density in the Weil form domain, frequency-tail cutoff,
self-adjoint realization or positive sign of the full Weil form follows.
Both complex phases and the original Lebesgue energy are retained. A=0
is included; a supported continuous test there must vanish, but the proof
does not rely on a nontriviality assumption. Positive tail mass alone
never pays the signed prime contribution.

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
