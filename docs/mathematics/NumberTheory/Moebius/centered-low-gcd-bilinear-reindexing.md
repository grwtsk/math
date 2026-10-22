# Centered low-common-gcd Möbius–log bilinear reindexing

## Scope

This packet is a pure finite-algebra reduction for the remaining signed low-\(g\)
Type I problem. It does not import the unmerged PR #464 stack. The definitions
are kernel-independent and can be instantiated with the actual period-\(4X\)
Fejér prefix weight once that source has been replayed.

The packet is a source draft. It has not been elaborated, kernel checked, or
axiom audited.

## Exact finite object

Let

\[
I_X=(2X,4X]\cap\mathbf N,\qquad
S_X=[1,4X]\cap\mathbf N
\]

and let \(w:\mathbf N\to\mathbf R\) be any weight. Define

\[
A_d
 = \mu(d)
   \sum_{\substack{n\in I_X\\d\mid n}}
   w(n)\log(n/d),
\qquad
M=\sum_{n\in I_X}w(n),
\]

and merge the centering anchor into the modulus-one coefficient:

\[
C_d=A_d-\mathbf 1_{d=1}M.
\]

For a cutoff \(Y\ge1\), define

\[
B_Y(X,w)
 =
 \sum_{\substack{d,e\in S_X\\(d,e)\le Y}}
 C_dC_e.
\]

The source proves the exact four-channel identity

\[
\boxed{
B_Y
 =
 B_Y^{\mathrm{gg}}
 -M\sum_d A_d
 -\left(\sum_d A_d\right)M
 +M^2.
}
\]

The anchor/anchor, anchor/genuine, genuine/anchor, and genuine/genuine
contributions remain in one signed expression.

## Pointwise kernel and explicit boundary reindexing

For \(n,q\in I_X\), put

\[
K_Y(n,q)
 =
 \sum_{\substack{d\mid n,\ e\mid q\\d,e\le4X\\(d,e)\le Y}}
 \mu(d)\mu(e)\log(n/d)\log(q/e)
 -
 \sum_{\substack{e\mid q\\e\le4X}}\mu(e)\log(q/e)
 -
 \sum_{\substack{d\mid n\\d\le4X}}\mu(d)\log(n/d)
 +1.
\]

The source proves

\[
B_Y(X,w)
 =
 \sum_{n,q\in I_X}w(n)w(q)K_Y(n,q).
\]

It then partitions the square into the diagonal and the two strict triangular
regions, swaps the lower triangle to the upper triangle, and groups upper
pairs by \(h=q-n\). Every endpoint is retained:

\[
\boxed{
2
\sum_{h=1}^{2X-1}
\sum_{2X<n\le4X-h}
w(n)w(n+h)K_Y(n,n+h)
+
\sum_{2X<n\le4X}
w(n)^2K_Y(n,n)
=
B_Y(X,w).
}
\]

Thus the remaining positive-shift estimate is exactly a finite bilinear
estimate with a named diagonal correction. There is no omitted endpoint,
wraparound term, or extension outside \((2X,4X]\).

## Coprime-class square expansion and obstruction

The source proves the exact decomposition

\[
B_Y=B_{(d,e)=1}+B_{2\le(d,e)\le Y}.
\]

For the coprime class it proves

\[
\boxed{
B_{(d,e)=1}
 =
 \sum_{r\le4X}
 \mu(r)
 \left(
   \sum_{\substack{d\le4X\\r\mid d}} C_d
 \right)^2.
}
\]

The term \(r=1\) is

\[
\left(\sum_{d\le4X}C_d\right)^2
 =
 \left(
   \sum_{n\in I_X}w(n)(\Lambda(n)-1)
 \right)^2.
\]

Consequently the termwise absolute square majorant satisfies

\[
\boxed{
\left(
   \sum_{n\in I_X}w(n)(\Lambda(n)-1)
\right)^2
\le
\sum_{r\le4X}
|\mu(r)|
\left(
   \sum_{\substack{d\le4X\\r\mid d}} C_d
\right)^2.
}
\]

This is the scoped obstruction: an absolute-energy treatment of the coprime
part already asks for the full smoothed centered-value square. Such a treatment
cannot provide a noncircular proof of that same square bound.

The identity does not show that signed cancellation is unavailable. It shows
that the sign of \(\mu(r)\), or an equivalent joint bilinear cancellation
mechanism, must be retained.

## Primary-source scope check

Heath-Brown's generalized Vaughan identity is designed to decompose and
estimate a single sum \(\sum_n\Lambda(n)f(n)\). It motivates bilinear
decompositions but does not, by itself, give the present gcd-truncated
four-channel correlation.

Vaughan's 1998 general-sequence Montgomery–Hooley theorems assume approximate
equidistribution in residue classes for relatively small moduli; Part I treats
reduced residue classes and Part II treats all residue classes. Harper's modern
general-sequence formulation makes the additional hypotheses explicit:
progression distribution, non-concentration on multiples, and either hereditary
sparseness or integer-like divisor behavior, with modulus range above the
square-root threshold.

No theorem in this packet proves those hypotheses for the exact coefficients
\(C_d\), the truncated condition \((d,e)\le\sqrt X\), or the actual Fejér
weights. In particular, the low-\(g\) condition controls only the common gcd;
it does not bound the lcm or the primitive product of \(d\) and \(e\). No direct
large-sieve or Barban–Davenport–Halberstam adapter is therefore claimed.

Primary references:

- D. R. Heath-Brown, *Prime Numbers in Short Intervals and a Generalized
  Vaughan Identity*, Canadian Journal of Mathematics 34 (1982), 1365–1377,
  DOI 10.4153/CJM-1982-095-9.
- R. C. Vaughan, *On a variance associated with the distribution of general
  sequences in arithmetic progressions. I*, Philosophical Transactions of the
  Royal Society A 356 (1998), 781–791, DOI 10.1098/rsta.1998.0185.
- R. C. Vaughan, *On a variance associated with the distribution of general
  sequences in arithmetic progressions. II*, Philosophical Transactions of the
  Royal Society A 356 (1998), 793–809, DOI 10.1098/rsta.1998.0186.
- A. J. Harper, *Simple Barban–Davenport–Halberstam type asymptotics for
  general sequences*, Journal of the London Mathematical Society 112 (2025),
  e70293, DOI 10.1112/jlms.70293.

## Exact application target

For the application carried by the source-draft PR #464 line, set

\[
X=\operatorname{dyadicScale}(j),\qquad
N=\left\lceil X^{1/4}\right\rceil,\qquad
Y=\lfloor\sqrt X\rfloor,
\]

and

\[
w(n)=
\operatorname{nonAliasingFejerPrefixWeight}(X,N,m,n),
\qquad 2X\le m\le4X.
\]

The exact unresolved estimate is

\[
\boxed{
\exists C\ge0\ \exists j_0\
\forall j\ge j_0\ \forall m\in[2X,4X],\quad
\sum_{h=1}^{2X-1}
\sum_{2X<n\le4X-h}
w(n)w(n+h)K_{\lfloor\sqrt X\rfloor}(n,n+h)
\le
C X^{3/2}(\log X)^4.
}
\]

The finite identity above gives the equivalent corrected-bilinear form

\[
B_{\lfloor\sqrt X\rfloor}(X,w)
-
\sum_{n\in I_X}w(n)^2
 K_{\lfloor\sqrt X\rfloor}(n,n)
\le
2C X^{3/2}(\log X)^4.
\]

This estimate remains open. No structure or instance containing it is created.

## Evidence state

```text
SOURCE_DRAFT
NOT_RUN
NOT_KERNEL_AUDITED
EXACT_FOUR_CHANNEL_ANCHOR_CORRECTION_SOURCE_PROVED
EXACT_POSITIVE_SHIFT_AND_DIAGONAL_REINDEXING_SOURCE_PROVED
COPRIME_MOBIUS_SQUARE_EXPANSION_SOURCE_PROVED
ABSOLUTE_COPRIME_ENERGY_CIRCULARITY_OBSTRUCTION_SOURCE_PROVED
SIGNED_LOW_GCD_TYPE_I_ESTIMATE_OPEN
```
