# A signed cubic prime criterion on fixed odd tent tests

grwtsk contributors · 2026-11-15

Written analytical source candidate for [math#1804](https://github.com/grwtsk/math/issues/1804).
Inspected source baseline `809b3a00d4326e758120b68cbe70a2a51f5c8060`.
This follows [the Chebyshev obstruction](WeilLowGammaChebyshevObstruction.md)
at `a7d8ef2211971460276b53a662c44f00b56cb1a4`, blob
`0f48c0fa5b5fa8e98a74a3653ad7d04fc8a35194`. The arithmetic below uses
the original von Mangoldt weights throughout.

## 1. A fixed test family on the original cap

Fix one primitive character $\chi$ of actual conductor $q$ and parity $a$.
Use $q=1$ for zeta with $a=0$. Use the original $Q_{\chi,T}$, mass $E$,
gamma form $\Gamma_a$, and $\mu_a=\int_0^\infty r^2K_a(r)\,dr$ of
[WeilSharpLowGammaDetection.md](WeilSharpLowGammaDetection.md). Put
$v_\chi=\sup|\Re\rho-1/2|$ over the actual open-strip zeros, with an
empty supremum assigned value zero. Let $F_f(z)=\int f(t)e^{izt}\,dt$.

Use a fixed smooth real even nonnegative mass-one bump $b$ with support
radius $S<1/8$, angular transform $B$, and these two properties:

$$
B(z)\ne0\quad(\Im z\ne0),\qquad
|B(x+iy)|\le C\exp[-c\Phi(|x|)]\quad (|y|\le1/2),\qquad
\Phi(x)=\frac{x}{\log^2(2+x)}. \tag{1}
$$

Here is a fixed choice that also gives the test in Section 5. Take $b_0$
to be the law of the sum of independent uniform variables on
$[-a_k,a_k]$ with $a_k=c_0/[k\log^2(k+1)]$, $k\ge1$, and choose $c_0>0$
so that $\sum a_k=1/4096$. Define $b$ by averaging the translates of
$b_0$ by $\pm1/12$. The sum of the widths is finite and its transform is
the product of $\sin(a_k z)/(a_k z)$. Uniform convergence on compacts
follows from $\sum a_k^2<\infty$. At a fixed nonreal point every factor
is nonzero and the convergent product is nonzero. Translation averaging
multiplies the transform by $\cos(z/12)$, which also has only real zeros.
For $|x|$ large the first $\lfloor c'\Phi(|x|)\rfloor$ factors have
$a_k|x|\ge2$ for some $c'>0$. For these factors the absolute bound is
$e^{a_k|y|}/2$, and for the rest it is $e^{a_k|y|}$ by the probability
integral. This proves (1), and on the real axis the decay implies a
smooth density by Fourier inversion. This is the same infinite-convolution
construction as WFDG-1 with a new summable sequence of widths.

For $r>0$ define the odd tent and its smooth version by

$$
g_r(t)=\operatorname{sgn}(t)\min(|t|,r-|t|)\;\; (|t|\le r),\qquad
g_r=0\;\; (|t|>r),\qquad f_r=g_r*b.
$$

One has $E(g_r)=r^3/6$ and $\|g_r'\|_2^2=2r$. Young's inequality and the
$L^2$ shift estimate give $\|f_r-g_r\|_2\le S\sqrt{2r}$,
$E(f_r)\le r^3/6$, and $\Gamma_a(f_r)\le2\mu_a r$. Thus
$E(f_r)=(r^3/6)(1+O(1/r))$. For large $T$, every $r\in[9T/10,T-1]$
gives a smooth real odd test supported strictly inside $(-T,T)$ and
satisfying $\Gamma_a(f_r)\le (2\pi^2\mu_a/T^2)E(f_r)$, because
$12/(9/10)^2<2\pi^2$.

## 2. The original signed arithmetic premise

Put $\iota=\mathbf 1_{q=1}$ and use the signed measure on $s\ge0$

$$
d\nu_\chi(s)=\sum_{m\ge2}\frac{\Lambda(m)\Re\chi(m)}{\sqrt m}
                  \delta_{\log m}(ds)-\iota e^{s/2}\,ds.
$$

For real $U\ge0$ define the smoothed cubic sum

$$
M_\chi(U)=\int_{s\ge0}\int_{\mathbb R}(U-s+y)_+^3(b*b)(y)\,dy\,d\nu_\chi(s).
$$

The integrand vanishes at and above $s=U+2S$, so the arithmetic sum is
finite with the strict endpoint. The continuous term for $q=1$ is
the original $C_+$ contribution from the two poles as in the Chebyshev
note. Define the signed combination

$$
D_\chi(r)=M_\chi(2r)-4M_\chi(3r/2)+4M_\chi(r)+4M_\chi(r/2)-10M_\chi(0).
\tag{2}
$$

For every $r>4S$ and covering radius $T\ge r+S$, the exact original form is

$$
Q_{\chi,T}(f_r)=c_{q,a}E(f_r)+\Gamma_a(f_r)
          +\tfrac13D_\chi(r)+\iota\langle f_r,C_-f_r\rangle . \tag{3}
$$

To check the coefficients, $g_r''$ has atoms $+1,-1,-2,+2$ at
$r,-r,r/2,-r/2$, respectively. The autocorrelation $C_{g_r}$ has fourth
distributional derivative $-g_r''*g_r''$ by oddness. This is
$10\delta_0$, with coefficients $-1,+4,-4,-4$ at the pairs of knots
$\pm2r,\pm3r/2,\pm r,\pm r/2$ respectively. Since the correlation vanishes
to the right of the last knot, it equals the corresponding sum of right
cubic powers $(k-s)_+^3/6$. Convolution with $b*b$ gives $C_{f_r}$. For
$s\ge0$ all negative knots have zero contribution after convolution
when $r>4S$, but the origin gives $10M_\chi(0)$. Thus
$2\int C_{f_r}(s)\,d\nu_\chi(s)=-D_\chi(r)/3$. In zeta the two signed
pole products give $C_++C_-$ with kernels $e^{\pm|t-u|/2}$. The $C_+$
part is exactly the continuous contribution just used, and (3) retains
$0\le\langle f_r,C_-f_r\rangle\le4E(f_r)$. In the original odd notation
the sum of both poles is $-2m^2$ with
$m=8B(i/2)[\sinh(r/2)-2\sinh(r/4)]$, by evaluation of $F_{f_r}(i/2)$.

Consequently, for these tests the remaining subexponential premise is
the one-sided lower estimate on the four-scale combination (2), divided
by $r^3$. All other terms in (3) are bounded after division by $r^3$.

## 3. Frequencies of the exact zero sum

Use $z=(\rho-1/2)/i$ for the individual character's zero divisor and
omit $z=0$ from the following sums, since every odd test vanishes there.
The same derivative atoms give

$$
F_{f_r}(z)=-2i B(z)z^{-2}\bigl[\sin(rz)-2\sin(rz/2)\bigr].
$$

The source formula is $Q_{\chi,T}(f_r)=-\Re\sum m_zF_{f_r}(z)^2$.
For $q>1$ the inverse-character convention in the canonical formula
agrees with this arithmetic value because the correlations are real
and the parity is unchanged. For $q=1$ use the separate literal
pole-inclusive formula. Write $Q_\chi(r)$ for the support-invariant value.
Extend multiplicities by zero to the union of the negated and conjugated
divisors. Average them over both symmetries to obtain weights $w_z$;
the averaging changes neither the real part nor the even terms. This
does not impose symmetric zeros on an individual complex character.
The exact series is

$$
Q_\chi(r)=4\sum_z \frac{w_z B(z)^2}{z^4}
 \left[\tfrac52-\tfrac12\cos(2rz)-2\cos(rz)-2\cos(rz/2)
                                   +2\cos(3rz/2)\right]. \tag{4}
$$

Group (4) into $\sum_\lambda c_\lambda e^{\lambda r}$ with distinct
exponents, retaining just nonzero coefficients. Their moduli sum to a
finite number by (1) and the original height count. All exponents have
$|\Re\lambda|\le\sigma=2v_\chi$, so $|Q_\chi(r)|\ll_\chi e^{\sigma r}$
for $r\ge0$. They are locally finite and the nonreal exponents have
$|\Im\lambda|$ bounded away from zero: the nonzero zero ordinates have
a positive gap at zero and the smallest nonconstant harmonic has
factor $1/2$.

The exponents $\lambda=\pm2iz$ with $\Re\lambda>3\sigma/4$ receive
only the leading cosine. Their coefficients are nonzero because
the $z$ and $-z$ factors are identical and the positive weights add.
Every real exponent in this range has strictly negative coefficient:
it comes from $z=\pm iv$, with $B(iv)>0$, $(iv)^4=v^4$, and the leading
coefficient $-w_z B(z)^2/z^4$ per participating point. This covers
possible real off-line zeros. If $\sigma>0$, the supremum of the real
parts of the retained exponents is exactly $\sigma$, by the actual
zero displacement supremum and (1).

## 4. A finite test family at every large stage

For each $n$ use the Gauss–Legendre rule on $[0,1]$ with
$m_n=\lceil 8e H_n\rceil+1$ nodes $s_{n,k}$ and weights $\omega_{n,k}>0$,
where $H_n=K n\log^2(n+2)$ with $K$ a sufficiently large fixed constant
depending only on (1). The weights sum to one and the rule is exact
through degree $2m_n-1$. At integer radius $T$, use the nodes $r=n+s_{n,k}$
from all whole blocks $[n,n+1]\subset[9T/10,T-1]$. There are
$O(T^2\log^2(T+2))$ tests per stage, with no character or zero data in
the choice of test radii. Let $R_{\chi,T}$ be the maximum of
$(-Q_\chi(r)/E(f_r))_+$ over these nodes. Then

$$
\lim_{T\to\infty\,,\ T\in\mathbb N}\frac{\log(1+R_{\chi,T})}{T}=2v_\chi. \tag{5}
$$

The upper bound follows from (4) and $E(f_r)\asymp T^3$ on the sampled
range. When $v_\chi=0$, (4) comes from a sum of nonnegative squares on the
real zero line, so the rate is zero. Suppose $\sigma>0$ and fix
$0<\kappa<\kappa_1<\sigma$. Choose $9/10<a_1<\alpha<b_1<1$ with
$\sigma a_1>\kappa_1$, and choose $\tau>0$ so small that
$\alpha-2\tau\sigma>a_1$. In the proof only, keep the whole blocks
in $[a_1T,b_1T]$ and apply the Gaussian weight

$$
W_T(r)=e^{-\sigma r-(r-\alpha T)^2/(2\tau T)}.
$$

The union of these blocks misses at most unit-length intervals at the
ends. For each fixed real $\nu$, the weighted node sum of
$W_T(r)Q_\chi(r)e^{-i\nu r}$ differs from its integral on the **full real
line** by $O_\chi(\sqrt T e^{-c_1 T})$ for some $c_1>0$. To see the tail
of the integral, a term with $\lambda=x+iy$ has absolute Gaussian
center $T[\alpha+\tau(x-\sigma)]$, uniformly separated from both endpoints
by a distance proportional to $T$. Its real prefactor is
$\exp(T[\alpha(x-\sigma)+\tau(x-\sigma)^2/2])\le1$. The Gaussian tail
and the absolute coefficient sum give the claimed exponential error.

For the node error on a block, truncate (4) at $|\Re z|\le H_n$. The
sum of the discarded moduli is $O_\chi(e^{-c\Phi(H_n)})$, after decreasing
$c$ if needed. Choose $K$ so that $c\Phi(H_n)>5n$ eventually. For real
$r>0$, $|W_T(r)e^{\lambda r-i\nu r}|\le1$, so the discarded terms cost
$O_\chi(e^{-5n})$ both in the integral and in the weighted node sum.
For a retained exponent, factor its value at $r=n$. The remaining
factor is

$$
\exp\left[(\lambda-\sigma-i\nu-(n-\alpha T)/(\tau T))s-s^2/(2\tau T)\right].
$$

On $|s|=2$ its modulus is at most $\exp(6H_n+O(1))$ for large $T$,
because $|\lambda|\le2H_n+1$ and $n/T$ is bounded. Cauchy's estimate
makes the Taylor remainder past degree $m_n$ uniformly at most
$\exp(6H_n+O(1))2^{-m_n}$ on $[0,1]$. The positive quadrature rule
integrates the Taylor polynomial exactly. This is exponentially small
in $H_n$ by the choice of $m_n$, and summing over the retained blocks
proves the node comparison.

On the full real line the Gaussian integral of the term indexed by
$\lambda$ is exactly

$$
\sqrt{2\pi\tau T}\,c_\lambda
 \exp\left(T[\alpha(\lambda-\sigma-i\nu)+\tfrac\tau2(\lambda-\sigma-i\nu)^2]\right).
\tag{6}
$$

Its real rate is $p(x)-\tau(y-\nu)^2/2$, where
$p(x)=\alpha(x-\sigma)+\tau(x-\sigma)^2/2$ is strictly increasing on
$[-\sigma,\sigma]$ and $p(\sigma)=0$. For $\nu=0$ every nonreal exponent
has a uniformly negative rate by the frequency gap. Real exponents
at most $3\sigma/4$ have negative rate bounded away from zero, and
the real exponents above that threshold have negative coefficients.
Therefore the **unmodulated** weighted node sum is bounded **above** by
$O_\chi(\sqrt T e^{-c_2T})$ for some $c_2>0$.

For the modulated sum, choose $\epsilon>0$ less than
$c_1,c_2,\sigma a_1-\kappa_1$. The comparison constant $c_1$ can be chosen
independently of a fixed $\nu$: the Gaussian tail uses absolute values
and the fixed modulation only affects the eventual Taylor estimate.
Take a leading exponent $\lambda_0=x_0+iy_0$ with $p(x_0)>-\epsilon/2$,
which exists by the supremum. For $\nu$ in a small interval about $y_0$,
the rate of $\lambda_0$ stays above $-\epsilon$. Only finitely many
exponents can have a rate above $-\epsilon$ on that interval, since the
ordinate term confines them to bounded height. Two with the same $y$
are strictly ordered by $x$. For distinct $y$ their rates coincide
for at most one $\nu$. Choose $\nu$ avoiding those finitely many ties.
There is now a unique largest rate, strictly above $-\epsilon$ and
separated from the others. The coefficient of that term is nonzero.
Equation (6), absolute summability and the node comparison give a
modulated node sum of modulus $\gg_\chi\sqrt T e^{-\epsilon T}$ for
all sufficiently large $T$.

If every sampled $Q_\chi(r)$ in the smaller window were at least
$-e^{\kappa_1 T}$, adding that allowance there would give nonnegative
weights. The modulus of their modulated sum is at most their unmodulated
sum. Subtracting the allowance again bounds the original modulated
modulus by the original unmodulated sum plus
$2e^{\kappa_1T}\sum_{n,k}\omega_{n,k} W_T(n+s_{n,k})$. The latter is
$O(T e^{-(\sigma a_1-\kappa_1)T})$ since $r\ge a_1T$. This contradicts
the lower bound for the modulated modulus. Thus at every large stage
a sampled native value is below $-e^{\kappa_1T}$. Division by its mass
gives a normalized negative value exceeding $e^{\kappa T}$ for large
$T$. This proves (5) without assuming a zero attains $v_\chi$.

## 5. A single integer sample can miss an off-line orbit

For a synthetic divisor take the quartet of $z_0=6\pi+i/4$ with unit
multiplicities. With the very same bump of Section 1,
$B(z_0)=-i\sinh(1/48)B_0(z_0)$, where $B_0$ is the transform of $b_0$.
The support estimate $|B_0(z_0)-1|\le |z_0|e^{1/(4\cdot4096)}/4096<1/50$
and $|\arg z_0|<1/72$ give $\Re(B_0(z_0)^2/z_0^4)>0$. Thus
$\Re(B(z_0)^2/z_0^4)<0$. At every integer $r=n$, both sine factors in
the bracket before squaring are purely imaginary, so their squared
difference is nonpositive real. The synthetic quartet therefore makes
a nonnegative contribution at every selected integer radius. The
leading continuous exponential is still present. This is an exact example of
aliasing in the sampling argument. The quartet is synthetic and implies
no claim about zeros of zeta or any Dirichlet $L$-function.

## 6. Scope and verification

The next arithmetic target is a subexponential lower bound for (2)
at the $O(T^2\log^2(T+2))$ specified radii in each chosen stage $T$.
Equations (3) and (5) make that target equivalent to the critical-line
statement **for the fixed character** even along an arbitrary unbounded
sequence of integer stages. In the native `PrimitiveStageLower` or
`OddLiteralCofinal.StageLower` numbering, use $T=j+1$. For example, a
lower bound $D_\chi(r)\ge -r^3 e^{o(T)}$ on those samples suffices.
The broader cap criterion in `d41f637a4b81` used all smooth odd tests in
the cap. The finite sample set is the same for every fixed character,
with no conductor-uniform claim about the rate constants.

- [WeilGammaPhysicalReturn.lean](../WeilGammaPhysicalReturn.lean), blob
  `a6eb4ce4ef5e7023c3a09e3ba66e3a420df9f723`, supplies
  `SourcePrimeCorrelation.primitive_hasSum_canonical_arithmetic`.
  [WeilZetaExplicitFormula.lean](../WeilZetaExplicitFormula.lean), blob
  `99d2362fd66a89c746e19517360569d84cc43e70`, supplies
  `RealWeilSource.literalOdd_zeta_zeroSum`. The source height count and
  multiplicities are those used at `d41f637a4b81`.
- [WeilFixedBumpNegativeDepth.md](../WeilFixedBumpNegativeDepth.md), blob
  `f079f17cb5194a55a8b89c07d2096ad168eb2c88`, gives the predecessor
  infinite-convolution construction. [WeilPrimitiveSmoothEdgeOneSidedLandau.md](WeilPrimitiveSmoothEdgeOneSidedLandau.md),
  blob `a0f32154687db114a0aea5f66bf14772ab27cd6b`, gives the continuous
  signed-residue proof on fixed-width translated bumps. The present test
  dilates a tent to enter the shrinking gamma cap and uses Gaussian
  averaging within each stage, with a positive quadrature estimate.
- Gauss–Legendre exactness and positive weights use the monic orthogonal
  polynomial construction. Interpolation at its interior simple zeros
  integrates every degree-$m_n-1$ polynomial. Division by the orthogonal
  polynomial gives exactness through degree $2m_n-1$, and integrating
  the squared interpolating basis gives positive weights. [DLMF §3.5(v)](https://dlmf.nist.gov/3.5.v).

Written analytical argument. An exact rational check confirmed the
correlation stencil, the squared-sine coefficients, the tent mass and
the strict cap slack. It covers those finite identities. Lean
formalization, elaboration, compilation, fresh kernel replay, transitive
axiom audit, numerical certification and independent human review:
`NOT_RUN`. Originality is unassessed. The subexponential bound in (2),
RH and Dirichlet GRH remain open.
