# Unconditional endpoint square variation and signed dyadic coherence

## Status and source boundary

This package combines an exact finite computation with one published explicit
Mertens theorem.  It proves a written unconditional bound for the diagonal
square variation attached to the repository's literal endpoint recurrence and
uses that bound to remove the nonlinear positive-part operation from the
remaining dyadic growth frontier, up to a fixed additive constant.

The published theorem is not formalized in Lean here.  The Lean files are
inactive candidates.  No dyadic growth estimate, new zero-free region, or proof
of the Riemann hypothesis is claimed.

## 1. Source recurrence

Retain the literal source quantities

\[
M_n=\sum_{m\le n}\mu(m),\qquad
 g_n=\frac1{\sqrt n}-\frac1{\sqrt{n+1}},\qquad
 x_n=M_ng_n,
\]

and

\[
Q_n=\sum_{m<n}x_m.
\]

The complete endpoint coherence and its diagonal square variation are

\[
C_n=Q_n^2-V_n,
\qquad
V_n=\sum_{m<n}x_m^2.
\]

All Möbius signs are retained in `Q_n` and `C_n`.

## 2. Published Mertens input

Ramaré and Zuniga Alterman prove

\[
|M(X)|\le \frac{0.006688 X}{\log X}
\qquad(X\ge1\,798\,118).
\tag{1}
\]

Put

\[
N_0=1\,798\,118,
\qquad c=0.006688=\frac{209}{31250}.
\]

Rationalizing the adjacent square-root gap gives

\[
g_n=
\frac1{\sqrt n\sqrt{n+1}(\sqrt n+\sqrt{n+1})}
\le \frac1{\sqrt n\,(n+1)}.
\tag{2}
\]

For `n >= N_0`, equations (1)--(2) imply

\[
x_n^2
\le \frac{c^2}{n\log^2 n}.
\tag{3}
\]

Because `x -> 1/(x log^2 x)` is decreasing,

\[
\sum_{n\ge N_0}x_n^2
\le
\frac{c^2}{\log(N_0-1)}.
\tag{4}
\]

The elementary estimates `e < 11/4` and

\[
(11/4)^{14}<N_0-1
\]

show that `log(N_0-1)>14`.  Hence

\[
\sum_{n\ge N_0}x_n^2
<\frac{c^2}{14}<\frac1{300000}.
\tag{5}
\]

## 3. Exact finite-prefix certificate

Let

\[
r_n=\left\lfloor2^{20}\sqrt n\right\rfloor.
\]

Then `r_n/2^20 <= sqrt(n)`, and therefore

\[
g_n^2\le
\frac{2^{120}}
{r_n^2r_{n+1}^2(r_n+r_{n+1})^2}.
\tag{6}
\]

The producer computes every Möbius value and Mertens prefix for
`1 <= n < N_0`.  It rounds every positive term in (6) upward on a `2^120`
fixed-point lattice.  The resulting rational certificate proves

\[
\sum_{1\le n<N_0}x_n^2<\frac{55867}{500000}=0.111734.
\tag{7}
\]

Combining (5) and (7) gives

\[
\boxed{
V_\infty:=\sum_{n\ge1}(M_ng_n)^2<\frac{14}{125}=0.112.
}
\tag{8}
\]

The diagnostic direct decimal evaluation of the finite prefix is recorded but
is not used for acceptance.

## 4. Uniform negative-sector cap

For every `n`,

\[
C_n^-:=\max(-C_n,0)\le V_n\le V_\infty<\frac{14}{125}.
\tag{9}
\]

Let

\[
\ell_n=\log\frac{n+1}{n},
\qquad
I_j=\{n:2^j\le n<2^{j+1}\}.
\]

Define the signed and positive dyadic coherence blocks

\[
S_j=\sum_{n\in I_j}\ell_nC_n,
\qquad
B_j=\sum_{n\in I_j}\ell_nC_n^+.
\]

Since

\[
\sum_{n\in I_j}\ell_n=\log 2<\frac7{10},
\]

equation (9) gives the uniform comparison

\[
\boxed{
S_j\le B_j\le S_j+\frac{49}{625}.
}
\tag{10}
\]

The positive part is taken only after the complete signed pair interaction has
been aggregated.  Equation (10) does not replace `M_n` by `|M_n|` and does not
apply a positive part to individual pairs.

## 5. Exact signed collision formula

Let `A=2^j` and `B=2^(j+1)`.  Interchanging only finite sums gives

\[
\boxed{
S_j
=(\log2)C_A
+2\sum_{A\le k<B}
\log\frac{B}{k+1}\,Q_kx_k.
}
\tag{11}
\]

Equivalently,

\[
S_j=
2\sum_{1\le m<k<B}
x_mx_k\log\frac{B}{\max(A,k+1)}.
\tag{12}
\]

This is the complete signed colliding-block interaction.  The inherited
coherence, every old/new collision, and every within-block collision remain.

## 6. Sharpened diagonal completion

The horizon diagonal correction satisfies

\[
K_N=\sum_{n=1}^N\ell_nV_n
\le V_\infty\log(N+1)
<\frac{14}{125}\log(N+1).
\tag{13}
\]

This replaces the earlier elementary `O(log^2 N)` allowance by an explicit
unconditional `O(log N)` allowance.

## 7. Equivalent remaining frontier

Define `DyadicSignedCoherenceBlockSubpower` by

\[
\forall\varepsilon>0\ \exists A_\varepsilon\ge0\ \forall j\ge0:
\qquad
S_j\le A_\varepsilon2^{\varepsilon j}.
\tag{14}
\]

Equation (10) proves that (14) is equivalent to the preceding positive-block
criterion.  The same equivalence holds for existential polylogarithmic bounds
`A(1+j)^r`.

After the already written source bridges are admitted, either form feeds the
repository's existing `PickupEnergySubexp` or P04 consumer.  No witness of
(14) is obtained here.

The smallest unresolved theorem is therefore the one-sided upper bound (14) on
the complete signed dyadic collision block (11), with no cancellation required
between distinct dyadic scales.
