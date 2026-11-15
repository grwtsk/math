# One localized signed prime sum on the predetermined Weil samples

grwtsk contributors · 2026-11-15

Written analytical source candidate for [math#1804](https://github.com/grwtsk/math/issues/1804).
Inspected main `b9571cf3620afaf86cf097c817f69fc4bff241ac`.
Use the bump $b$, its angular transform $B$, the moment $M_\chi$,
the combination $D_\chi$ and the **same sample sets** $\mathcal S_T$ from
[WeilTentSignedRieszCriterion.md](WeilTentSignedRieszCriterion.md), commit
`52c87ad844866d5a7bbee905237be48ddf270875`, blob
`7bfc26a2293000bde8be4de47ac57c464b147796`. Here $T$ is an integer
stage radius and $r\in\mathcal S_T$ is a tent radius. The original tent
tests remain within the cap $\Gamma_a(f)\le 2\pi^2\mu_a E(f)/T^2$.

## 1. Exact fourth difference and the fixed prime interval

Fix one primitive character $\chi$ of its actual conductor $q$ and parity
$a$. Set $\iota=\mathbf1_{q=1}$, with conductor one treated as zeta.
Write the predecessor's signed measure as

$$
d\nu_\chi(s)=\sum_{n\ge2}\frac{\Lambda(n)\Re\chi(n)}{\sqrt n}
                \delta_{\log n}(ds)-\iota e^{s/2}\,ds\qquad(s\ge0).
$$

Take $h=1/8$, $k_h=\mathbf1_{[-h/2,h/2]}$, $p=b*k_h*k_h$, and let $\Pi$ be
the angular transform of $p$. Then $p$ is real, even and smooth, with
support radius $S+h$, where $S$ is the support radius of $b$. Put
$C_p=p*p$. Define the centered difference $\delta_h M(U)=M(U+h/2)-M(U-h/2)$.
For $U>2(S+h)$ the original moment has the identity

$$
\begin{aligned}
A_\chi(U)&=\tfrac16\delta_h^4 M_\chi(U)
         =\int_{s\ge0}C_p(U-s)\,d\nu_\chi(s)\\
 &=\sum_{e^{U-2(S+h)}<n<e^{U+2(S+h)}}
    \frac{\Lambda(n)\Re\chi(n)}{\sqrt n}\,C_p(U-\log n)
       -\iota e^{U/2}\Pi(i/2)^2 . \tag{1}
\end{aligned}
$$

Indeed $\delta_h F=k_h*F'$ as a distributional identity, and the fourth
derivative of $x_+^3$ is $6\delta_0$. Applying this to the smoothed
cubic defining $M_\chi$ gives $(b*b)*k_h^{*4}=p*p$. The endpoint weights
vanish. The continuous centering in (1) follows from the convolution
product for $\int C_p(y)e^{-y/2}dy$. The logarithmic length of the
interval is $4(S+h)<1$. Every prime-power coefficient in that interval
has its original von Mangoldt magnitude and actual character phase.

If only the subexponential estimate is at issue, the proper powers
in (1) can be paid by an additive $O(1)$, with their actual terms
kept in the identity. Their total log weight up to $e^{U+2(S+h)}$
is $O(e^{U/2})$: use the Chebyshev bound on the squares and count
the $O(U)$ exponents $k\ge3$ with $p\le e^{(U+2(S+h))/3}$.
The reciprocal square-root factor on the interval is $O(e^{-U/2})$.
Thus an estimate on the ordinary-prime part with the same centering
would also supply a subexponential budget for (1).

## 2. Native source identity with both zeta poles

For a real smooth compact test write $Q_\chi$ for the native unshifted
form with the covering radius suppressed. It uses physical mass, the
same parity gamma and the original prime correlations. For $q=1$ its
pole term is $2F_f(i/2)F_f(-i/2)$, including both orientations. This
agrees with the literal odd value on odd tests.

For $r=U/2>S+h$, let $u_r(t)=p(t-r)-p(t+r)$. Its mass is $2E(p)$ and,
for $s\ge0$, $C_{u_r}(s)=2C_p(s)-C_p(U-s)$, since the other cross shift
is outside the overlap. The signed prime term is therefore $2P_\chi(p)$
minus twice the discrete sum in (1). The gamma difference is

$$
\Gamma_a(u_r)-2\Gamma_a(p)=2\int_0^\infty K_a(s)C_p(U-s)\,ds.
$$

This follows from $\|f(\cdot+s)-f\|_2^2=2(E(f)-C_f(s))$. In zeta the
pole term of $p$ is $+2\Pi(i/2)^2$ and that of $u_r$ is
$-8\sinh^2(r/2)\Pi(i/2)^2$. Thus, subtracting $2Q_\chi(p)$ from
$Q_\chi(u_r)$ and using (1) gives

$$
\tfrac12 Q_\chi(u_r)-Q_\chi(p)=A_\chi(U)+\mathcal E_\chi(U),\qquad
\mathcal E_\chi(U)=\int_0^\infty K_a(s)C_p(U-s)\,ds
                      -\iota e^{-U/2}\Pi(i/2)^2. \tag{2}
$$

For $q>1$ the remainder is positive and $O(e^{-(a+1/2)U})$. For $q=1$
the factor $e^{-s/2}$ in the kernel integrates to the subtracted
term in (2), leaving the positive integral with kernel
$e^{-5s/2}/(1-e^{-2s})$. The remainder is then $O(e^{-5U/2})$.
This accounts for both signed zeta poles and the entire gamma term.
The local statistic uses separated translates to obtain an identity.
At the sampled radii their support also fits inside $(-T,T)$, since
$r\le T-1$ and $S+h<1/4$. The tests for the shrinking gamma cap remain
the original tents.

Let $z=(\rho-1/2)/i$. Use the actual individual zero divisor and average
its multiplicities over negation and conjugation as in the tent note,
writing the resulting weights $w_z$. The inverse character in the
native prime return has the same real weights and parity on real tests.
By the native explicit formula for $p$ and $u_r$,
$Q_\chi(p)=\sum_z w_z\Pi(z)^2$ and
$Q_\chi(u_r)=2\sum_z w_z\Pi(z)^2(1-\cos(Uz))$, using
$F_{u_r}(z)=2i\sin(rz)\Pi(z)$. Hence

$$
A_\chi(U)=-\sum_z w_z\Pi(z)^2\cos(Uz)-\mathcal E_\chi(U). \tag{3}
$$

This includes a possible central zero, with its actual multiplicity.
The multiplier is
$\Pi(z)=B(z)[2\sin(hz/2)/z]^2$, with removable values at zero. Its
nonreal values are nonzero. On $|\Im z|\le1/2$ and $|z|\ge1$ the box
factors give $|\Pi(z)|^2\ll |B(z)|^2/|z|^4$, the same absolute decay
as the tent coefficients.
The original height count gives absolute convergence of (3).

## 3. The same arbitrary cofinal sampling criterion

Let $v_\chi=\sup_\rho|\Re\rho-1/2|$ for the fixed character. On exactly
the predetermined tent nodes the localized sum satisfies

$$
\lim_{T\to\infty,\ T\in\mathbb N}\frac1T
   \log\left(1+\max_{r\in\mathcal S_T}(-A_\chi(2r))_+\right)=2v_\chi. \tag{4}
$$

For the upper bound, the summed coefficient moduli in (3) are finite
and $r<T$, so $|A_\chi(2r)|\ll_\chi e^{2v_\chi T}+1$. When $v_\chi>0$,
apply the Gaussian averaging argument of Section 4 of the tent note to
$H(r)=-\sum_z w_z\Pi(z)^2\cos(2rz)$. The checks needed for that argument
are as follows. The exponents $\lambda=\pm2iz$ with positive real part
are locally finite and have nonzero coefficients. The two equal
coefficients from $z$ and $-z$ add. Their supremum in real part is
$\sigma=2v_\chi$. Real exponents near $\sigma$ have negative
coefficients because $\Pi(iv)>0$ on the imaginary axis. Nonzero
frequencies are separated from frequency zero by local finiteness of
the actual zeros. The coefficient tail has the same bound in terms
of $\Phi(H)$ as the tent series, so the same quadrature degree and
nodes work. In particular the Gaussian unmodulated sum has an
exponentially small upper bound after multiplying by $e^{-\sigma r}$.
A fixed modulation chosen near the ordinate of an exponent close to
$\sigma$ gives a unique largest real Gaussian rate, arbitrarily close
to zero, and the nonnegative-weight inequality forces a negative
sample of size $e^{\kappa T}$ for every $0<\kappa<\sigma$ at every
sufficiently large stage. These are the upper-mean and modulated
lower estimates of the preceding proof, with the same within-stage
window choice. The decaying term in (3) leaves this conclusion intact.
For $v_\chi=0$ the upper bound is $O_\chi(1)$, proving (4) in that case.

Consequently, the following are equivalent for each fixed primitive
source, including zeta:

- There is a subexponential lower budget for $A_\chi(2r)$ on
  $\mathcal S_T$ along some unbounded sequence of integer stages.
- There is a subexponential lower budget for $D_\chi(r)/r^3$ on those
  samples along some unbounded sequence of integer stages.
- All zeros of the fixed $L$-function in the open critical strip lie
  on the critical line.

This follows from (4) and the corresponding same-stage limit in the
tent note. The equivalence retains arbitrary unbounded subsequences.
It gives an approach through a single smoothed prime interval instead
of the four cubic moments at different scales. The native inequality
on this interval remains to be proved.

## 4. Two unconditional checks on the genuine arithmetic

**A sharper magnitude bound.** For each fixed source, the
Vinogradov–Korobov zero-free region gives a constant $c_\chi>0$ such that
for large $U$,

$$
|A_\chi(U)|\ll_\chi
\exp\left(\frac U2-\frac{c_\chi U}{(\log U)^{2/3}(\log\log U)^{1/3}}\right).
\tag{5}
$$

Split (3) at height $H=U\log^3 U$. Above this height the coefficient
tail is $O_\chi(e^{-cU\log U})$ up to the factor $e^{U/2}$, by (1) of
the tent note. Below $H$, the zero-free region and reflected zeros
give $|\Im z|\le1/2-c_\chi/[(\log U)^{2/3}(\log\log U)^{1/3}]$ after
decreasing $c_\chi$. For fixed conductor the bounded-height zeros,
including any exceptional real zero, have a fixed positive gap from
the strip endpoints and fit this estimate for large $U$. The finite
coefficient sum and the remainder bound in (2) give (5). For zeta,
any $c_\zeta<1/48.1588$ works in (5) by the cited explicit region and
$\log H/\log U\to1$. The same split in the tent series gives the
right side of (5) at $U=2r$ for the original $D_\chi(r)$, after absorbing
the bounded-form terms of size $O_\chi(r^3)$. This is stronger than
the Chebyshev-only saving on the sampled family. Its exponential rate
is still one in $r$.

**A zero lower allowance fails for the localized zeta discrepancy.**
For conductor one, take $c_*=10^{-6}$. Every sufficiently large stage
has a node with $A_\zeta(2r)<-c_*$ and a node with
$A_\zeta(2r)>c_*$. The real interval $(0,1)$ has no zeta zeros, since
the alternating eta sum is positive there and $1-2^{1-s}<0$. If
$v_\zeta>0$, the Gaussian mean has no real leading exponent for either
sign, so the proof of (4) gives growth of both signs. If $v_\zeta=0$,
there is a nonzero Fourier coefficient at $\pm2\gamma_1$, using the
verified ordinate $14<\gamma_1<15$. On that interval,
$B_0(\gamma_1)\ge1-(15/4096)^2/2>99/100$ by the support and evenness of
$b_0$. Also $\cos(\gamma_1/12)\ge7/32$ and
$\sin(\gamma_1/16)/(\gamma_1/16)>4/5$ by the elementary Taylor bounds.
Thus $\Pi(\gamma_1)>(1/64)(99/100)(7/32)(16/25)>1/500$, and the
coefficient modulus is $m_{\gamma_1}\Pi(\gamma_1)^2>1/250000$.

In this second case take the Gaussian of the predecessor with $\sigma=0$
in any fixed smaller stage window. The unmodulated sum divided by
$\sqrt{2\pi\tau T}$ tends to zero by the gap at frequency zero.
At modulation $\nu=2\gamma_1$ the corresponding quotient tends to
the nonzero coefficient at that frequency, since the other frequencies
have a gap there and the coefficient moduli sum to a finite number.
The same quadrature bound applies. If all samples were at least
$-c_*$, adding $c_*$ and using positivity would bound the modulated
modulus, after normalization, by $2c_*+o(1)$, which contradicts the
coefficient bound.
Apply the same argument to the negative of the sum for the other sign.
Thus the genuine localized zeta discrepancy changes sign even under
the line-zero scenario, which rules out proving the requested budget
by imposing eventual nonnegativity on (1). It leaves a bounded or
subexponential negative allowance open.

## 5. Consumers and evidence

The explicit next target is a one-sided subexponential budget for
(1) on the predetermined nodes at unbounded integer radii $T=j+1$.
Its return to `DirichletStageChain.PrimitiveStageLower` and the separate
`OddLiteralCofinal.StageLower` uses the original cap and (4), with the
zeta identities (1)–(3) retaining both poles. No conductor-uniform
rate is claimed.

- [WeilGammaPhysicalReturn.lean](../WeilGammaPhysicalReturn.lean), blob
  `a6eb4ce4ef5e7023c3a09e3ba66e3a420df9f723`, supplies
  `primitive_hasSum_canonical_arithmetic` and
  `zeta_hasSum_physical_arithmetic`. The latter applies also to the
  even test $p$ and returns both pole orientations. The proof above
  uses these exact source identities without a new contour shift.
- [WeilPrimitiveSmoothEdgeOneSidedLandau.md](WeilPrimitiveSmoothEdgeOneSidedLandau.md)
  has a related moving edge sum with a different bump, for all large
  real translations via Landau. Here the local weight comes from the
  fourth difference of the actual tent moment, and the sampling
  conclusion holds on the existing nodes at each large stage.
- Zero-free inputs: Thorner–Zaman, arXiv:2108.10878v2, Eq. (2.4) in the
  proof of Theorem 1.1, for fixed nonprincipal conductor.
  Mossinghoff–Trudgian–Yang, *Explicit zero-free regions for the Riemann
  zeta-function*, Theorem 1.2, for zeta. [Dirichlet](https://arxiv.org/pdf/2108.10878) ·
  [Zeta](https://doi.org/10.1007/s40993-023-00498-y)
- The single finite-height zeta ordinate input is documented with
  Turing verification in [FLINT's zero isolation documentation](https://flintlib.org/doc/acb_dirichlet/zeta-zeros.html).
  No finite-height verification has been rerun here.

Written analytical argument. An exact rational check passed for the
finite-difference coefficients, interval width and rational bounds in
the zeta excursion estimate. It covers those finite inequalities.
Lean formalization, elaboration, compilation, fresh kernel replay,
transitive axiom audit, local numerical certification and independent
human review: `NOT_RUN`. Originality is unassessed. RH and Dirichlet
GRH remain open.
