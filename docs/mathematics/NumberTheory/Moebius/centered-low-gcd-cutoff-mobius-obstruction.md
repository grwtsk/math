# Centered low-gcd cutoff Möbius inversion and residual obstruction

Status: **SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED / NOT_AXIOM_AUDITED**.

This packet advances the exact historical period-`4X` Fejér line without
assuming the remaining signed estimate.

## Exact cutoff inversion

For the cutoff function

\[
f_Y(g)=\mathbf 1_{1\le g\le Y},
\]

define its Möbius transform

\[
\gamma_Y=\mu*f_Y.
\]

Finite Dirichlet convolution gives

\[
f_Y(g)=\sum_{r\mid g}\gamma_Y(r).
\]

Therefore the complete centered low-common-gcd bilinear has the exact square
expansion

\[
B_Y(X,w)=
\sum_{r\le4X}
\gamma_Y(r)\,T_r(X,w)^2,
\]

where

\[
T_r(X,w)=
\sum_{\substack{d\le4X\\r\mid d}}
C_d(X,w)
\]

is the centered divisibility tail.

The coefficients satisfy

\[
\gamma_Y(1)=1,\qquad
\gamma_Y(r)=0\quad(1<r\le Y).
\]

Hence

\[
B_Y(X,w)=
M_X(w)^2+
\sum_{Y<r\le4X}\gamma_Y(r)T_r(X,w)^2,
\]

with \(M_X(w)=T_1(X,w)\), the full centered weighted von Mangoldt mass.

## Exact remaining residual

Let

\[
\delta_Y(r)=\gamma_Y(r)-\mu(r).
\]

At \(Y=\lfloor\sqrt X\rfloor\), the residual left after the already isolated
large-index ordinary Möbius square is exactly

\[
R_X(w)=
M_X(w)^2+
\sum_{\sqrt X<r\le4X}
\delta_Y(r)T_r(X,w)^2.
\]

Thus the Type-I residual contains the original smoothed centered-value square
with coefficient one. It is not an independent lower-complexity supplier.

## Finite coefficient counting

The correction coefficient has the exact divisor form

\[
\delta_Y(r)=
\sum_{\substack{a\mid r\\2\le a\le Y}}
\mu(r/a),
\]

so

\[
|\delta_Y(r)|
\le
\#\{a\mid r:2\le a\le Y\}.
\]

Writing \(r=ak\) and using the elementary reciprocal-square tail yields

\[
\sum_{r>Y}
|\delta_Y(r)|
\left\lfloor\frac{4X}{r}\right\rfloor^2
\le
32\frac{X^2}{Y}\log Y.
\]

At \(Y=\lfloor\sqrt X\rfloor\),

\[
\sum_{r>\sqrt X}
|\delta_Y(r)|
\left\lfloor\frac{4X}{r}\right\rfloor^2
\le
64X^{3/2}\log X.
\]

The currently available finite divisor-incidence bound is

\[
|T_r|
\le
\left\lfloor\frac{4X}{r}\right\rfloor
(1+\log(4X))\log(4X).
\]

After squaring, it gives only

\[
\left|
\sum_{r>\sqrt X}\delta_Y(r)T_r^2
\right|
\le
2304X^{3/2}(\log X)^5.
\]

This misses the intended \(X^{3/2}(\log X)^4\) scale by exactly one logarithm.

## Explicit missing bridge

The packet does not hide the missing estimate in a structure. It records the
exact pointwise hypothesis

\[
|T_r|
\le
\left\lfloor\frac{4X}{r}\right\rfloor\log(4X)
\qquad(r>\sqrt X),
\]

under which the correction satisfies

\[
|\mathrm{Correction}|
\le
256X^{3/2}(\log X)^4.
\]

Under that explicit hypothesis, target-scale control of the residual and
target-scale control of the original centered Fejér mass square imply one
another, with an additive constant \(256\).

The finite diagonal constant \(300\) and previously isolated ordinary large
Möbius-index constant \(1152\) remain provisional source constants. The
resulting positive-shift bookkeeping constant from a centered-mass estimate
is \(1708=1152+300+256\).

## Unresolved mathematics

The next substantive obligation is not a renamed low-gcd supplier. It is one
of the following equivalent-strength inputs:

1. prove the one-log sharper divisibility-tail estimate from the restricted
   Möbius-log convolution and then prove the original centered mass-square
   bound;
2. prove target-scale cancellation directly in the cutoff correction;
3. supply a progression-distribution or bilinear theorem whose hypotheses are
   verified for the literal period-`4X` Fejér coefficients.

No Riemann Hypothesis, Chowla, Goldbach, zero-free-region, or threshold-descent
conclusion is claimed.
