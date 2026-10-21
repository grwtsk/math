# Quadratic-mean two-point Möbius-prefix supplier for RH-E02

Owners: #405, #397, #391, #388, #373, #369, #366, #357, #354,
#350, #347, #343, #335, and #334 / RH-E02. Canonical target: #15.

Stacked source: draft PR #400 at
`4d2aefa01e39f0dc7c62b86681ea25af2f886cda`, tree
`3f27c4da6c603f2dc11e109c0e87c70b3694e141`.

**SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED /
ARITHMETIC_SUPPLIER_OPEN.**

This note records the normalized quadratic-mean supplier implemented in
`GRWTSK/NumberTheory/Moebius/DyadicQuadraticMertensTwoPointPrefix.lean`.
It gives large-sieve, dispersion, and second-moment arguments a direct finite
interface. The exact signed packet from #388 remains the criterion.

## 1. Inherited finite source

At dyadic scale

\[
X=2^j,\qquad Y=2X,
\]

retain the finite two-point prefix

\[
C_h(N)
=
\sum_{0\le a<N}\mu(a+1)\mu(a+1+h),
\]

for every positive shift

\[
1\le h<Y
\]

and every admissible length

\[
0\le N\le Y-h-1.
\]

The preceding source assigns each shift a nonnegative envelope \(U_h\) such
that

\[
|C_h(N)|\le U_h
\]

for every admissible \(N\).

It also retains the exact signed packet

\[
\mathcal S_j
=
\sum_{1\le h<Y}S_{j,h},
\]

where each weighted shift contribution keeps the actual Möbius coefficients,
the previous-prefix indexing, the factor two from ordered pairs, and the exact
half-open dyadic endpoint.

## 2. Quadratic envelope

A quadratic envelope of size \(B\) consists of nonnegative shift envelopes
\(U_h\) with

\[
\boxed{
\sum_{1\le h<Y}U_h^2\le B^2Y.
}
\tag{1}
\]

Thus \(B\) controls the normalized root-mean-square size

\[
\left(\frac1Y\sum_{1\le h<Y}U_h^2\right)^{1/2}.
\]

The normalization uses \(Y\), while the exact number of positive shifts is
\(Y-1\). Keeping both quantities visible is useful for exact finite
bookkeeping and prevents a fixed-range average from being mistaken for the
required growing-scale statement.

## 3. Uniform control is a special case

Suppose one common number \(U\ge0\) bounds every shift and prefix. Choose the
constant family

\[
U_h=U.
\]

Then

\[
\sum_{1\le h<Y}U_h^2
=(Y-1)U^2
\le YU^2.
\]

Therefore

\[
\mathsf{UniformTwoPointEnvelope}(U)
\Longrightarrow
\mathsf{QuadraticTwoPointEnvelope}(U).
\]

No reverse implication is asserted. A small collection of large shift
envelopes may be compatible with a controlled quadratic mean even when the
maximum is large.

## 4. Quadratic mean implies the normalized L1 mean

Finite Cauchy--Schwarz gives

\[
\left(\sum_{1\le h<Y}U_h\right)^2
\le
(Y-1)\sum_{1\le h<Y}U_h^2.
\tag{2}
\]

Using \(Y-1\le Y\) and (1),

\[
\begin{aligned}
\left(\sum_{1\le h<Y}U_h\right)^2
&\le
(Y-1)\sum_{1\le h<Y}U_h^2\\
&\le
Y(B^2Y)\\
&=(BY)^2.
\end{aligned}
\]

Both sides are nonnegative, so

\[
\boxed{
\sum_{1\le h<Y}U_h\le BY.
}
\tag{3}
\]

Equation (3) is exactly the normalized `L¹` mean-envelope premise from #397.
The implemented source uses Mathlib's finite square-of-sum inequality and
retains the exact cardinality before relaxing it to \(Y\).

## 5. Payment of the exact shift packet

The inherited finite Abel estimate pays each shift by its envelope:

\[
|S_{j,h}|\le\frac{2U_h}{Y}.
\]

Combining this with (3) gives

\[
\begin{aligned}
|\mathcal S_j|
&\le
\sum_{1\le h<Y}|S_{j,h}|\\
&\le
\frac2Y\sum_{1\le h<Y}U_h\\
&\le 2B.
\end{aligned}
\]

Hence

\[
\boxed{|\mathcal S_j|\le2B.}
\tag{4}
\]

The exact signed packet may be considerably smaller because of cancellation
inside and between shifts. The quadratic supplier is sufficient only; it is
not equivalent to the packet criterion.

## 6. All-scale supplier

Define

\[
\mathsf{QuadraticTwoPointSubpoly}
\]

to mean that for every \(\delta>0\), there exists \(A_\delta\ge0\) such that
at every dyadic scale the shift envelopes satisfy

\[
\sum_{1\le h<Y}U_h^2
\le
A_\delta^2 X^{2\delta}Y.
\tag{5}
\]

Equivalently, the normalized root-mean-square envelope is

\[
O_\delta(X^\delta).
\]

The source patch proves the one-way chain

\[
\boxed{
\mathsf{UniformTwoPointSubpoly}
\Longrightarrow
\mathsf{QuadraticTwoPointSubpoly}
\Longrightarrow
\mathsf{MeanTwoPointSubpoly}
\Longrightarrow
\mathsf{ShiftPacketSubpoly}
\Longrightarrow
\mathrm{RH}.
}
\]

No quadratic-envelope witness is constructed, and no converse is asserted
from the mean supplier, packet criterion, energy-abscissa zero, or RH.

## 7. Large-sieve and dispersion interface

The open arithmetic target can be written as

\[
\boxed{
\forall\delta>0\ \exists A_\delta\ge0\ \forall j,
\quad
\sum_{1\le h<2^{j+1}}
\left(
\max_{0\le N\le2^{j+1}-h-1}|C_h(N)|
\right)^2
\le
A_\delta^2\,2^{2\delta j}\,2^{j+1}.
}
\tag{6}
\]

Formula (6) is a maximal quadratic average over all growing shifts. It is a
natural target for finite large-sieve, dispersion, or second-moment machinery.
A theorem controlling only the terminal correlation \(C_h(Y-h-1)\) does not
by itself control every prefix maximum appearing in (6). A future increment
may introduce a maximal inequality converting terminal or blockwise
second-moment information into these prefix envelopes.

## 8. Hostile boundaries

The following changes are rejected:

- averaging over only a fixed finite set of shifts;
- omitting some admissible prefix lengths from a shift envelope;
- normalizing by a fixed number instead of the growing endpoint \(Y\);
- replacing the exact cardinality \(Y-1\) by \(Y\) before recording the finite
  Cauchy--Schwarz step;
- replacing the previous prefix by the current prefix;
- omitting the ordered-pair factor two;
- replacing the signed packet by an unsigned source and calling it equivalent;
- treating a finite numerical table as the universal all-scale estimate.

## 9. Verification boundary

The accompanying exact-rational diagnostic checks:

- all \(3^8=6{,}561\) streams over \(\{-1,0,1\}\);
- generic dyadic scales \(X=1,2,4\);
- independently generated Möbius coefficients through \(512\);
- actual scales through \(X=256\);
- every admissible two-point prefix and its shift envelope;
- uniform-to-quadratic control;
- exact finite Cauchy--Schwarz and the \(Y-1\le Y\) relaxation;
- quadratic-to-mean and quadratic-to-packet estimates;
- hostile mutations using the current prefix, omitting the factor two, and
  replacing the signed packet by an unsigned sum.

Normal and optimized Python produced byte-identical canonical reports with
**541,730** exact checks and SHA-256

`06312601c609d62ce3146ac32ece48f2bc4b5d8f7da49948bd093e9e1b2ac216`.

These checks are not Lean parsing, elaboration, proof-term acceptance, a
universal quadratic correlation estimate, a transitive axiom/native audit,
repository tests, or independent mathematical review.
