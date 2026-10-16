# Positive coherence excess and dyadic collision blocks

## Status and source boundary

This is a written mathematical reduction with exact finite rational checks and a
large finite diagnostic profile.  It is not a Lean admission, an asymptotic
Möbius estimate, a new zero-free region, or a proof of the Riemann hypothesis.

The selected source is the repository's literal Möbius endpoint recurrence

\[
Q_{n+1}=Q_n+M_ng_n,
\qquad
M_n=\sum_{m\le n}\mu(m),
\qquad
g_n=n^{-1/2}-(n+1)^{-1/2},
\]

and the horizon-matched identity already recorded for

\[
H_N=\sum_{n=1}^N Q_n^2\log\frac{n+1}{n}.
\]

All Möbius signs and all pairwise interactions remain inside the complete
coherence scalar before any positive part is taken.

## 1. Complete coherence at one endpoint

Put

\[
x_n=M_ng_n,
\qquad
Q_n=\sum_{j<n}x_j,
\qquad
V_n=\sum_{j<n}x_j^2.
\]

Define the complete signed coherence

\[
\boxed{C_n=Q_n^2-V_n=2\sum_{1\le j<k<n}x_jx_k.}
\tag{1}
\]

The right side is the full off-diagonal interaction.  It is not the sum of the
positive parts of the individual pair products.

Define

\[
C_n^+=\max(C_n,0),
\qquad
C_n^-=\max(-C_n,0).
\]

Because `Q_n^2` and `V_n` are nonnegative,

\[
\boxed{
Q_n^2=C_n^+ + \min(Q_n^2,V_n).
}
\tag{2}
\]

Also

\[
\boxed{C_n^-=C_n^+-C_n\le V_n.}
\tag{3}
\]

Thus the negative part of the *already aggregated complete coherence* is paid
by the diagonal square variation.  This does not replace the original signed
source by a positive surrogate.

## 2. Exact positive-excess decomposition of endpoint energy

Let

\[
\ell_n=\log\frac{n+1}{n}.
\]

Define

\[
P_N=\sum_{n=1}^N \ell_n C_n^+,
\tag{4}
\]

\[
R_N=\sum_{n=1}^N \ell_n\min(Q_n^2,V_n),
\tag{5}
\]

and

\[
K_N=\sum_{n=1}^N \ell_nV_n.
\tag{6}
\]

Summing (2) gives the exact identity

\[
\boxed{H_N=P_N+R_N.}
\tag{7}
\]

Moreover,

\[
\boxed{0\le R_N\le K_N.}
\tag{8}
\]

The horizon signed flux is

\[
J_N=\sum_{n=1}^N\ell_nC_n.
\]

If

\[
N_N^-=\sum_{n=1}^N\ell_nC_n^-,
\]

then

\[
\boxed{P_N=J_N+N_N^-,\qquad 0\le N_N^-\le K_N.}
\tag{9}
\]

Consequently

\[
\boxed{J_N\le P_N\le H_N\le P_N+K_N.}
\tag{10}
\]

The existing elementary estimate for the source increments gives

\[
\boxed{K_N\le\frac12\log^2(N+1).}
\tag{11}
\]

Therefore `P_N`, `J_N`, and `H_N` have the same subpower growth class, and the
same polylogarithmic growth class up to an inessential change of exponent.

## 3. A nonnegative RH-equivalent frontier

Define `PositiveCoherenceExcessSubpower` by

\[
\boxed{
\forall\varepsilon>0\ \exists C_\varepsilon\ge0\ \forall N\ge1:
\quad P_N\le C_\varepsilon(N+1)^\varepsilon.
}
\tag{12}
\]

Equation (10), equation (11), and the existing source bridge from `H_N` to the
literal pickup energy give the written equivalence

\[
\boxed{
\mathsf{PositiveCoherenceExcessSubpower}
\iff
\mathsf{HorizonTriadicFluxSubpower}
\iff
\mathsf{PickupEnergySubexp}.
}
\tag{13}
\]

The repository already has a checked consumer

\[
\mathsf{PickupEnergySubexp}\Longrightarrow
\_root_.\mathsf{RiemannHypothesis}.
\]

After native admission of the bridge, (12) is therefore a sufficient RH
criterion.  No witness of (12) is supplied.

The corresponding P04-scale condition is

\[
\boxed{
\exists C,r\ge0\ \forall N\ge1:
\quad P_N\le C(1+\log(N+1))^r.
}
\tag{14}
\]

It is equivalent, at the level of existence of some exponent, to the existing
`PickupCrossPoly` frontier.

## 4. Dyadic colliding-block formulation

The sequence `P_N` is nondecreasing.  Define the dyadic block masses

\[
\boxed{
B_j=
\sum_{2^j\le n<2^{j+1}}
\ell_n C_n^+.
}
\tag{15}
\]

Each `B_j` is nonnegative and contains every signed interaction inside the
complete scalar `C_n` before the positive part is taken.

For every integer `J>=1`,

\[
P_{2^J-1}=\sum_{j=0}^{J-1}B_j.
\tag{16}
\]

Hence the subpower condition (12) is equivalent to

\[
\boxed{
\forall\varepsilon>0\ \exists A_\varepsilon\ge0\ \forall j\ge0:
\quad B_j\le A_\varepsilon 2^{\varepsilon j}.
}
\tag{17}
\]

Indeed, (12) immediately bounds each block.  Conversely, summing the geometric
series in (17) bounds `P_{2^J-1}`, and monotonicity fills the gaps between
successive powers of two.

Likewise, the existence of a polylogarithmic bound (14) is equivalent to the
existence of constants `A,r` with

\[
\boxed{B_j\le A(1+j)^r.}
\tag{18}
\]

Summing (18) changes the polynomial degree by at most one.  Thus the original
P04 problem may be posed as a positive polynomial bound on dyadic colliding
blocks, without asking for cancellation between distinct dyadic scales.

## 5. What has and has not become positive

The reduction does **not** assert

\[
2x_jx_k\ge0
\]

for each pair.  It does not replace `x_jx_k` by `|x_jx_k|`.  It does not take
the positive part before summing the complete pair interaction.  The order is

\[
\text{all signed pairs}\longrightarrow C_n
\longrightarrow C_n^+.
\]

The paid error is exactly the square variation `V_n`, whose weighted total is
already bounded by (11).

An explicit hostile fixture is `x=(1,-2,1)`.  Its complete coherence is
negative, so its positive excess is zero, while summing the positive parts of
its individual pair interactions gives a positive number.  The latter is a
different object and is rejected.

## 6. Exact triadic interpretation

Each increment is

\[
x_n=M_ng_n.
\]

The cumulative coherence is therefore

\[
C_n=2\sum_{1\le j<k<n}M_jM_kg_jg_k.
\tag{19}
\]

Each product `M_j M_k` retains the full Möbius signs.  It can be expanded by the
finite `(+,+,-)` Fourier projector and, when selected, by the primitive-radial
Möbius projector.  The present reduction does not identify this source-derived
coherence with an orbit quartic, a local Taylor quartic, a Jensen quartic, or a
Frobenius quartic.

## 7. Diagnostic finite profile

The executable profile through `N=2,000,000` is finite evidence only.  It records
that the complete coherence is negative only at finitely many early indices in
that range and that the dyadic positive block masses are small in the sampled
range.  Neither observation implies eventual positivity, subpower growth, or a
polylogarithmic bound.

## 8. Smallest unresolved theorem

The most local remaining theorem is the nonnegative block statement

\[
\boxed{
\forall\varepsilon>0\ \exists A_\varepsilon\ge0\ \forall j\ge0:
\quad
\sum_{2^j\le n<2^{j+1}}
\log\frac{n+1}{n}
\max\left(
0,
Q_n^2-\sum_{m<n}(M_mg_m)^2
\right)
\le A_\varepsilon2^{\varepsilon j}.
}
\tag{20}
\]

This is named `DyadicPositiveCoherenceBlockSubpower`.

The stronger P04 target replaces the right side by `A(1+j)^r`.  Neither theorem
is proved here.
