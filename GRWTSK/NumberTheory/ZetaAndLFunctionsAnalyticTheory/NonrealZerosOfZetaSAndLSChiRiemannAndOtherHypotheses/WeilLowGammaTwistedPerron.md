# Uniform twists on the shrinking Weil gamma cap

grwtsk contributors · 2026-11-15

Written analytical source for [math#1804](https://github.com/grwtsk/math/issues/1804).
This uses the original form and the precise cap of
[d41f637a4b81](https://github.com/grwtsk/math/commit/d41f637a4b81ef592763dae8651361626f8b608d)
and compares with the Chebyshev estimate and biased weights of
[a7d8ef221197](https://github.com/grwtsk/math/commit/a7d8ef2211971460276b53a662c44f00b56cb1a4).

## 1. An unconditional bound on the entire cap

Fix a primitive Dirichlet character $\chi$ of actual conductor $q$ and
parity $a$. At $q=1$ take $\zeta$, $a=0$, and write $\iota=\mathbf1_{q=1}$.
Let $f$ be real, odd, smooth, and compactly supported in $(-T,T)$.
With zero extension, set $E=\|f\|_2^2$ and $C_f(r)=\int f(t)f(t+r)\,dt$.
Use the source kernel $K_a(r)=e^{-(a+1/2)r}/(1-e^{-2r})$ and
$\Gamma_a(f)=\int_0^\infty K_a(r)\|f(\cdot+r)-f\|_2^2\,dr$.
Put $\mu_a=\int_0^\infty r^2K_a(r)\,dr$. The native arithmetic form is
$
Q_{\chi,T}(f)=c_{q,a}E+\Gamma_a(f)
  -2\sum_{2\le n<e^{2T}}\frac{\Lambda(n)\Re\chi(n)}{\sqrt n}\,C_f(\log n)
  -2\iota\left(\int f(t)\sinh(t/2)\,dt\right)^2,
\qquad c_{q,a}=\log(q/\pi)+\psi(1/4+a/2).
$
For each fixed $\chi$ there is a constant $C_\chi$ such that, at every
sufficiently large real radius $T$,
$
\boxed{\quad
\Gamma_a(f)\le \frac{2\pi^2\mu_a}{T^2}E
\quad\Longrightarrow\quad
Q_{\chi,T}(f)\ge -C_\chi e^T\frac{(\log T)^2}{T^{7/2}}E .
\quad} \tag{1}
$
All constants and the starting stage may depend on the fixed character.
The bound applies to every test in the cap and to the original integer
radii $T=j+1$. Its allowance has exponential rate one.

For zeta the two original pole products have the combined kernel
$e^{(t-s)/2}+e^{-(t-s)/2}$ on the window square. Its quadratic form for
odd $f$ gives the displayed negative pole term. Write it as $C_++C_-$,
where $C_\pm$ denote the operators with kernels $e^{\pm|t-s|/2}$.
The uniform estimate below is for the signed prime sum centered by
$\iota\langle f,C_+f\rangle$. The other piece
$\iota\langle f,C_-f\rangle$ stays in $Q$, and is nonnegative by the
whole-line multiplier $(1/4+\xi^2)^{-1}$ of $e^{-|r|/2}$.

## 2. The twisted Chebyshev estimate

For any fixed $k>0$ one can take $\kappa=\kappa_{\chi,k}>0$ and
$Y=\exp(\kappa T^{3/2}/(\log T)^2)$ so that
$
G_\xi(x):=\sum_{2\le n\le x}\Lambda(n)\Re\chi(n)n^{i\xi}
   -\iota\frac{x^{1+i\xi}}{1+i\xi}
  =O_{\chi,k}(xT^{-k}),
\quad e^T\le x\le e^{2T},\quad |\xi|\le Y/2 . \tag{2}
$
At the upper endpoint $X=e^{2T}$ the same estimate holds with the strict
sum over $n<X$.

Choose $d_\chi>0$ small and write
$
\delta=\frac{d_\chi}
 {(\log(Y+3))^{2/3}(\log\log(Y+3))^{1/3}} .
$
For all large $Y$ every zero of the completed primitive function with
$|\Im\rho|\le 2Y+2$ has $\Re\rho\le1-2\delta$. For large ordinates this
is the Vinogradov–Korobov region of Khale, Theorem 1.1, for $q>1$ and
Mossinghoff–Trudgian–Yang, Theorem 1.2, for $q=1$. At bounded ordinates
use nonvanishing on $\Re s=1$ and discreteness to obtain a fixed gap.
A possible real exceptional zero for a fixed nonprincipal character
is inside the strip and is included in that fixed gap. The region
also applies to $\bar\chi$. For zeta the pole at one is treated below.

Here is a direct bound for the logarithmic derivative used in the
contour shift. For either $\eta=\chi$ or $\bar\chi$, compare the
Hadamard logarithmic derivatives of the completed function at
$w=\sigma+it$ and $w_0=2+it$. Their difference is the sum of
$(w-\rho)^{-1}-(w_0-\rho)^{-1}$ with multiplicity. For
$1-\delta\le\sigma\le2$ and $|t|\le2Y$, the terms with
$|t-\Im\rho|\le1$ cost $O_\chi(\delta^{-1}\log Y)$ using the gap and
the logarithmic unit-height count from the source at d41f637a4b81,
§3. The shell $j<|t-\Im\rho|\le j+1$ for integer $j\ge1$ costs
$O_\chi(j^{-2}\log(2+|t|+j))$. Summing these shells costs
$O_\chi(\log Y)$. The gamma and conductor factors contribute
$O_\chi(\log Y)$ by Stirling's formula in $\Re w\ge3/4$, and the
Euler series at $w_0$ is absolutely bounded independently of $t$.
For zeta the completion includes $w(w-1)$, so the removed pole is
$\iota/(w-1)$ in the negative logarithmic derivative and the
remaining $1/w$ term is bounded. Hence
$
\left|-\frac{L'}{L}(w,\eta)-\frac{\iota}{w-1}\right|
  \ll_\chi(\log Y)^2 \tag{3}
$
with the removable value at $w=1$ understood.

For half-integral $x\ge3$, apply truncated Perron at
$c=1+1/\log x$ and height $Y$ to the mean of the two negative
logarithmic derivatives at $s-i\xi$, times $x^s/s$. The Euler
coefficients on $\Re s=c$ are precisely
$\Lambda(n)\Re\chi(n)n^{i\xi}$. The kernel error for each $n$ is
$O((x/n)^c/[Y|\log(x/n)|])$, by integration by parts in the
tails of the vertical inversion integral. For $x/2<n<2x$
the bound $\Lambda(n)\le\log n$ and the half-integral distance
give total error $O(x(\log x)^2/Y)$ by the harmonic sum in
$|n-x|^{-1}$. For the other terms $|\log(x/n)|$ is bounded from
below and $\sum_{n\ge2}(\log n)n^{-c}\ll(\log x)^2$ gives the
same bound. These estimates are uniform in $\xi$.

Move the contour to $1-\delta$. The zeta case crosses the pole at
$s=1+i\xi$ with residue $x^{1+i\xi}/(1+i\xi)$. The nonprincipal
case crosses no pole. In the two horizontal integrals and the new
vertical integral, $|\Im(s-i\xi)|\le 2Y$. The shifted pole term
on those edges has denominator at least $Y/2$ and $\delta$,
respectively. Equation (3) thus bounds the total horizontal
contribution by $O_\chi(x(\log Y)^2/Y)$ and the left vertical
one by $O_\chi(x^{1-\delta}(\log Y)^3)$, using
$\int_{-Y}^Y |1-\delta+it|^{-1}\,dt=O(\log Y)$.
There is no passage through a nontrivial zero.

For general $x$ with a weak endpoint, apply the estimate at
$\lfloor x\rfloor+1/2$, which gives the same integer inventory.
For a strict endpoint at an integer $x$ use $x-1/2$ instead.
The difference of the two main terms is at most $1/2$ because
the derivative of $x^{1+i\xi}/(1+i\xi)$ has modulus one. On the
stated range, including these half-unit shifts, the choice of $Y$
gives $\delta\log x\gg_\chi\kappa^{-2/3}\log T$. Choosing $\kappa$
small pays $T^{-k}$ and the contour logarithms. The errors with
denominator $Y$ and the bounded endpoint correction also fit
$xT^{-k}$. This proves (2).

## 3. Paying the remaining test frequencies

Let $\widehat f$ be the angular Fourier transform and use
$d\xi/(2\pi)$ for Plancherel. Put $X=e^{2T}$ and define the real
multiplier of the centered prime form by
$
S_T(\xi)=2\Re\left(
   \sum_{2\le n<X}\Lambda(n)\Re\chi(n)n^{-1/2+i\xi}
       -\iota\int_1^X x^{-1/2+i\xi}\,dx\right).
$
The continuous part is the original $C_+$ correlation on the
support square. This follows by setting $x=e^r$ and using that
$C_f$ is even, and vanishes for $|r|\ge2T$. In particular the
strict prime cutoff gives the correct original form even if $X$
is an integer. Write $A=\int S_T(\xi)|\widehat f(\xi)|^2\,d\xi/(2\pi)$.
The exact source return is
$Q_{\chi,T}(f)=c_{q,a}E+\Gamma_a(f)-A+\iota\langle f,C_-f\rangle$.

The unsigned Chebyshev bound and partial summation give
$|S_T(\xi)|\ll e^T$ for every $\xi$. For $|\xi|\le Y/2$ use
(2) with $k=5$. The part through $e^T$ in $S_T$ costs
$O(e^{T/2})$ by the same unsigned bound. On $[e^T,X)$ apply
partial summation with weight $x^{-1/2}$ to $G_\xi$.
The endpoint terms and the integral of $x^{-3/2}G_\xi(x)$
are $O_\chi(e^T T^{-5})$. The oscillation is already in
$G_\xi$, so no derivative factor in $\xi$ enters this step.

The source gamma multiplier satisfies
$M_a(\xi)\ge\frac12\log(1+\xi^2/(a+1/2)^2)$. Thus on
$|\xi|>Y/2$ the Fourier mass is at most $O_a(\Gamma_a(f)/\log Y)$.
Combining the two portions gives
$
|A|\ll_\chi e^T\big(T^{-5}E+\Gamma_a(f)/\log Y\big).
$
The cap, the nonnegative $C_-$ term, and the constant bound on
the scalar term give (1). This improves the polynomial factor
in the earlier Chebyshev bound, which differentiates the phase
after applying an untwisted estimate.

## 4. Exact limitation of these arithmetic inputs

The bounds used for $G_\xi$ and $S_T$, even with (2) available
for every fixed power $k$, are insufficient on their own for a
subexponential capped allowance. To see this use the exact
modified-weight model of
[WeilLowGammaChebyshevObstruction.md](WeilLowGammaChebyshevObstruction.md),
§3. Keep the original $\chi$, the gamma term, and both original
zeta poles. For a fixed $d>0$ smaller than the native untwisted
PNT exponent in that source, set
$F(u)=u^{3/5}/(\log u)^{1/5}$ for $u\ge2$.
Above an arbitrary fixed prime cutoff, replace the magnitude at
$p^m$ by
$
\widetilde\Lambda(p^m)=\log p
   \left(1-\tfrac12 e^{-dF(\log p)}\operatorname{sgn}(\Re\chi(p))\right).
$
Below the cutoff keep the original magnitudes. At every prime
and every power the phase in the signed sum stays $\Re\chi(p^m)$.

By the absolute weighted Chebyshev estimate proved in that
source, the sum of the magnitudes of the changes through $x$
is $O_{\chi,d}(x e^{-dF(\log x)})$. This estimate holds after
multiplying each change by a twist of modulus one. On
$e^T\le x\le e^{2T}$ it is $O_{\chi,d,k}(xT^{-k})$ for
each fixed $k$, so the modified system satisfies (2) with
the same $\kappa$ and also the global $O(e^T)$ multiplier
bound. The model retains any fixed initial prime inventory
by raising the cutoff. On the explicit smooth odd sine
cutoffs in the exact gamma cap, the same source proves
$
\widetilde Q_{\chi,T}(f_T)\le
   -c_{\chi,d}\,T^{-3}\exp\big(T-dF(2T)\big) E(f_T)
$
at every sufficiently large radius. The functions have
$E(f_T)\to1$. The right side has exponential magnitude
along every unbounded stage sequence.

This is an obstruction to an inference from the specified
twisted estimates as absolute inequalities. The model
changes the von Mangoldt magnitudes, so its values are
only counterexamples for that inference. For the genuine
arithmetic, a subexponential lower bound on an unbounded
sequence for each fixed character remains equivalent to
the critical-line statement by
[WeilSharpLowGammaDetection.md](WeilSharpLowGammaDetection.md),
§6. The exact signed local-prime condition on the prescribed
stages of [WeilSampledLocalPrimeCriterion.md](WeilSampledLocalPrimeCriterion.md)
is one source-level way of specifying the additional input. Its sampled
criterion is pinned at 3e6223de8178c5fd3218ff25ce3878713e8a9498,
blob 6798953ba567445b7d791136fc16be378301cc10.

## Source and evidence

- The cap and its consumers are DirichletStageChain.PrimitiveStageLower
  and the separate OddLiteralCofinal.StageLower, as identified at
  d41f637a4b81. Its analytical source blob is
  d1f7c04ec8cc8410f2e180d330a623b8dede2a89. The genuine primitive
  arithmetic return uses
  [WeilGammaPhysicalReturn.lean](../WeilGammaPhysicalReturn.lean),
  blob a6eb4ce4ef5e7023c3a09e3ba66e3a420df9f723. The independent
  conductor-one pole formula uses
  [WeilZetaExplicitFormula.lean](../WeilZetaExplicitFormula.lean),
  blob 99d2362fd66a89c746e19517360569d84cc43e70.
- The exact recentering, the earlier bound, and the model negativity
  used in §4 are in the a7d8ef221197 source, blob
  0f48c0fa5b5fa8e98a74a3653ad7d04fc8a35194. No transfer from model
  coefficients to the genuine zero divisor is used.
- The near-one zero-free inputs are T. Khale, *An Explicit
  Vinogradov–Korobov Zero-Free Region for Dirichlet L-Functions*,
  Thm. 1.1 and §2, and M. J. Mossinghoff, T. S. Trudgian and
  A. Yang, *Explicit Zero-Free Regions for the Riemann Zeta-Function*,
  Thm. 1.2. The fixed-character local count uses Bennett–Martin–O’Bryant–Rechnitzer,
  Thm. 1.1, and Hasanalizade–Shen–Wong, Cor. 1.2, as in d41f637a4b81.
  [Khale](https://arxiv.org/abs/2210.06457v1) ·
  [Mossinghoff–Trudgian–Yang](https://arxiv.org/abs/2212.06867v1) ·
  [Dirichlet count](https://arxiv.org/abs/2005.02989v1) ·
  [Zeta count](https://arxiv.org/abs/2107.06506v1)

Written analytical argument with a separate agent check of the
uniform contour shift and the endpoint estimates. Lean formalization,
elaboration, compilation, fresh kernel replay, transitive axiom audit,
numerical certification and independent human review are **NOT_RUN**.
Originality is unassessed.
