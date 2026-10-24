# Goldbach rational-arc coordinates and residue models

Status: source draft only. The associated Lean modules have not been executed,
elaborated, kernel-audited, or accepted by an external replay.

This packet follows the finite disjoint rational-arc expansion. Its purpose is
to expose the exact algebra that an eventual major-arc estimate must approximate.
It does not provide that estimate.

## 1. Canonical local coordinate

For a reduced rational center

\[
c_{a,q}=\frac aq
\]

and real frequency `x`, define

\[
\beta_{a,q}(x)=x-c_{a,q}.
\]

Then `c_{a,q}+β_{a,q}(x)=x`. For an integral period lift `k`, the lifted center
is `c_{a,q}+k`. The canonical unit-period character satisfies

\[
e_m(x+y)=e_m(x)e_m(y),
\qquad
 e_m(x+k)=e_m(x),\quad k\in\mathbf Z.
\]

Consequently the exact prime-log exponential sum and the full Goldbach circle
integrand are independent of the integral lift used to describe a point near a
rational center.

No change of normalization is introduced. The packet continues to use
Mathlib's `AddCircle 1` Fourier monomial through the inherited `unitCharacter`.

## 2. Rational phase modulo the denominator

For positive `q`, define

\[
\omega_{a,q}(n)=e_n(a/q).
\]

The denominator frequency has trivial phase:

\[
 e_q(a/q)=e(a)=1.
\]

Therefore `n ↦ ω_{a,q}(n)` is periodic with period `q`, and

\[
\omega_{a,q}(n)=\omega_{a,q}(n\bmod q).
\]

The positivity condition `0<q` is retained explicitly. The repository's
rational-arc index family already carries this premise, but the residue theorem
is stated independently and does not silently define a modulus-zero fibre.

## 3. Exact finite residue fibres

For `0 ≤ r < q`, define the finite residue-class prime-log sum

\[
S_{N;q,r}(\beta)
 =\sum_{\substack{0\le n\le N\\n\equiv r\pmod q}}
  1_{\mathbb P}(n)\log n\,e_n(\beta).
\]

The centered exact exponential sum is then reconstructed as

\[
S_N(a/q+\beta)
 =\sum_{r=0}^{q-1}\omega_{a,q}(r)S_{N;q,r}(\beta).
\]

This is a finite fibre decomposition. It is obtained by:

1. multiplying characters in the real argument;
2. replacing the rational-center phase by its value at `n mod q`; and
3. applying the exact finite `Finset.sum_fiberwise_of_maps_to` identity.

There is no use of an infinite series, limiting argument, equidistribution
claim, or prime number theorem in progressions.

## 4. Exact circle model

The residue-class kernel is squared and multiplied by the unchanged negative
target phase. Pointwise, for every real `x` and every positive denominator `q`,

\[
F_N(x)=F^{\mathrm{res}}_{N;a,q}(x).
\]

Thus on every indexed clipped rational arc, the inherited single-arc integral
is exactly the integral of the residue-class circle model. This is an identity,
not an approximation.

The next genuinely analytic replacement would have to approximate each
`S_{N;q,r}(β)` by a source-bound progression main term and supply an explicit
error valid throughout the declared arc. Nothing in this packet makes that
replacement.

## 5. Proposed models and exact residuals

For an arbitrary proposed model `M_{a,q}(x)`, define its signed arc contribution
and exact residual by

\[
I^M_{a,q}=\int_{\mathfrak A_{a,q}}M_{a,q}(x)\,dx,
\qquad
R^M_{a,q}=I_{a,q}-I^M_{a,q}.
\]

The finite exact major sum satisfies

\[
\sum_{(a,q)\in\mathcal I_Q} I_{a,q}
 =\sum_{(a,q)\in\mathcal I_Q} I^M_{a,q}
  +\sum_{(a,q)\in\mathcal I_Q}R^M_{a,q}.
\]

If each residual obeys

\[
\lVert R^M_{a,q}\rVert\le E_{a,q},
\]

then the complete finite residual is bounded by

\[
\left\lVert\sum R^M_{a,q}\right\rVert
 \le\sum E_{a,q}.
\]

This is the only aggregation performed. No cancellation between residuals is
claimed.

## 6. Terminal positivity boundary

A proposed finite model can imply an exact Goldbach count only after all of the
following are supplied:

\[
L\le\operatorname{Re}\sum I^M_{a,q},
\]

\[
\lVert R^M_{a,q}\rVert\le E_{a,q}
\quad\text{for every indexed arc},
\]

\[
\lVert I_{\mathfrak m}(Q,N)\rVert\le E_{\mathfrak m},
\]

and the strict margin

\[
\sum E_{a,q}+E_{\mathfrak m}<L.
\]

The truncated-local-main variant charges three distinct quantities exactly
once: a model-to-truncated-main error, the sum of all arc residual errors, and
the complete signed minor error.

The rational-arc cutoff and finite local-factor cutoff remain independent.

## 7. Hostile controls

The packet preserves the following rejection cases:

- integral period shifts must disappear under the canonical character;
- frequency seven at denominator three must use residue one;
- a rational index can never have denominator zero;
- the exact residue model has zero residual, but an arbitrary zero model moves
  the complete arc contribution into its residual;
- exact residue reconstruction can coexist with `goldbachCount 2 = 0`;
- equality of the total error budget and proposed lower bound cannot satisfy the
  strict terminal condition.

## 8. Remaining analytic obligations

The packet does not supply:

- a prime number theorem in arithmetic progressions at the required uniformity;
- an explicit approximation for each finite residue-class prime sum;
- a singular integral evaluation on an individual clipped arc;
- construction, convergence, or a quantitative tail for an infinite singular
  series;
- a complete signed minor-arc norm estimate;
- a strict every-even margin beyond one fixed cutoff;
- finite verification below that cutoff;
- a proof of strong Goldbach.

The source remains isolated from `GRWTSK.lean` until exact-head elaboration,
transitive trust review, hostile replay, and external acceptance are complete.
