# Limits of fixed modulation bands for the weighted negative part

grwtsk contributors · 2026-11-15

Written analytical source for [math#1804](https://github.com/grwtsk/math/issues/1804).
A test of weaker inputs to
[WeilSampledPrimeModulation.md](WeilSampledPrimeModulation.md) at
[f23aff9f337c](https://github.com/grwtsk/math/commit/f23aff9f337c77beecf73972ed70390bd88e55f0).

## 1. The comparison

Fix one primitive character $\chi$ of actual conductor $q$, including
conductor-one zeta. Use the exact nodes $\mathcal J_T\subset\mathcal S_T$,
positive weights $\theta_r$, kernel $k=C_p$, signed sum $A_\chi(2r)$,
and averages $G_{\chi,T}(\nu)$ from that source. Write
$v_\chi=\sup_\rho|\Re\rho-1/2|$ for the actual strip displacement and
$$
P(x)=\frac{19x}{20}+\frac6{125}\big(\sqrt{24^2+x^2}-24\big).
$$
For every fixed $M\ge0$ and finite initial prime inventory, there are
two models with positive weights on the same prime powers and the
same phases $\Re\chi(n)$. They keep both pole products and the gamma
term. For some $c>0$ they satisfy
$$
\sup_{|\nu|\le M}|\widetilde G^\pm_{\chi,T}(\nu)-G_{\chi,T}(\nu)|
   =O(e^{-cT})
\tag{1}
$$
and retain the absolute twisted estimates of
[WeilLowGammaTwistedPerron.md](WeilLowGammaTwistedPerron.md), §2.
Nevertheless, for some rational $\epsilon>0$,
$$
\lim_{T\to\infty}\frac1T
 \log\!\left(1+\sum_{r\in\mathcal J_T}\theta_r
                          (-\widetilde A^\pm_\chi(2r))_+\right)
   =P(2\max(v_\chi,\epsilon))>0 .
\tag{2}
$$
Parameters and starting radii may depend on the fixed character,
band and unchanged inventory. For zeta take $M=6\cdot10^{12}-25$
to retain the verified-band bound, the small signed mean and the
limits at the verified resonances. Equation (2) rules out inferring
subexponential control from these estimates in this comparison class.

## 2. The positive weight changes

Let $\mathcal F_q$ be the finite list of primitive inducing characters
for characters modulo $q$, including conductor one. Choose a rational
$\omega>M/2+13$ different from all absolute ordinates of actual strip
zeros of $\chi$. Local finiteness allows this in any open interval
above the threshold. Let $\Delta$ be the minimum of $1$ and the
$1-\Re\rho$ over the strip zeros of the finite family $\mathcal F_q$
with $|\Im\rho|\le2\omega+13$. This is positive by finiteness.
Choose rational $0<\epsilon<\min(1/4,\Delta/2)$, put
$d=1/2-\epsilon$, and fix $0<\eta\le1/2$. At prime bases
$\ell\ge p_0$ with $\ell\equiv1\bmod q$, use
$$
\widetilde\Lambda^\pm(\ell^j)
 =(\log\ell)[1\pm\eta\ell^{-d}\cos(\omega\log\ell)]
 \qquad(j\ge1).
\tag{3}
$$
For $q=1$ the mask includes every prime. Keep $\Lambda$ elsewhere.
These weights are positive on prime powers and unchanged below the
chosen base cutoff. All original phases at a changed base are one.
Only magnitudes in the finite sum change. For zeta the original
$e^{U/2}\Pi(i/2)^2$ centering and the separate
$e^{-U/2}\Pi(i/2)^2$ gamma-tail cancellation both stay in place.

For large $U$ the additive difference $\widetilde A^\pm_\chi(U)-A_\chi(U)$
is
$$
\pm\eta\,\Re\!\sum_{\substack{n\ge2\\ n\equiv1\bmod q}}
          \Lambda(n)n^{-1+\epsilon+i\omega}k(U-\log n)
   +O(e^{-c_0U}) .
\tag{4}
$$
Ordinary prime terms coincide beyond $p_0$ because
$-1+\epsilon=-1/2-d$. On the fixed support interval in $\log n$,
squares in either version cost $O(e^{-dU/2})$ by Chebyshev at
base height $O(e^{U/2})$. Higher powers cost $O(Ue^{-U/6})$ using
$O(U)$ possible exponents and base height $O(e^{U/3})$. Each base
below $p_0$ has only a bounded number of powers in the support,
so those omitted changes cost $O_{p_0}(e^{-U/2})$.
One may also preserve every original covering window of radius
$T\le T_0$ by taking $p_0>e^{2T_0}$.

For every real twist $\xi$, the change in the Chebyshev sum through
$x$ is bounded by the sum of the absolute weight changes. On primes
this is $O_d(x^{1-d})$ by partial summation and Chebyshev. The proper
powers cost $O(\sqrt x\log x)$, which fits the same bound since
$d<1/2$. Thus the changed sum satisfies the uniform $O(xT^{-k})$
bounds of the twisted Perron source for every fixed $k$, using the
same twist cutoffs on $e^T\le x\le e^{2T}$. Strict endpoints satisfy
the same estimate. The global absolute symbol bound also survives.
In fact its change with reciprocal square-root weighting is
$O_d(x^\epsilon)$ on ordinary primes and bounded on proper powers
by $\sum_\ell (\log\ell)\ell^{-1-d}/(1-\ell^{-1/2})<\infty$.

## 3. Shifted explicit formula for the perturbation

Set $J(w)=\int_{\mathbb R} k(t)e^{wt}\,dt=\Pi(-iw)^2$.
By character orthogonality, the sum in (4) is the mean over the
characters modulo $q$ of the corresponding twisted sums. Replace
each character by its primitive inducer $\psi$. This adds only
prime powers based at the finitely many primes dividing $q$,
costing $O_q(e^{-(1-\epsilon)U})$ on the support of $k$.
For $q=1$ the single term is zeta and $\varphi(1)=1$.

Put $s_0=1-\epsilon-i\omega$. Bilateral inversion of the even
kernel gives the primitive sum as the vertical integral on
$\Re s=2$ of
$$
-\frac{L'}{L}(s,\psi)e^{(s-s_0)U}J(s-s_0)\frac{ds}{2\pi i}.
$$
Move to $\Re s=-1/2$. The log derivative there is
$O_\psi(\log(2+|\Im s|))$ by the functional equation, Stirling's
formula and the absolutely convergent Euler series at $1-s$.
For the horizontal edges use heights tending to infinity whose
positive and negative ordinates stay at distance
$\gg_q1/\log(2+|\Im s|)$ from zeros. The logarithmic local count
leaves such heights in each sufficiently large unit interval.
The Hadamard logarithmic derivative compared at $2+i\Im s$
then gives $O_q(\log^2(2+|\Im s|))$ on those edges, as in the
twisted Perron source. The bounded strip of smooth compact $k$
gives arbitrary polynomial decay of $J$ there, so the horizontal
integrals vanish for fixed $U$. On the left line the integral
is $O(e^{(-3/2+\epsilon)U})$. A trivial zero at $s=0$, when
present, contributes $O(e^{(-1+\epsilon)U})$. All the nontrivial
zeros crossed contribute their multiplicities with negative sign.
The single principal inducer has the residue $+1$ at its pole
for $-L'/L$. Thus the difference in (4) is
$$
\pm\frac{\eta}{\varphi(q)}\Re\!\left[
  J(w_0)e^{w_0U}-
  \sum_{\psi\in\mathcal F_q}\sum_{\rho}
        m_\psi(\rho)J(\rho-s_0)e^{(\rho-s_0)U}
\right]+O(e^{-c_1U}),\qquad w_0=\epsilon+i\omega .
\tag{5}
$$
Here the family is counted as in the mean over characters, and
only actual open-strip zeros occur in the sum. Its coefficients
are absolutely summable. The pole coefficient $J(w_0)$ is nonzero
since $\Pi$ has no zeros off the real axis. This pole is from the
added twisted arithmetic, with a nonreal exponent. The original
two zeta pole products in the native $A_\zeta$ ledger are still
the ones in §2.

## 4. What the existing Gauss averages can detect

At $U=2r$, (5) has two conjugate principal exponents
$2(\epsilon\pm i\omega)$ and the shifted actual exponents
$2(\rho-s_0)$ and their conjugates. Their real parts are in
$(-2,2\epsilon]$. The same prescribed quadrature applies to these
terms. To see this, truncate the shifted angular heights
$|\Im\rho+\omega|$ at the original $H_n$ in each block.
The strip bound for the bump product extends from imaginary width
$1/2$ to width $1$ by multiplying its prefactor by a constant
from the support radius. The exponential decay factor is unchanged,
as is visible from the sinc and cosine product in
[WeilTentSignedRieszCriterion.md](WeilTentSignedRieszCriterion.md), §1.
The two box factors in $\Pi$ retain their power decay on the larger
strip, since the numerator sines are bounded there.
The logarithmic local counts for the fixed family still give the
$O(e^{-5n})$ coefficient tail. Retained terms have
$|\lambda|\le2H_n+2$. The Cauchy disk and Taylor estimate of
[WeilSampledPrimeModulation.md](WeilSampledPrimeModulation.md), §2,
apply with the same $m_n$ and normalized weights for any fixed
bounded $\nu$ range. The error in (5) averages to an exponentially
small error by positivity and $r\ge451T/500$.

For each fixed $|\nu|\le2\omega$, terms outside
$|\Im\lambda-\nu|<25$ give an exponentially small average.
For $\Re\lambda\ge-1$ this is the square-root cutoff of that
source, since $\Re\lambda\le2\epsilon<1$. For $\Re\lambda<-1$
use the real support and normalized positive weights directly.
All shifted actual exponents inside the band satisfy
$|\Im\rho|<2\omega+13$, since $|\Im\rho+\omega|<\omega+25/2$
for either conjugate sign. Their real parts are at most
$2(\epsilon-\Delta)<-\Delta$, and positivity again makes their
averages exponentially small. The estimates are uniform in this
fixed range. Both principal exponents are outside the band when
$|\nu|\le M$. This proves (1), including exponential agreement at
every fixed rational inside the prescribed band.

At the rational modulation $\nu=2\omega$ the positive-frequency
principal exponent survives and its conjugate is outside the band.
With $\mathcal W_T$ from the sampled modulation source, this gives
$$
\widetilde G^\pm_{\chi,T}(2\omega)-G_{\chi,T}(2\omega)
  =\pm\frac{\eta J(w_0)}{2\varphi(q)}\mathcal W_T(2\epsilon)
      +O(e^{-cT}) .
\tag{6}
$$
The positive transform at $2\epsilon$ is bounded above and below
by positive constants times $e^{P(2\epsilon)T}$. This follows
from its exact hyperbolic-sine formula and the bounded rounding
errors in the stage window.

## 5. Exponential negative part and scope

The original series and (5) give a pointwise magnitude bound
$O(e^{2\max(v_\chi,\epsilon)r})$ on the model. The original
quadrature for a real exponential and its exact transform
therefore give the upper rate in (2).

If $v_\chi>\epsilon$, the original weighted negative part has
rate $P(2v_\chi)$ by the sampled modulation theorem. Replacing
$A_\chi$ by $\widetilde A^\pm_\chi$ changes that negative part
by at most $\sum_r\theta_r|\widetilde A^\pm_\chi(2r)-A_\chi(2r)|$
because the negative-part function is 1-Lipschitz. By (5) the
last sum is $O(e^{P(2\epsilon)T})$. It cannot remove the strictly
larger genuine rate. In this case the original proof also gives
a fixed rational modulation whose violating rate is strictly above
$P(2\epsilon)$. Its exponential violation
persists for the model, since every additive modulation change
is bounded in modulus by that same smaller absolute sum.

If $v_\chi\le\epsilon$, the true average at $2\omega$ has strictly
smaller rate than $P(2\epsilon)$. Indeed the finitely many
retained genuine terms have real part at most $2v_\chi$, and
no genuine ordinate resonates exactly at $2\omega$ by its
choice. Each such term therefore has strict loss in the exact
square-root gain. The remaining terms are paid by the cutoff.
The true signed mean at zero has the one-sided strict rate gap
of the sampled modulation theorem for $v_\chi>0$, or is bounded
for $v_\chi=0$. Equation (1) preserves this upper mean bound.
Equation (6) now gives modulus of order $e^{P(2\epsilon)T}$
at a fixed rational. Applying (7) of the sampled modulation
source, which is the triangle inequality for positive and
negative parts and applies unchanged to real model values,
proves the lower rate for either sign at every large stage.
This includes equality $v_\chi=\epsilon$ without assuming that
the displacement supremum is attained.

Thus arbitrarily small multiplicative changes to the prime
magnitudes can preserve the indicated earlier estimates and any
chosen finite set of exact stage windows while failing the
subexponential weighted estimate. The comparison permits models
chosen for each fixed band. A fixed band and exponentially
accurate bounds on it are the inputs tested. The new modes do
not assert anything about zeros of the original source, and the
native weighted negative-part bound remains open.

## Source and evidence

- [WeilSampledPrimeModulation.md](WeilSampledPrimeModulation.md),
  blob 1d80d96ca145aae4fe7b927ca2ced0c78547b2e7, is the consuming
  weighted negative-part criterion. [WeilSampledLocalPrimeCriterion.md](WeilSampledLocalPrimeCriterion.md),
  blob 6798953ba567445b7d791136fc16be378301cc10, supplies the
  original arithmetic and both signed zeta pole products.
- [WeilLowGammaTwistedPerron.md](WeilLowGammaTwistedPerron.md),
  blob 51c8bd03686a48c0941fa7da5e4a0ba44c153866, supplies the
  earlier absolute estimates. The shifted integral in §3 uses
  the same contour mechanism as §5 of
  [WeilPrimitiveSmoothEdgeDualCriterion.md](WeilPrimitiveSmoothEdgeDualCriterion.md),
  blob 33b819859bffda8693c811fe3319b1f53acd84be, with the actual
  even kernel from the sampled criterion and a fixed complex tilt.
- Functional equations and trivial zeros use the standard
  zeta and primitive Dirichlet formulas. The local counts are
  Bennett–Martin–O’Bryant–Rechnitzer, Theorem 1.1, and
  Hasanalizade–Shen–Wong, Corollary 1.2.
  [Zeta reflection](https://dlmf.nist.gov/25.4) ·
  [Dirichlet formulas](https://dlmf.nist.gov/25.15) ·
  [Dirichlet count](https://arxiv.org/abs/2005.02989v1) ·
  [Zeta count](https://arxiv.org/abs/2107.06506v1)

Written analytical argument with separate agent derivations of
the shifted arithmetic, the band cutoff and the equality case.
An exact rational check covers the exponent and band margins.
Lean formalization, elaboration, compilation, fresh kernel replay,
transitive axiom audit, local zero certification and independent
human review are **NOT_RUN**. Originality is unassessed.
