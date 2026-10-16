# One-third completed-line control from a Mertens mean square

## Status and source boundary

This package is a source-bound mathematical reduction for `grwtsk/math` at
selected revision `6e0d4b2bf7944994c399ae298a8d7d25bddcdb43`.

It uses the repository's literal real-cutoff Mertens prefix, damped source,
exponential Volterra operator, completed vertical-line mass, and exact target
interfaces.  It does not substitute a positive coefficient sequence for the
Möbius source, remove natural cutoffs or logarithmic cells, infer an Euler
product in the critical strip, or promote a finite computation to an infinite
summability theorem.

The main result is a new conditional supplier for the exact completed line
`σ = 1/3`.  The unpaid premise is a weighted square sum of the actual Mertens
prefix.  This premise is weaker than the pointwise power estimate previously
used to approach the same line.

The Lean files in this package are inactive candidates.  They have not been
elaborated or axiom-audited.  No new zero-free region and no proof of RH are
claimed.

## 1. Literal source and exact logarithmic cells

Write

\[
 M_n=\sum_{m\le n}\mu(m)
\]

for the repository's natural-cutoff Mertens prefix.  Its real-cutoff version is
constant on every half-open interval `[n,n+1)`.  The repository defines

\[
 F_\sigma(u)
 =e^{-\sigma u}\,\operatorname{pickupVelocity}(u)
 =e^{-(\sigma+1/2)u}M(e^u)
\]

and proves the exact finite Volterra estimate

\[
 \operatorname{verticalLineMass}(\sigma,T)
 \le \frac1{\sigma^2}\int_0^T F_\sigma(u)^2\,du,
 \qquad \sigma>0,\ T\ge0.
 \tag{1}
\]

Partitioning at the actual arrival times `u=log n` gives, for every
`\sigma>0`,

\[
 \begin{aligned}
 \int_0^\infty F_\sigma(u)^2\,du
 &=\sum_{n\ge1}M_n^2
   \int_{\log n}^{\log(n+1)}e^{-(2\sigma+1)u}\,du\\
 &=\frac1{2\sigma+1}\sum_{n\ge1}M_n^2
   \left(n^{-(2\sigma+1)}-(n+1)^{-(2\sigma+1)}\right).
 \end{aligned}
 \tag{2}
\]

The equality is an identity of nonnegative extended integrals.  Consequently,
finite partial sums may be used first and monotone convergence applied only
after every cell has been retained.

## 2. The exact one-third source weight

Set

\[
 \sigma=\frac13.
\]

Then `2σ+1=5/3`, and (2) becomes

\[
 \int_0^\infty F_{1/3}(u)^2\,du
 =\frac35\sum_{n\ge1}M_n^2
   \left(n^{-5/3}-(n+1)^{-5/3}\right).
 \tag{3}
\]

Equivalently, since

\[
 \int_n^{n+1}x^{-8/3}\,dx
 =\frac35\left(n^{-5/3}-(n+1)^{-5/3}\right),
\]

we have the exact real-cutoff identity

\[
 \boxed{
 \int_0^\infty F_{1/3}(u)^2\,du
 =\sum_{n\ge1}M_n^2\int_n^{n+1}x^{-8/3}\,dx.
 }
 \tag{4}
\]

Define the direct arithmetic premise

\[
 \mathsf{OneThirdMertensSquare}:
 \qquad
 \sum_{n\ge1}\frac{M_n^2}{n^{8/3}}<\infty.
 \tag{5}
\]

Because `x^{-8/3}\le n^{-8/3}` on `[n,n+1]`, (4) gives

\[
 \int_0^\infty F_{1/3}(u)^2\,du
 \le \sum_{n\ge1}\frac{M_n^2}{n^{8/3}}.
 \tag{6}
\]

Substitution into the repository theorem (1) yields the literal estimate

\[
 \boxed{
 \operatorname{verticalLineMass}\left(\frac13,T\right)
 \le 9\sum_{n\ge1}\frac{M_n^2}{n^{8/3}}
 \qquad(T\ge0).
 }
 \tag{7}
\]

The constant `9` is exactly `(1/3)^{-2}`.  No pointwise Mertens exponent and no
separate positive/negative decomposition are used.

If the exact cell-drop series is used instead of (5), the corresponding bound
is

\[
 \operatorname{verticalLineMass}\left(\frac13,T\right)
 \le \frac{27}{5}\sum_{n\ge1}M_n^2
 \left(n^{-5/3}-(n+1)^{-5/3}\right).
 \tag{8}
\]

## 3. Direct holomorphic continuation of the reciprocal source

The same square premise has a direct discrete Abel/Mellin interpretation.  For
`p>1`, assume

\[
 S_p=\sum_{n\ge1}M_n^2n^{-p}<\infty.
 \tag{9}
\]

For complex `s` define

\[
 G_p(s)=\sum_{n\ge1}M_n\left(n^{-s}-(n+1)^{-s}\right).
 \tag{10}
\]

For `\sigma=\Re s`, the integral representation of the finite difference gives

\[
 \left|n^{-s}-(n+1)^{-s}\right|
 \le |s|\,n^{-\sigma-1}.
 \tag{11}
\]

Cauchy--Schwarz therefore gives the literal estimate

\[
 \boxed{
 |G_p(s)|
 \le |s|\,S_p^{1/2}
 \zeta(2\sigma+2-p)^{1/2}
 }
 \tag{12}
\]

whenever

\[
 \sigma>\frac{p-1}{2}.
 \]

The same estimate is uniform on compact subsets of that half-plane, so (10)
defines a holomorphic function there.

For `\Re s>1`, finite Abel summation gives

\[
 \sum_{n=1}^N M_n(n^{-s}-(n+1)^{-s})
 =\sum_{n=1}^N\frac{\mu(n)}{n^s}-M_N(N+1)^{-s}.
 \tag{13}
\]

The boundary term tends to zero by the elementary bound `|M_N|\le N`, and the
Dirichlet series equals `1/\zeta(s)` in its original domain.  Thus `G_p` is the
holomorphic continuation of the reciprocal source to

\[
 \Re s>\frac{p-1}{2}.
\]

To retain the pole at `s=1` correctly, use the entire regularization

\[
 F(s)=(s-1)\zeta(s).
\]

On `\Re s>1`,

\[
 F(s)G_p(s)=s-1.
\]

The identity theorem extends this equality throughout the connected half-plane
of (10).  Hence a nontrivial zero `\rho\ne1` in that half-plane would give
`0=\rho-1`, a contradiction.

For `p=8/3`, the exact consequence is

\[
 \boxed{
 \mathsf{OneThirdMertensSquare}
 \Longrightarrow
 \zeta(s)\ne0\quad\text{for }\Re s>\frac56.
 }
 \tag{14}
\]

This is the same open half-plane reached by the completed line `σ=1/3`.
It does not exclude zeros on `\Re s=5/6`, and it does not imply RH.

## 4. Dyadic colliding-block formulation

For `j\ge0`, define the complete Mertens square block

\[
 A_j=\sum_{2^j\le n<2^{j+1}}M_n^2.
 \tag{15}
\]

Let

\[
 w_n=\int_n^{n+1}x^{-8/3}\,dx.
\]

For `2^j\le n<2^{j+1}`,

\[
 2^{-8(j+1)/3}\le w_n\le2^{-8j/3}.
\]

Therefore

\[
 \boxed{
 2^{-8/3}\sum_{j\ge0}2^{-8j/3}A_j
 \le
 \sum_{n\ge1}M_n^2w_n
 \le
 \sum_{j\ge0}2^{-8j/3}A_j.
 }
 \tag{16}
\]

The exact source integral at `σ=1/3` is finite if and only if

\[
 \boxed{
 \sum_{j\ge0}2^{-8j/3}A_j<\infty.
 }
 \tag{17}
\]

A convenient stronger supplier is

\[
 \exists C,\delta>0\ \forall j:\qquad
 A_j\le C\,2^{(8/3-\delta)j}.
 \tag{18}
\]

Then every weighted block is at most `C2^{-\delta j}`.

### Complete signed expansion

The nonnegative block `A_j` is formed only after all Möbius interactions have
been retained.  Expanding gives

\[
 A_j=
 \sum_{a,b<2^{j+1}}
 \mu(a)\mu(b)K_j(a,b),
 \tag{19}
\]

where

\[
 K_j(a,b)=
 \#\{n:2^j\le n<2^{j+1},\ a\le n,\ b\le n\}.
\]

Equivalently, with `m=max(a,b)`,

\[
 K_j(a,b)=
 \begin{cases}
 2^j,&m<2^j,\\
 2^{j+1}-m,&2^j\le m<2^{j+1},\\
 0,&m\ge2^{j+1}.
 \end{cases}
 \tag{20}
\]

The matrix `K_j` is positive semidefinite because it is the Gram kernel of the
prefix-indicator vectors

\[
 a\longmapsto\mathbf1_{a\le n}
 \qquad(2^j\le n<2^{j+1}).
\]

Positivity is obtained after the complete signed Möbius aggregation.  Replacing
`\mu(a)\mu(b)` by absolute values, deleting off-diagonal pairs, or bounding each
sign part separately changes the source.

## 5. Why this is weaker than a pointwise `5/6` estimate

A pointwise estimate

\[
 |M_n|\le Cn^\beta,
 \qquad \beta<\frac56,
\]

implies (18), since

\[
 A_j\ll 2^{(2\beta+1)j}
\]

and `2\beta+1<8/3`.

The converse is false even for abstract sequences with unit-size increments.
This matters because the new supplier should not be silently relabeled as a
pointwise Mertens theorem.

For `k\ge1`, put

\[
 N_k=2^{20k^2},
 \qquad
 H_k=2^{17k^2}=N_k^{17/20}.
\]

On the disjoint interval `[N_k-H_k,N_k+H_k]`, define a triangular pulse of
height `H_k` and slopes `\pm1`, and set the sequence to zero elsewhere.  Then

\[
 |a_{n+1}-a_n|\le1.
\]

At the peaks,

\[
 a_{N_k}=N_k^{17/20},
 \qquad
 \frac{17}{20}>\frac56,
\]

so no estimate `|a_n|\le Cn^\beta` with `\beta<5/6` is possible.
Nevertheless, the `k`th pulse contributes at most a fixed constant times

\[
 H_k^3N_k^{-8/3}
 =2^{-7k^2/3}.
\]

The weighted square series therefore converges.

This is a generic separation fixture, not a claim about the actual Mertens
sequence.

## 6. Square-Mellin abscissa and the rightmost zero

Define the Mertens-square convergence abscissa

\[
 p_M=
 \inf\left\{
 p>1:\sum_{n\ge1}M_n^2n^{-p}<\infty
 \right\}.
 \tag{21}
\]

Let

\[
 \vartheta=
 \sup\{\Re\rho:\rho\text{ is a nontrivial zero of }\zeta\}.
\]

The holomorphic argument in section 3 gives

\[
 p_M\ge2\vartheta+1.
\]

Conversely, the classical/Pintz zero-free-to-Mertens transfer gives, for every
`\varepsilon>0`,

\[
 M(x)\ll_\varepsilon x^{\vartheta+\varepsilon}.
\]

It follows that the square series converges for every
`p>2\vartheta+1`.  Hence, at the written analytic level,

\[
 \boxed{p_M=2\vartheta+1.}
 \tag{22}
\]

Thus the one-third target is the exact threshold

\[
 p_M\le\frac83
 \quad\Longleftrightarrow\quad
 \vartheta\le\frac56
\]

at the level of convergence abscissae.  RH corresponds to `p_M=2`.

Equation (22) uses the cited analytic transfer and is not a locally admitted
Lean theorem.

## 7. Quantified distance from current external boundaries

The formally inspected external boundary is

\[
 B_{\rm formal}=
 \frac{4374785349}{5000000000}
 =0.8749570698.
\]

Its induced square-mean exponent is

\[
 2B_{\rm formal}+1
 =\frac{6874785349}{2500000000}
 =2.7499141396.
\]

The exact remaining saving required to reach `8/3` is

\[
 \boxed{
 (2B_{\rm formal}+1)-\frac83
 =\frac{624356047}{7500000000}
 \approx0.0832474729333.
 }
 \tag{23}
\]

A later written, not locally formalized, refinement records the rational
boundary

\[
 B_{\rm written}=\frac{43747851}{50000000}=0.87495702.
\]

It changes the residual mean-square saving only to

\[
 \frac{6243553}{75000000}
 \approx0.0832473733333.
\]

Neither boundary reaches the `8/3` square threshold or the `5/6` zero-free
threshold.

## 8. Relation to the triadic and quartic work

The dyadic block (19) is a complete signed two-channel Gram aggregation.  It is
not the ternary face moment of the correspondence architecture, and no missing
triadic reconstruction defect is set to zero.  A future triadic supplier may
refine the kernel, but it must reproduce (19) or a proved majorant with every
Möbius sign and off-diagonal term retained.

Likewise, no quartic role is changed in this package.  Reflection-orbit,
Taylor/Weierstrass, Jensen, and Frobenius quartics remain separate.  The present
object is a weighted Mertens-square Mellin norm, not a quartic Hermite sign
certificate.

## 9. Hostile controls

The package rejects the following substitutions:

1. A finite prefix of (5) is not infinite summability.
2. A pointwise theorem with exponent equal to `5/6` does not prove a strict
   exponent below `5/6`.
3. The square criterion does not imply a pointwise `beta<5/6` theorem.
4. `A_j` may not be replaced by the diagonal count `sum mu(n)^2`.
5. The signed kernel expansion (19) may not be replaced by absolute pair terms.
6. One completed line does not imply the all-positive-damping criterion or RH.
7. A theorem checked under an external Lean/Mathlib pin is not replayed locally.
8. A written external boundary is not a locally checked formal theorem.
9. The square-Mellin abscissa identity is not admitted without its analytic
   zero-free-to-Mertens input.
10. The `sigma=1/3` consumer must retain real cutoffs, logarithmic cells, the
    Volterra constant, the zeta pole regularization, and the exact target
    exclusions.

## 10. Proof graph and precise resume theorem

The shortest proof graph is

\[
 \begin{aligned}
 &\mathsf{OneThirdMertensSquare}\\
 &\quad\Longrightarrow
 \int_0^\infty F_{1/3}(u)^2\,du<\infty\\
 &\quad\Longrightarrow
 \sup_{T\ge0}\operatorname{verticalLineMass}(1/3,T)<\infty\\
 &\quad\Longrightarrow
 \zeta(s)\ne0\quad(\Re s>5/6).
 \end{aligned}
\]

The first two arrows are source-preserving arithmetic/analytic estimates.  The
last is the existing completed-transform continuation mechanism or the direct
Abel/Mellin argument of section 3.

The precise next theorem is

\[
 \boxed{
 \sum_{j\ge0}2^{-8j/3}
 \sum_{2^j\le n<2^{j+1}}M_n^2<\infty.
 }
 \tag{24}
\]

It is named

```text
OneThirdDyadicMertensMeanSquare
```

in the candidate interface.  Proving (24) would reach the completed line
`sigma=1/3`, but not the remaining reciprocal lines and not RH.

**Status: `OPEN_FRONTIER`.**
