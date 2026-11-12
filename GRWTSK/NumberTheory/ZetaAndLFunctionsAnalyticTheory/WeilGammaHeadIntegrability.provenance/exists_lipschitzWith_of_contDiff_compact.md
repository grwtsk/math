# A genuine global Lipschitz supplier for compact C1 tests

Declaration: `GRWTSK.NumberTheory.WeilQuadraticForm.GammaHeadIntegrability.exists_lipschitzWith_of_contDiff_compact`.

MSC2020: primary 26A24; supporting 11M06.

## Exact statement and consumer

Every f:R->C with `ContDiff R 1 f` and `HasCompactSupport f` admits
L:R>=0 with `LipschitzWith L f`. This supplies the regularity premise of
the original gamma-head estimate; no derivative bound is an input.

## Analytical derivation and pinned declarations

The derivative is continuous by `ContDiff.continuous_deriv_one` and has
compact support by `HasCompactSupport.deriv`. Therefore its norm is
bounded above, using `Continuous.bounded_above_of_compact_support`.
Given such a real bound C, choose the nonnegative constant max(C,0).
The pinned Mathlib theorem `lipschitzWith_of_nnnorm_deriv_le` is the
one-dimensional mean-value theorem for a normed-space-valued function.
Apply it to the complex function, viewed as a real differentiable map.

This is a direct consequence of standard analysis, not a new theorem
about arithmetic positivity. The whole derivative, rather than the
real part of f, controls the complex norm. The theorem does not impose
a computable optimal L; any subsequently certified larger bound is valid.

## Hostile checks

C1 is required for the whole zero-extended function. Being smooth only
in the interior of an interval does not suffice: a nonzero endpoint
jump invalidates global Lipschitz control. Smooth rapidly oscillating
complex tests are covered, but their derivative bound grows with their
oscillation. A constant independent of the test is not asserted.

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
