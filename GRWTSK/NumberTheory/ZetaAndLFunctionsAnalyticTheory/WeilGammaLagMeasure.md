# Original gamma lag measure and finite-window exhaustion

Owner: [WeilGammaLagMeasure.lean](WeilGammaLagMeasure.lean).
Namespace: `GRWTSK.NumberTheory.WeilQuadraticForm.GammaLag`.
Primary subject: MSC 11M06; supporting measure theory 28A25.

## Definitions and complete argument

The unchanged source density is kappa(r)=`OddRootProjection.parityKernel 0 r`
= exp(-r/2)/(1-exp(-2r)). `baseMeasure` is Lebesgue measure restricted to
r>0. `density` is its NNReal representative and `measure` is the corresponding
withDensity measure. The theorem `density_coe` returns literally to kappa
on this support. No physical Lebesgue metric is changed.

`window m` is [1/(m+1),m+1], including the harmless null m=0 window.
`window_mono`, `exists_window_mem`, and `iUnion_window` prove exhaustive
nested coverage of all positive lags. `measure_window_lt_top` derives the
finite weighted mass using the explicit bound
1/(1-exp(-2/(m+1))) on the whole window. It does not presume a finite total
lag mass or omit the singularity at zero. `ae_positive` and `ae_window_cover`
return the coverage to the actual weighted measure.

`integral_measure` and `integrable_measure_iff` are separate contracts.
The former changes the measure without altering the integrand; the latter
retains convergence. In particular a totalized real integral is never used
as the definition of the maximal energy domain.

## Provenance and consumer

Original source: `WeilGammaData.lean` at the base revision, blob
`4ddf4399b7edfdb59af8d95d7b72222a1fefcd88`. These are local measure-theoretic
consequences of that declaration, not a replacement gamma model.
Pinned mathlib: `MeasureTheory/Measure/WithDensity.lean`, blob
`5614894732293f9dbc288ad091284a54d909a3f4`, and
`Integral/Bochner/ContinuousLinearMap.lean`, blob
`24b8ad83aa2cb2a2cb5ce54ac6ce84dbad84bb7f`.
Consumers: the actual cutoff maps, their finite bounds, complete coverage,
and the source energy/domain identity in the following modules.

Changing the lag window is not changing the source support T, a finite
sine head, or the cofinal-stage index. Those independent truncations must
not be conflated.

## Source pins, evidence, and scope

Local mathematical attribution: grwtsk contributors.
Base: `grwtsk/math@771e0b7e232ec7527fd11fb4f9275009cec06717`. Lean: `leanprover/lean4:v4.34.1`.
Mathlib: `d13f23b723b8a846827a245b89c10fc7d3f11612`. No root imports or pins are changed.

Status: **SOURCE_PROOF_CANDIDATE**. Lean elaboration, exact expected
signatures, fresh kernel replay, transitive axiom audit, clean dependency
replay, and independent mathematical review: **NOT_RUN**. Static inspection
is not a replacement for any of these checks. No earlier acceptance or
failure record is changed. Novelty is not claimed; prior-art completeness
is **UNASSESSED**.

The source is ordinary authorized mathematical authoring, not execution of
a proof runner or import of an unproved paper theorem as an axiom.
Coordinating issues: [#1837](https://github.com/grwtsk/math/issues/1837),
[#1258](https://github.com/grwtsk/math/issues/1258).
