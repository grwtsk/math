# Joint signed divisor pairs on the existing Weil stages

grwtsk contributors · 2026-11-15

Written analytical source for [math#1804](https://github.com/grwtsk/math/issues/1804).
This continues the actual cancellation at
[b9d637db20f4](https://github.com/grwtsk/math/commit/b9d637db20f48040477b327024f1064a70406cea).

## 1. The genuine squared sum

Fix a primitive character $\chi$ of its actual conductor $q$,
including conductor-one zeta. Use $V_\chi=\mathscr D_h A_\chi$,
$K_\chi$, $h=1/8$, and $R<1/2$ from
[WeilSampledMoebiusCofactorReturn.md](WeilSampledMoebiusCofactorReturn.md).
Fix a cutoff $Q(U)=C_\chi U(\log U)^2$ from its equation (9) for
an absolute omitted-row error $O_\chi(e^{-2U})$. Write
$$
H_a(v)=\Re[\chi(a)K_\chi(v)],\qquad
x_d(U)=\mathbf1_{e^U/Q(U)<d\le e^{U+R+h}}
       \frac{\mu(d)}{\sqrt d}\,H_{d\bmod q}(U-\log d).
$$
For $q=1$ use the single class and $H=K_\zeta$. Thus
$\sum_d x_d(U)$ is the retained genuine signed sum. The real
entry includes both phase channels of the original complex
character: $\Re z_d\Re z_e=\tfrac12\Re(z_d\overline{z_e}+z_dz_e)$
for $z_d=\chi(d)K_\chi(U-\log d)$. The filtered identity
retains the two original zeta pole contributions. The difference
kills the first center exactly and acts on the physical remainder
after the second pole has canceled the leading gamma tail.

On the original Gauss nodes and Kaiser probability weights
$\theta_r$ of
[WeilSampledPrimeModulation.md](WeilSampledPrimeModulation.md), put
$$
E_{\chi,T}=\sum_{r\in\mathcal J_T}\theta_r
                    \left(\sum_d x_d(2r)\right)^2.
$$
For integer $H\ge0$ there is the exact decomposition
$$
\begin{aligned}
E_{\chi,T}&=D_{\chi,T}+C_{\chi,T}^{\le H}+C_{\chi,T}^{>H},\\
D_{\chi,T}&=\sum_r\theta_r\sum_d x_d(2r)^2,\\
C_{\chi,T}^{\le H}&=2\sum_{1\le j\le H}\sum_r\theta_r
                              \sum_d x_d(2r)x_{d+j}(2r),\\
C_{\chi,T}^{>H}&=2\sum_r\theta_r\sum_{e-d>H}x_d(2r)x_e(2r).
\end{aligned}
\tag{1}
$$
In particular the prime–composite products occur in both
ordered orientations of the square. All these terms are from
the actual retained divisor inventory.

## 2. The squarefree diagonal and the small gaps

Define $\rho_q=q^{-1}\prod_{p\nmid q}(1-p^{-2})$.
For each reduced class $a\bmod q$,
$$
\sum_{\substack{d\le x\\d\equiv a\bmod q}}\mu(d)^2
 =\rho_q x+O_q(\sqrt x).
\tag{2}
$$
Indeed expand $\mu(d)^2=\sum_{b^2\mid d}\mu(b)$. Each $b$ coprime
to $q$ gives a count in one reduced class for $d/b^2$, with
main term $x/(qb^2)$ and error $O(1)$. The tail beyond $\sqrt x$
in the main-term series costs $O(\sqrt x)$.

The box-jet and residue-class Poisson bound of the cofactor
source also applies to $K_\chi'$ and $K_\chi''$. Place the fixed
extra derivatives on $k$ in that proof. Its bound
$C^{n+1}n!\log^{2n}(n+2)$ absorbs fixed shifts of the derivative
order by increasing $C$. The zeta continuum after each
differentiation is still affine times $e^{v/2}$ and the same
$\mathscr D_h$ kills it. Thus these derivatives have the same
left support and superexponential decay at the right.

Apply Stieltjes partial summation in (2) against
$x^{-1}H_a(U-\log x)^2$. The error is $O_\chi(e^{-U/2})$
by the integrability of
$e^{v/2}(|H_a(v)|^2+|H_a(v)H_a'(v)|)$.
The retained lower endpoint and the omitted main-term moment
there are smaller by the cofactor tail. This gives, uniformly
on the original stage,
$$
D_{\chi,T}=D_\chi+O_\chi(e^{-9T/10}),\qquad
D_\chi=\rho_q\sum_{a\bmod q}^{*}\int_\mathbb R H_a(v)^2\,dv .
\tag{3}
$$
In zeta $D_\zeta=\zeta(2)^{-1}\int K_\zeta^2>0$.
For any $H=H(T)$, Cauchy's inequality for each sequence shift
gives $|C_{\chi,T}^{\le H}|\le2H D_{\chi,T}$.
Thus gaps up to any subexponential function of the stage already
have a subexponential absolute allowance.

## 3. Fixed additive gaps tend to zero on these weights

For each fixed integer $j>0$,
$$
\sum_r\theta_r\sum_d x_d(2r)x_{d+j}(2r)\longrightarrow0 .
\tag{4}
$$
First remove the retained cutoff in both factors. At one $U$
the omitted sequence has absolute mass $O(e^{-2U})$ and
the full sequence has bounded $\ell^2$ norm by (2) and the
same diagonal calculation. Cauchy for the translated sequences
pays the change exponentially. For $d\ge e^{U/2}$, replacing
$(d(d+j))^{-1/2}$ by $d^{-1}$ and
$\log(d+j)$ by $\log d$ costs
$O_{\chi,j}(\sum_{d\ge e^{U/2}}d^{-2})$, using bounded kernel
derivatives. For $d<e^{U/2}$ the first kernel's right decay
pays the harmonic sum. Thus we may use the smooth function
$$
F_j(U)=\sum_{a\bmod q}\sum_{\substack{d\ge1\\ d\equiv a\bmod q}}
 \frac{\mu(d)\mu(d+j)}{d}\,
       H_a(U-\log d)H_{a+j}(U-\log d)
$$
with $o(1)$ error on the original nodes. The function and its
first two derivatives are bounded uniformly in large $U$.
In each unit bin of $U-\log d$ the $1/d$ mass is bounded, and
the bounds of both kernels and their derivatives are summable
over these bins.

Write $W_T$ for the continuous Kaiser probability density on
the union of the original whole blocks. Its continuation on
the block disks is bounded as in the sampled modulation source,
so its first two derivatives are bounded on the real blocks.
Approximate $W_T(r)F_j(2r)$ on each unit block by its degree-$m_n$
Bernstein polynomial. A twice differentiable function on a
unit interval has error at most $\|f''\|_\infty/(8m_n)$ by
Taylor expansion and the binomial variance. Positivity and
exactness of Gauss quadrature then give total error
$O_{\chi,j}(1/\log^2 T)$, since $m_n\asymp T\log^2 T$ on the
$O(T)$ blocks. The normalization is $1+O(e^{-2T})$.

For the continuous integral change variables $v=2r-\log d$.
It is half the integral, summed over classes, of
$H_a(v)H_{a+j}(v)$ against
$$
\sum_{d\equiv a\bmod q}\frac{\mu(d)\mu(d+j)}{d}
                         W_T\big((\log d+v)/2\big).
\tag{5}
$$
Use Tao's logarithmically averaged two-point Elliott theorem,
Corollary 1.5, for $\mu,\mu$ on the fixed forms $qn+a,qn+a+j$.
Their determinant is $qj\ne0$. The nonpretentious condition
uses prime values, which agree for Möbius and Liouville, so
the verification for Liouville there applies. The correlation
sum over a log interval of length $\ell$ is $o(\ell)$ uniformly
as $\ell$ and the lower endpoint in $\log d$ grow. A sequence
violating this would define a window-ratio function
contradicting the corollary. In changing $d=qn+a$, the weight
$1/d$ differs from $1/(qn)$ by $O_q(n^{-2})$ and the endpoint
log lengths change by $o(1)$. Both errors are uniform for the
stage intervals at fixed $v$.

The superlevel sets of $W_T((y+v)/2)$ are intervals by
unimodality. The weight has maximum $O(T^{-1/2})$, using
$I_0(A)\ll e^A/\sqrt{1+A}$ at its center. The latter bound
follows from the angle integral and the quadratic bound for
$1-\cos t$. Fix $\epsilon>0$ and a log length threshold
beyond which the signed correlation is at most $\epsilon$
times length. Layer integration over the superlevel sets
bounds (5) by $2\epsilon$ plus a constant times $T^{-1/2}$
times that fixed threshold. On the short intervals use
the harmonic sum bound by length plus an absolute constant.
The same harmonic bound gives an absolute bound for (5)
independent of $T,v$. Dominated convergence against the
integrable product of kernels proves (4). This uses fixed
$j$ and fixed $q$, and gives $C_{\chi,T}^{\le H}=o(1)$ for
fixed $H$.

## 4. A remaining signed pair estimate and its exact rate

There is one more unconditional pruning. Write $d=ga$, $e=gb$,
where $g=\gcd(d,e)$ and $(a,b)=1$. For a fixed pair $(a,b)$,
the absolute sum over $g$ is $O_\chi((ab)^{-1/2})$.
Indeed Cauchy gives this from the two bounds
$\sum_g g^{-1}|K_\chi(U-\log(ga))|^2=O_\chi(1)$ and its
$b$ counterpart, using unit log bins. Summing over
$\max(a,b)\le H$ costs $O_\chi(H)$, even after the stage
average. Define $C^*_{\chi,T}(H)$ as the ordered signed pairs
in (1) left after deleting the two regions
$|e-d|\le H$ and $\max(d/g,e/g)\le H$.
For integer $H(T)\ge1$ with $\log H(T)=o(T)$, both deletions
together have subexponential absolute cost. The support
also restricts all remaining pairs by
$|\log(d/e)|\le R+h+\log Q(2r)$ at their node $r$.

Let $\sigma=2v_\chi$, where $v_\chi$ is the actual zero
displacement of the fixed character, and put
$$
P(x)=19x/20+(6/125)(\sqrt{24^2+x^2}-24).
$$
The exact second-moment rate is
$$
\lim_{T\to\infty}\frac{\log(1+E_{\chi,T})}{T}=P(2\sigma).
\tag{6}
$$
The original series for $V_\chi(2r)$ has exponents $\lambda$
with $|\Re\lambda|\le\sigma$ and coefficients
$c_\lambda p_h(\lambda/2)$ from the cofactor source.
They are absolutely summable. The pointwise bound by
$O_\chi(e^{\sigma r})$ and the real moment of the Kaiser
transform at $2\sigma$ give the upper rate in (6), including
the cutoff error. This proves boundedness when $\sigma=0$.

For $\sigma>0$ tilt the same nodes by $e^{\sigma r}$ inside
the Fourier coefficient of the retained sum. In the continuous
transform the exponents become $\lambda+\sigma$, with real
part $x\in[0,2\sigma]\subset[0,2]$. The same quadrature proof
applies at each fixed modulation: the tail $O_\chi(e^{-5n})$
absorbs $e^{2T}$, the block disk bound changes by that same
factor, and $m_n\gg T\log^2 T$ still pays the Taylor tail.
For the weight-only normalization the disk estimate costs
$O(1)$ instead of $e^{2T}$, so its error is smaller than
$e^{-cT}$ for each fixed $c>0$. The physical remainder is bounded after the tilt since
$\sigma\le1$ and the nonprincipal physical remainder
before tilting is $O(e^{-r})$. The zeta remainder decays
faster. The error in the cofactor cutoff is exponentially
small after the tilt.

At a term of shifted exponent $x+iy$ the real transform rate
at modulation $\nu$ is
$$
19x/20+(6/125)\big(\Re\sqrt{24^2+(x+i(y-\nu))^2}-24\big),
$$
where the root has nonnegative real part. It is at most $P(x)$,
with equality only for $\nu=y$. If $|y-\nu|\ge50$, the
square-root real part is at most $100/\sqrt{1920}<3$,
by writing its real and imaginary parts and using $x\le2$.
Thus the far frequencies have a strict rate gap below $P(2\sigma)$.
Near the frequency of an exponent whose real part is arbitrarily
close to $2\sigma$, there are only finitely many possible winners.
The rate functions for $x>0$ are real analytic, have distinct
limits at infinity for distinct $x$, and for the same $x$ have
their unique maxima at their respective frequencies. A fixed
nearby rational $\nu$ can therefore make the largest rate unique
and arbitrarily close to $P(2\sigma)$. The nonzero coefficient
of that term and the exact hyperbolic-sine transform give
a tilted modulus at least $e^{(P(2\sigma)-\epsilon)T}$ eventually
for each $\epsilon>0$. Cauchy bounds its square by
$E_{\chi,T}\sum_r\theta_r e^{2\sigma r}$.
The latter moment has rate $P(2\sigma)$, giving the lower
bound in (6) as $\epsilon\downarrow0$.

The precise stronger arithmetic target is
$$
\log\big(1+(C^*_{\chi,T}(H(T)))_+\big)=o(T)
\tag{7}
$$
on unbounded integer stages for each fixed character.
Indeed the diagonal and paid regions together with (7) would
give subexponential $E_{\chi,T}$ and hence subexponential
weighted negative part by Cauchy. By (6) an actual off-line
zero would make the remaining signed pair sum eventually
positive with rate $P(4v_\chi)$, falsifying (7) on every
unbounded sequence. If the fixed-character line statement
holds, the same decomposition gives (7) from bounded energy.
All constants and the convergence of the fixed-gap estimate
have fixed-character scope, with no growing-modulus assertion.

## 5. Prime–composite products in the remaining region

For zeta write $P_r=V_\zeta^{\rm pr}(2r)$ and
$B_r=V_\zeta^{\rm comp}(2r)$ from
[WeilSampledMoebiusDivisorCancellation.md](WeilSampledMoebiusDivisorCancellation.md).
Use that note's same cutoff, increasing its constant if needed.
Its pointwise asymptotic and the tilt of the Kaiser transform
at $2$ give
$$
\sum_r\theta_r P_r^2
 \sim\frac{a_0^2\,\mathcal W_T(2)}
          {4(u_T+2L_T/\sqrt{580})^2}.
\tag{8}
$$
Indeed under that tilt the mean is $u_T+2L_T/\sqrt{580}+O(1)$
and variance $O(T)$ by the two derivatives of the exact
transform. Since $r\asymp T$, the expected reciprocal square
is asymptotic to the inverse square of this mean.
The cutoff change is exponentially small.

The genuine joint upper bound of the divisor cancellation note
makes $\sum_r\theta_r(P_r+B_r)^2$ smaller than (8) by every fixed
inverse power of $T$. Cauchy in
$\sum\theta_r P_r B_r=-\sum\theta_r P_r^2+\sum\theta_r P_r(P_r+B_r)$
therefore gives the ordered mixed contribution
$2\sum\theta_r P_r B_r\sim-2\sum\theta_r P_r^2$.
Deleting either of the paid regions changes it only
subexponentially, so its negative main term still occurs in
the remaining signed pairs in (7). Its size is
$e^{P(2)T}/T^2$. Any successful upper estimate in (7) must keep
this genuinely mixed compensation.

## Source and evidence

- [WeilSampledMoebiusCofactorReturn.md](WeilSampledMoebiusCofactorReturn.md),
  blob 4ff86988d1eb51a7c899b01fc70778fd6746063b, supplies the genuine
  filtered cutoff, kernel, and both zeta pole terms.
  [WeilSampledPrimeModulation.md](WeilSampledPrimeModulation.md),
  blob 1d80d96ca145aae4fe7b927ca2ced0c78547b2e7, supplies the original
  nodes, probability weights and transform.
  [WeilSampledMoebiusDivisorCancellation.md](WeilSampledMoebiusDivisorCancellation.md),
  blob afa7aa41ca9077c9206546a615181a4d80557bf0, supplies the
  genuine prime–composite asymptotics and total upper bound.
- T. Tao, *The logarithmically averaged Chowla and Elliott
  conjectures for two-point correlations*, Forum of Mathematics,
  Pi 4 (2016), e8. Corollary 1.5 supplies the log-window limit
  for the two fixed affine forms used in (5). [Primary paper](https://arxiv.org/abs/1509.05422v4)
- At 45eeaf24be5f,
  [MoebiusSoficIndependentThinning.lean](../MoebiusSoficIndependentThinning.lean),
  blob bcfec10280471bd80250fc6c8eba48ce8328ae14, gives exact normalized
  product-mask moments and vanishing centered covariance over
  those masks. Their weights are nonnegative for nonnegative heat
  scale. At nonnegative horizon the genuine residual identity
  still contains the signed mixed and deviation terms. These
  mask moments do not enter the actual divisor pair products.
- At 67ff176b4815,
  [MoebiusGaussianSignedResidualHeatCalibration.lean](../MoebiusGaussianSignedResidualHeatCalibration.lean),
  blob bb5752e4c8de125a1ff1a61dd9a49c725d92cc2a, the linear
  supplier transfer assumes two fixed positive heat scales,
  $\zeta(1/2)\ne0$, nonnegative allowance slope, a fixed
  affine-frequent set, and both the eventual residual majorant
  and its eventual $(A+\varepsilon)T$ bound for every
  $\varepsilon>0$ there. It transports the stationary allowance
  and retains that set. No such assumption is used in (1)–(8).

Written analytical argument with separate agent derivations
of the diagonal, tilt and mixed compensation. A finite exact
check covers the real pair decomposition and the far-band root margin.
Lean
formalization, elaboration, compilation, fresh kernel replay,
transitive axiom audit, local zero certification and independent
human review are **NOT_RUN**. Originality is unassessed.
