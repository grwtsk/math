# The prime term on real odd tests at a fixed primitive conductor

grwtsk contributors · 2026-11-15

Written analytical source candidate for [math#1804](https://github.com/grwtsk/math/issues/1804).
Source baseline `0c003b5f5f7adb239409e528771f0534d7bea318`. This is a
cofinal-support obstruction to a bound in physical mass alone. It follows
the conductor-stage result at `a742c85972655c8479b17f272bcdcf734f4b5607`.

## 1. Exact arithmetic statement

Fix a primitive nonprincipal Dirichlet character $\chi$ of actual conductor
$q>1$ and gamma parity $a\in\{0,1\}$. Use the **full** support length $L=2T$.
In coordinates on $(0,L)$, extend the tests by zero and let $\mathcal O_L$
be the space of real smooth functions compactly supported there and odd
about $L/2$. Write $E(f)=\|f\|_2^2$, $C_f(r)=\int f(x)f(x+r)\,dx$, and

$$
P_{\chi,L}(f)=2\sum_{2\le n<e^L}\frac{\Lambda(n)}{\sqrt n}
                 \Re\chi(n)\, C_f(\log n),\qquad
\kappa_\chi=\frac{1}{\varphi(q)}\sum_{u\in(\mathbb Z/q\mathbb Z)^\times}|\Re\chi(u)|.
$$

This is `CharacterWindow.twistedPrime` at radius $T$ on the real inclusion
of the same test. The conjugation of the character leaves the displayed
correlation term invariant because $C_f$ is real. The strict cutoff
retains every active prime power and its actual coefficient, including
zero at ramified primes. A shift equal to $L$ has zero overlap measure.

For every such **fixed** $\chi$,

$$
\lim_{L\to\infty} e^{-L/2}\sup_{0\ne f\in\mathcal O_L}
              \frac{P_{\chi,L}(f)}{E(f)}=\kappa_\chi. \tag{1}
$$

The coefficient lies in $[1/2,1]$. The character takes each value in its
image on the same number of unit classes. In an image of order at least
three, the mean of $\cos^2$ over the image is $1/2$ and $|\cos|\ge\cos^2$.
The coefficient is $1$ for real characters and $1/2$ for order four.
In particular the actual signed prime term cannot be bounded
above by $o_\chi(e^{j+1})E$ on every admissible real odd test at the radii
$T=j+1$. Treat conductor-one zeta with its full pole term as in Section 4.

## 2. Matching upper and lower estimates

Set $w_p=(\log p)|\Re\chi(p)|$ and $A(X)=\sum_{p\le X}w_p$. The
unconditional prime number theorem in progressions at **fixed** $q$
gives $A(X)=\kappa_\chi X+o_\chi(X)$ by summing the weighted Chebyshev
counts of the finitely many reduced residue classes. For $q=1$ in
Section 4 use the ordinary prime number theorem and $w_p=\log p$.
There is no growing-modulus estimate here. The contribution to the
quadratic form from all proper powers is bounded in absolute value by

$$
2E(f)\sum_{p\le e^{L/2}}\frac{\log p}{p(1-p^{-1/2})}
  =O((1+L)E(f)). \tag{2}
$$

Indeed the powers $k\ge2$ are bounded by a geometric series and the
ordinary Chebyshev bound with Abel summation gives
$\sum_{p\le X}(\log p)/p=O(1+\log X)$.

For the upper bound in (1), use the two-half estimate of
[WeilConductorStageFrontier.md](WeilConductorStageFrontier.md), Section 1,
on the ordinary primes with weights $w_p$ in place of $\Lambda(n)$.
That estimate uses only nonnegative weights and the shift geometry.
The short shifts cost $2\sum_{p\le e^{L/2}}w_p/\sqrt p=O(e^{L/4})$.
The long shift row bound is at most
$e^{L/2}\sup_{X\ge e^{L/2}} A(X)/X=(\kappa_\chi+o_\chi(1))e^{L/2}$.
This bounds the absolute value of the ordinary prime form on real tests.
Adding (2) gives the desired upper estimate for the signed source.

For a lower estimate, let $H_L$ be the ordinary prime form with coefficients
$w_p/\sqrt p$, so $H_L(f)=2\sum_{p<e^L}(w_p/\sqrt p) C_f(\log p)$.
The real odd endpoint profile $v_L(x)=e^{-x/2}-e^{-(L-x)/2}$ on $(0,L)$
has $E(v_L)=2(1-e^{-L})-2Le^{-L/2}\to 2$. Integration of the four
products over $(0,L-r)$ gives, for $0<r<L$,

$$
C_{v_L}(r)=2e^{-r/2}(1-e^{-(L-r)})
 -(L-r)\big(e^{-(L-r)/2}+e^{-(L+r)/2}\big).
$$

The first term costs $O(1+L)$ in $H_L$ by Abel summation, and the part
containing $e^{-(L+r)/2}$ costs $O((1+L)^2e^{-L/2})$. The remaining term is

$$
-2e^{-L/2}\sum_{p<e^L}w_p(L-\log p)
=-2e^{-L/2}\int_1^{e^L}\frac{A(u)}{u}\,du
=-(2\kappa_\chi+o_\chi(1))e^{L/2}.
$$

The endpoint at $p=e^L$ contributes zero. The integral asymptotic follows
from $A(u)/u\to\kappa_\chi$ by splitting at a fixed threshold. Therefore
$H_L(v_L)/E(v_L)=-(\kappa_\chi+o_\chi(1))e^{L/2}$. Take smooth reflection-
symmetric cutoffs of the two endpoints and normalize to obtain real odd
templates $h_L\in\mathcal O_L$ with the same leading quotient. For each
$L$ the cutoffs can make the normalized $L^2$ error arbitrarily small.
The self-adjoint ordinary prime operator with quadratic form $H_L$ has
norm $O(e^{L/2})$ by the same two-half estimate, so a choice with $L^2$
error tending to zero suffices.

For a **fixed** $L$ and its template $h=h_L$, put
$f_\tau(x)=h(x)\cos(\tau(x-L/2))$. The functions remain real smooth odd.
Product-to-sum and the Riemann–Lebesgue lemma give

$$
E(f_\tau)=\tfrac12E(h)+o(1),\qquad
C_{f_\tau}(r)=\tfrac12\cos(\tau r)C_h(r)+o(1)
$$

as $\tau\to\infty$, for each member of the finite shift inventory. The
prime logarithms are rationally independent by unique factorization.
The continuous phase flow consequently visits arbitrarily late any
neighborhood of any prescribed phase at those primes. This follows by
averaging the torus monomials in time and approximating continuous
functions by trigonometric polynomials, as in WJPP-v1-3. At each prime
with $\Re\chi(p)\ne0$ prescribe $\cos(\tau\log p)$ to approach
$-\operatorname{sgn}(\Re\chi(p))$. The ordinary prime quotient then tends
to $-H_L(h)/E(h)$. All higher powers still use the same prime phase
raised to their own exponent. Their actual contribution is paid by (2).
The supremum in (1) is therefore at least $-H_L(h)/E(h)-O(1+L)$.

## 3. The compensated gamma cost on these tests

Return to centered coordinates $t=x-L/2$ and write $h$ for the odd
template there. Use the original shift energy

$$
\Gamma_a(f)=2\int_0^\infty
 \frac{e^{-(a+1/2)r}}{1-e^{-2r}}\,[E(f)-C_f(r)]\,dr.
$$

For $f_\tau=h\cos(\tau t)$, replace $h(t+r)$ by $h(t)$ in the correlation
with error at most $r\|h\|_2\|h'\|_2$ by the $L^2$ translation estimate.
Expanding the cosine of the sum leaves $\cos(\tau r)E(f_\tau)$, since
$\int h(t)^2\cos(\tau t)\sin(\tau t)\,dt=0$ by oddness of the integrand.
On $(0,1)$ the gamma kernel is $1/(2r)+O_a(1)$. The translation error
is integrable there. On $(1,\infty)$ the kernel is integrable and
$|C_{f_\tau}(r)|\le E(f_\tau)$. Using
$\int_0^1(1-\cos(\tau r))\,dr/r=\log|\tau|+O(1)$, by a change of variables
and integration by parts, proves

$$
\Gamma_a(f_\tau)=E(f_\tau)\log|\tau|+O_a(E(h)+\|h\|_2\|h'\|_2). \tag{3}
$$

Thus on each fixed window the normalized full value grows to positive
infinity along these modulations. The fixed conductor scalar stays
constant and the prime operator is bounded on that window. The recurrence
argument supplies no favorable bound on $\log|\tau|$ in terms of $L$.

## 4. Conductor-one zeta with both original poles

Let $R_L$ denote the actual zeta pole operator in window coordinates,
with kernel $e^{(x-y)/2}+e^{-(x-y)/2}$. On real odd inputs its form is
$-2m(f)^2$, where $m(f)=\int f(x)\sinh((x-L/2)/2)\,dx$. Both pole
orientations are included. The unshifted literal value is
$\gamma_{1,0} E+\Gamma_0-D_L$, with
$D_L(f)=P_{1,L}(f)-\langle f,R_L f\rangle$.

The supremum of $D_L(f)/E(f)$ on nonzero $f\in\mathcal O_L$ is
$(1+o(1))e^{L/2}$. To see
the upper bound, let $v=v_L/\|v_L\|_2$. On the closed real odd $L^2$
space the pole operator is rank one with range $\mathbb Rv$ and eigenvalue
$L-2\sinh(L/2)$. The all-prime-power operator $P_L$ has
$\|(P_L+e^{L/2})v\|_2=o(e^{L/2})$ by WFBP-v1-2, equation (8). This
bound is for the operator on the profile, so it also bounds the mixed
entries against any unit vector. It follows that
$\|(P_L-R_L)v\|_2=o(e^{L/2})$. Decompose $f=cv+g$, $g\perp v$.
The $g$ block has zero pole and prime Rayleigh bound $(1+o(1))e^{L/2}$
by Section 1 of the conductor-stage note. The diagonal and mixed terms
involving $v$ cost $o(e^{L/2})E(f)$ by Cauchy–Schwarz.

In fact, for every fixed $L$, the supremum of $D_L(f)/E(f)$ on nonzero
$f\in\mathcal O_L$ with $m(f)=0$ equals $\|P_L\|$ on the full $L^2$ space.
Use centered coordinates. For any complex $L^2$ vector $u$, the even
nonnegative function $h(t)=\sqrt{(|u(t)|^2+|u(-t)|^2)/2}$ has the same
mass. Cauchy–Schwarz on the two reflected values gives

$$
h(t)h(t+r)\ge\tfrac12\big(|u(t)u(t+r)|+|u(-t)u(-t-r)|\big).
$$

Both summands on the right have the same integral by change of variables.
The shift weights of $P_L$ are nonnegative, so $P_{1,L}(h)\ge
|\langle u,P_Lu\rangle|$. Self-adjointness and even smooth approximation
therefore give smooth even templates $h$ with prime quotient arbitrarily
close to $\|P_L\|$. For each such template use $f_\tau=h\sin(\tau t)$,
which is smooth real odd. Recur to phase $1$ at every active prime.
Every power then also has phase tending to $1$. Product-to-sum gives the
prime quotient of $h$ as the sequence limit, and the proof of (3) applies
to sine because the same mixed sine–cosine integral vanishes.

Choose a smooth odd $\psi$ in the same interval with $m(\psi)=1$ and
replace $f_\tau$ by $f_\tau-m(f_\tau)\psi$. Such a $\psi$ is obtained by
normalizing a nonnegative even smooth bump times $\sinh(t/2)$.
Integration by parts gives $m(f_\tau)=O_{L,h,N}(|\tau|^{-N})$ for every
$N$. The correction preserves the prime quotient limit by $L^2$
continuity and preserves the logarithmic gamma estimate by
Cauchy–Schwarz for the gamma form. Both actual pole products vanish
on the corrected tests. The opposite inequality on the constrained
space is immediate from the norm definition, and $\|P_L\|\sim e^{L/2}$
by WFBP-v1-2. This also gives the matching lower bound without the
constraint.

## Source return and evidence

The exact consumer is the lower-bound step in the nonprincipal
`DirichletStageChain.PrimitiveStageLower` and the separate zeta
`OddLiteralCofinal.StageLower`. At fixed $q$, a cofinal supplier must pay
the signed prime term with the conductor/parity scalar and **the actual gamma
energy**. Even after the signed zeta poles are included, no
$o(e^T)E$ upper bound for the resulting arithmetic term holds on the
whole real odd domain. Let $D$ be the arithmetic term $P_{\chi,L}$ for
$q>1$, or $D_L$ for zeta, and let $U(L)$ be any proven upper bound on
$D(f)/E(f)$ from the applicable estimate above. At stage $j$, write
$c=\mathrm{gammaConstant}(q,a)$ and $L=2(j+1)$. The remaining falsifiable
stage inequality is

$$
D(f)\le \Gamma_a(f)+(c+2^{-j})E(f)
\quad\text{when}\quad \Gamma_a(f)<(U(L)-c-2^{-j})E(f).
$$

The opposite gamma range already pays $D$ by definition of $U(L)$. For
zeta, apply the smooth-core return in
[WeilRealOddNegativeIndex.md](WeilRealOddNegativeIndex.md), Section 4,
to a stage bound on all smooth odd tests. The full Weil values on the
recurrence witnesses grow at fixed radius; their arithmetic quotients
give no violation of the displayed coupled inequality.

- [WeilDirichletStageChain.lean](../WeilDirichletStageChain.lean), blob
  `ec7bbcbbd0b07e76e8c1fc197287dbfe0bf19173`, gives the nonprincipal stage.
  [WeilOddLiteralWindow.lean](../WeilOddLiteralWindow.lean), blob
  `ae085838734c9ae5ae47e83797d3dcde9f195a35`, gives the literal zeta pole.
- [WeilJointPrimePhaseBounds.md](WeilJointPrimePhaseBounds.md), blob
  `9a5e71f2106da61d64ac6c5b00313090940ba9a3`, WJPP-v1-3–4 supplies the
  complex phase recurrence and gamma comparison. Real odd modulation uses
  only the real prime weights, and keeps the test within the stage domain.
- [WeilFlatBaselinePoleScale.md](WeilFlatBaselinePoleScale.md), blob
  `107ee7924c8035859b5ae028ea179ff53e9dc3f9`, WFBP-v1-2 and WFBP-v1-4
  supply the zeta profile and pole identities. The prior full-complex
  compact-subtraction bound in WFBP-v1-6 does not give the positive
  Rayleigh edge on the real odd pole-null domain. The earlier conductor
  frontier uses characters that can vary with $L$ for sharpness.
- The unconditional fixed-modulus prime number theorem in progressions
  is used in Chebyshev-weighted form. See C. J. de la Vallée Poussin,
  *Recherches analytiques sur la théorie des nombres premiers*, Part II,
  and K. S. Kedlaya, *Notes on analytic number theory*, Theorem 4.12 and
  its proof. [Collected edition](https://circolomatematico.unipa.it/download/Charles-Jean_de_La_Valle_e_Poussin-Collected_Works-Oeuvres_Scientifiques_Vol.1.pdf) ·
  [Theorem and proof](https://kskedlaya.org/ant/chap-primes-in-ap.html#sec-primes-in-ap-pnt)

Lean formalization, elaboration, compilation, fresh kernel replay,
transitive axiom audit, numerical certification, and independent human
review are `NOT_RUN`. Originality is unassessed. The argument supplies
neither fixed-character cofinal positivity nor an off-line arithmetic zero.
