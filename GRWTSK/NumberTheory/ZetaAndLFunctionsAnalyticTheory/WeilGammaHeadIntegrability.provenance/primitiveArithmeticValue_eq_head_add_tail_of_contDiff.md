# Compact C1 return with gamma integrability discharged

Declaration: `GRWTSK.NumberTheory.WeilQuadraticForm.GammaHeadIntegrability.primitiveArithmeticValue_eq_head_add_tail_of_contDiff`.

MSC2020: primary 11M06; supporting 26A24, 28A25.

## Exact statement and consumer

For every actual primitive nonprincipal character chi, complex f with
`ContDiff R 1 f`, support in [-A,A], A>=0, and R>0 with R>=2A,

    primitiveArithmeticValue chi ... A f
      = (gammaConstant(q,kappa)+tailMass(kappa,R))*energy f
        + integral_(0,R] gammaCorrectionDensity(kappa,f,r) dr
        - twistedPrime(A,chi,k -> correlation(f,log k)).

Unlike the earlier consumer, this theorem has neither an `harch` input
nor a `MemLp` input. Both facts are actually supplied for this test class.
The related `gammaCorrection_eq_head_add_tail_of_contDiff` gives the
same return for the gamma term for any natural rate, including a=0.

## Complete supplier chain

The support hypothesis supplies `HasCompactSupport f` using
`HasCompactSupport.intro isCompact_Icc`. Continuous compact support
implies MemLp f 2 volume by pinned Mathlib
`Continuous.memLp_of_hasCompactSupport` (LpSpace/Indicator.lean).
The bounded continuous derivative and mean-value theorem supply a genuine
global Lipschitz constant. The head majorant and exact far tail then
prove integrability on (0,infinity). These facts are packaged by
`gammaCorrection_integrableOn_of_contDiff` and passed to the EXISTING
`primitiveArithmeticValue_eq_head_add_exact_tail` with its unchanged
source and every other original hypothesis. No gamma estimate is assumed
in the supplier or circularly recovered from the desired arithmetic sign.

## Comparison, nonvacuity and open work

The zero-extended polynomial (1-t^2)^2 on [-1,1] is a nonzero C1 test;
complex scalar multiples are also allowed. This is a written example,
not a separate Lean construction. Hard zero extensions with nonzero
boundary values do not meet the premise. H1 continuity/completion,
form-domain density and moving-window spectral continuity remain outside
this file. The signed-prime inequality, full completed explicit formula,
criterion transfer and RH/Dirichlet GRH remain open. This is an analytic
domain improvement of the native source return, not arithmetic positivity.

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
