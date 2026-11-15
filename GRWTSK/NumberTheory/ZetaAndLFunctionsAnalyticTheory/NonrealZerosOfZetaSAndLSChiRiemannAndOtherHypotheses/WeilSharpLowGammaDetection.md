# Off-line zero detection at the minimum odd gamma scale

grwtsk contributors · 2026-11-15

Written analytical source candidate for [math#1804](https://github.com/grwtsk/math/issues/1804).
Baseline `6ab2b694b60b5f0aacefe9c62f390fc9ddddd4ba`, following the
fixed-character arithmetic obstruction at `3d934a7892e95fae671879c04d21e68fa7617363`.

## 1. Exact low-gamma target

Fix one primitive Dirichlet character $\chi$ of its actual conductor $q$
and gamma parity $a\in\{0,1\}$. For $q=1$ take the zeta character and
$a=0$. All constants below may depend on the fixed character. Let
$\mathcal O_T=C_c^\infty((-T,T),\mathbb R)_{\mathrm{odd}}$ and extend by
zero. Here $T$ is the support **radius**. Set

$$
E(f)=\|f\|_2^2,\quad C_f(r)=\int_{\mathbb R} f(t)f(t+r)\,dt,\quad
K_a(r)=\frac{e^{-(a+1/2)r}}{1-e^{-2r}},\quad
\Gamma_a(f)=\int_0^\infty K_a(r)\|f(\cdot+r)-f\|_2^2\,dr,\quad
\mu_a=\int_0^\infty r^2K_a(r)\,dr.
$$

The constant $\mu_a$ is positive and finite, since the kernel is $O(1/r)$
at zero and decays exponentially at infinity. Equivalently
$\mu_a=2\sum_{k\ge0}(a+1/2+2k)^{-3}$. Write the exact unshifted form as

$$
\begin{aligned}
Q_{\chi,T}(f)={}&\big[\log(q/\pi)+\psi(1/4+a/2)\big]E(f)+\Gamma_a(f)\\
 &-2\sum_{2\le n<e^{2T}}\frac{\Lambda(n)}{\sqrt n}\Re\chi(n)C_f(\log n)
 -2\mathbf 1_{q=1}\left(\int_{\mathbb R} f(t)\sinh(t/2)\,dt\right)^2 .
\end{aligned}
$$

The two zeta pole orientations are the products of the opposite exponential
moments. For odd tests those moments are negatives of each other, so their
sum is precisely the final term. Primitive nonprincipal characters have no
pole term. Enlargement of a covering window preserves $Q$, since every
new shift has overlap measure zero. These are the source forms of
`DirichletStageChain.PrimitiveStageLower` and `OddLiteralCofinal.StageLower`
with the stage allowance restored separately below.

Let $v_\chi=\sup_\rho|\Re\rho-1/2|$ over the actual open-strip zeros of
this $L$-function, with supremum zero if the set is empty. For $B>0$ define

$$
N_{\chi,B}(T)=\sup\left(\{0\}\cup
 \left\{\frac{-Q_{\chi,T}(f)}{E(f)}:0\ne f\in\mathcal O_T,\quad
                 \Gamma_a(f)\le\frac{B}{T^2}E(f)\right\}\right).
$$

**The threshold and the growth rate are**

$$
\begin{aligned}
\lim_{T\to\infty} T^2\inf_{0\ne f\in\mathcal O_T}\frac{\Gamma_a(f)}{E(f)}
   &=\pi^2\mu_a,\\
\lim_{T\to\infty}\frac{1}{T}\log\bigl(1+N_{\chi,B}(T)\bigr)
   &=2v_\chi\qquad (B>\pi^2\mu_a).
\end{aligned} \tag{1}
$$

For $B<\pi^2\mu_a$ the class is eventually empty. The equality case of
the cap is outside the growth claim. The supremum of zero displacements
need never be attained.

## 2. The odd gamma threshold

Use the angular transform $F_f(z)=\int f(t)e^{izt}\,dt$ and Plancherel
measure $d\xi/(2\pi)$. Plancherel on shifts followed by Tonelli gives
$\Gamma_a(f)=\int M_a(\xi)|F_f(\xi)|^2\,d\xi/(2\pi)$, where

$$
M_a(\xi)=2\int_0^\infty K_a(r)(1-\cos(\xi r))\,dr
        =\sum_{k\ge0}\frac{2\xi^2}{b_k(b_k^2+\xi^2)},\qquad
b_k=a+1/2+2k.
$$

The sum follows by expanding $K_a$ and integrating positive summands.
It increases with $|\xi|$, and $M_a(\xi)/\xi^2$ decreases for $\xi>0$
and tends to $\mu_a$ at zero. In particular $M_a(\xi)\le\mu_a\xi^2$.
For $g\in\mathcal O_1$ define $g_T(t)=T^{-1/2}g(t/T)$. Then
$E(g_T)=E(g)$ and $T^2\Gamma_a(g_T)\to\mu_a\|g'\|_2^2$ by dominated
convergence. The normalized first odd Dirichlet sine on $(-1,1)$ has
derivative energy $\pi^2$ and can be approximated by odd smooth
interior cutoffs in $H^1$, which proves the upper limit for the infimum.

For the lower limit, take a sequence of normalized nearly minimizing
tests with radii $T_n\to\infty$ and bounded $T_n^2\Gamma_a$ and scale to
$g_n$ supported on $[-1,1]$. The scaled multipliers are
$T_n^2M_a(\xi/T_n)$. For each $R\ge1$ and $T_n\ge R$, their minimum on
$|\xi|\ge R$ is at least $M_a(1)R^2$ by the monotonicity of $M_a$ and
$M_a(\xi)/\xi^2$. Thus the Fourier mass outside $[-R,R]$ is $O(R^{-2})$
for all sufficiently large $n$. The finite number of earlier terms
has vanishing Fourier tails as well. Cutting the Fourier transforms to
a fixed band is compact on inputs supported in $[-1,1]$, by the
Hilbert–Schmidt kernel of the restricted Fourier transform. The uniform
tail bound therefore gives a strongly convergent subsequence in $L^2$.
The limit $g$ is odd, supported in $[-1,1]$ and has mass one.

Pass to a subsequence whose Fourier transforms converge almost everywhere.
Fatou's lemma and $T_n^2M_a(\xi/T_n)\to\mu_a\xi^2$ give
$\mu_a\|g'\|_2^2\le\liminf_n T_n^2\Gamma_a((g_n)_{T_n})$.
In particular $g$ is in $H^1(\mathbb R)$, with zero traces at $\pm1$ by
its support and zero trace at $0$ by oddness. The Dirichlet Poincaré
inequality on $(0,1)$ gives $\|g'\|_2^2\ge\pi^2$. This proves the first
limit of (1).

## 3. Upper bound on the exact zero sum by physical gamma energy

For the actual zeros put $z=(\rho-1/2)/i$, with multiplicities $m_z$.
On smooth real odd tests the two native explicit formula returns give

$$
Q_{\chi,T}(f)=\Re\sum_z m_z F_f(z)F_f(-z)
             =-\Re\sum_z m_z F_f(z)^2 . \tag{2}
$$

For $q>1$ the canonical native identity returns the divisor of $\chi$
to the arithmetic value at $\chi^{-1}$. The inverse has the same
parity and the real correlations give the identical prime terms, so
(2) is for the displayed $Q_{\chi,T}$. For $q=1$ use the distinct literal
zeta identity, with the two signed pole products included. No symmetry
of the individual complex-character zero set under $z\mapsto-z$ is
used.

For fixed $\chi$, the sum of $m_z$ over $|\Re z-x|\le1$ is
$O_\chi(\log(2+|x|))$. For $q>1$ this follows by taking the difference
of the two absolute-height counts at $|x|+2$ and $|x|-2$ when $|x|$
is large. The main term difference and each remainder are logarithmic
by Bennett–Martin–O’Bryant–Rechnitzer. For zeta use the positive-height
count of Hasanalizade–Shen–Wong and conjugation, with the bounded-height
zeros absorbed in the constant. Multiplicities and possible axial zeros
are included.

For $T\ge1$, the disk mean-value inequality for $|F_f|^2$ at each $z$
with radius $1/T$ and the preceding overlap count give

$$
\sum_z m_z|F_f(z)|^2
 \le C_\chi T^2\int_{-v_\chi-1/T}^{v_\chi+1/T}
            \int_{\mathbb R}\log(2+|x|)|F_f(x+iy)|^2\,dx\,dy.
$$

To pay the frequency weight with physical gamma energy, use
$1-e^{-2r}\le2r$ and the elementary Laplace integral

$$
M_a(\xi)\ge\int_0^\infty e^{-(a+1/2)r}
                  \frac{1-\cos(\xi r)}{r}\,dr
          =\tfrac12\log(1+\xi^2/(a+1/2)^2).
$$

The integral identity follows by differentiating with respect to $\xi$
and integrating the Laplace transform of $\sin(\xi r)$. Thus
$\log(2+|\xi|)\le C_a(1+M_a(\xi))$. On a horizontal line the transform
is that of $wf$, with $w(t)=e^{-y\max(-T,\min(t,T))}$. The clipped weight
has supremum $e^{|y|T}$ and Lipschitz constant at most $|y|e^{|y|T}$.
Expand the shift difference of $wf$ into a shift difference of $f$
times a weight and a shift difference of $w$ times $f$. This gives

$$
E(wf)\le e^{2|y|T}E(f),\qquad
\Gamma_a(wf)\le 2e^{2|y|T}\big[\Gamma_a(f)+\mu_a y^2 E(f)\big].
$$

With Plancherel on each horizontal line the disk bound above therefore
yields, for every original smooth odd test,

$$
|Q_{\chi,T}(f)|\le C_\chi T e^{2v_\chi T}(E(f)+\Gamma_a(f)). \tag{3}
$$

Here $|y|\le v_\chi+1/T\le3/2$ and the integral of $e^{2T|y|}$ over
this strip is $(e^{2Tv_\chi+2}-1)/T$. Formula (3) bounds the whole
zero divisor, including its arbitrarily large heights. It gives the
upper growth rate in (1) on any of the displayed gamma caps.

## 4. Amplification with a uniformly controlled derivative

Suppose an actual zero has coordinate $z_0$ with $v=|\Im z_0|>0$. For
any $0<s<2v$ there are real smooth odd tests $u_T$ supported strictly
in $(-T,T)$, for every sufficiently large $T$, such that

$$
E(u_T)\le1,\qquad \Gamma_a(u_T)\le M,\qquad
Q_{\chi,T}(u_T)\le-c e^{sT}, \tag{4}
$$

with fixed $M,c>0$. Use the published compact-filter construction as
follows. Take a real even compact smooth $b$ whose transform is one
on the negation/conjugation orbit of $z_0$. Choose a radius $S$ for
its support and put $\beta=\max(1,\|b\|_1)$. Fix
$\ell>(sS+2\log\beta)/(2v-s)$. Strip decay gives a finite window of
ordinates beyond which $|F_b(z)|\le e^{-\ell}$ for $|\Im z|\le1/2$.
Take a real odd compact smooth $g$ with transform one at $z_0$ and zero
at every other inner zero orbit, using the real polynomial interpolation
with the odd factor $iz$ from the real-odd index note. Its transform is
$\pm1$ on the selected orbit. The choices of $g$ and its support radius
$A$ remain fixed as $T$ varies.

For aligned $r$ put $N=\lfloor r/\ell\rfloor+1$ and take the mean of
the two translates by $\pm r$ of $g*b^{*N}$. Normalize by
$\|g\|_2\beta^N$. Alignment means $r$ is a nonnegative multiple of
$\pi/|\Re z_0|$ if $\Re z_0\ne0$, and arbitrary nonnegative $r$ otherwise.
Equation (2) charges each actual zero of the selected orbit the
negative real term $-m_z\cosh^2(vr)$ before normalization. Other inner
terms vanish. The full unnormalized outer error is $O(e^{-r})$ since
$|\cos(rz)|^2\le e^r$ on the strip, $|F_b|^{2N}\le e^{-2\ell N}$ there
outside the fixed window, and $|F_g(z)|\ll (1+|z|^2)^{-1}$. The
height count makes the weighted squared decay summable. Take the largest
aligned $r\le(T-1-A-S)/(1+S/\ell)$. This loses only a bounded distance,
and the support radius $A+NS+r$ is at most $T-1$. The choice of $\ell$
ensures $(2v-2\log\beta/\ell)/(1+S/\ell)>s$, so normalization gives
the sign and rate in (4) at every large $T$.

Young's convolution inequality gives both $\|u_T\|_2\le1$ and
$\|u_T'\|_2\le\|g'\|_2/\|g\|_2$ because differentiation can be taken
on the fixed $g$. The shift bound $\Gamma_a(u)\le\mu_a\|u'\|_2^2$
now gives the uniform $M$ in (4). This compact argument uses the same
literal zeta identity when $q=1$, including the genuine poles.

## 5. Moving the witnesses to a cap just above the threshold

Fix $B>\pi^2\mu_a$ and $v_\chi>0$, and let $0<\kappa<2v_\chi$.
Take $h_0\in\mathcal O_1$ of mass one with $\mu_a\|h_0'\|_2^2<B$ by
the smooth sine approximation. Choose $\theta<1$ close enough to one
that $\mu_a\|h_0'\|_2^2/\theta^2<B$ and put $h=h_{0,\theta T}$, the
unitary dilation of $h_0$ to radius $\theta T$. By (3) and support
invariance, $|Q_{\chi,T}(h)|\le C T e^{2v_\chi\theta T}$. Choose an
actual zero with $2v>\max(\kappa,2v_\chi\theta)$, which exists by the
supremum definition, and take (4) with
$\max(\kappa,2v_\chi\theta)<s<2v$.

Put $f_\pm=h\pm(\delta/T)u_T$, with a fixed $\delta>0$ sufficiently
small that $\sqrt{\mu_a}\|h_0'\|_2/\theta+\delta\sqrt M<\sqrt B$.
The $L^2$ norm of either sum lies between $1-\delta/T$ and
$1+\delta/T$. The triangle inequality for $\sqrt{\Gamma_a}$ gives
$\Gamma_a(f_\pm)\le B E(f_\pm)/T^2$ for all sufficiently large $T$ by
the strict choice of $\delta$. Both tests are in the same physical
window as $u_T$. The parallelogram identity for the original real form
shows one sign satisfies

$$
Q_{\chi,T}(f_\pm)\le Q_{\chi,T}(h)+\frac{\delta^2}{T^2}Q_{\chi,T}(u_T)
                  \le -c' e^{\kappa T}
$$

eventually, since $s>2v_\chi\theta$ and $s>\kappa$. Normalizing changes
the positive constant only. This gives the lower growth rate in (1)
for every $\kappa<2v_\chi$. If $v_\chi=0$, (2) is a sum of
nonnegative squares on the real line, so $N_{\chi,B}(T)=0$.

## 6. Exact cofinal return and evidence

The critical-line statement for this fixed character is equivalent to
a subexponential lower budget on just the above cap, for **any fixed**
$B>\pi^2\mu_a$. More precisely, take any $T_j\to\infty$ and
$d_j\ge0$ with $\log(1+d_j)=o(T_j)$. A proof that
$Q_{\chi,T_j}(f)\ge-d_jE(f)$ for every $f$ in the cap at each $T_j$
forces $v_\chi=0$ by (1). The converse is (2). In particular one may
try $T_j=j+1$ and $d_j=2^{-j}$ on an unbounded subsequence of the
original stages, retaining the conductor scalar, all signed prime
powers and both zeta poles. The restricted bound would prove the zero
conclusion before attempting the original whole-domain `StageLower`
certificates. One concrete choice is $B=2\pi^2\mu_a$ for each parity.
No such arithmetic budget on the cap has been established
here. In particular the dependence of (3) on the actual zero
displacement cannot serve as an unconditional subexponential supplier.

- [WeilGammaPhysicalReturn.lean](../WeilGammaPhysicalReturn.lean), blob
  `a6eb4ce4ef5e7023c3a09e3ba66e3a420df9f723`, gives
  `SourcePrimeCorrelation.primitive_hasSum_canonical_arithmetic`.
  [WeilZetaExplicitFormula.lean](../WeilZetaExplicitFormula.lean), blob
  `99d2362fd66a89c746e19517360569d84cc43e70`, gives
  `RealWeilSource.literalOdd_zeta_zeroSum` for the separate pole source.
- [WeilDirichletCompactFilterReturn.lean](../WeilDirichletCompactFilterReturn.lean),
  blob `1c60a1174064468ec07d4ca6056127ac6e05c805`, §4, supplies the
  existing compact amplified construction on unrestricted tests.
  [WeilRealOddNegativeIndex.md](WeilRealOddNegativeIndex.md), §3,
  supplies the simultaneous interpolation and zeta-compatible source
  return. The derivative bound, smallest gamma scale and cap-preserving
  growth conclusion are the new steps.
- M. A. Bennett, G. Martin, K. O’Bryant and A. Rechnitzer, *Counting zeros
  of Dirichlet $L$-functions*, Math. Comp. 90 (2021), Theorem 1.1. Only
  its logarithmic local count consequence is used for $q>1$. For $q=1$
  use E. Hasanalizade, Q. Shen and P.-J. Wong, *Counting zeros of the
  Riemann zeta function*, J. Number Theory 235 (2022), Corollary 1.2.
  [Dirichlet count](https://doi.org/10.1090/mcom/3599) ·
  [Zeta count](https://doi.org/10.1016/j.jnt.2021.06.032)

Written analytical argument. Lean formalization, elaboration,
compilation, fresh kernel replay, transitive axiom audit, numerical
certification and independent human review: `NOT_RUN`. Originality is
unassessed. RH and Dirichlet GRH remain open.
