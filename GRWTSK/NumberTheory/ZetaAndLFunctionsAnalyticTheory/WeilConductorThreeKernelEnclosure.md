# From the conductor-three kernel to certified finite inequalities

Local attribution: grwtsk contributors.

Maintained source:
[WeilConductorThreeKernelEnclosure.lean](WeilConductorThreeKernelEnclosure.lean).
Source baseline: `grwtsk/math@7dcbe07202484a7fdff0d631f6b1649ad64680c2`.
The exact arithmetic source is shared through
[WeilConductorThreeKernel.lean](WeilConductorThreeKernel.lean); its extraction
record identifies every moved declaration. Publication and exact-source
checks are coordinated in
[issue #1839](https://github.com/grwtsk/math/issues/1839).

## The actual mathematical object

Write `g = sourceKernel`, `g_M = partialSourceKernel M`, and
`I = [-4,4]`. The form defined here is the actual product-measure integral

\[
B_g(u)=\int_{I\times I}\overline{u(x)}g(x-y)u(y)\,dx\,dy.
\]

The inputs satisfy the displayed L1 and squared-norm integrability conditions
on the finite interval. Measurability and boundedness of the actual kernel
are proved, and `integrable_sourceKernelForm` derives integrability of its
pairing from the L1 condition. No unevaluated divergent integral is silently
accepted through Lean's totalized integration convention.

This is the maintained integrated kernel form. The historical physical
arithmetic expression `Q_4(f)` is not definitionally this form. A separate
integration-by-parts/domain theorem must establish `Q_4(f)=B_g(f')` on its
intended carrier. Consequently all errors below are in the L2 energy of
`u`; substituting `u=f'` gives derivative energy, not the physical energy
of `f`.

## A complete source approximation bound

The [truncation theorem](WeilConductorThreeKernelTruncation.md) proves, for
every real displacement,

\[
|g(t)-g_M(t)|\le d_M,\qquad d_M=\frac1{4M+1}.
\]

It pays the whole gamma integral, including the singular endpoint and
infinite lag tail. The native gamma constant and signed prime terms cancel
exactly between these two source expressions.

The [sampling theorem](WeilConductorThreeKernelSampling.md) constructs a
measurable partition into `N+1` midpoint cells with representatives

\[
c_i=-4+\frac{8(i+1/2)}{N+1},
\qquad H_{ij}^{M,N}=g_M(c_i-c_j).
\]

The finite source has the explicit Lipschitz constant

\[
L_M=\frac{|c|}{2}+\sum_{m<M}(2m+3/2)^{-1}
 +\sum_{n\in\mathrm{activePrimePowers}(4)}|b_n|,
\]

where `c = gammaConstant 3 1` and `b_n` is the unchanged signed character
coefficient. The whole-square cell error is `8*L_M/(N+1)`. Hence the
actual piecewise-constant kernel `K_{M,N}` satisfies

\[
|g(x-y)-K_{M,N}(x,y)|\le
\Delta_{M,N}:=\frac1{4M+1}+\frac{8L_M}{N+1}
\quad (x,y\in I).
\]

The triangle inequality, rather than an assumed sign comparison, combines
these errors. A finite gamma sum is not itself the spatial finite-rank
approximation; the cell matrix supplies that separate step.

## Exact cell moments and the integral error

Let `C_i` be a full cell within the restricted measure and let

\[
m_i(u)=\int_{C_i}u(x)\,dx.
\]

[FiniteKernelEnclosure.lean](../../FunctionalAnalysis/FiniteKernelEnclosure.lean)
proves the actual Fubini/finite-sum identity

\[
B_{K_{M,N}}(u)=\sum_{i,j}\overline{m_i(u)}H^{M,N}_{ij}m_j(u).
\]

These are exact cell integrals, not sampled values of `u`. The partition
also preserves the integral: `sum_i m_i(u) = integral_I u`. In particular,
mean-zero inputs have zero-sum moment vectors. Computing approximate moments
of a user-supplied waveform would require a separate certified error bound.

The previous integral-kernel theorem bounds a uniform kernel error `delta`
by `measure(I)*delta*integral_I |u|^2`. The actual measure of this fixed
interval is eight. Substitution therefore proves

\[
\left|B_g(u)-\sum_{i,j}\overline{m_i(u)}H^{M,N}_{ij}m_j(u)\right|
\le 8\Delta_{M,N}\int_I|u|^2.
\]

The bound covers every complex L1/L2 input at once. There is no assumption
that the waveform lies in the span of the cell indicators, and no omitted
input-space complement or mixed term is discarded.

## Return from the existing rational checker

Use the existing complex realification, with `v` the real/imaginary split
of the exact moment vector. A packet supplies a rational center matrix,
symmetric nonnegative entry radii, a metric `G`, and tolerance `tau >= 0`.
Its source enclosure must prove that those radii contain the realification
of the exact sample matrix `H`.

The existing checker pays the complete row penalty of the radii and checks
the rational target `center + tau*G - rowPenalty(radius)`. A successful
Gram certificate then yields the existing all-vector lower bound

\[
m^*Hm\ge-\tau v^TGv.
\]

`checked_sourceKernelForm_lower` returns this result to the actual source:

\[
\operatorname{Re}B_g(u)\ge
-\tau v^TGv-8\Delta_{M,N}\int_I|u|^2.
\]

The metric remains exactly the packet's metric. It is not renamed as the
identity, input L2 mass, or physical Green metric. Entry rounding is already
paid by the checker's row penalty; it is not silently omitted or charged a
second time in `Delta`. Matrix acceptance does not prove its source
enclosure: both hypotheses remain explicit.

## A genuine all-accuracy producer, with the correct quantifiers

`exists_kernelApproximationBudget_lt` first chooses a gamma cutoff to make
`d_M < epsilon/2`, then a natural grid size making
`8*L_M/(N+1) < epsilon/2`. The Archimedean arguments are proved; existence
of a suitable approximation is not supplied as a structure field.

After rescaling the requested accuracy by eight, the resulting theorem is

\[
\forall\epsilon>0\;\exists M,N\;\forall u\in L^1(I)\cap L^2(I),
\quad |B_g(u)-m(u)^*H^{M,N}m(u)|
\le\epsilon\|u\|_2^2.
\]

The indices are chosen independently of `u`. Arbitrary unrelated growth of
the two indices is not asserted sufficient; the spatial resolution must pay
the Lipschitz price of the selected finite gamma head. This is a mathematical
approximation producer. It does not implement transcendental interval
arithmetic or produce accepted positive matrix certificates at every scale.

## Concrete acceptance control and hostile comparison

The `OneCell` namespace supplies a literal rational zero packet and empty
Gram certificate. Kernel reduction proves its Boolean acceptance. Separately,
the actual one-cell source sample matrix is proved zero because `g_M(0)=0`,
which establishes the packet's true source enclosure. Applying the same
main return theorem yields only

\[
\operatorname{Re}B_g(u)\ge-8\Delta_{M,0}\|u\|_2^2.
\]

The complete, nonzero approximation cost is retained. This is a concrete
check of acceptance and source return, not numerical evidence of an
arithmetic lower sign.

More generally the uncentered exact sample matrices have zero diagonal.
A symmetric nonzero matrix with zero diagonal has a negative two-coordinate
direction, so generic zero-tolerance positivity on all moment vectors is
not the intended sign route. The genuine derivative carrier's mean-zero
and parity conditions, centering, and the physical Green metric must be
retained for the next constrained sign argument.

The original written source uses spectral/derivative-energy methods for
related return claims. The present proof derives a bounded integrated-form
comparison directly from a whole-square kernel bound and exact cell
moments. It shares the same arithmetic source and is not an independent
proof of those unresolved source-return claims. No RH/GRH conclusion follows.

## Evidence and next mathematical boundary

The final pinned Lake build and transitive axiom audit passed. The audit
covers 150 public named declarations across the six new/shared and three
repaired modules; it reports only `propext`, `Classical.choice`, and
`Quot.sound`. Fresh Lean-kernel replay is a separate check whose actual
status, together with source reviews and exact hashes, is recorded in
issue #1839. Fresh replay uses Lean's own kernel; an independently
implemented checker and independent external mathematical review are
**NOT_RUN**.

Remaining constructions include certified arithmetic production of useful
multi-cell matrix entries, the integration-by-parts return to the original
physical form, its Green-energy comparison on the true domain, and the
constrained sign certificates required there. The all-window/all-precision
arithmetic sign producer needed for RH/GRH is not supplied by this finite
approximation theorem.

The source-return target can be named precisely using the existing
`GRWTSK.NumberTheory.WeilQuadraticForm.primitiveArithmeticValue` in
[WeilConductorFrontier.lean](WeilConductorFrontier.lean). For a smooth complex
test compactly supported inside `(-4,4)`, with the genuine primitive and
nonprincipal character evidence supplied, the next identity is

```
primitiveArithmeticValue modThreeQuadratic hp hn 4 f
  = (sourceKernelForm (deriv f)).re
```

This is a stated proof obligation, not a declaration added by this increment.
It must retain the actual character parity and prove that the native
quadratic character is real-valued. The latter fact identifies the kernel's
`Re(conj chi(n)) * Re(C_f(log n))` with the arithmetic source's
`Re(conj chi(n) * C_f(log n))`; parity alone does not justify this identity
for a general complex character. The proof must justify both integrations
by parts and the gamma interchange, then return from interval derivative
coordinates to the whole-line zero-extended source. The separate Green
identity is needed when converting its error to physical energy.
