# Mean finite two-point Möbius-prefix supplier for RH-E02

Owners: #397, #391, #388, #373, #369, #366, #357, #354, #350,
#347, #343, #335, and #334 / RH-E02. Canonical target: #15.

Stacked source: draft PR #393 at
`aed288f38334932cd4fc6a4d1370bdb0278fbf5a`, tree
`8a50baed0eb5440625bbd9d0aed6694399ad9ca4`.

**SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED /
ARITHMETIC_SUPPLIER_OPEN.**

This note records the averaged-shift supplier implemented in
`GRWTSK/NumberTheory/Moebius/DyadicMeanMertensTwoPointPrefix.lean`.
The exact signed packet from #388 remains the criterion. The uniform maximum
from #391 is only one sufficient way to pay it.

## 1. Exact inherited packet

For

\[
X=2^j,\qquad Y=2X,
\]

retain the exact positive-shift contribution

\[
S_{j,h}
=
2\sum_{1\le a<Y-h}
\mu(a)\mu(a+h)w_X(a+h),
\qquad 1\le h<Y,
\]

and the complete packet

\[
\mathcal S_j=\sum_{1\le h<Y}S_{j,h}.
\]

The kernel weight is

\[
w_X(b)
=
\frac1{\max(X,b)}-\frac1Y.
\]

The previous source proves that \(\mathcal S_j\) is exactly the triangular
kernel and therefore exactly the dyadic weighted Mertens-square criterion.
No absolute value occurs in that equivalence.

## 2. Shift-wise prefix envelopes

For each positive shift define the finite two-point prefix

\[
C_h(N)
=
\sum_{0\le a<N}
\mu(a+1)\mu(a+1+h).
\]

At a fixed dyadic scale, a shift-wise envelope \(U_h\) means

\[
U_h\ge0
\]

and

\[
|C_h(N)|\le U_h
\]

for every admissible length

\[
0\le N\le Y-h-1.
\]

Unlike the uniform condition from #391, the value \(U_h\) may vary with the
shift.

## 3. Normalized mean envelope

A mean envelope of size \(B\) requires

\[
B\ge0
\]

and a family \(U_h\) satisfying the preceding fixed-shift conditions together
with

\[
\boxed{
\sum_{1\le h<Y}U_h\le BY.
}
\tag{1}
\]

Thus \(B\) controls the normalized \(L^1\) mean

\[
\frac1Y\sum_{1\le h<Y}U_h.
\]

This is weaker than a common maximum: if one number \(U\) bounds every
two-point prefix, choose \(U_h=U\). Since there are \(Y-1\) shifts,

\[
\sum_{1\le h<Y}U_h=(Y-1)U\le YU.
\]

The converse is not claimed. A small number of shifts may have much larger
envelopes while (1) remains small.

## 4. Finite Abel payment shift by shift

For a fixed admissible shift put

\[
x_a=\mu(a+1)\mu(a+1+h),
\qquad
q_a=w_X(a+1+h),
\qquad
N=Y-h-1.
\]

Finite Abel summation, with the terminal term retained, gives

\[
\sum_{a<N}x_aq_a
=
\sum_{t<N}C_h(t+1)(q_t-q_{t+1})
+
C_h(N)q_N.
\tag{2}
\]

For the actual kernel weight,

\[
q_N=w_X(Y)=0,
\]

\[
0\le q_{t+1}\le q_t,
\]

and

\[
q_0\le\frac1Y.
\]

The terminal contribution in (2) therefore vanishes from the proved endpoint
identity, not by deletion. The remaining differences telescope, yielding

\[
\left|
\sum_{a<N}x_aq_a
\right|
\le
U_h q_0
\le
\frac{U_h}{Y}.
\]

Restoring the ordered-pair factor two gives

\[
\boxed{
|S_{j,h}|\le\frac{2U_h}{Y}.
}
\tag{3}
\]

## 5. Paying the complete packet by the mean

Summing (3) over every positive shift gives

\[
\begin{aligned}
|\mathcal S_j|
&\le
\sum_{1\le h<Y}|S_{j,h}|\\
&\le
\frac2Y\sum_{1\le h<Y}U_h\\
&\le
2B.
\end{aligned}
\]

Hence

\[
\boxed{
|\mathcal S_j|\le2B.
}
\tag{4}
\]

The exact packet may be smaller because of cancellation between shifts. The
mean-envelope argument deliberately discards that cancellation, but it does
not require every shift to obey one common maximum.

## 6. All-scale supplier

Define

\[
\mathsf{MeanTwoPointSubpoly}
\]

to mean that for every \(\delta>0\), there is \(A_\delta\ge0\) such that every
dyadic scale admits a mean envelope with

\[
B_j=A_\delta X^\delta.
\]

Equation (4) then gives

\[
|\mathcal S_j|
\le
2A_\delta X^\delta.
\]

Therefore the source patch proves

\[
\boxed{
\mathsf{MeanTwoPointSubpoly}
\Longrightarrow
\mathsf{ShiftPacketSubpoly}
\Longrightarrow
\mathrm{RH}.
}
\]

It also proves

\[
\mathsf{UniformTwoPointSubpoly}
\Longrightarrow
\mathsf{MeanTwoPointSubpoly}.
\]

No reverse implication is asserted.

## 7. Relation to future averaged suppliers

The normalized \(L^1\) condition is a natural first averaged-shift interface:

\[
\frac1Y\sum_{h<Y}
\max_{N\le Y-h-1}|C_h(N)|
\ll_\delta X^\delta.
\]

A future large-sieve or dispersion increment may instead supply a quadratic
average and use Cauchy--Schwarz to imply this \(L^1\) budget. That would be a
separate sufficient supplier, not an equivalence with the signed packet.

The present increment does not assume independence, randomness, or a limiting
Chowla law. It isolates the exact finite quantifiers required at every scale.

## 8. Hostile boundaries

The following changes are rejected:

- averaging over only finitely many fixed shifts;
- allowing a shift envelope to omit some admissible prefix lengths;
- replacing \(M_{b-1}\) by \(M_b\);
- removing the ordered-pair factor two;
- dropping the Abel terminal term before proving its weight is zero;
- replacing the exact signed packet by an unsigned source and calling it
  equivalent;
- using a lower bound where the criterion needs an upper bound;
- inferring the universal family from finite numerical scales.

## 9. Verification boundary

The accompanying exact-rational diagnostics check:

- all \(3^8=6{,}561\) coefficient streams over \(\{-1,0,1\}\);
- generic dyadic scales \(X=1,2,4\);
- independently generated Möbius coefficients through \(512\);
- actual dyadic scales through \(X=256\);
- the exact kernel/shift-packet identity;
- every fixed-shift prefix envelope;
- the fixed-shift estimate (3);
- the mean packet estimate (4);
- the implication from a uniform envelope to the mean envelope;
- hostile mutations using the current prefix, omitting the factor two, and
  replacing the signed packet by an unsigned sum.

Normal and optimized Python produced byte-identical reports with
**614,914** exact checks and SHA-256

`44784ecbafbda75aed9f7132696977bd50d77988d5e4fb6a3deb25e4a7059f83`.

These checks are not Lean parsing, elaboration, proof-term acceptance, a
universal correlation estimate, a transitive axiom/native audit, repository
tests, or independent mathematical review.
