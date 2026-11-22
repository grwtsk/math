# Certified truncation of the conductor-three integrated kernel

Local attribution: grwtsk contributors.

## Source and mathematical consumer

[WeilConductorThreeKernelTruncation.lean](WeilConductorThreeKernelTruncation.lean)
works in the existing namespace
`GRWTSK.NumberTheory.WeilQuadraticForm.ConductorThreeRadiusFourScrewGreen`.
Its mathematical source is the actual `sourceKernel` and
`partialSourceKernel` of
[WeilConductorThreeRadiusFourScrewGreen.lean](WeilConductorThreeRadiusFourScrewGreen.lean),
section 4, at
[`grwtsk/math@7dcbe07202484a7fdff0d631f6b1649ad64680c2`](https://github.com/grwtsk/math/blob/7dcbe07202484a7fdff0d631f6b1649ad64680c2/GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/WeilConductorThreeRadiusFourScrewGreen.lean),
Git blob `38d0a6a0147c6872a557af4109932fe5541d4688`.
The declarations are now shared through
[WeilConductorThreeKernel.lean](WeilConductorThreeKernel.lean) with unchanged
namespace, type and defining body.

The consumer is certified approximation of the actual conductor-three,
radius-four integrated Weil kernel. A kernel bound is subsequently combined
with a finite cell approximation and an integral quadratic-form error bound.
The character, conductor, parity-one gamma constant, cutoff, and every signed
prime hinge are unchanged. The original conductor-three source is
nonprincipal; this module adds no zeta pole or cross-conductor transfer.

This is a local formalization of the existing elementary truncation argument,
not a claim to a new theorem of Suzuki or to a new RH/GRH result. The historical
source's separate references, written analytic results and unperformed checks
retain their original scope.

## Complete argument

Put `alpha_m = 2m + 3/2`, `z = exp(-2r)` and assume `r > 0`. A finite geometric
identity, proved by induction, gives

\[
\kappa_1(r)=\frac{e^{-3r/2}}{1-e^{-2r}}
 =\sum_{m<M}e^{-\alpha_mr}
  +R_M(r),\qquad
R_M(r)=\frac{e^{-\alpha_Mr}}{1-e^{-2r}}.
\]

For every `b >= 0`, the actual improper integral is

\[
\int_0^\infty e^{-\alpha r}\min(b,r)\,dr
 =\frac{1-e^{-\alpha b}}{\alpha^2},\qquad \alpha>0.
\]

The proof first establishes absolute integrability by the integrable majorant
`b * exp(-alpha*r)`. It splits the integral at `b`; the finite piece has
antiderivative `-(alpha*r+1)*exp(-alpha*r)/alpha^2`, while the remaining
constant-times-exponential tail is evaluated exactly. This includes `b = 0`.

For the entire omitted gamma contribution, `r <= sinh r` implies

\[
1-e^{-2r}\ge 2r e^{-r}.
\]

Consequently, for every real displacement `t`,

\[
0\le R_M(r)\min(|t|,r)
 \le \frac12e^{-(\alpha_M-1)r}.
\]

The rate `alpha_M - 1 = 2M+1/2` is strictly positive, including `M = 0`.
The majorant is integrable on the entire positive half-line, and its integral
is `1/(4M+1)`. Thus both the singular endpoint and the infinite lag tail are
paid, uniformly in `t`. No infinite-series/integral exchange is used.

Integrating the finite decomposition and substituting the evaluated summands
proves the exact identity

\[
g(t)-g_M(t)
 =-\int_0^\infty R_M(r)\min(|t|,r)\,dr.
\]

The gamma constant and the complete signed prime contribution cancel
algebraically; they are never replaced by unsigned majorants. Hence

\[
-\frac1{4M+1}\le g(t)-g_M(t)\le0,
\qquad |g(t)-g_M(t)|\le\frac1{4M+1}.
\]

`truncationBudget_eventually_lt` supplies a finite natural cutoff for every
positive accuracy. `sourceKernel_uniform_approximation` preserves the full
quantifier order `exists M, forall N >= M, forall real t`. The measurable
parameter-integral argument additionally proves `measurable_sourceKernel`
for the actual source, with no surrogate definition.

## Comparison and limiting cases

The historical written proof expands the gamma integral as an infinite series
and bounds the reciprocal-square tail by a telescoping sum. The present proof
uses finite expansion plus one exponential majorant. Both routes retain the
same mathematical source and the same elementary improper-integral identity;
they are not claimed to be independent proofs or independent verification.
The latter route makes the complete remainder integrability explicit and
avoids a formal Tonelli/series interchange.

At `t = 0` the actual discrepancy vanishes even though the allowance is
positive. Thus `1/(4M+1)` is an upper bound, not an asserted exact error or
optimal bound. At `M = 0` the gamma head is empty and the proof still pays the
full original gamma integral. At `r = 0` the source formula is not used in the
pointwise geometric identity; the integration domain is the strict positive
half-line.

A nonpositive pointwise difference of two kernels is not a Loewner-order
comparison of their quadratic forms. This module therefore makes no claim
that `g_M` yields a lower quadratic form, despite the historical analytical
Fourier-tail discussion. That additional Fourier/energy result remains a
separate mathematical statement.

## Exact remaining return

For an interval carrier `u`, the proved kernel approximation can supply an
error proportional to its actual `L2` energy. Substituting `u = deriv f`
retains derivative energy. It does not create a bound in the physical energy
of `f`, a closed-operator domain theorem, or positivity. The exact
integration-by-parts return to the original arithmetic Weil form and its
physical Green metric must still be proved at their stated domains.

The finite exponential head is an analytic kernel, not automatically a
finite-rank operator. Cell discretization, exact matrix-entry enclosure,
finite sign certification and any complete high-complement argument are
separate obligations. No finite cutoff, uniform scalar approximation, or
precision-index producer proves RH/GRH.

## Evidence

The new source was compiled under the unchanged Lean `4.34.1` and Mathlib
`d13f23b723b8a846827a245b89c10fc7d3f11612` pins. Its narrow Lake dependency
build passed, including the extracted native source. Transitive axiom auditing
of all 21 public declarations passed; every reported
axiom set is contained in `propext`, `Classical.choice`, `Quot.sound`.
The final combined Lake build and 150-declaration axiom audit also passed.
Fresh Lean-kernel replay is a separate check; its actual status and the
exact publication revision are recorded in issue
[#1839](https://github.com/grwtsk/math/issues/1839).
A separate AI-assisted hostile mathematical review found no blocking issue;
this is not independent external mathematical review.

Independent external mathematical review, an independently implemented kernel
checker, fresh replay of the full historical analytic-source closure, the
derivative/physical return, and a Rust implementation: **NOT_RUN** here.
The attempted historical broad import build **FAILED** in existing
`DirichletFiniteParseval` proofs. A successful complete historical rebuild
has not been obtained; that failure is retained separately from the
successful narrow kernel build.
