# Euler recovery for a calibrated finite heat schedule

Local source attribution is grwtsk contributors.
The [Lean module](FiniteEulerHeatRecovery.lean) is
`GRWTSK.OperatorTheory.FiniteEulerHeatRecovery`. Its exact heat operator
is the canonical finite `spectralHeat`, and its scalar readout is
the existing `dot` pairing.
[Exact spectral heat](../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FiniteSpectralHeat.lean) ·
[Finite positive pairing](../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FinitePositiveHodgeHeat.lean)

## Schedule and error

For every finite set of slots $J$, choose one common spectral chart
with mode index $i$. For each $j\in J$ let $a_{ji}$ be the
Euler exposure on mode $i$. In the dwell application take
$a_{ji}=\kappa_j d_j\lambda_{ji}$, with
$d_j=\int b_j(t)\,dt$ on the slot and nonnegative calibration and
rates. The theorems apply to real $a_{ji}\le1$, in particular to
the forward Euler range $0\le a_{ji}\le1$.
For the full window use $J=\operatorname{Fin}(95)$.

Write $A_i=\sum_j a_{ji}$, $Q_i=\sum_j a_{ji}^2$ and
$P_i=\prod_j(1-a_{ji})$. The chronological composition theorem
`runEuler_eq` gives coefficient $P_i x_i$. Exact heat acts by
$e^{-A_i}x_i$, and `recover_exact` proves its compensation by
$e^{A_i}$ returns $x_i$.

The compensated Euler product satisfies

$$
0\le e^{A_i}P_i\le1,\qquad
1-e^{A_i}P_i\le Q_i.
$$

Indeed $1+a\le e^a$ and $1-a\le e^{-a}$ give
$1-a^2\le e^a(1-a)\le1$. Each factor is nonnegative.
For factors in $[0,1]$, induction using
$1-uv=(1-v)+(1-u)v$ bounds the product defect by the sum of the
factor defects. This yields `compensated_product_bounds`,
`recover_euler_error`, the corresponding forward error
$e^{-A_i}Q_i|x_i|$, and square-energy contraction of the
compensated coefficients.

For every finite mode set, every weight vector $w$, and every
observation $y$ of the Euler terminal state, the readout bound is

$$
\left|\sum_i w_i e^{A_i}y_i-\sum_i w_i x_i\right|
\le
\sum_i |w_i|\bigl(e^{A_i}|y_i-P_i x_i|+Q_i|x_i|\bigr).
$$

The first summand charges observation error with the exact inverse gain.
The second charges the Euler approximation after compensation.
The proof uses the finite triangle inequality and the preceding
modewise bound.

## Stability and exactness

Equal subdivision of every slot into $m>0$ substeps preserves
$A_i$ and replaces $Q_i$ by $Q_i/m$. When the subdivided
exposures are at most one, `subdivide_recover_error` propagates that
reduction to the compensated coefficients. The exact inverse gain
$e^{A_i}$ continues to apply to terminal measurement error.

If all $a_{ji}<1$, division by the Euler multipliers is an exact
left inverse. When $Q_i<1$, its gain is at most
$e^{A_i}/(1-Q_i)$. The bound follows by rearranging
$e^{A_i}P_i\ge1-Q_i>0$. A uniform exposure bound and a uniform
$Q_i\le q<1$ therefore bound these gains across finite resolutions.

If a single factor has $a_{ji}=1$, all data in mode $i$ are lost.
The zero vector and its unit coordinate impulse have the same Euler
image, while the exact spectral multiplier at any finite exposure is
strictly positive. A single unit-exposure slot also attains the
quadratic defect bound. For an exposure less than one and unequal to
zero, strict convexity gives a strictly smaller compensated factor
than one. `recover_euler_eq_source_iff` proves exact compensation of a
particular vector iff it vanishes on every mode that receives any
nonzero Euler exposure.

For strictly subunit exposures, the Euler product is exactly a
spectral exponential with modified exposure
$B_i=\sum_j -\log(1-a_{ji})$. A proposed scalar clock $t$ on
rates $\lambda_i$ fits all input vectors iff
$B_i=t\lambda_i$ for every mode. This gives the test for using a
single scalar calibration. Zero-exposure modes stay fixed.
All of these comparisons assume a shared spectral chart.

## Logarithmic exposure and inverse stability

Fix a mode and a common exposure cap $0\le\rho<1$ with
$0\le a_{ji}\le\rho$ at every slot. The excess of the logarithmic
exposure over the intended exposure obeys
$$
\frac{Q_i}{2}\le B_i-A_i\le\frac{Q_i}{2(1-\rho)}.
$$
For one slot put $g(x)=-\log(1-x)-x$. Its derivative is
$x/(1-x)$. On $[0,\rho]$ it lies between $x$ and
$x/(1-\rho)$. Subtract the respective quadratics and apply monotonicity
from zero. Summing those bounds proves the statement for the original
modal exposures and the same finite slot set.

The exact Euler inverse gain is $1/P_i=e^{B_i}$.
`uniform_euler_inverse_gain_iff_logExposure` therefore characterizes
uniform stability across finite resolutions by a uniform upper bound
on $B_i$. Taking the logarithm of any positive common gain gives such
a bound, and exponentiating a common exposure bound gives a gain.
The modewise gain lies between
$e^{A_i+Q_i/2}$ and $e^{A_i+Q_i/(2(1-\rho))}$. This estimate applies at
arbitrary $Q_i$. Since $Q_i\le\rho A_i$, a common cap and a bound
$A_i\le M$ give the uniform gain
$\exp((1+\rho/(2(1-\rho)))M)$ across windows, mode sets, and finite
observation resolutions. This is a bound for the exact reciprocal in
`euler_leftInverse_of_strict`.

For one stage and any proposed gain bound $G\ge0$, the exposure
$a=1-1/(G+2)$ is strictly subunit with total and squared exposure below
one, yet its inverse gain is $G+2$. The margin to one matters for
uniform stability. The actual HS sensor still needs a source-bound
modal encoder and a proof that its realized exposures obey the common
cap and total bound.

## Analytic source boundary

The Rodgers–Tao function uses $e^{tu^2}$ in its half-line integral.
The finite forward convention here $e^{-su^2}$ therefore corresponds
to $t=-s$ at frequency $u$. The finite error formula applies after
an exact modal encoding and a bounded observation have been identified.
Returning to the actual $H_t$ still needs an identification of the
retained coefficients, quadrature and tail bounds. The same issue arises
when using an HS observation to certify an arithmetic stage. Verification
of that physical and arithmetic interface remains open.
[Rodgers–Tao, Forum of Mathematics, Pi 8 (2020), e6, §1](https://www.cambridge.org/core/journals/forum-of-mathematics-pi/article/de-bruijnnewman-constant-is-nonnegative/D4B85BA067E2D5A71D87E4FFB0D21E46) ·
[Finite Newman normalization](../NumberTheory/ZetaAndLFunctionsAnalyticTheory/FiniteHeatNewmanNormalization.lean)

```text
calibrated dwell and common spectral chart → modal Euler exposures
product induction and scalar exponential inequalities → finite bias budget
exact inverse gain + measurement error → weighted readout budget
uniform exposure cap + total exposure bound → uniform Euler inverse gain
source encoder and sensor factorization + analytic tails → original consumer [open]
```

## Verification

The initial Lean source at `e930c3a57bf9` has SHA-256 `9de56ee5707eb3c604ff54ad65f84b96472811ef5b8c3207ca4f03b23f6a8c61`. The targeted Lake
build, standalone compilation with trust zero and warnings as errors,
and targeted kernel replay passed on Lean 4.34.1 and Mathlib
`d13f23b723b8a846827a245b89c10fc7d3f11612`. All 22 theorem audits
used only `propext`, `Classical.choice` and `Quot.sound`.

A kernel-checked single unit step erased its mode. Two half steps
retained multiplier 1/4 and had squared-exposure budget 1/2. A single
half-exposure step failed exact exponential compensation on a unit
input despite retaining that mode. The calibrated 95-slot readout
type also checked. Full fresh import-closure replay, independent
mathematical review and HS sensor validation are `NOT_RUN`.
The logarithmic exposure extension compiled with `--trust=0` and
warnings as errors on the same root pins. Target kernel replay passed.
Exact checks for eight half-exposures confirmed quadratic budget 2,
inverse gain 256 and the bound `exp 6`. The near-unit control also
checked. Each of the seven new declarations uses only `propext`,
`Classical.choice` and `Quot.sound`. Fresh replay of the entire import
closure and independent review of the extension are `NOT_RUN`.

[Coordination and exact evidence](https://github.com/grwtsk/math/issues/1824)

## Two rates obstruct a common Euler heat time

Let the slot exposure at rate `λ` be `aⱼ = dwellⱼ * λ`, where dwell
already includes calibration. Assume every `2*aⱼ < 1` and at least
one `aⱼ ≠ 0`. At the doubled rate the multiplier is strictly less
than the square of the multiplier at the original rate. Indeed
`(1-aⱼ)^2 - (1-2*aⱼ) = aⱼ^2`, and positivity preserves strict
inequality when multiplying over the slots. A common exponential time
would instead give equality. The constant input one exposes both
multipliers, so it refutes every real time for that generator. See
`eulerMultiplier_double_rate_lt_square` and
`euler_double_rate_ne_spectralHeat`.

The 95-slot control uses rates 1 and 2 and a single nonzero calibrated
dwell of 1/4. Its multipliers are 3/4 and 1/2, and 1/2 is below 9/16.
This applies the existing common-clock criterion to a shared generator
with a pair of doubled rates. The separate modewise logarithmic
exposures still give the exact diagonal representation. For a physical
return, the next premise is a certified identification of the actual
sensor and source coordinates, followed by propagation of the measured
exposures through the existing readout bounds. The sign convention
remains forward time s corresponding to Newman time -s.
[Rodgers–Tao, §1](https://arxiv.org/abs/1801.05914v5)

Strict compilation, targeted kernel replay, the 95-slot control and
the two transitive axiom audits passed on the root Lean and Mathlib
pins. Fresh import-closure replay, independent review and physical
HS sensor identification are `NOT_RUN`.

## Distinct positive rates

`logExposure_per_rate_lt` applies to any finite set of shared nonnegative
dwell times with at least one strictly positive dwell. For two rates
`0 < x < y`, assume all factors at `y` are positive. For a dwell `c > 0`,
`1 - c*x` is the convex combination of `1` and `1 - c*y` with weights
`1-x/y` and `x/y`. Strict concavity of the logarithm gives
`-log(1-c*x)/x < -log(1-c*y)/y`. Zero dwell contributes equality.
Summing the inequalities yields strict increase in the effective time
between the two modes. The existing `euler_fits_clock_iff` would require
both effective times to equal the proposed scalar time. This proves
`no_common_clock_of_distinct_rates` under strict factors across the chart.

One slot with dwell `1/4` at rates 2 and 3 gives exactly `1/2` and
`1/4`, despite both factors being positive. The common-clock criterion
fails for all real times for this chart. This also tests rates that do
not satisfy the earlier doubling hypothesis.

The consumer is the existing original-rate clock comparison. A sensor
application still needs a source-bound shared dwell and rate chart.
An approximate common clock additionally needs a tolerance comparison
with the existing modal error bounds. Returning to the continuous Newman
family needs a source identification and the quadrature and tail estimates.
The finite forward multiplier uses the negative Newman-time direction in
`FiniteHeatNewmanNormalization.newman_negative_time_eq_forward_heat`.
See Rodgers and Tao, [The De Bruijn–Newman constant is non-negative](https://arxiv.org/abs/1801.05914),
for the backward heat equation in their introduction.

The four local dependencies were rebuilt from pinned main. Strict compilation,
target kernel replay, the rate-2 and rate-3 controls, and the transitive audit
of both new public theorems passed. The audit found only `propext`,
`Classical.choice` and `Quot.sound`. Lean `v4.34.1`, mathlib
`d13f23b723b8a846827a245b89c10fc7d3f11612`. The checked Lean SHA-256 is
`298643aa9b787cf8ab99b4d3a6ee60e91b551cfa5b71dc612084cab04a7bfa2f`.
Full fresh dependency replay, independent review and physical HS source
identification are `NOT_RUN`.

## Exact finite tolerance for a common clock

For any nonempty finite chart with positive rates `r_i` and exposures
`A_i`, `exists_log_clock_iff_pairwise` characterizes existence of a real
time with `|A_i - t*r_i| ≤ ε` at every mode. The necessary and sufficient
condition is `r_i*A_j - r_j*A_i ≤ ε*(r_i+r_j)` for every ordered pair.
Each mode supplies an interval of possible times. Its lower endpoint
must lie below every upper endpoint, which gives the pairwise inequality
after multiplication by the two positive rates. The maximum of all
lower endpoints is itself a feasible time under those inequalities.

`exists_euler_log_clock_iff_pairwise` uses the exact logarithmic
exposures from the Euler slots. With strictly positive factors,
`euler_log_error_iff_multiplier_envelope` expresses the same tolerance
as a multiplicative envelope between `exp(-ε)` and `exp(ε)` times the
original-rate heat multiplier. For an active shared nonnegative dwell
schedule, `euler_shared_log_clock_error_pos` uses the strict normalized
exposure gap to give a positive tolerance floor for each pair of
distinct positive rates.

A rational two-mode control with rates 1 and 2 and exposures 1 and 4
requires tolerance at least 2/3, attained at time 5/3. The next physical
premise is a source-certified modal rate and exposure chart. Applying
the envelope to Newman heat still requires the separate source and
time-sign transport described above.

Strict compilation with `--trust=0 -DwarningAsError=true`, target kernel
replay, the rational control, and four transitive axiom audits passed
on the pins above. The four installed local imports were checked
against their pinned sources. The audit found only `propext`,
`Classical.choice` and `Quot.sound`. Lean SHA-256
`99661915eb6e33e54f84fde1e80b96ddd0ae835d2c6a7da96a22d2def1b72c68`.
Full fresh import replay, independent review and physical source
identification remain `NOT_RUN`.
