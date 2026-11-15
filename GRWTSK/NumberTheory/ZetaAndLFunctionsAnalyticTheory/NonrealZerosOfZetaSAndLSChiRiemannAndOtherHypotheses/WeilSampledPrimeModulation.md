# Positive stage averages of the signed local prime sum

grwtsk contributors · 2026-11-15

Written analytical source for [math#1804](https://github.com/grwtsk/math/issues/1804).
This continues [710139b48a5e](https://github.com/grwtsk/math/commit/710139b48a5e72c683657980bf20710e37e5ab20)
on the genuine arithmetic and the original nodes of
[3e6223de8178](https://github.com/grwtsk/math/commit/3e6223de8178c5fd3218ff25ce3878713e8a9498).

## 1. Native arithmetic and a positive stage average

Fix a primitive character $\chi$ of actual conductor $q$ and parity $a$.
Take conductor-one zeta with $a=0$ and write $\iota=\mathbf1_{q=1}$.
Use the original $p=b*\mathbf1_{[-h/2,h/2]}^{*2}$, with $h=1/8$,
$C_p=p*p$, and angular transform $\Pi$ of $p$. At each integer radius
$T$ and original Gauss node $r\in\mathcal S_T$ the genuine local sum is
$$
A_\chi(2r)=
 \sum_{n\ge2}\frac{\Lambda(n)\Re\chi(n)}{\sqrt n}C_p(2r-\log n)
 -\iota e^r\Pi(i/2)^2 .
\tag{1}
$$
The support restricts the sum to its original logarithmic interval
of length less than one. Group the exact cosine series of
[WeilSampledLocalPrimeCriterion.md](WeilSampledLocalPrimeCriterion.md),
§2, as
$$
A_\chi(2r)=\sum_\lambda c_\lambda e^{\lambda r}-\mathcal E_\chi(2r),
\quad \lambda=\pm2iz,\quad z=(\rho-1/2)/i,\quad
\mathcal E_\chi(U)=\int_0^\infty K_a(s)C_p(U-s)\,ds-\iota e^{-U/2}\Pi(i/2)^2 .
\tag{2}
$$
Each cosine contributes $-w_z\Pi(z)^2/2$ to each exponential, where
$w_z$ is the original symmetrized multiplicity. Contributions to an
identical exponent add because $\Pi$ is even. Each retained real
exponent has negative coefficient, since $\Pi(it)>0$ for real $t$.
Every off-line orbit contributes a nonzero coefficient. The real parts
lie in $[-\sigma,\sigma]$, with $\sigma=2\sup_\rho|\Re\rho-1/2|\le1$,
and $\sum_\lambda |c_\lambda|$ is finite. Thus $|A_\chi(2r)|\ll_\chi e^r$.

The two pole products of the even $p$ sum to $+2\Pi(i/2)^2$.
Those of the odd pair $p(\cdot-r)-p(\cdot+r)$ sum to
$-8\sinh^2(r/2)\Pi(i/2)^2$. Half the odd value minus the even
value gives the center $e^r\Pi(i/2)^2$ in (1) and the second
subtraction $e^{-r}\Pi(i/2)^2$ in (2). In zeta this second term
cancels the leading gamma tail. The remainder uses
$e^{-5s/2}/(1-e^{-2s})$, so $\mathcal E_\zeta(2r)=O(e^{-5r})$.
For the other cases $\mathcal E_\chi(2r)=O(e^{-r})$.

Put $\alpha=19/20$, $\delta=6/125$ and $b_*=24$. Define
$m_T=\lceil(\alpha-\delta)T\rceil$, $n_T=\lfloor(\alpha+\delta)T\rfloor$,
$u_T=(m_T+n_T)/2$ and $L_T=(n_T-m_T)/2$. For large $T$ the whole
blocks in $[m_T,n_T]$ lie in the original node range. Write
$\mathcal J_T\subset\mathcal S_T$ for their Gauss nodes, $\omega_r$
for their original weights of mass one per block, and
$H_*=\min_{m_T\le n<n_T}H_n$ for the minimum original height cutoff.
On this interval use the positive Kaiser–Bessel density
$$
W_T(r)=\frac{b_*}{2\sinh(b_*L_T)}
 I_0\big(b_*\sqrt{L_T^2-(r-u_T)^2}\big).
$$
Its integral is one. Write $Z_T=\sum_r\omega_r W_T(r)$ and
$\theta_r=\omega_r W_T(r)/Z_T$ for $r\in\mathcal J_T$. Define
$$
G_{\chi,T}(\nu)=\sum_{r\in\mathcal J_T}\theta_r A_\chi(2r)e^{-i\nu r},
\qquad \varphi_T(\nu)=\sum_{r\in\mathcal J_T}\theta_r e^{-i\nu r}.
\tag{3}
$$
The weights $\theta_r$ are positive and sum to one. The arithmetic
weight at $\log n$ in (3) is $\sum_r\theta_r e^{-i\nu r}C_p(2r-\log n)$,
with the original zeta center $\Pi(i/2)^2\sum_r\theta_r e^{(1-i\nu)r}$.

## 2. Exact transform and a moving ordinate band

The bilateral transform of $W_T$ on the interval is
$$
\mathcal W_T(w)=e^{u_Tw}\frac{b_*L_T}{\sinh(b_*L_T)}
                \frac{\sinh(L_T\sqrt{b_*^2+w^2})}{L_T\sqrt{b_*^2+w^2}} .
\tag{4}
$$
The quotient is even in the square root with removable value one.
Indeed, for $X$ uniform on the unit sphere in $\mathbb R^3$,
condition $\exp(b_*L_T X_1+L_TwX_3)$ on $X_3$ to obtain the
$I_0$ integral with $X_3$ uniform on $[-1,1]$. For real $w$ rotate
the coefficient vector to the polar axis to get $\sinh v/v$,
where $v=L_T\sqrt{b_*^2+w^2}$. Both sides are entire in $w$.
At $w=0$ this gives the normalization.

For $|\nu|\le4H_*$ the discrete and continuous means of the series
in (2) differ by $O_\chi(e^{-T/100})$. On each block $[n,n+1]$ discard
$|\Re z|>H_n$. The original coefficient tail is $O_\chi(e^{-5n})$,
as in the sampled local criterion, and real amplification is at most
$e^T$. The real weight is bounded. For a retained term
$|\lambda|\le2H_n+1$. On the disk $r=n+s$, $|s|=2$, the modulus of
the modulated exponential is at most $\exp(T+12H_n+2)$, and
$$
\big|L_T^2-(n+s-u_T)^2\big|\le (L_T+2)^2 .
$$
Continue $W_T$ there using the $I_0$ series in the square of its
argument and $|I_0(z)|\le e^{|z|}$. The normalization
$O(e^{-b_*L_T})$ makes this continuation bounded on the disk.
Cauchy's estimate gives a Taylor tail past degree $m_n$ bounded
by a constant times $\exp(T+12H_n)2^{-m_n}$ on $[0,1]$. The rule
integrates the polynomial exactly and has positive weights.
Since $m_n\ge8eH_n$, $8e\log2>14$, and $H_n\asymp T\log^2(T+2)$
on these blocks, the sum of the quadrature errors is exponentially
small. Applied to $W_T$ alone, the same argument gives
$Z_T=1+O(e^{-2T})$, so normalization costs at most $O_\chi(e^{-T})$.
The remainder in (2) also decays exponentially on the nodes.

For the continuous spectral cutoff, put $x=\Re\lambda$ and
$d=\Im\lambda-\nu$. For $|x|\le1$, $|d|\ge25$, and
$D^2=b_*^2+(x+id)^2$, write $D=u+iv$. Then
$|v|^2\ge d^2-b_*^2-x^2$ and $uv=xd$, so
$$
|u|\le\frac{|d|}{\sqrt{d^2-577}}\le\frac{25}{\sqrt{48}}<\frac{11}{3}.
$$
The identity $\sinh z/z=\int_0^1\cosh(tz)\,dt$ bounds its modulus
by $e^{|\Re z|}$. Since $\alpha+\delta(11/3-b_*)=-13/500$, (4)
bounds each discarded transform by $O(T e^{-13T/500})$, including
the bounded rounding of the endpoints. Absolute summability gives
$$
\boxed{\quad
G_{\chi,T}(\nu)=
  \sum_{|\Im\lambda-\nu|<25}c_\lambda\mathcal W_T(\lambda-i\nu)
       +O_\chi(e^{-T/100}),\qquad |\nu|\le4H_* .
\quad}
\tag{5}
$$
The band uses only actual strip ordinates and their multiplicities.
The fixed-character local zero count gives
$O_\chi(\log(2+|\nu|))$ terms. The weights and the modulation range
are common to all characters. The error constants, local count
and asymptotic conclusions are for each fixed character.

## 3. Genuine small and verified modulations for zeta

Take $H_0=3\cdot10^{12}$. The finite-height theorem of
Platt–Trudgian and conjugation place all nonreal strip zeros
through $H_0$ on the line. The alternating eta series excludes
real strip zeros, and the verified first positive ordinate
lies in $(14,15)$. For $|\nu|\le2H_0-25$, every term selected by (5)
is on the line, so its transform factor has modulus at most one
by normalization and positivity. Uniformly in this fixed band,
at all sufficiently large radii,
$$
|G_{\zeta,T}(\nu)|\le
   \sum_{|\Im\lambda|\le2H_0}|c_\lambda|+O(e^{-T/100}).
\tag{6}
$$
For $|\nu|\le3$ the retained sum is empty, hence
$G_{\zeta,T}(\nu)=O(e^{-T/100})$, including the signed mean
$\nu=0$. At any fixed line resonance inside the verified band,
the term is exactly $c_\lambda$, and the other terms decay
exponentially. Indeed for $x=0$ the square-root real part is
$\sqrt{(b_*^2-d^2)_+}<b_*$ whenever $d\ne0$. This also gives
exponential decay uniformly at any fixed positive distance
from the finite set of verified frequencies. These are actual
bounds on positive-weighted stage averages with both poles
accounted for by (1) and (2). The restriction is on modulation.

## 4. A falsifiable next arithmetic estimate

Define one genuine weighted negative part per stage by
$$
L^-_{\chi,T}=\sum_{r\in\mathcal J_T}\theta_r(-A_\chi(2r))_+ .
$$
For every $\nu$ the triangle inequality applied to the positive and
negative parts gives
$$
2 L^-_{\chi,T}\ \ge\ (|G_{\chi,T}(\nu)|-G_{\chi,T}(0))_+ .
\tag{7}
$$
A lower allowance $A_\chi(2r)\ge-d$ on all original nodes also implies
$d\ge (|G_{\chi,T}(\nu)|-G_{\chi,T}(0))_+/(1+|\varphi_T(\nu)|)$.
This follows by applying the Fourier coefficient bound for a positive
measure to the weights $\theta_r(A_\chi(2r)+d)$.
In zeta, take the first positive resonance $\nu=2\gamma_1$ in (7).
Section 3 gives $G_{\zeta,T}(0)\to0$ and
$G_{\zeta,T}(2\gamma_1)\to c_{2i\gamma_1}$. The original multiplier
bound $\Pi(\gamma_1)>1/500$ in the sampled local criterion, §4,
gives $\liminf_T L^-_{\zeta,T}\ge |c_{2i\gamma_1}|/2>1/500000$.

Put $P(x)=\alpha x+\delta(\sqrt{b_*^2+x^2}-b_*)$. For every fixed $\chi$,
both $L^-_{\chi,T}$ and the maximum of the right side of (7) divided
by two over $|\nu|\le4H_*$ have exact logarithmic exponential rate
$P(\sigma)$, using $\log(1+\cdot)/T$. For the upper bound on the
negative part, (2) gives $|A_\chi(2r)|\ll_\chi e^{\sigma r}$.
The argument for quadrature with the single exponential $e^{\sigma r}$
gives $\sum_r\theta_r e^{\sigma r}=\mathcal W_T(\sigma)+O(e^{-T/100})$.
By (4) its rate is $P(\sigma)$. Equation (7) gives the other upper
bound. When $\sigma=0$ this proves boundedness and rate zero.

For the lower rate when $\sigma>0$, with $x,d$ as in §2, the
nonnegative real part of the root is at most $\sqrt{b_*^2+x^2}$
and is strictly smaller for $d\ne0$. This follows by squaring
$\left|b_*^2+x^2-d^2+2ixd\right|\le b_*^2+x^2+d^2$
and using the formula for the real part of the square root.
Thus every rate is at most $P(x)$, which is strictly increasing in
$x$ since $\alpha>\delta$. At $\nu=0$, the finitely many real
exponents contribute nonpositive real terms by (2) and the
positivity of $\mathcal W_T$ on real arguments. The nonreal terms
in the band $|\Im\lambda|<25$ have a fixed gap from zero frequency
by local finiteness, so their rates are strictly below $P(\sigma)$.
The tail in (5) is exponentially small. This gives an upper bound
$G_{\chi,T}(0)\ll_\chi T e^{(P(\sigma)-\epsilon_\chi)T}$ in the
one-sided sense for some $0<\epsilon_\chi<P(\sigma)$.

Choose a positive-real-part exponent $\lambda_0=x_0+iy_0$ with
$P(x_0)$ arbitrarily close to $P(\sigma)$. At $\nu=y_0$ its rate
is $P(x_0)$. Near $y_0$, all positive-rate competitors have $x>0$
and belong to the finite set $|y-y_0|\le26$. The rate functions
$\alpha x+\delta(\Re\sqrt{b_*^2+(x+i(y-\nu))^2}-b_*)$ are real
analytic in $\nu$ for $x>0$. For different $x$ their limits
$(\alpha+\delta)x-\delta b_*$ as $|\nu|\to\infty$ differ,
since $uv=xd$ and $|v|/|d|\to1$.
For equal $x$ and distinct $y$ they have distinct unique maxima
at their ordinates. Thus a fixed rational $\nu$ near $y_0$ can
avoid all ties while the largest rate stays arbitrarily close to
$P(\sigma)$. The winner has a nonzero coefficient and a square
root with positive real part. In (4) its leading prefactor is
$b_*/D$ times the complex exponential, up to a relative $o(1)$.
Rounding the endpoints changes the modulus by bounded positive
factors. The strictly smaller rates and the error in (5) cannot
cancel this term. Choosing the winning rate above
$P(\sigma)-\epsilon_\chi$ gives the corresponding exponential
lower bound in (7) at every large stage. Letting it approach
$P(\sigma)$ proves the rate without assuming attainment of the
zero displacement supremum.

The explicit next estimate is $L^-_{\chi,T}\le\exp(o(T))$ along
unbounded integer stages. One can instead seek
$(|G_{\chi,T}(\nu)|-G_{\chi,T}(0))_+\le\exp(o(T))$ for each fixed
rational $\nu$ on unbounded stages allowed to depend on $\chi$
and $\nu$. A single winning rational in the proof would refute
the latter at every sufficiently large stage. Either estimate
forces the fixed-character line statement and thereby returns
the lower bound on all original nodes by the sampled criterion.
The bounded line series gives the converse. Equation (6) proves
the rational-modulation estimate for zeta in the verified band.
The genuine cancellation required at larger modulations, or
directly in the weighted negative part, remains unproved.

## Source and evidence

- [WeilTentSignedRieszCriterion.md](WeilTentSignedRieszCriterion.md),
  blob 7bfc26a2293000bde8be4de47ac57c464b147796, supplies the original
  nodes, cutoffs and shrinking gamma cap. [WeilSampledLocalPrimeCriterion.md](WeilSampledLocalPrimeCriterion.md),
  blob 6798953ba567445b7d791136fc16be378301cc10, supplies (1)–(2).
  [WeilGammaPhysicalReturn.lean](../WeilGammaPhysicalReturn.lean),
  blob a6eb4ce4ef5e7023c3a09e3ba66e3a420df9f723, supplies the actual
  primitive and zeta arithmetic returns. The consuming targets
  are DirichletStageChain.PrimitiveStageLower and the separate
  OddLiteralCofinal.StageLower. The local count is as in
  [WeilSharpLowGammaDetection.md](WeilSharpLowGammaDetection.md).
- J. F. Kaiser and R. W. Schafer, *On the use of the I₀-sinh window
  for spectrum analysis*, IEEE TASSP 28(1), 105–107 (1980).
  Formula (4) is derived above. [Primary reference](https://doi.org/10.1109/TASSP.1980.1163349)
- D. J. Platt and T. S. Trudgian, *The Riemann hypothesis is true
  up to $3\cdot10^{12}$*, Theorem 1, arXiv:2004.09765v1.
  [Finite-height theorem](https://arxiv.org/abs/2004.09765v1) ·
  [FLINT first-ordinate documentation](https://flintlib.org/doc/acb_dirichlet/zeta-zeros.html)

Written analytical argument with additional agent derivations of
the transform, bounded-band error and fixed-modulation detection.
An exact rational check covers the window endpoints, exponent margins
and conversion of the first-ordinate multiplier to the deficit bound.
Lean formalization, elaboration, compilation, fresh kernel replay,
transitive axiom audit, local numerical zero certification and
independent human review are **NOT_RUN**. Originality is unassessed.
