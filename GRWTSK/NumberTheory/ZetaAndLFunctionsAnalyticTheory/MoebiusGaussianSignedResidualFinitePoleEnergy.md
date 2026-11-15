# Finite critical-line pole bounds for the signed Möbius residual

Local attribution: grwtsk contributors.

A polynomial upper supplier for the exact signed Möbius residual must budget
the squared Laurent coefficients of every finite family of distinct positive
critical ordinates of the relevant multiplicity. The coefficient has no affine
overshoot loss.

## Necessary coefficient

Fix a real heat time $s>0$. For $u\ge0$, use the original real signed wave
$$
D_s(u)=\sum_{1\le n\le\lfloor e^u\rfloor}
\mu(n)(1-e^{-s(\log n)^2})P_n(u),
\qquad
P_n(u)=2(n^{-1/2}-e^{-u/2})\mathbf 1_{u\ge\log n}.
$$
Write $E_s(T)=\int_0^T D_s(u)^2\,du$ for $T\ge0$. By causality, the closed
inventory at horizon $T$ gives this same signed sum for every $u\in[0,T]$.
In particular, $E_s$ is nondecreasing. This is the energy in
`residualWave_eq_signed_sum` and `residualEnergy_eq_closedSource`.
[Exact signed residual source](https://github.com/grwtsk/math/blob/d9fb294994e911a20e9ea3b97bfe4407fb64d4a8/GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/MoebiusGaussianSignedResidualLaplace.lean#L65)

Let $m\ge1$ and $p=2m-1$. Take a finite set $J$ of distinct positive
ordinates $\gamma_j$ such that $\rho_j=\tfrac12+i\gamma_j$ is a zero of
$\zeta$ of analytic multiplicity $m$. Define
$$
c_j=\frac{m!}{(i\gamma_j)\rho_j\,\zeta^{(m)}(\rho_j)},
\qquad
Q_J=\frac{2}{p((m-1)!)^2}\sum_{j\in J}|c_j|^2.
$$
Fix one affine-frequent $G$ with witnesses $a\ge1$, $b\ge0$ and $T_0\ge0$.
For every $T\ge T_0$ some $S\in G$ satisfies $T\le S\le aT+b$.
Suppose a proposed real supplier $U$ satisfies both of the following
eventually as $S\to\infty$ in this same $G$.

- $E_s(S)\le U(S)$.
- For each $\varepsilon>0$, $U(S)\le (A+\varepsilon)S^p$ with a fixed finite $A\ge0$.

$$
\liminf_{T\to\infty}\frac{E_s(T)}{T^p}\ \ge\ Q_J,
\qquad
A\ \ge\ Q_J.
\tag{1}
$$
The finite set and its orders are hypotheses. Hardy's theorem, together
with conjugation symmetry, supplies a positive critical ordinate of some
order when existence is needed.
[Affine-frequent supplier interface](https://github.com/grwtsk/math/blob/fcc023e6861759ec9e61c84c9e461f2737de1be8/GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/MoebiusGaussianSignedResidualSupplier.lean#L69) ·
[Hardy's zero-existence theorem, 1914](https://fr.wikisource.org/wiki/Page:Comptes_rendus_hebdomadaires_des_s%C3%A9ances_de_l%E2%80%99Acad%C3%A9mie_des_sciences,_tome_158,_1914.djvu/1014)

## Proof

Take $\varepsilon=1$ in the supplier assumption. For all sufficiently large
$T$, an affine successor $S$ lies beyond both eventual thresholds, and
$$
E_s(T)\le E_s(S)\le (A+1)(aT+b)^p.
$$
Continuity on the remaining bounded interval yields a constant $C>0$ with
$E_s(T)\le C(1+T^p)$ for every $T\ge0$. Define
$$
B_s(\sigma)=\int_0^\infty e^{-\sigma u}D_s(u)^2\,du,
\qquad
L_s(z)=\int_0^\infty e^{-zu}D_s(u)\,du.
$$
The weighted estimate `residual_weightedSquare_le_factorial` gives
$B_s(\sigma)\le C(p!\,\sigma^{-p}+1)$ for $\sigma>0$. Cauchy–Schwarz
makes $e^{-\delta u}D_s(u)$ absolutely integrable for every $\delta>0$.
On compact subsets of $\Re z>0$, a smaller $\delta$ also absorbs the
factor $u$ from differentiation, so $L_s$ is holomorphic there.
[Weighted residual estimate](https://github.com/grwtsk/math/blob/d9fb294994e911a20e9ea3b97bfe4407fb64d4a8/GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/MoebiusGaussianSignedResidualPole.lean#L270)

For the pole limit, set $H_s(z)=h_s/z+R_s(z)$, where $h_s$ is the heated
wave's settled constant and $R_s$ is its transform after subtracting that
constant. The exact source proves $R_s$ holomorphic on $\Re z>-1/2$ and
$$
L_s(z)+H_s(z)=\frac{1}{z(z+\tfrac12)\zeta(z+\tfrac12)}
\qquad(\Re z>1/2).
$$
The pole-cleared continuation in `tendsto_scaled_of_pickup_pole` applies
because $L_s+H_s$ is holomorphic on $\Re z>0$ and $H_s$ is regular at
$i\gamma_j\ne0$. The local zero factor and
`poleCoefficient_eq_zetaPoleCoefficient` give
$$
\lim_{\sigma\downarrow0}\sigma^m L_s(\sigma+i\gamma_j)=c_j .
\tag{2}
$$
[Exact initial transform](https://github.com/grwtsk/math/blob/d9fb294994e911a20e9ea3b97bfe4407fb64d4a8/GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/MoebiusGaussianSignedResidualLaplace.lean#L340) ·
[Boundary pole limit](https://github.com/grwtsk/math/blob/d9fb294994e911a20e9ea3b97bfe4407fb64d4a8/GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/MoebiusGaussianSignedResidualPole.lean#L141)

In the complex space $\mathcal H=L^2((0,\infty),e^{-v}\,dv)$, take the
inner product linear in the first argument. Put
$$
F_T(v)=T^{1-m}D_s(Tv),\qquad
f_{j,T}(v)=F_T(v)e^{-i\gamma_jTv},\qquad
g_j(v)=c_j\frac{v^{m-1}}{(m-1)!}.
$$
For $T\ge1$,
$$
\|f_{j,T}\|_{\mathcal H}^2=T^{-p}B_s(1/T)\le C(p!+1).
$$
For every integer $k\ge0$, (2) and a change of variable give
$$
\left\langle f_{j,T},e^{-kv}\right\rangle_{\mathcal H}
=T^{-m}L_s((k+1)/T+i\gamma_j)
\ \longrightarrow\ \frac{c_j}{(k+1)^m}
=\left\langle g_j,e^{-kv}\right\rangle_{\mathcal H}.
$$
The last equality follows from the factorial moment
$\int_0^\infty v^{m-1}e^{-(k+1)v}\,dv=(m-1)!/(k+1)^m$.
The change $x=e^{-v}$ identifies the weighted space with $L^2((0,1),dx)$
and sends the functions $e^{-kv}$ to the monomials $x^k$. Their span is
dense by polynomial approximation of continuous functions. The uniform
norm bound extends the pairing limit to every $h\in\mathcal H$ by
approximating $h$ with this span and applying Cauchy–Schwarz to the error.
Thus $f_{j,T}$ converges weakly to $g_j$ in $\mathcal H$.

On $0<v<1$, use the real test
$$
K_T(v)=2\Re\sum_{j\in J}g_j(v)e^{i\gamma_jTv}.
$$
Taking $h_j=e^v g_j(v)\mathbf 1_{(0,1)}(v)$ in the weak limit and using the
realness of $F_T$ gives
$$
\int_0^1 F_T(v)K_T(v)\,dv
=2\Re\sum_j\langle f_{j,T},h_j\rangle_{\mathcal H}
\ \longrightarrow\ 2\sum_j\int_0^1 |g_j(v)|^2\,dv=Q_J.
$$
The frequencies in $K_T$ are the distinct numbers in
$\{\gamma_j,-\gamma_j:j\in J\}$. In the squared norm on $(0,1)$ the
equal-frequency terms sum to $Q_J$. Each other term is an integral of a
polynomial times $e^{iT\omega v}$ for a fixed $\omega\ne0$. Integration
by parts on $[0,1]$ gives a bound $O(1/T)$ for each such term.
Hence $\|K_T\|_{L^2(0,1)}^2\to Q_J$. Completing the square yields
$$
T^{-p}E_s(T)=\|F_T\|_{L^2(0,1)}^2
\ \ge\ 2\int_0^1 F_T(v)K_T(v)\,dv-\|K_T\|_{L^2(0,1)}^2.
$$
The liminf is at least $Q_J$. The supplier inequality on the cofinal
set $G$ gives $A+\varepsilon\ge Q_J$ for every $\varepsilon>0$, proving
(1). Affine overshoot enters the initial uniform bound only.

## Consequences and comparison

For the original energy itself,
$\limsup_{T\to\infty,\,T\in G} E_s(T)/T^p\ge Q_J$ on every such $G$.
If this limsup is finite, take it for $A$ and $E_s$ for $U$ in (1).
An infinite limsup already satisfies the inequality.

An eventual linear supplier with leading coefficient $A$ forces all
nonreal critical-line zeros to be simple by
`supplier_power_envelope_necessary`. Applying (1) with $m=1$ to each
finite subset then gives the necessary condition
$$
A\ \ge\
2\sum_{\substack{\gamma>0\\\zeta(1/2+i\gamma)=0}}
\frac{1}{\gamma^2|\tfrac12+i\gamma|^2|\zeta'(\tfrac12+i\gamma)|^2},
\tag{3}
$$
where the nonnegative sum is the supremum of its finite subsums. A
finite subsum exceeding $A/2$ falsifies that proposed coefficient.

For the linear supplier, if $\zeta(1/2)\ne0$ one can also include the
stationary frequency once. On the positive real ray the same product
continuation gives the real limit
$$
\lim_{\sigma\downarrow0}\sigma L_s(\sigma)
=\lim_{\sigma\downarrow0}
  \left(\frac{1}{(\sigma+\tfrac12)\zeta(\sigma+\tfrac12)}
    -h_s-\sigma R_s(\sigma)\right)
=\frac{2}{\zeta(1/2)}-h_s=:b_s .
$$
The transform $L_s(\sigma)$ is real for real $\sigma>0$ since $D_s$ is real.
At $m=1$ the moment argument for frequency zero gives the weak limit
$b_s$ for $F_T$ in $\mathcal H$. Adding $b_s$ to $K_T$ contributes $b_s^2$
to both the limiting pairing and squared norm. Its cross terms with the
nonzero frequencies vanish by the same integration by parts. Thus $b_s^2$
can be added to the right side of (3).

As a check of the constants, the real test signal
$2\Re\sum_j c_j u^{m-1}e^{i\gamma_j u}/(m-1)!$ has the prescribed poles
at the positive ordinates and their conjugates. Its normalized energy
tends to $Q_J$ by the same integration by parts. This checks the
normalization using only finite frequency data. Inoue's Corollary 3 at
$\kappa=3/2$ treats the same unheated primitive, obtained by substituting
$x=e^u$ into the source's velocity integral. Under the weak Mertens
hypothesis it gives the simple-zero coefficients appearing in (3).
Here the input is a bound on the genuine cumulative residual and the
argument only tests a finite family of pole limits.
[Inoue, arXiv:1705.00853v2, Corollary 3](https://arxiv.org/pdf/1705.00853v2#page=6)

The upper comparison with $E_s$ is the consumer premise for any proposed
supplier. The finite graph deviation and covariance formulas need a source
comparison before their bounds can supply it. The every-positive-rate
upper estimate remains open.

The written argument was checked independently at the weighted moment,
density, and two-frequency-sign steps. Lean formalization, parsing, compilation,
expected-type checking, fresh kernel replay, and transitive axiom audit for the
new conclusions are `NOT_RUN`.
The named Lean inputs retain the verification scope at their pinned revisions.
