# A short-cofactor Möbius return for the sampled Weil source

grwtsk contributors · 2026-11-15

Written analytical source for [math#1804](https://github.com/grwtsk/math/issues/1804).
This proceeds from the exact-stage criterion at
[f23aff9f337c](https://github.com/grwtsk/math/commit/f23aff9f337c77beecf73972ed70390bd88e55f0)
and the modified-weight obstruction at
[244ee22f87e9](https://github.com/grwtsk/math/commit/244ee22f87e9baf4778439001349883a1a5352b1).

## 1. The exact coefficient relation

Fix one primitive $\chi$ of actual conductor $q$, including
conductor-one zeta. Put $\iota=\mathbf1_{q=1}$. Use $k=C_p=p*p$
and $\Pi$ from
[WeilSampledLocalPrimeCriterion.md](WeilSampledLocalPrimeCriterion.md).
The kernel $k$ is even and has support radius $R=2(S+1/8)<1/2$.
The actual local prime-power discrepancy is
$$
A_\chi(U)=\sum_{n\ge2}\frac{\Lambda(n)\Re\chi(n)}{\sqrt n}
                   k(U-\log n)-\iota e^{U/2}\Pi(i/2)^2 .
\tag{1}
$$
Use the original Gauss nodes and the positive weights $\theta_r$
of the sampled modulation source. In this note $U=2r$ on those
nodes, and the only translations of $U$ will be by $\pm h$ with
$h=1/8$. All these prime inventories fit inside the original
stage of radius $T$, since $r\le T-1$ and $h+R<1$.

The native arithmetic input is the coefficient identity
$\Lambda=\mu*\log$, with actual $\mu$ and Dirichlet convolution.
It follows from $\sum_{d\mid n}\Lambda(d)=\log n$ and
$\mu*1=\delta_1$. Complete multiplicativity of $\chi$, including
the zeros at ramified primes, gives the exact finite identity
$$
\begin{aligned}
A_\chi(U)&=\Re\sum_{d\ge1}\frac{\mu(d)\chi(d)}{\sqrt d}
                        F_\chi(U-\log d)-\iota e^{U/2}\Pi(i/2)^2,\\
F_\chi(v)&=\sum_{m\ge1}\frac{\chi(m)\log m}{\sqrt m}\,k(v-\log m).
\end{aligned}
\tag{2}
$$
This step uses the divisor relation at the integer coefficients.
In the per-base models at 244ee22f87e9 a changed base has magnitude
$m_p\log p$ in every power, with $m_p>0$ and $m_p\ne1$.
Already the divisor sum at $p$ differs from $\log p$. The reciprocal
local Euler series $(1-\chi(p)z)^{m_p}$ also has quadratic coefficient
$m_p(m_p-1)\chi(p)^2/2\ne0$ at such a base. In (2) the coefficients
are specifically the squarefree Möbius coefficients with
$\mu(p)\chi(p)=-\chi(p)$. In fact the true logarithm together
with prime-power support forces the inverse coefficients.
If $\nu$ is normalized and multiplicative and
$(\nu*\log)(p\ell)=0$ for distinct primes, then
$(1+\nu(p))/\log p+(1+\nu(\ell))/\log\ell=0$.
Using three distinct primes gives $\nu(p)=-1$ for every $p$.
For $m\ge2$ the coefficient at $p^m\ell$ is then
$\log\ell\sum_{j=0}^m\nu(p^j)$. Its vanishing forces
$\nu(p^m)=0$ by induction. Thus these mixed coefficients
already distinguish the actual normalized inverse $\mu$.

Define the difference
$$
\mathscr D_h f(v)=f(v+h)-2e^{h/2}f(v)+e^h f(v-h),\qquad
p_h(w)=e^{-hw}(e^{hw}-e^{h/2})^2 .
\tag{3}
$$
Its multiplier on $e^{wv}$ is $p_h(w)$. It annihilates every
$(b_0+b_1v)e^{v/2}$ and is nonzero for $\Re w<1/2$. In particular
it annihilates the continuous main term in (1) exactly.
Let $K_\chi=\mathscr D_h F_\chi$ and $V_\chi=\mathscr D_h A_\chi$.
Then
$$
V_\chi(U)=
\Re\sum_{d\le e^{U+R+h}}\frac{\mu(d)\chi(d)}{\sqrt d}
                              K_\chi(U-\log d).
\tag{4}
$$
The support of $K_\chi$ is bounded below by $-R-h$. This is a finite
arithmetic relation, without passing to a conditionally convergent
reciprocal series at the edge.

For zeta the pole bookkeeping starts with the two signed products
of the short even test and the shifted odd pair in the original
formula. Their contribution gives $e^{U/2}\Pi(i/2)^2$ in (1) and
the second subtraction $e^{-U/2}\Pi(i/2)^2$ in the physical remainder
$\mathcal E_\zeta(U)$. That subtraction cancels the leading gamma
tail. The difference in (3) removes the first center and applies
to the remaining $\mathcal E_\zeta(U)=O(e^{-5U/2})$ without changing
its decay. The original conductor or parity and gamma source enter
through this same pole-inclusive identity.

## 2. A quantitative Poisson bound for the actual cofactor kernel

The infinite box convolution in
[WeilTentSignedRieszCriterion.md](WeilTentSignedRieszCriterion.md), §1,
gives all derivative bounds of $k$. Its normalized boxes have
half-widths $a_j=c_0/[j\log^2(j+1)]$. Place one derivative on each of the
first $N$ boxes in one copy of $b$ and keep the other copy of $b$ as a
bounded density. The derivative of a normalized box is a
signed two-point measure of total variation $1/a_j$.
The other convolutions have bounded mass. Thus for $N\ge0$
$$
\|k^{(N)}\|_\infty\le C^{N+1}N!\log^{2N}(N+2).
\tag{5}
$$
This bound is for the same kernel as in (1).

For $X=e^v$ write
$$
u_v(y)=(v+\log y)y^{-1/2}k(-\log y)\quad(y>0)
$$
and take it to be zero elsewhere. Its support lies in the
fixed compact interval $[e^{-R},e^R]$. The profile bound is
$$
\|u_v^{(N)}\|_1\le (1+|v|)C_1^{N+1}N!\log^{2N}(N+2).
\tag{6}
$$
For detail, use the order-$N$ Taylor jet of $k$ at $-\log y$.
The coefficient of $t^N$ in the composition is unchanged by
substituting that finite jet into $-\log(y+t)$. On a fixed
complex disk $|t|\le r_0$ about any positive $y$ in the support,
$-\log(y+t)+\log y$ is bounded independently of $y$.
Its powers times the jet coefficients from (5) have total
bound $C_2^{N+1}\log^{2N}(N+2)$ there. The analytic multiplier
$(v+\log(y+t))(y+t)^{-1/2}$ costs $O(1+|v|)$.
Cauchy's coefficient estimate gives (6), including the fixed
support length. This uses only the finite jet of $k$.

For Fourier transform with phase $e^{-2\pi i\xi y}$, integrate
by parts $N$ times and use $N!\le N^N$. Choosing
$N=\lfloor c_1|\xi|/\log^2(2+|\xi|)\rfloor$ for sufficiently
small $c_1>0$ makes the factor from (6) at most $2^{-N}$
for large $|\xi|$. Hence
$$
|\widehat u_v(\xi)|\ll (1+|v|)e^{-c_2\Phi(|\xi|)},
\qquad \Phi(x)=x/\log^2(2+x)
\tag{7}
$$
with constants independent of $v$.

The cofactor sum is $X^{-1/2}\sum_{m\in\mathbb Z}\chi(m)u_v(m/X)$,
with the summand at zero defined by the support. Poisson
summation on the classes modulo $q$ makes its zero frequency
the character mean times $X^{1/2}\widehat u_v(0)$. This mean
is zero for primitive $q>1$ and one for $q=1$. The integral
at zero is $vM_0-M_1$, where
$M_j=\int_{\mathbb R} t^j k(t)e^{-t/2}\,dt$. In particular
$M_0=\Pi(i/2)^2$. The nonzero frequencies are $jX/q$.
Using the trivial bound $q$ for the character sums there and
(7) gives, for every fixed $\chi$ and all large $v$,
$$
F_\chi(v)=\iota e^{v/2}(vM_0-M_1)
   +O_\chi\!\left((1+v)e^{v/2}
                   e^{-c_\chi e^v/(1+v)^2}\right).
\tag{8}
$$
For the summation in this step, $\Phi(jY)\gg\sqrt j\,\Phi(Y)$
for $j\ge1$, $Y\ge1$, by
$\log(2+jY)\le\log(2+Y)+\log j$ and boundedness of
$(1+\log j)^2/\sqrt j$. Thus the tails in (7) sum to
$O(e^{-c_3\Phi(Y)})$ at $Y=X/q$, and
$\Phi(e^v/q)\gg_q e^v/(1+v)^2$ for large $v$.
The difference (3) kills the whole displayed main term of (8).
Consequently its remainder bound holds for $K_\chi(v)$,
with a possibly smaller positive $c_\chi$.

## 3. An unconditional short-cofactor cutoff

For every fixed $\chi$ and $B>0$ choose a constant $C_{\chi,B}>0$
and set $Q(U)=C_{\chi,B}U(\log U)^2$ for large real $U$.
Equation (4) then has the return
$$
\boxed{\quad
V_\chi(U)=
\Re\sum_{e^U/Q(U)<d\le e^{U+R+h}}
       \frac{\mu(d)\chi(d)}{\sqrt d}K_\chi(U-\log d)
       +O_{\chi,B}(e^{-BU}).
\quad}
\tag{9}
$$
Indeed for $d\le e^U/Q(U)$ set $v=U-\log d$. Then
$v\ge v_0=\log Q(U)$ and $e^v/(1+v)^2$ is increasing there,
with $e^{v_0}/(1+v_0)^2\ge C_{\chi,B}U/4$ for all large $U$.
The sum of the remaining absolute prefactors for these
$d$ is at most
$$
e^{U/2}(1+U)\sum_{d\le e^U}1/d\ll (1+U)^2e^{U/2}.
$$
Taking $C_{\chi,B}$ large in the exponential from (8) proves (9).
Every inner cofactor $m$ contributing to $K_\chi(U-\log d)$
in the retained range is at most $e^{R+h}Q(U)$ by the support.
The retained divisor band has logarithmic width
$\log U+2\log\log U+O_{\chi,B}(1)$. The estimate holds at all
large real $U$, hence at all original nodes, with no
conductor-uniform cutoff asserted. For $q>1$ the same argument
applies to $A_\chi$ itself with $F_\chi$ in place of $K_\chi$
and upper divisor cutoff $e^{U+R}$, since its Poisson main
term vanishes.

## 4. The signed supplier on the same stages

The original source at 3e6223de8178 has the exact cosine series
for $A_\chi(U)$ and its decaying physical remainder. In its
exponential version $A_\chi(2r)=\sum_\lambda c_\lambda e^{\lambda r}
-\mathcal E_\chi(2r)$, applying (3) gives coefficients
$c_\lambda p_h(\lambda/2)$ and the corresponding difference of
the original remainder. The multiplier is bounded on
$|\Re(\lambda/2)|\le1/2$, is nonzero throughout the actual open
strip, and is strictly positive on real $\lambda/2<1/2$.
Thus the off-line terms survive, every real coefficient stays
negative, and the same cutoff tails and absolute convergence
hold. The new physical remainder is still exponentially small
on the stages, including the exact conductor-one cancellation.

The positive-average and unique-rate argument of
[WeilSampledPrimeModulation.md](WeilSampledPrimeModulation.md),
§§2–4, therefore applies to these coefficients on the same
Gauss nodes. In particular the weighted negative part of
$V_\chi(2r)$ has the exact rate
$$
\lim_{T\to\infty}\frac1T\log\!\left(
  1+\sum_{r\in\mathcal J_T}\theta_r(-V_\chi(2r))_+
  \right)
 =P(2v_\chi),\qquad
 P(x)=\frac{19x}{20}+\frac6{125}(\sqrt{24^2+x^2}-24),
\tag{10}
$$
where $v_\chi=\sup_\rho|\Re\rho-1/2|$ for the fixed character.
The off-line proof there uses a fixed rational modulation of
a surviving exponent and the strict one-sided gap for the
unmodulated mean. Both persist by the multiplier properties
just verified. Changing to the truncated arithmetic sum in
(9) also preserves the rate, since the negative-part function
is 1-Lipschitz and the stage weights have mass one.

The remaining estimate is subexponential control of the
weighted negative part of the **retained signed Möbius sum**
in (9), on an unbounded sequence of original integer stages
for each fixed character. The exact rate in (10) would return
that estimate to the original sampled-prime criterion via
the fixed-character critical-line statement. This return
uses the zero comparison for the exact difference. There is
no use of a one-sided inverse inequality for the difference.

For conductor one the cofactor kernel itself changes sign.
Let $J(w)=\int k(t)e^{-wt}\,dt$. On $\Re w>1/2$ the bilateral
Laplace transform of $K_\zeta$ is
$$
J(w)p_h(w)(-\zeta'(w+1/2)),
$$
by termwise integration of $F_\zeta$ and translation. It
extends to the entire transform of $K_\zeta$ by the support
and decay proved above. Its value at $w=1/2$ is
$J(1/2)h^2e^{h/2}>0$, since the multiplier cancels the double
pole of $-\zeta'(w+1/2)$. Between the real trivial zeros
$-4,-2$ Rolle's theorem gives a real $s_*$ with $\zeta'(s_*)=0$,
so the transform vanishes at $w=s_*-1/2$. A nonzero real
kernel of one sign has a nonzero Laplace integral at every
real point where it converges. Hence retaining the actual
kernel requires a signed estimate. The small-divisor bound
alone gives no sign on the remaining band.

## Source and evidence

- The finite coefficient identity is the standard von
  Mangoldt identity, also recorded in
  [MobiusVonMangoldtCoefficientBridge.lean](../../ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/MobiusVonMangoldtCoefficientBridge.lean),
  blob f1e9289e742ebd510584b7ab2a47977f59f1c3a1.
  [DLMF 27.5.5](https://dlmf.nist.gov/27.5.E5)
- [WeilTentSignedRieszCriterion.md](WeilTentSignedRieszCriterion.md),
  blob 7bfc26a2293000bde8be4de47ac57c464b147796, supplies the box
  convolution and Gauss nodes. [WeilSampledLocalPrimeCriterion.md](WeilSampledLocalPrimeCriterion.md),
  blob 6798953ba567445b7d791136fc16be378301cc10, supplies the two-pole
  source and all prime powers. [WeilSampledPrimeModulation.md](WeilSampledPrimeModulation.md),
  blob 1d80d96ca145aae4fe7b927ca2ced0c78547b2e7, supplies the weighted
  detection and rational modulation comparison. The consuming targets
  are DirichletStageChain.PrimitiveStageLower and the separate
  OddLiteralCofinal.StageLower on the original cap.
- The residue-class Poisson step uses ordinary Poisson summation
  applied to the fixed compact profiles. The cofactor cutoff uses
  the derivative bound for the source's exact smoothing.
  [Poisson summation](https://dlmf.nist.gov/1.8.iv) ·
  [Zeta trivial zeros](https://dlmf.nist.gov/25.10.i)

Written analytical argument with a separate agent derivation of the
finite Möbius return and the pole-annihilating difference. A finite
exact coefficient check covers the twisted divisor expansion through
$n=256$ for zeta and an order-four character modulo five, plus examples
of the mixed-prime identities. Lean
formalization, elaboration, compilation, fresh kernel replay,
transitive axiom audit, local zero certification and independent
human review are **NOT_RUN**. No Möbius cancellation envelope from
another source is assumed. Originality is unassessed.
