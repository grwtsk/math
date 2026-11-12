# Quadratic small-shift energy for the original supported complex source

Declaration: `GRWTSK.NumberTheory.WeilQuadraticForm.GammaHeadIntegrability.shiftEnergy_le_lipschitz`.

MSC2020: primary 28A25; supporting 11M06.

## Exact statement and consumer

For f:R->C, L>=0 a genuine global Lipschitz constant, MemLp f 2 volume,
A,R>=0, support(f) subset [-A,A], and 0<=r<=R,

    energy(t -> f(t+r)-f(t)) <= (2A+R)*L^2*r^2.

The consumer is `gammaCorrectionDensity_le_head` and then integrability of
the original gamma density at its singular endpoint. The energy is exactly
the repository integral of the squared complex norm on the real line.

## Analytical proof and declaration map

`shiftDifference_zero_outside` proves physical support in [-A-R,A]: if
either t or t+r is in [-A,A], then t is in that enlarged interval. Outside
it BOTH values vanish. Its length is 2A+R. The Lipschitz inequality gives
|f(t+r)-f(t)|<=L*r; square and integrate over the enlarged interval.
`integrable_shift_energy` ensures the squared-norm integrand is genuinely
integrable. `setIntegral_eq_integral_of_forall_compl_eq_zero`,
`setIntegral_mono_on` and `Real.volume_real_Icc_of_le` perform the actual
source integral comparison; no abstract substitute energy is introduced.

An alternative analytical route for C1 tests is the fundamental theorem
of calculus plus Cauchy--Schwarz and translation invariance, giving the
stronger r^2*integral|f'|^2 bound. That alternative is not implemented here
and is not an independent referee or kernel check.

## Hostile checks and scope

The endpoints r=0 and A=0 are allowed. No periodic quotient is used.
The Lipschitz norm is the full complex norm, so a rapidly varying complex
phase cannot be ignored. A discontinuous indicator of [-A,A], A>0, has
shift energy 2r for 0<r<2A; no finite L can supply this quadratic estimate.
For example the real function (1-t^2)^2 on [-1,1], zero elsewhere, is a
nonzero C1 Lipschitz test with L=4. This last example is written analysis,
not a new Lean construction in this file.

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
