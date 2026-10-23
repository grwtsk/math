# Centered low-gcd sharp divisibility tail

Status: `SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED / NOT_AXIOM_AUDITED`.

This packet closes the finite one-logarithm gap isolated by the preceding
cutoff-Möbius obstruction source.  It does not prove the centered Fejér value
bound.

## Restricted Möbius-log block

For fixed `r`, define

\[
h_r(a)=\begin{cases}
\mu(a),&(a,r)=1,\\
0,&(a,r)>1.
\end{cases}
\]

Its divisor sum

\[
H_r(n)=\sum_{a\mid n}h_r(a)
\]

is multiplicative and takes only the values `0` and `1`.  The restricted
Möbius-log convolution is

\[
F_r(n)=\sum_{a\mid n}h_r(a)\log(n/a).
\]

Using `log = zeta * Lambda`, associativity gives

\[
F_r = H_r * \Lambda.
\]

Since `0 <= H_r <= 1` and `Lambda >= 0`, the source proves

\[
0\le F_r(n)\le \sum_{b\mid n}\Lambda(b)=\log n.
\]

The exact coefficient identity

\[
\mu(ra)=\mu(r)h_r(a)
\]

holds both in the coprime multiplicative case and in the non-coprime zero
case.  Therefore

\[
\left|\sum_{a\mid n}\mu(ra)\log(n/a)\right|\le\log n.
\]

## Divisibility-tail reindexing

For `r > 1`, the centering anchor is absent from the divisibility tail.  At a
fixed octave point `n`, the exact moduli satisfying `r | d | n` are reindexed
as

\[
d=ra,\qquad a\mid n/r.
\]

Hence

\[
T_r(X,w)=
\sum_{\substack{2X<n\le4X\\r\mid n}}
 w(n)
 \sum_{a\mid n/r}\mu(ra)\log((n/r)/a).
\]

The quotient map `n -> n/r` is injective on the divisible octave points and
lands in `(0, floor(4X/r)]`, so there are at most `floor(4X/r)` such points.
For any octave weight in `[0,1]`, the source obtains

\[
\boxed{
|T_r(X,w)|\le
\left\lfloor\frac{4X}{r}\right\rfloor\log(4X).
}
\]

This bound uses the signed inner divisor cancellation before taking absolute
values.  It is strictly sharper than the preceding incidence-counting bound
by one logarithm.

## Actual period-4X Fejér consequence

The historical period-`4X` Fejér prefix weight is already source-proved to lie
in `[0,1]` on the octave.  The packet therefore constructs the previously open
proposition

```lean
NonAliasingFejerSharpDivisibilityTail X N m
```

under the exact cutoff and endpoint hypotheses.

The cutoff correction is consequently bounded at the intended scale:

\[
\boxed{
|\operatorname{Correction}_{X,N,m}|
\le256\,X\sqrt X(\log X)^4.
}
\]

Thus the remaining residual and the original centered Fejér-von-Mangoldt mass
square control one another up to the additive constant `256`.

Combining the already isolated finite constants gives the conditional
positive-shift bookkeeping constant

\[
1708=1152+300+256.
\]

## Remaining obstruction

After this packet, no sharp-tail or cutoff-correction premise remains.  The
substantive unresolved estimate is exactly

\[
\boxed{
\left|
\sum_{2X<n\le4X}
 w_{X,N,m}(n)(\Lambda(n)-1)
\right|^2
\ll X^{3/2}(\log X)^4.
}
\]

Equivalently, the weighted centered mass itself must be
`O(X^(3/4) log(X)^2)`.  The finite gcd-cutoff decomposition no longer lowers
the analytic strength of that obligation.

No threshold descent, zero-free region, Chowla theorem, Goldbach theorem, or
Riemann Hypothesis result is claimed.
