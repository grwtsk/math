# Integrable singular head and an explicit quadratic omission budget

Declaration: `GRWTSK.NumberTheory.WeilQuadraticForm.GammaHeadIntegrability.gammaCorrection_head_budget`.

MSC2020: primary 11M06; supporting 26A42, 28A25.

## Exact statement and consumer

For every natural a, supported complex L2 Lipschitz f, A,R>=0, and
0<=epsilon<=R, let C=(2A+R)*L^2*(R+1/2). Then

    0 <= integral_(0,epsilon] gammaCorrectionDensity(a,f,r) dr
      <= C*epsilon^2/2.

The finite-interval head is genuinely integrable. The consumer is the
two-cutoff enclosure of the exact gamma and primitive arithmetic source.
The estimate is an upper error budget, not a lower arithmetic sign.

## Complete analytical derivation

Put d=1-exp(-2r), r>0. From exp(2r)>=1+2r, multiplication by exp(-2r)
gives (2r+1)*exp(-2r)<=1. Hence r<=(r+1/2)*d. The numerator of the
original K_a is <=1 for a>=0, so `shift_mul_parityKernel_le` proves
r*K_a(r)<=r+1/2. No false uniform bound for K_a itself is used at zero.

The previous energy bound gives GammaDensity<=D*r^2*K_a(r),
D=(2A+R)*L^2. Thus GammaDensity<=D*r*(r+1/2)<=C*r on (0,R].
Nonnegativity follows from the real kernel and the squared complex norm.

`shiftEnergy_measurable` applies the pinned Mathlib
`StronglyMeasurable.integral_prod_right'` to the jointly continuous real
function (r,t)->|f(t+r)-f(t)|^2. `gammaCorrectionDensity_measurable`
multiplies this actual integrated function by the measurable original
kernel. The measurable density is dominated by an integrable linear
function, proving `gammaCorrection_integrableOn_head`. Integrating the
linear majorant over (0,epsilon] gives C*epsilon^2/2, using the literal
Lebesgue interval and `integral_id` at the pinned Mathlib revision.
There is no swap of two possibly divergent improper integrals.

## Comparison and falsification

At epsilon=0 both sides are zero. The coefficient depends on A,R,L;
it is not a uniform all-window or all-test constant. For the discontinuous
indicator of [-A,A], the gamma density tends to 1 at zero and the omitted
head is asymptotic to epsilon, so this quadratic budget cannot be exported
to arbitrary L2 or discontinuous hard-cutoff tests. This observation does
NOT claim that the indicator's gamma integral diverges. The local estimate
is valid for all natural rates; only a=0 or 1 is a character parity.

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
