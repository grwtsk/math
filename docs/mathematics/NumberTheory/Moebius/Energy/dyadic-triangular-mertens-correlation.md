# Dyadic triangular Möbius-correlation criterion

Owners: #369, #366, #357, #354, #350, #347, #343, #335, and #334 / RH-E02.  
Canonical target: #15.  
Stacked parent: draft PR #367 at
`85b583e91a620836ae807ba07c78614c5f45164c`, tree
`fd1b72012f3b3745020caa7684b0b3e5662687d6`.

**SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED /
ARITHMETIC_SUPPLIER_OPEN.**

This note records the reduction implemented in
`GRWTSK/NumberTheory/Moebius/DyadicTriangularMertensCorrelation.lean`.
It replaces the complete ordered-pair source from #366 by an exactly equal
triangular source involving the actual previous Mertens prefix. No triangular
estimate is proved.

## 1. Unchanged arithmetic source

Retain the repository's actual closed prefix

\[
M_n=\sum_{1\le a\le n}\mu(a),
\qquad M_0=0,
\]

and the complete ordered off-diagonal correlation

\[
\operatorname{Pair}(n)
 =\sum_{\substack{1\le a,b\le n\\a\ne b}}
   \mu(a)\mu(b).
\]

The source in #366 is ordered: both \((a,b)\) and \((b,a)\) occur. It is not
an unordered-pair sum, and no absolute value is inserted.

Define the triangular source

\[
\operatorname{Tri}(n)
 =2\sum_{1\le b\le n}\mu(b)M_{b-1}.
\tag{1}
\]

The previous prefix \(M_{b-1}\), rather than \(M_b\), is essential. It ensures
that the coefficient \(\mu(b)\) does not correlate with itself. The factor two
retains both orientations of every off-diagonal pair.

## 2. Finite square telescope

The closed-prefix recurrence is

\[
M_{n+1}=M_n+\mu(n+1).
\tag{2}
\]

The coefficient-square diagonal

\[
\operatorname{Diag}(n)=\sum_{1\le a\le n}\mu(a)^2
\]

satisfies

\[
\operatorname{Diag}(n+1)
 =\operatorname{Diag}(n)+\mu(n+1)^2.
\tag{3}
\]

The triangular source satisfies

\[
\operatorname{Tri}(n+1)
 =\operatorname{Tri}(n)
  +2\mu(n+1)M_n.
\tag{4}
\]

Squaring (2) gives

\[
M_{n+1}^2
 =M_n^2+2\mu(n+1)M_n+\mu(n+1)^2.
\]

Starting at \(M_0=0\), equations (3) and (4) therefore prove by induction

\[
\boxed{
M_n^2=\operatorname{Diag}(n)+\operatorname{Tri}(n).
}
\tag{5}
\]

The preceding module already proves

\[
M_n^2=\operatorname{Diag}(n)+\operatorname{Pair}(n).
\tag{6}
\]

Subtracting the common diagonal yields the exact finite identity

\[
\boxed{
\operatorname{Pair}(n)=\operatorname{Tri}(n).
}
\tag{7}
\]

No asymptotic argument, convergence theorem, or cancellation estimate enters
this reduction.

## 3. Dyadic triangular source

For \(X=2^j\), retain the half-open dyadic block from #366 and define

\[
T_j
 =\sum_{X\le n<2X}
   \frac{\operatorname{Tri}(n)}{n(n+1)}.
\tag{8}
\]

The ordered-pair block was

\[
R_j
 =\sum_{X\le n<2X}
   \frac{\operatorname{Pair}(n)}{n(n+1)}.
\tag{9}
\]

Equation (7) gives the exact source identity

\[
\boxed{R_j=T_j.}
\tag{10}
\]

The Lean source proves (10) term by term on the unchanged half-open block.

## 4. Equivalent criterion

Define

\[
\mathsf{TriSubpoly}:
\quad
\forall\delta>0\ \exists C_\delta\ge0\ \forall j,
\qquad
T_j\le C_\delta(2^j)^\delta.
\tag{11}
\]

Since (10) is an equality, the source proves

\[
\boxed{
\mathsf{TriSubpoly}
\iff
\mathsf{PairSubpoly}.
}
\tag{12}
\]

Composing with the preceding source gives

\[
\begin{aligned}
\mathsf{TriSubpoly}
&\iff \mathsf{PairSubpoly}\\
&\iff \mathsf{DyadicBlockSubpoly}\\
&\iff \mathsf{CumulativeMertensSquareSubpoly}\\
&\iff \mathsf{AllPositiveWeightedMertensSquare}.
\end{aligned}
\tag{13}
\]

The existing RH-E02 consumer therefore yields the conditional endpoint

\[
\boxed{
\mathsf{TriSubpoly}\Longrightarrow\mathrm{RH}.
}
\tag{14}
\]

No converse from RH is claimed.

## 5. Finite tail-kernel form

This section is a written finite derivation. It is not an additional Lean
theorem in this increment.

Insert (1) into (8):

\[
T_j
 =2\sum_{X\le n<2X}\frac1{n(n+1)}
   \sum_{1\le b\le n}\mu(b)M_{b-1}.
\]

All sums are finite, so their order may be reversed. A fixed \(b\) contributes
exactly when

\[
\max(X,b)\le n<2X.
\]

The elementary telescope

\[
\sum_{n=L}^{U-1}\frac1{n(n+1)}
 =\frac1L-\frac1U
\tag{15}
\]

therefore gives

\[
\boxed{
T_j
 =2\sum_{1\le b<2X}
   \mu(b)M_{b-1}
   \left(
     \frac1{\max(X,b)}-\frac1{2X}
   \right).
}
\tag{16}
\]

The bracket is present only for \(\max(X,b)<2X\). Formula (16) is finite and
retains every endpoint.

Splitting at \(b=X\) gives

\[
\boxed{
T_j
 =\frac1X\sum_{1\le b<X}\mu(b)M_{b-1}
  +2\sum_{X\le b<2X}
    \mu(b)M_{b-1}
    \left(\frac1b-\frac1{2X}\right).
}
\tag{17}
\]

The first coefficient is \(1/X\) because

\[
2\left(\frac1X-\frac1{2X}\right)=\frac1X.
\]

## 6. Arithmetic interpretation

The remaining target is now a signed average of

\[
\mu(b)M_{b-1}.
\]

This is more specific than a generic square-energy estimate. It exposes the
interaction between one new Möbius coefficient and the preceding signed
history. The source is suitable for comparison with:

- Type-II decompositions after expanding either factor;
- bilinear forms in divisor variables;
- large-sieve or dispersion estimates for the weighted block;
- Chowla-type shifted or conditional correlation input;
- martingale-difference analogies, provided an exact arithmetic comparison is
  supplied.

None of those methods may replace the signed source by
\(|\mu(b)M_{b-1}|\). The criterion is an upper bound on the complete signed
quantity. An unsigned estimate generally asks for a much stronger statement
and discards the cancellation being isolated.

## 7. What has and has not advanced

The source-level debt has been narrowed from a complete ordered double sum to a
single triangular sum. The following are now exact source interfaces:

```text
ordered pair source
  = triangular previous-prefix source
  = dyadic triangular block source
  -> existing RH-E02 criteria and conditional endpoint.
```

The following remains open:

\[
\forall\delta>0\ \exists C_\delta\ge0\ \forall j,
\qquad
2\sum_{X\le n<2X}\frac1{n(n+1)}
  \sum_{b\le n}\mu(b)M_{b-1}
\le C_\delta X^\delta.
\tag{18}
\]

Equivalently, using (16), the finite kernel-weighted triangular correlation
must be \(X^{o(1)}\) from above.

No new positive damping has been paid. RH remains open.

## 8. Finite diagnostics and verification boundary

An authoring-assistant exact-rational diagnostic performed 771,761 checks with
report SHA-256
`71fa3fb8970fc52bfa3795254c3dd6cb51a04ec11fd909d5c9aeec9f9e839553`.

The checks included:

- all \(3^9=19{,}683\) coefficient streams over \(\{-1,0,1\}\);
- every prefix square, diagonal, ordered-pair, and triangular identity;
- every dyadic block at \(X=1,2,4\);
- the finite kernel and split-kernel rearrangements;
- independently generated Möbius values through 4,096;
- dyadic scales through \(X=2^{11}\);
- rejection of three mutations: using \(M_b\), omitting the factor two, and
  retaining only one pair orientation.

These finite checks are not Lean parsing or elaboration, proof-term
acceptance, an infinite arithmetic estimate, transitive axiom/native review,
repository tests, or independent mathematical review.

The implementation adds only a pure subject module, this note, and a passive
verification specification. It does not alter public-root imports, dependency
pins, workflows, held branches, or execution state. Keep #369, #366, #357,
#354, #350, #347, #343, #335, #334, and #15 open.
