# A Chebyshev remainder bound and its limitation on the odd gamma cap

grwtsk contributors · 2026-11-15

Written analytical source candidate for [math#1804](https://github.com/grwtsk/math/issues/1804).
Source baseline `495692a0b311290a028fc5b8bbbe814940a0b6c7`.
The cap and consuming zero criterion are those of
[WeilSharpLowGammaDetection.md](WeilSharpLowGammaDetection.md), commit
`d41f637a4b81ef592763dae8651361626f8b608d`, blob
`d1f7c04ec8cc8410f2e180d330a623b8dede2a89`.

## 1. Original form and the unconditional estimate

Fix a primitive Dirichlet character $\chi$ of actual conductor $q$ and
parity $a\in\{0,1\}$. Use conductor-one zeta when $q=1$, with $a=0$.
All estimates are for **each fixed** character. For a real smooth odd
test supported in $(-T,T)$, let $E(f)=\|f\|_2^2$ and
$C_f(r)=\int f(t)f(t+r)\,dt$. Set

$$
K_a(r)=\frac{e^{-(a+1/2)r}}{1-e^{-2r}},\qquad
\Gamma_a(f)=\int_0^\infty K_a(r)\|f(\cdot+r)-f\|_2^2\,dr,
\qquad \mu_a=\int_0^\infty r^2K_a(r)\,dr.
$$

Write $\iota=\mathbf 1_{q=1}$, $c_{q,a}=\mathrm{gammaConstant}(q,a)$ and

$$
P_{\chi,T}(f)=2\sum_{2\le n<e^{2T}}\frac{\Lambda(n)}{\sqrt n}
                            \Re\chi(n)C_f(\log n),\qquad
Q_{\chi,T}(f)=c_{q,a}E(f)+\Gamma_a(f)-P_{\chi,T}(f)
             -2\iota\left(\int f(t)\sinh(t/2)\,dt\right)^2.
$$

The signed sum equals the native `twistedPrime` on a real test, where
the real correlation makes conjugating the character immaterial. Every
prime power and ramified zero remains in the sum. The last term is the
sum of the **two** original zeta pole products. Their kernel on the
window square is $R(t,s)=e^{(t-s)/2}+e^{-(t-s)/2}$, so
$R=C_++C_-$ where $C_\pm$ have kernels $e^{\pm|t-s|/2}$. The form of
$C_-$ lies between $0$ and $4E$: its whole-line Fourier multiplier is
$(1/4+\xi^2)^{-1}$. Thus the native arithmetic discrepancy to estimate is
$A_{\chi,T}(f)=P_{\chi,T}(f)-\iota\langle f,C_+f\rangle$, and
$Q_{\chi,T}=c_{q,a}E+\Gamma_a-A_{\chi,T}+\iota\langle f,C_-f\rangle$.

Put $F(u)=u^{3/5}/(\log u)^{1/5}$ for $u\ge2$. There are fixed-character
constants $c,C>0$ such that for all sufficiently large $T$ and all the
original tests,

$$
|A_{\chi,T}(f)|\le C e^T\left(e^{-cF(2T)}E(f)+\frac{\Gamma_a(f)}{F(2T)}\right).
\tag{1}
$$

On the cap $\Gamma_a(f)\le 2\pi^2\mu_a E(f)/T^2$ this yields an
unconditional lower bound

$$
Q_{\chi,T}(f)\ge - C_\chi\, e^T\frac{(\log T)^{1/5}}{T^{13/5}}E(f).
\tag{2}
$$

The bound is uniform over tests for each fixed character and holds at
every sufficiently large radius, hence at the original integer stages.
Its exponential rate is one. The proof uses the signed Chebyshev error
before paying the Fourier tail by the original gamma term.

## 2. Proof of the signed bound

Let $X=e^{2T}$ and
$G_\chi(x)=\sum_{2\le n\le x}\Lambda(n)\Re\chi(n)-\iota x$.
The fixed-modulus PNT in progressions gives, for some $c_0>0$,

$$
|G_\chi(x)|\ll_\chi x\exp[-c_0F(\log x)]. \tag{3}
$$

Use Thorner–Zaman, Corollary 1.4 and Remark 1.5, for the ordinary prime
sum in each reduced class. At fixed $q$, any exceptional term with
fixed exponent $\beta<1$ is absorbed by (3). Summing with $\Re\chi$
cancels the main term for nonprincipal $\chi$. For $q=1$ use the odd
prime class modulo two and restore the prime two. Proper powers weigh
$O(\sqrt x\log x)$ in total by summing the Chebyshev bound over the
exponents, which fits the error in (3).

For angular Fourier transform use measure $d\xi/(2\pi)$. Since the
test is real, Plancherel writes $A_{\chi,T}$ as the quadratic integral
of $S_{\chi,T}(\xi)|\widehat f(\xi)|^2$, with

$$
S_{\chi,T}(\xi)=2\Re\int_{(1,X)} x^{-1/2+i\xi}\,dG_\chi(x).
$$

The continuous integral here is precisely the $C_+$ kernel on the
support square. The support implies zero correlation at shift $2T$,
and the prime inventory uses the strict endpoint. By the unsigned
Chebyshev bound and Abel summation one has $|S_{\chi,T}(\xi)|\ll e^T$
for all $\xi$. For a second bound fix $U$ sufficiently large that (3)
holds and $c_0 F'(\log u)\le1/4$ for $u\ge U$. The part through $U$ is
bounded independently of $T,\xi$. On $(U,X)$ put $z=-1/2+i\xi$ and
integrate by parts. The exact expression before taking real parts is

$$
X^zG_\chi(X^-)-U^zG_\chi(U)-z\int_U^X x^{z-1}G_\chi(x)\,dx .
$$

Write $e_0(u)=\exp[-c_0F(\log u)]$. The derivative condition gives
$e_0(u)\le e_0(X)(X/u)^{1/4}$ throughout $[U,X]$. Therefore
$\int_U^X u^{-1/2}e_0(u)\,du\le4\sqrt X e_0(X)$. Using (3) in the
endpoint and integral terms now yields

$$
|S_{\chi,T}(\xi)|\ll_\chi (1+|\xi|)e^T e^{-c_0 F(2T)}. \tag{4}
$$

The gamma Fourier multiplier $M_a$ is the one in the cap source, with
$M_a(\xi)\ge\tfrac12\log(1+\xi^2/(a+1/2)^2)$ from the Laplace integral
in its Section 3. On $|\xi|\le\exp[(c_0/2)F(2T)]$ use (4). On the
complement the gamma multiplier is bounded below by a positive
constant times $F(2T)$, so its Fourier mass is at most
$C\Gamma_a(f)/F(2T)$. The crude $O(e^T)$ symbol controls that portion.
The split operates inside the quadratic integral of the original
supported test. It proves (1) and then (2), since the negative scalar is
$O_\chi(E)$ and the retained $C_-$ term is nonnegative.

## 3. Exact obstruction from small changes at the same prime powers

The error class in (3), the canonical prime-power locations, the
character phases and the two original pole products together do not
force a subexponential lower bound if the exact von Mangoldt **magnitudes**
are replaced by positive magnitudes with that same error class. An
explicit family of such modified weights has exponential negative
values at every sufficiently large radius on the *same* gamma cap.

Fix $0<d<c_0$ from (3). Choose an arbitrarily large fixed prime cutoff
$p_0\ge e^2$. Let $\varepsilon(p)=0$ for $p<p_0$ and
$\varepsilon(p)=\tfrac12\exp[-dF(\log p)]$ otherwise. Define weights

$$
\widetilde\Lambda(p^k)=\log p\,[1-\varepsilon(p)\operatorname{sgn}(\Re\chi(p))]
\quad(k\ge1),\qquad \widetilde\Lambda(n)=0\quad\text{off prime powers}.
\tag{5}
$$

The sign at zero is zero. At $q=1$ the factor is $1-\varepsilon(p)$.
For each model the same amplitude factor applies to every power of a
prime, and the actual $\chi(p^k)$ is still used. The weights are positive
on the prime powers and can agree with the native weights on any given
finite initial prime inventory. Only the weights in $P$ are changed
in $\widetilde Q$.

The modified weights retain (3) with exponent $d$, even when the
cumulative comparison is made separately in every fixed progression.
Indeed the absolute ordinary-prime change through $x$ is bounded by
$\sum_{p\le x}(\log p)\varepsilon(p)\ll x\exp[-dF(\log x)]$.
For large $u\le x$, $dF'(\log u)\le1/2$ gives
$\exp[-dF(\log u)]/\exp[-dF(\log x)]\le (x/u)^{1/2}$.
Abel summation, using $\sum_{p\le u}\log p=O(u)$ and
$-\varepsilon'(u)\le\varepsilon(u)/(2u)$ on the smooth branch, proves
the bound. The jump at $p_0$ and proper powers cost at most
$O_{p_0}(1)+O(\sqrt x\log x)$ in this estimate. Thus both the modified
ordinary PNT and its fixed-modulus progression versions have the same
error class as the native arithmetic, with separate implied constants.

Choose a fixed smooth $0\le\eta\le1$ with $\eta(u)=0$ for $u\le1/4$
and $\eta(u)=1$ for $u\ge1$. The test

$$
f_T(t)=T^{-1/2}\sin(\pi t/T)\,\eta(T-|t|)\quad (|t|<T),\qquad
f_T(t)=0\quad (|t|\ge T)
$$

is smooth real odd for large $T$. The cutoff changes the sine only in
fixed-width boundary strips where it is $O(T^{-1})$ before
normalization. Consequently $E(f_T)\to1$ and
$T^2\|f_T'\|_2^2\to\pi^2$. The original translation estimate
$\Gamma_a(f_T)\le\mu_a\|f_T'\|_2^2$ proves membership in the stated cap.
The native value satisfies
$|Q_{\chi,T}(f_T)|\ll_\chi e^T e^{-c_0 F(2T)}$ by (4) on the whole
Fourier integral, since Cauchy–Schwarz and Plancherel give
$\int |\xi||\widehat f_T(\xi)|^2 d\xi/(2\pi)\le\|f_T\|_2\|f_T'\|_2$,
and the scalar, gamma and retained $C_-$ are bounded.

The effect of (5) on ordinary prime coefficients in $P$ is exactly
$-\varepsilon(p)(\log p)|\Re\chi(p)|$. For shifts $r>T$ all overlaps
join the negative half and the positive half, so $C_{f_T}(r)\le0$.
More precisely, if $r=2T-u$ with $3\le u\le4$, integrate over
$t=-T+v$, $1\le v\le3/2$. Both cutoff factors equal one there, and
the two sine factors have opposite signs and magnitude bounded below
by constants times $1/T$. With the two normalization factors this
gives $-C_{f_T}(r)\ge c_2/T^3$.

On this far interval use just primes $p\equiv1\pmod q$ if $q>1$ and
all primes if $q=1$, so $|\Re\chi(p)|=1$. The fixed-modulus PNT gives
total log weight $\gg_\chi e^{2T}$ in
$[e^{2T-4},e^{2T-3}]$. Also $p^{-1/2}\ge e^{-T}$ and
$\varepsilon(p)\ge\tfrac12 e^{-dF(2T)}$ there for large $T$. Ordinary
primes at other long shifts cannot hurt this gain. Short shifts
$r\le T$ cost $O(e^{T/2})$ by the unsigned Chebyshev bound, and the
entire proper-power change costs $O(1+T)$ by
$\sum_{p\le e^T}(\log p)/[p(1-p^{-1/2})]=O(1+T)$.
Thus the **increase** in the signed prime form is

$$
\widetilde P_{\chi,T}(f_T)-P_{\chi,T}(f_T)
       \ge c_3 T^{-3} e^{T-dF(2T)}
$$

for all sufficiently large $T$. Since the native value has the
two-sided bound with $c_0>d$, this proves

$$
\widetilde Q_{\chi,T}(f_T)\le -c_4 T^{-3}e^{T-dF(2T)}. \tag{6}
$$

The magnitude on the right has exponential rate one, including along
any unbounded sequence of integer radii. The comparison uses both signed
zeta pole products and the actual gamma kernel. The genuine $L$-function
explicit formula uses the original von Mangoldt magnitudes. Equation (6)
falsifies an inference based on the absolute cumulative error envelopes
together with the retained support, parity, phase and pole structure.
The sign of the genuine form on these tests remains undetermined.

## 4. Source return and evidence

The exact consumers are `DirichletStageChain.PrimitiveStageLower` and
the separate `OddLiteralCofinal.StageLower`. With $T=j+1$ and
$\Gamma_a(f)\le 2\pi^2\mu_a E(f)/T^2$, the remaining target is a
subexponential lower budget for the native $Q_{\chi,T}$ on unbounded
stages. The exact missing inequality, for some $d_j\ge0$ with
$\log(1+d_j)=o(j)$ along those stages, is

$$
A_{\chi,j+1}(f)\le \Gamma_a(f)+(c_{q,a}+d_j)E(f)
                 +\iota\langle f,C_-f\rangle
$$

on the displayed cap. Section 3 shows why establishing this comparison
requires signed information beyond the absolute Chebyshev envelope.

- [WeilConductorFrontier.lean](../WeilConductorFrontier.lean), blob
  `ac9bf37f07ef22d7ca75b918baeea3161df028b7`, supplies
  `primitiveArithmeticValue`. [WeilOddLiteralWindow.lean](../WeilOddLiteralWindow.lean),
  blob `ae085838734c9ae5ae47e83797d3dcde9f195a35`, supplies the pole-inclusive
  `shiftedOddWeilEnergy`.
- [WeilFlatBaselinePoleScale.md](WeilFlatBaselinePoleScale.md), WFBP-v1-5,
  supplies the $C_++C_-$ recentering. Its unrestricted operator-norm
  obstruction concerns a different test domain. The present proof
  pays the original gamma cap and compares signed Chebyshev inputs.
- J. Thorner and A. Zaman, *Refinements to the prime number theorem for
  arithmetic progressions*, arXiv:2108.10878v2, Corollary 1.4 and
  Remark 1.5, for the fixed-modulus input (3). [Primary paper](https://arxiv.org/abs/2108.10878v2).

Written analytical argument. Lean formalization, elaboration,
compilation, fresh kernel replay, transitive axiom audit, numerical
certification and independent human review: `NOT_RUN`. Originality
unassessed. RH and Dirichlet GRH remain open.
