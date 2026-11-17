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
source encoder and sensor factorization + analytic tails → original consumer [open]
```

## Verification

The new Lean source has SHA-256 `9de56ee5707eb3c604ff54ad65f84b96472811ef5b8c3207ca4f03b23f6a8c61`. The targeted Lake
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
[Coordination and exact evidence](https://github.com/grwtsk/math/issues/1824)
