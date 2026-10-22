# Finite Chowla-shift packet for RH-E02

Owners: #388, #373, #369, #366, #357, #354, #350, #347, #343,
#335, and #334 / RH-E02. Canonical target: #15.

Stacked source: draft PR #375 at
`87fed9abf63d100b863701fb1669d8bda6e11c90`, tree
`23fd7b0031050485f5005e4b58d11f66f1c7e063`.

**SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED /
ARITHMETIC_SUPPLIER_OPEN.**

This note records the exact reduction implemented in
`GRWTSK/NumberTheory/Moebius/DyadicChowlaShiftPacket.lean`. It reindexes
the finite triangular kernel from #373 by the positive difference between the
two Möbius indices. No correlation estimate is proved.

## 1. Unchanged arithmetic source

Let

\[
M_n=\sum_{1\le a\le n}\mu(a),\qquad M_0=0.
\]

At dyadic scale

\[
X=2^j,\qquad Y=2X,
\]

the kernel already isolated in #373 is

\[
K_j
 =2\sum_{1\le b<Y}\mu(b)M_{b-1}\,w_X(b),
\]

where

\[
w_X(b)
 =\frac1{\max(X,b)}-\frac1Y
 =
 \begin{cases}
  1/Y,&1\le b<X,\\[2mm]
  1/b-1/Y,&X\le b<Y.
 \end{cases}
\]

The equality of the piecewise and max forms uses \(1/X=2/Y\). The source patch
formalizes this equality and identifies this unified atom sum with the existing
boundary/local kernel. The previous-prefix index \(M_{b-1}\) and the signed
weight remain unchanged.

## 2. Strict pairs

Expanding the previous prefix before estimating gives

\[
K_j
 =2\sum_{1\le b<Y}
   \sum_{1\le a<b}
   \mu(a)\mu(b)w_X(b).
\tag{1}
\]

This is an oriented half of the complete ordered-pair source. The factor two
restores the opposite orientation. Equation (1) is exact and finite; it is not
a positivity statement.

The patch names the right side
`weightedMertensDyadicStrictPairPacket`.

## 3. Positive lags

For every strict pair \(a<b\), put

\[
h=b-a.
\]

Then \(h>0\), \(a=b-h\), and the map

\[
a\longleftrightarrow h=b-a
\]

is a bijection of the finite interval \(\{1,\ldots,b-1\}\). Therefore

\[
K_j
 =\sum_{1\le h<Y} S_{j,h},
\tag{2}
\]

where the fixed-shift contribution is

\[
S_{j,h}
 =
 2\sum_{\substack{1\le b<Y\\h<b}}
 \mu(b-h)\mu(b)w_X(b).
\tag{3}
\]

Equivalently, after writing \(b=a+h\),

\[
S_{j,h}
 =
 2\sum_{1\le a<Y-h}
 \mu(a)\mu(a+h)w_X(a+h).
\tag{4}
\]

The Lean source uses (3), because its common endpoint range makes the finite
sum interchange explicit. Formula (4) is the usual two-point Chowla
presentation.

The complete packet is

\[
\mathcal S_j=\sum_{1\le h<Y}S_{j,h}.
\]

The source patch proves

\[
\boxed{K_j=\mathcal S_j.}
\tag{5}
\]

No absolute value is inserted. Cancellation within a fixed shift and
cancellation between different shifts both remain available.

## 4. Exact criterion

Define

\[
\mathsf{ShiftPacketSubpoly}:
\quad
\forall\delta>0\ \exists C_\delta\ge0\ \forall j,
\qquad
\mathcal S_j\le C_\delta X^\delta.
\tag{6}
\]

Because of (5), the patch proves the exact source-level chain

\[
\begin{aligned}
\mathsf{ShiftPacketSubpoly}
&\iff \mathsf{TriangularKernelSubpoly}\\
&\iff \mathsf{TriangularCorrelationSubpoly}\\
&\iff \mathsf{OrderedPairSubpoly}\\
&\iff \mathsf{DyadicBlockSubpoly}\\
&\iff \mathsf{CumulativeMertensSquareSubpoly}\\
&\iff \mathsf{AllPositiveWeightedMertensSquare}.
\end{aligned}
\tag{7}
\]

The inherited conditional consumer then gives

\[
\mathsf{ShiftPacketSubpoly}\Longrightarrow\mathrm{RH}.
\tag{8}
\]

No shift-packet witness is constructed, and no converse from RH is claimed.

## 5. A precise strong Chowla-facing supplier

The following is written mathematics, not a theorem in this patch.

For a fixed shift \(h\), define the partial two-point correlation

\[
C_h(t)=\sum_{1\le a\le t}\mu(a)\mu(a+h).
\]

Put \(N=Y-h-1\) and \(q_a=w_X(a+h)\), extending the weight by \(w_X(Y)=0\).
Finite Abel summation gives

\[
\sum_{a=1}^{N}\mu(a)\mu(a+h)q_a
 =
 \sum_{t=1}^{N} C_h(t)(q_t-q_{t+1}).
\tag{9}
\]

The kernel weight is nonnegative and nonincreasing. Moreover,

\[
0\le q_1\le\frac1Y,
\qquad
\sum_{t=1}^{N}(q_t-q_{t+1})=q_1.
\]

Consequently, if

\[
U_X
 =
 \max\left(\{0\}\cup
 \left\{|C_h(t)|:1\le h<Y,\ 1\le t<Y-h\right\}\right),
\]

where including zero gives \(U_X=0\) for the empty index set at \(X=1\),
then every shift obeys

\[
|S_{j,h}|\le \frac{2U_X}{Y},
\]

and the full packet obeys the finite estimate

\[
\boxed{
|\mathcal S_j|
 \le \frac{2(Y-1)}Y\,U_X
 \le 2U_X.
}
\tag{10}
\]

The final inequality is strict when \(U_X>0\).

Thus the strong uniform supplier

\[
\forall\delta>0\ \exists A_\delta\ge0\ \forall j,\
U_{2^j}\le A_\delta\,2^{\delta j}
\tag{11}
\]

would imply the existing RH-E02 endpoint. Condition (11) is intentionally
stronger than the signed packet criterion: it takes an absolute maximum over
all shifts and all partial lengths. It is recorded as a clean Chowla-facing
sufficient condition, not as an equivalence.

This identifies the next genuinely arithmetic interface:

\[
\boxed{
\text{uniform partial two-point Möbius cancellation on }
1\le h,t<2^{j+1}.
}
\]

A future increment can formalize (9)--(11), or replace the uniform maximum by
a weaker large-sieve or averaged-shift norm that still pays the signed packet.

## 6. What is not allowed

The exact packet cannot be replaced by

\[
\sum_{h,a}|\mu(a)\mu(a+h)|w_X(a+h),
\]

which is an unsigned quantity of order \(X\). Controlling finitely many shifts
does not control the packet. A result for each fixed \(h\) with constants
depending arbitrarily on \(h\) is not uniform at the growing dyadic scale.
Likewise, estimates for the boundary channel or the local channel alone do not
control their signed sum unless the omitted channel is separately paid.

The following mutations change the source and are rejected:

- \(M_b\) in place of \(M_{b-1}\);
- omission of the factor two;
- omission of either orientation of the original ordered pair;
- absolute values around the pair terms;
- a fixed finite shift range;
- closed or overlapping dyadic endpoint ownership.

## 7. Verification boundary

The accompanying exact-rational diagnostic checks:

- all \(3^9=19{,}683\) coefficient streams over \(\{-1,0,1\}\);
- dyadic scales \(X=1,2,4\);
- equality of the triangular kernel, strict-pair packet, fixed-shift fibres,
  and complete shift packet;
- the piecewise/max weight identity;
- actual Möbius coefficients through 512 and dyadic scales through \(2^7\);
- hostile mutations using \(M_b\), omitting the factor two, and replacing the
  signed packet by its unsigned absolute version.

The diagnostic completed **131,231** exact checks. Its canonical JSON report
has SHA-256

`c975d8d793993acf583f51240cc2ab4172b8e662c589dd47d9c87ed315e18534`.

These finite checks are not Lean parsing, elaboration, proof-term acceptance,
an infinite correlation estimate, a transitive axiom/native audit, repository
tests, or independent mathematical review.
