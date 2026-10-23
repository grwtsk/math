# Absolute high-g Type II closure by finite divisor counting

## Status

This packet is a source draft.  It has not been replayed by Lean and has not
received a kernel or axiom audit.

The packet advances the exact squarefree-common-gcd Type I/II split at the
seven-eighths Fejer cutoff.  It closes the absolute high-g Type II estimate and
leaves the complete signed low-g Type I estimate open.

## Exact object

The inherited absolute Type II aggregate is

\[
\sum_{h=1}^{2X-1}\sum_{2X<n\le 4X-h}
 w(n)w(n+h)
 \sum_{g>\lfloor\sqrt X\rfloor}
 \sum_{\gcd(D(u),D(v))=g}
 |T_n(u)T_{n+h}(v)|.
\]

The previous packet proves that a high-\(g\) class contains only genuine
indices.  Hence

\[
u=\operatorname{some}(d),\qquad v=\operatorname{some}(e).
\]

All anchor and mixed channels remain in the signed low-\(g\) block.

## Fejer normalization check

The repository's arithmetic prefix weight is the restriction of the exact
period-\(4X\) cyclic Fejer convolution.  On the actual octave support the
preceding source proves

\[
0\le w(n)\le 1.
\]

The new source proves directly

\[
0\le w(n)w(n+h)\le 1.
\]

There is no additional factor of \(N\), \(X\), \(4X\), or a Fourier
normalization constant in the Type II term.

## Reusable divisor-summatory lemma

For an integer \(B\ge1\), define

\[
\mathcal D(B)=\sum_{1\le a\le B}\tau(a).
\]

The source represents this as the cardinality of the finite incidence set

\[
\{(a,d):1\le a\le B,\ d\mid a\}.
\]

Double counting gives the exact identity

\[
\mathcal D(B)=\sum_{1\le d\le B}\left\lfloor\frac Bd\right\rfloor.
\]

Mathlib's exact count of positive multiples and its harmonic-number estimate
then yield

\[
\boxed{\mathcal D(B)\le B(1+\log B).}
\]

The integer quotient is retained until the monotone cast to the real quotient.
The explicit hypothesis \(B\ge1\) prevents later logarithmic arguments from
silently using a zero scale.

## Exact reduced-tuple injection

For an exact high-\(g\) term write

\[
d=gd',\qquad e=ge',\qquad n=ga,\qquad n+h=gb.
\]

The source maps the term to

\[
(g,a,d',b,e').
\]

It proves

\[
d'\mid a,\qquad e'\mid b,
\qquad 1\le a,b\le\left\lfloor\frac{4X}{g}\right\rfloor.
\]

The map is injective.  Indeed, the tuple recovers

\[
n=ga,\quad n+h=gb,\quad h=g(b-a),\quad d=gd',\quad e=ge'.
\]

Thus there is no omitted multiplicity from shifts, divisor pairs, or the
common-gcd grouping.

After taking absolute values it is safe to discard squarefreeness,
coprimality, the relation \(b>a\), the precise shifted octave, and the condition
that \(g\mid h\).  These deletions only enlarge the nonnegative sum.

## Term bound

For a genuine divisor index,

\[
T_n(d)=\mu(d)\log(n/d).
\]

On the octave, \(|\mu(d)|\le1\) and \(1\le n/d\le4X\), so

\[
|T_n(d)|\le\log(4X).
\]

Together with the Fejer unit bound, every exact Type II summand is at most

\[
\log(4X)^2.
\]

## Finite high-g count

The reduced tuple count is bounded by

\[
\sum_{g>\sqrt X}
 \mathcal D\!\left(\left\lfloor\frac{4X}{g}\right\rfloor\right)^2.
\]

Using the finite divisor estimate and monotonicity of the logarithm gives

\[
\mathcal D\!\left(\left\lfloor\frac{4X}{g}\right\rfloor\right)^2
\le
\left(\frac{4X}{g}\right)^2(1+\log(4X))^2.
\]

Mathlib's finite reciprocal-square estimate

\[
\sum_{\sqrt X<g\le4X}\frac1{g^2}
\le\frac{2}{\lfloor\sqrt X\rfloor+1}
\]

then yields

\[
\#\text{TypeII terms}
\le
32X^{3/2}(1+\log(4X))^2.
\]

Consequently

\[
\operatorname{TypeII}_{\mathrm{abs}}(X,m)
\le
32X^{3/2}\log(4X)^2(1+\log(4X))^2.
\]

For repository dyadic scales \(X\ge2\), the previously proved logarithmic
normalizations imply

\[
\log(4X)\le3\log X,
\qquad
1+\log(4X)\le5\log X.
\]

Therefore

\[
\boxed{
\operatorname{TypeII}_{\mathrm{abs}}(X,m)
\le7200X^{3/2}(\log X)^4.
}
\]

## Logical consequence

The new theorem constructs

```lean
SevenEighthsBoundaryMinimalAbsoluteHighGCDTypeIIBound
```

without using the graded Fourier premise.  Combining it with

```lean
SevenEighthsBoundaryMinimalSignedLowGCDTypeIBound
```

produces the existing squarefree-gcd supplier and then the already typed
seven-eighths finite partial-prime discrepancy target.

## Exact remaining obligation

The only analytic estimate left in this line is

\[
\boxed{
\operatorname{TypeI}_{\mathrm{signed}}(X,m)
\ll X^{3/2}(\log X)^4,
\qquad g\le\lfloor\sqrt X\rfloor,
}
\]

with the complete anchor/anchor, anchor/genuine, genuine/anchor, and
genuine/genuine channels retained in one signed sum.

No conclusion about that signed estimate, threshold descent, the Riemann
Hypothesis, Chowla, or Goldbach follows from the Type II count alone.
