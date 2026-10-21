# Cumulative weighted Mertens-square criterion

Owners: #350, #347, #343, #335, and #334 / RH-E02. Canonical target: #15.
Stacked parent: draft PR #349 at
`62653bf7a2763315b2e4f4ec5bff6cdb78af63e5`, tree
`14d87b941c630aea4671d4615672e2673d848dd7`.

**SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED / ARITHMETIC_SUPPLIER_OPEN.**

This note records the reduction implemented in
`GRWTSK/NumberTheory/Moebius/CumulativeWeightedMertensSquare.lean`.
It converts the all-positive weighted Mertens-square family from #347 into an
equivalent finite-horizon subpolynomial estimate. No such estimate is proved.

## 1. The unchanged arithmetic source

Let

\[
M_n=\sum_{k\le n}\mu(k)
\]

be the repository's existing real Möbius prefix, with its existing value at
`n=0`. Define

\[
b_n
 =M_n^2\,n^{-1}(n+1)^{-1}
\]

using the same real-power conventions as the Lean source, and

\[
A(N)=\sum_{0\le n<N}b_n.
\]

The zero term is retained in the formal definition. It vanishes because the
actual prefix vanishes there; the implementation does not replace the source
by an informal series beginning at one.

The existing condition from #347 is

\[
\operatorname{WM}(\varepsilon):
\qquad
\sum_{n\ge0}
M_n^2 n^{-1}(n+1)^{-1-\varepsilon}<\infty.
\]

The new source proves the exact term identity

\[
M_n^2n^{-1}(n+1)^{-1-\varepsilon}
 =b_n(n+1)^{-\varepsilon}.
\tag{1}
\]

Thus no coefficient, cutoff, weight, or normalization changes when passing to
the cumulative formulation.

## 2. Finite subpolynomial target

Define

\[
\mathsf{CumSubpoly}:
\quad
\forall\delta>0\ \exists C_\delta\ge0\ \forall N\ge1,
\qquad
A(N)\le C_\delta N^\delta.
\tag{2}
\]

The implemented theorem is

\[
\boxed{
\left[\forall\varepsilon>0,\ \operatorname{WM}(\varepsilon)\right]
\iff
\mathsf{CumSubpoly}.
}
\tag{3}
\]

This is an equivalence of arithmetic supplier propositions. Combined with
#347 it gives the conditional endpoint

\[
\mathsf{CumSubpoly}\Longrightarrow\mathrm{RH}.
\tag{4}
\]

No reverse implication from RH is claimed.

## 3. Summability implies subpolynomial cumulative growth

Fix \(\delta>0\) and assume the genuinely summable series

\[
S_\delta=\sum_{n\ge0}b_n(n+1)^{-\delta}.
\]

For \(n<N\),

\[
b_n
 =b_n(n+1)^{-\delta}(n+1)^\delta
 \le b_n(n+1)^{-\delta}N^\delta.
\]

Nonnegativity and the actual summability proof give

\[
A(N)
 \le N^\delta
    \sum_{n<N}b_n(n+1)^{-\delta}
 \le S_\delta N^\delta.
\tag{5}
\]

The Lean theorem uses the actual `Summable` witness before the `tsum`. A
totalized real infinite sum by itself is never used as evidence of finiteness.

## 4. Exact finite Abel identity

For arbitrary real sequences \(b_n,w_n\), the source proves

\[
\sum_{n=0}^{N}b_nw_n
 =\left(\sum_{n=0}^{N}b_n\right)w_N
  +\sum_{n=0}^{N-1}
    \left(\sum_{k=0}^{n}b_k\right)(w_n-w_{n+1}).
\tag{6}
\]

Specializing to

\[
w_n=(n+1)^{-\varepsilon}
\]

gives

\[
\boxed{
\sum_{n=0}^{N}b_n(n+1)^{-\varepsilon}
 =A(N+1)(N+1)^{-\varepsilon}
  +\sum_{n=0}^{N-1}A(n+1)
    \left[(n+1)^{-\varepsilon}-(n+2)^{-\varepsilon}\right].
}
\tag{7}
\]

The terminal term is retained. The result is not replaced by an asymptotic
partial-summation slogan.

## 5. Subpolynomial growth implies every positive weighted series

Fix \(\varepsilon>0\), and select

\[
\delta=\frac{\varepsilon}{2}.
\]

Assume

\[
A(N)\le C N^\delta
\qquad(N\ge1).
\tag{8}
\]

The terminal term in (7) obeys

\[
A(N+1)(N+1)^{-\varepsilon}
 \le C(N+1)^{\delta-\varepsilon}
 \le C,
\tag{9}
\]

because \(\delta-\varepsilon=-\varepsilon/2<0\).

The repository's existing unit-interval power-drop theorem gives

\[
x^{-\varepsilon}-(x+1)^{-\varepsilon}
 \le \varepsilon x^{-\varepsilon-1}
\qquad(x>0).
\tag{10}
\]

Consequently each interior Abel term is bounded by

\[
A(n+1)
 \left[(n+1)^{-\varepsilon}-(n+2)^{-\varepsilon}\right]
 \le
C\varepsilon (n+1)^{\delta-\varepsilon-1}.
\tag{11}
\]

Here

\[
\delta-\varepsilon-1=-1-\frac{\varepsilon}{2}<-1,
\]

so the shifted power series is summable. Equation (7) therefore gives one
bound, independent of the finite horizon, for every nonnegative partial sum of
\(b_n(n+1)^{-\varepsilon}\). The nonnegative partial-sum criterion yields
summability.

The strict exponent gap is essential. Choosing \(\delta=\varepsilon\) would
produce the harmonic exponent \(-1\), which this argument cannot sum.

## 6. Dyadic interpretation

The following is a written corollary and is not a Lean theorem in this
increment. Define dyadic block masses

\[
B_j=\sum_{2^j\le n<2^{j+1}}b_n.
\]

Then (2) is equivalent, up to the standard harmless shift of constants, to

\[
\forall\eta>0\ \exists D_\eta\ge0\ \forall j\ge0,
\qquad
B_j\le D_\eta 2^{\eta j}.
\tag{12}
\]

Indeed, (2) bounds \(B_j\) by \(A(2^{j+1})\). Conversely, summing (12) over
all completed blocks below a horizon gives a geometric bound of size
\(N^\eta\), after using a slightly smaller exponent if desired.

This is the finite-scale target intended for dyadic, Type-II, large-sieve, or
bilinear methods:

\[
\boxed{
\sum_{2^j\le n<2^{j+1}}
\frac{M_n^2}{n(n+1)}
 \le 2^{o(j)}.
}
\tag{13}
\]

Equation (13) is an averaged square-root-cancellation target. It is not a
pointwise Mertens estimate and is not established by a finite table of blocks.

## 7. Relation to other repository routes

The cumulative criterion belongs to RH-E02. It feeds:

```text
finite subpolynomial Mertens-square budget
  -> all-positive weighted Mertens-square family
  -> reciprocal increment mean squares
  -> reciprocal compensated correlations
  -> pickup energy abscissa zero
  -> conditional RH endpoint.
```

The dyadic von Mangoldt/Green route RH-G01/G02 uses a different arithmetic
source and different endpoint moments. A future theorem may compare its Type-II
packet with (13), but common dyadic indexing does not itself identify the two
sources or transfer either estimate.

Likewise, separate pointwise bounds

\[
|M_n|\ll_\theta n^\theta
\]

with \(\theta<1/2\) would imply (2), but (2) does not assert such a pointwise
bound. The purpose of the cumulative formulation is precisely to expose the
weaker averaged target.

## 8. Verification boundary

The implementation adds only a pure subject module, this note, and a passive
verification specification. It does not alter existing source, root imports,
pins, workflows, held branches, or execution state.

The source contains definitions and proof scripts only. Source text and finite
diagnostics are not Lean elaboration, proof-term acceptance, transitive axiom
review, or an infinite arithmetic estimate. Exact-head elaboration,
generated-declaration reconciliation, independent source review, and immutable
external acceptance remain required.

The decisive open arithmetic statement is still (2), equivalently the written
dyadic target (13). Keep #350, #347, #343, #335, #334, and #15 open.
