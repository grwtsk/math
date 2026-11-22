# Certified scalar gamma observations for conductor three

Local attribution: grwtsk contributors.

Maintained source:
[WeilConductorThreeScalarBounds.lean](WeilConductorThreeScalarBounds.lean).
Starting revision:
[`6395f161d50488d54df5cd19f57f89e25ceed3a5`](https://github.com/grwtsk/math/commit/6395f161d50488d54df5cd19f57f89e25ceed3a5).
The namespace is
`GRWTSK.NumberTheory.WeilQuadraticForm.ConductorThreeRadiusFourScrewGreen.ScalarBounds`.

The mathematical consumer is a certified enclosure of the actual
`partialSourceKernel 8 4`. The scalar observations here retain its original
conductor-three gamma constant and native parity-one rates. The signed
prime contribution and the finite matrix certificate are separate consumers;
this file alone establishes neither the sign of that source nor RH/GRH.

## Exact source and argument

The source constant is the existing `gammaConstant 3 1`, defined from the
actual Gamma logarithmic derivative. The public identities in
[WeilGammaData.lean](WeilGammaData.lean) give

\[
c_3=\operatorname{gammaConstant}(3,1)
   =\operatorname{gammaConstant}(1,0)+\log3+\pi.
\]

This is an exact conductor/parity shift, not a replacement normalization.
`gammaConstant_three_one_eq` records that identity. It uses the maintained
`gammaConstant_odd_eq_even_add_pi` and
`gammaConstant_even_eq_log_add` declarations.

The existing
[WeilRadiusTwoGammaPoleObservations.lean](WeilRadiusTwoGammaPoleObservations.lean)
already supplies `gammaConstantBounds_sound` for the unshifted zeta constant.
Its Euler constant enclosure comes from the finite harmonic sum at 1024,
rounded outward term by term, and the actual Euler-sequence comparison.
The present module consumes that proved observation without duplicating
the Euler or digamma argument. It combines it with the public `logBounds 3`
and `logBounds_sound` from
[WeilRadiusTwoPrimeObservations.lean](WeilRadiusTwoPrimeObservations.lean),
and Mathlib's twenty-decimal rational bounds on the actual number `Real.pi`.

The resulting exact rational endpoints are checked to lie in

\[
\boxed{-\frac{1133}{1000}\le c_3\le-\frac{1131}{1000}.}
\]

The executable rational guard is evaluated with `decide +kernel`. Floating
approximations are neither inputs to the guard nor hypotheses of the
enclosure theorem. The scalar endpoint arithmetic is the maintained
[RationalRealBounds.lean](../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RationalRealBounds.lean).

## The actual finite gamma head

The rates from [WeilConductorThreeKernel.lean](WeilConductorThreeKernel.lean)
are

\[
\alpha_m=2m+\frac32.
\]

At the requested separation four,

\[
e^{-4\alpha_m}=(e^{-1})^{8m+6}.
\]

Mathlib's proved bound `Real.exp_neg_one_lt_d9` implies
`exp(-1) <= 3/8`. Since `8m+6 >= 6` and `0 <= 3/8 <= 1`,

\[
0<e^{-4\alpha_m}\le(3/8)^{8m+6}
\le(3/8)^6\le1/256.
\]

Thus each literal source term is enclosed by the rational interval

\[
\frac{255}{256\alpha_m^2}
\le \frac{1-e^{-4\alpha_m}}{\alpha_m^2}
\le\frac1{\alpha_m^2}.
\]

The lower allowance is deliberately outward and holds uniformly for every
natural index. It retains the exponential contribution through a proved
bound rather than dropping it. Summing exactly the first eight terms and
checking the two rational endpoint comparisons gives

\[
\boxed{
\frac35\le
\sum_{m=0}^{7}\frac{1-e^{-4\alpha_m}}{\alpha_m^2}
\le\frac{61}{100}.}
\]

This is a statement about the finite head in `partialSourceKernel 8 4`.
It does not include the infinite gamma tail, and it does not change the
previous truncation budget or infer quadratic-form order from pointwise
kernel order.

## Declaration correspondence and boundaries

| Declaration | Exact role |
| --- | --- |
| `piBounds`, `piBounds_sound` | Rational endpoints for the actual circle constant. |
| `gammaConstant_three_one_eq` | Exact return to the maintained zeta constant, conductor logarithm, and parity shift. |
| `gammaConstantBounds`, `gammaConstantBounds_sound` | Computable rational endpoint construction and its source enclosure. |
| `gammaConstant_three_one_bounds` | The complete scalar constant enclosure in the displayed coarse rational interval. |
| `gammaRateRat`, `gammaRateRat_cast` | Exact rational representation of the unchanged source rate. |
| `gammaDecay_four_le` | Uniform exponential allowance at separation four. |
| `gammaTermBounds`, `gammaTermBounds_sound` | Individual finite-head term enclosure. |
| `gammaHeadBounds`, `gammaHeadBounds_sound` | Exact finite sum of term enclosures for an arbitrary natural cutoff. |
| `finiteGammaHead_eight_four_bounds` | The stated eight-term head interval. |

The conductor shift is an algebraic use of established special-value
identities. The alternative direct expression in Euler's constant, `log pi`,
`log 2`, and `pi/2` has the same underlying mathematical premises; it is not
an independent proof. The rate/exponential argument is the ordinary
monotonicity of positive powers. The actual source definitions are the
objects being bounded throughout.

These coarse intervals are intended for the two-cell source observation.
They supply no all-window or all-conductor certificate family, no mesh
positivity implication, and no uniform bound of derivative energy by physical
energy. More precise endpoint observations can be substituted later while
retaining their soundness theorems and source identity.

## Verification evidence

This source and its maintained imports are included in the successful
exact-target build of
`GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilConductorThreeTwoCellCertificate`.
The final source SHA-256 is
`341ac04923ba1f3bc9a766e4af2b041a27f4689ff1db60853b5cd5e84d64a2b7`.
Lean `4.34.1` and Mathlib
`d13f23b723b8a846827a245b89c10fc7d3f11612` remain unchanged.

The aggregate build passed in 187.713 seconds, and
the separate transitive axiom audit passed in 127.056
seconds. All public declarations of this module were included. Their axiom
sets are subsets of `propext`, `Classical.choice`, and `Quot.sound`.
The [enclosing certificate record](WeilConductorThreeTwoCellCertificate.md)
lists the exact three-source inventory, successful checks, and every earlier
failed, interrupted, or timed-out attempt at its actual scope.

Fresh proof-term replay of the full dependency closure, independent external
mathematical review, and an independently implemented checker are **NOT_RUN**.
This is a local consequence and executable observation of maintained sources,
not a claim to formalize a new paper result or establish novelty.
