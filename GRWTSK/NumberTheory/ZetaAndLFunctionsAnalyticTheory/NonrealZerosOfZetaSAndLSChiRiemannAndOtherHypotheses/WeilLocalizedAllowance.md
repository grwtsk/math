# The sharp bounded allowance for the sampled local prime sum

grwtsk contributors · 2026-11-15

Written analytical source candidate for [math#1804](https://github.com/grwtsk/math/issues/1804).
Inspected main `146b637eaf706790288a16ac3ea9a5664bea13cc`.
Use the exact source and sample set of [WeilSampledLocalPrimeCriterion.md](WeilSampledLocalPrimeCriterion.md),
commit `3e6223de8178c5fd3218ff25ce3878713e8a9498`, blob
`6798953ba567445b7d791136fc16be378301cc10`. The tent tests are those of
[WeilTentSignedRieszCriterion.md](WeilTentSignedRieszCriterion.md), commit
`52c87ad844866d5a7bbee905237be48ddf270875`, blob
`7bfc26a2293000bde8be4de47ac57c464b147796`.

## Exact limiting allowance at each fixed character

Fix one primitive character $\chi$ of actual conductor $q$ and parity $a$.
Use conductor-one zeta with $a=0$. Let $p=b*\mathbf1_{[-h/2,h/2]}^{*2}$,
$h=1/8$, and let $\Pi$ be its angular transform. Keep the current local
signed prime-power sum $A_\chi(U)$, the same nodes $\mathcal S_T$ at each
integer stage $T$, and the pole/gamma remainder $\mathcal E_\chi(U)$ in
Eq. (3) of the local source. Define the worst negative value

$$
d_\chi(T)=\max_{r\in\mathcal S_T}(-A_\chi(2r))_+.
$$

If all open-strip zeros of this fixed character lie on the critical
line, then

$$
\lim_{T\to\infty,\ T\in\mathbb N}d_\chi(T)=S_\chi:=Q_\chi(p).
\tag{1}
$$

If any such zero is off the line, the limit is $+\infty$, at the
exponential rate already established for this same sample set. The
value in (1) is therefore the exact asymptotic bounded allowance in
the line-zero case, along **any** unbounded sequence of stages. It is
an explicitly physical small-support value:

$$
S_\chi=\log(q)E(p)+\mathrm{gammaConstant}(1,a)E(p)+\Gamma_a(p)
             +2\mathbf1_{q=1}\Pi(i/2)^2. \tag{2}
$$

The short test $p$ has support radius $S+h<1/4$, so its correlation at
every shift $\log n\ge\log2$ is zero. This proves the absence of its
prime term in (2) from the original strict support rule. The genuine
conductor scalar splits by $\log q$, and the two original zeta poles
give the positive last term for the even test $p$.

To prove (1), in the line-zero case put $a_z=w_z\Pi(z)^2\ge0$ for the
actual weighted zero ordinates $z\in\mathbb R$. The $a_z$ sum to
$S_\chi$ by the exact even-test formula, including a possible central
zero. Absolute summability follows from the strip decay of $\Pi$ and
the native height count. Thus

$$
A_\chi(2r)+\mathcal E_\chi(2r)=-\sum_z a_z\cos(2rz)\ge -S_\chi .
$$

The remainder tends to zero uniformly on the sampled range
$r\ge9T/10$. To reach the opposite inequality, fix $\varepsilon>0$
and keep enough frequencies that the remaining coefficient sum is
less than $\varepsilon$. The retained phases return simultaneously
arbitrarily close to one in every interval of some fixed length.
Indeed, the closure of the finite vector of phases as $r$ ranges over
the reals is a compact subgroup of a torus. Finitely many translates,
by actual orbit points, of any open identity neighborhood cover that
subgroup. At any time one of these translates gives a return within
the maximum of a fixed finite set of time shifts. This argument does
not require independence of the ordinates over the rationals.

The maximum distance to a Gauss–Legendre node in each unit block tends
to zero as its order grows. For a proof, positivity, mass one and
exactness on every fixed polynomial for large order imply weak
convergence to Lebesgue measure by polynomial approximation. Every
member of any fixed fine covering by open intervals then contains a
node for all sufficiently large orders. Apply this on the full blocks
in a fixed interior subinterval of $[9T/10,T-1]$ of length growing with
$T$. They contain a simultaneous return and nodes arbitrarily near
it. The absolutely convergent cosine series is uniformly continuous,
so on these nodes its value is within $O(\varepsilon)$ of $-S_\chi$.
Together with the lower bound this proves (1).

## Two unconditional obstructions to smaller allowances

For **every fixed primitive character**, every sufficiently large
stage has an actual sample with $A_\chi(2r)<-10^{-6}$. The onset may
depend on the character. For an off-line zero use the preceding
negative-growth result. In the line-zero case use (1) and the following
finite-height lower bound on $S_\chi$.

For $q>1$ the actual conductor is at least $3$. Bennett–Martin–
O’Bryant–Rechnitzer, Theorem 1.1, counts zeros with $|\Im\rho|\le16$,
including any central zero. At this height write $\ell=\log(9q/\pi)>2$.
The logarithm in their main term is
$\log(16q/(2\pi e))=\ell-1-\log(9/8)>\ell-9/8$. Using $16/\pi>5$,
their remainder bounded above by $(9/4)\ell-1/2$, and the parity
correction bounded below by $-1/4$, the zero count is strictly above
$(11/4)\ell-43/8>1/8$. On the line this gives a real angular ordinate
$|z|\le16$. The same range for zeta follows from its verified first
ordinate in $(14,15)$.

For every real $|z|\le16$, the support of $b_0$ gives
$B_0(z)\ge1-(16/4096)^2/2>99/100$. Also $\cos(z/12)\ge1/9$ and
$\sin(z/16)/(z/16)\ge5/6$ by the elementary Taylor bounds, with the
removable value at zero. It follows that

$$
\Pi(z)\ge (1/64)(99/100)(1/9)(25/36)>1/1000.
$$

Thus a single actual zero contributes greater than $10^{-6}$ to the
even-test sum. Averaging multiplicities over reflections and
conjugation leaves its total contribution unchanged. This proves
$S_\chi>10^{-6}$ and the asserted obstruction to any vanishing lower
allowance along unbounded stages.

There is also **no bounded allowance independent of conductor**
that works eventually for each fixed primitive source, even with a
character-dependent starting stage. Indeed (2) gives
$S_\chi=E(p)\log q+O(1)$ for $q>1$, with the two parity constants
fixed and $E(p)>0$. For any proposed constant take a primitive
quadratic character of a sufficiently large prime conductor. If all
its zeros lie on the line, (1) exceeds the proposed allowance. If
the character has an off-line zero, the worst negative value
diverges. This proof uses a fixed character after choosing its
conductor and does not take a joint conductor/support limit.

## Explicit finite-stage bound for the original zeta tent tests

Here the only zero-location input is the published Platt–Trudgian
verification up to $H=3\cdot10^{12}$. Its scope is finite. For the
actual zeta local sum, the following bound holds for every real
$3\le r\le1{,}300{,}000$:

$$
|A_\zeta(2r)|\le S_\zeta+2\cdot10^{-6}. \tag{3}
$$

In addition, for each integer $20\le T\le780{,}000$ and **every**
predetermined tent node $r\in\mathcal S_T$, its original pole-inclusive
Weil value satisfies the actual dyadic allowance

$$
Q_{\zeta,T}(f_r)\ge-2^{-(T-1)}E(f_r). \tag{4}
$$

For the tail proof use the literal widths
$a_k=c_0/[k\log^2(k+1)]$ with $\sum a_k=1/4096$. The decreasing integral
bound gives
$\sum 1/[k\log^2(k+1)]\le3/(2\log^22)+1/\log2<21/4$, hence
$c_0>1/22000$. Take $N=400{,}000$. For $k\le N$, $\log(k+1)<13$
by $(27/10)^{13}>400{,}001$ and $e>27/10$. Therefore for $|x|\ge H$,
$a_k|x|>2N/k$. In the strip $|y|\le1/2$ the first $N$ sinc factors
satisfy $|\operatorname{sinc}(a_k(x+iy))|\le e^{a_k|y|}k/(2N)$.
The remaining factors have the probability-integral bound
$e^{a_k|y|}$. The translated factor contributes at most $e^{|y|/12}$.
This gives

$$
|B(x+iy)|\le e^{S/2}\frac{N!}{(2N)^N}<e^{S/2}e^{-666650}.
$$

In fact $\log(N!)\le N\log N-N+1+\log N$ by comparison with the log
integral, and $\log 2>2/3$, so the factorial ratio has logarithm less
than $-5N/3+14<-666650$.

The zeta count of Hasanalizade–Shen–Wong implies
$N^+(u)\le u\log u$ for $u\ge H$, where $N^+$ counts the positive
heights with multiplicity. Their main term is at most $u\log u/6$
and the remainder is bounded by $\log u+10$ there. Including both
height signs and using partial summation, the actual tail obeys

$$
\sum_{z:\,|\Re z|>H}m_z|\Re z|^{-4}
 \le8\int_H^\infty u^{-4}\log u\,du<4/H^2,
$$

where $m_z$ is the multiplicity of each actual zero. On the
strip, $|\Pi(z)|^2\le16e^h |B(z)|^2/|\gamma|^4$ for nonzero
$\gamma=\Re z$. Therefore the absolute tail of the even-test
coefficients at height $H$ is less than $e^{-1333300}$, since
$16e^{S+h}(4/H^2)<1$.

All zeros through that height are on the line, with no real strip
zero as in the local source. Their positive coefficient sum is at
most $S_\zeta+e^{-1333300}$ by the exact even-test formula. At any
$r\ge3$, the remainder in the local identity satisfies
$0<\mathcal E_\zeta(2r)<10^{-6}$: it is the integral of $C_p(2r-s)$
against $e^{-5s/2}/(1-e^{-2s})$ with $s>2r-1/2$ and
$\int C_p=h^4=1/4096$. The high cosine terms have modulus at most
$e^r$ times the even-test absolute tail. This proves (3), since
$(1+e^{1300000})e^{-1333300}<10^{-6}$.

For (4), use the original odd tent zero formula. Its verified-height
terms are all nonnegative. At higher zeros the squared tent transform
is bounded by $36e^r |B(z)|^2/|\gamma|^4$, using the two sines in the
tent transform and the width $|\Im z|\le1/2$. The same count and
factorial estimate pay this full tail by $e^{r-1333300}$, since
$36e^S(4/H^2)<1$. Thus $Q_{\zeta,T}(f_r)\ge-e^{r-1333300}$, including
both original zeta poles through the explicit formula. The shift norm
estimate in the tent note gives
$\|f_r\|_2\ge r^{3/2}/\sqrt6-S\sqrt{2r}>\sqrt r/5$ for $r\ge1$.
In the range of (4), $r\le T-1$ and
$\log25+(1+\log2)(T-1)<1333300$ using $\log25<4$ and $\log2<7/10$.
It follows that the tail is at most $2^{-(T-1)}E(f_r)$.

For completeness, the stated nodes satisfy the gamma cap throughout
this finite range: $r\ge9T/10\ge18$ and
$\|f_r\|_2\ge\|g_r\|_2(1-\sqrt{12}S/r)\ge(19/20)\|g_r\|_2$.
Use $\Gamma_0(f_r)\le2\mu_0r$ and
$12/[(9/10)^2(19/20)^2]<18<2\pi^2$. Their support fits the covering
window strictly. Equation (4) supplies the bound for the predetermined
tests, with the full literal stage domain remaining a separate demand.

## Source and evidence

The consumers are the fixed-sample cap supplier of the tent note,
`DirichletStageChain.PrimitiveStageLower` and the separate
`OddLiteralCofinal.StageLower` at $T=j+1$. Equation (1) identifies
the sharp fixed-character limiting allowance. Equations (3)–(4) have
finite radius scope. The native lower estimate with one subexponential
deficit across all nodes at an unbounded sequence of stages remains
open, and so do RH and Dirichlet GRH.

- Bennett–Martin–O’Bryant–Rechnitzer, *Counting zeros of Dirichlet
  $L$-functions*, Math. Comp. 90 (2021), Thm. 1.1.
  [Primary paper](https://arxiv.org/abs/2005.02989).
- Platt–Trudgian, *The Riemann hypothesis is true up to $3\cdot10^{12}$*,
  Bull. London Math. Soc. (2021), Thm. 1. The first ordinate in
  $(14,15)$ is documented in the [FLINT zero-isolation reference](https://flintlib.org/doc/acb_dirichlet/zeta-zeros.html).
  [Finite-height verification](https://arxiv.org/abs/2004.09765).
- Hasanalizade–Shen–Wong, *Counting zeros of the Riemann zeta function*,
  J. Number Theory 235 (2022), Cor. 1.2. [Primary paper](https://arxiv.org/abs/2107.06506).
- [WeilGammaPhysicalReturn.lean](../WeilGammaPhysicalReturn.lean), blob
  `a6eb4ce4ef5e7023c3a09e3ba66e3a420df9f723`, supplies the source
  even-test identity with both pole products. The odd tent source
  uses `RealWeilSource.literalOdd_zeta_zeroSum` as in the tent note.

Written analytical argument. Exact rational checks passed for the
tail margins, cap constants and low-ordinate bounds. They cover only
the finite inequalities. The external finite-height result is used
at its published scope. Local zero isolation, Lean formalization,
elaboration, compilation, fresh kernel replay, transitive axiom audit
and independent human review: `NOT_RUN`. Originality is unassessed.
