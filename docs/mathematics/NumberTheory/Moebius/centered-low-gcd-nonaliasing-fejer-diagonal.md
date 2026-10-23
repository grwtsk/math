# Centered low-gcd non-aliasing Fejér diagonal

**Status:** `SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED / NOT_AXIOM_AUDITED`.

This packet closes the finite diagonal term in the exact identity

\[
2P_{X,Y}(w)+D_{X,Y}(w)=B_{X,Y}(w)
\]

for every weight satisfying `0 <= w(n) <= 1` on the octave `(2X,4X]`, then
instantiates the result at the literal historical period-`4X` Fejér prefix
weight from PR #973.

## Finite arithmetic input

For every nonzero natural number `n`, a divisor `d | n` is encoded by the
member of the complementary pair `(d,n/d)` lying below `floor(sqrt n)`, plus
one Boolean bit recording the side. This proves

\[
\tau(n)\le 2(\lfloor\sqrt n\rfloor+1).
\]

On `2X < n <= 4X` and `X >= 1`, this is relaxed to

\[
\tau(n)\le 6\sqrt X.
\]

Combining it with the separately owned finite divisor-summatory bound

\[
\sum_{1\le n\le B}\tau(n)\le B(1+\log B)
\]

gives

\[
\sum_{2X<n\le4X}\tau(n)^2
\le 24X\sqrt X(1+\log(4X)).
\]

The imported divisor-summatory source remains independently subject to replay
and audit.

## Four-channel diagonal bound

No centered channel is separated. Pointwise, the exact kernel is bounded by

\[
|K_Y(n,n)|
\le \tau(n)^2\log(4X)^2+2\log(4X)+1.
\]

The first term majorizes the complete low-gcd genuine/genuine divisor pair;
the two linear logarithms are the two genuine/anchor channels after the exact
Möbius-log atom is identified with `Lambda(n)`; the final `1` is the
anchor/anchor channel.

For `X >= 4`, `log(4X) <= 2 log X`, `1+log(4X) <= 3 log X`, and the preceding
finite estimates yield the explicit non-optimized source theorem

\[
|D_{X,Y}(w)|
\le 300X\sqrt X(\log X)^4.
\]

The actual historical Fejér weight satisfies the needed `[0,1]` hypothesis at
source level in PR #973, so the same diagonal bound is instantiated there.

## Exact remaining estimate

Define

\[
\mathcal B_{X,N,m}
=
B_{X,\lfloor\sqrt X\rfloor}(w_{X,N,m}).
\]

The packet proves the conditional finite reduction

\[
|\mathcal B_{X,N,m}|\le C X\sqrt X(\log X)^4
\Longrightarrow
|P_{X,\lfloor\sqrt X\rfloor}(w_{X,N,m})|
\le \frac{C+300}{2}X\sqrt X(\log X)^4.
\]

It also keeps the exact signed decomposition

\[
\mathcal B_{X,N,m}
=
\sum_{r\le4X}\mu(r)
  \bigl(\operatorname{centeredDivisibilityTail}_{X,w}(r)\bigr)^2
+
B^{2\le\gcd\le\lfloor\sqrt X\rfloor}_{X,w}.
\]

The first summand must remain signed: the existing obstruction proves that its
termwise absolute square majorant already contains the full centered weighted
von Mangoldt mass square. The second summand retains all positive common-gcd
classes and all AA/AG/GA/GG interactions.

No bound for this combined signed bilinear is supplied. No threshold descent,
zero-free theorem, Chowla statement, Goldbach statement, or Riemann Hypothesis
conclusion is claimed.
