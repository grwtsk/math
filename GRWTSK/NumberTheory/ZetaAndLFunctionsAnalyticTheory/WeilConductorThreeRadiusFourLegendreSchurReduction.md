# A smaller finite Schur problem for the original conductor-three radius-four form

2026-11-14, grwtsk contributors, AI-assisted. Written analytic proof.
Lean elaboration, fresh kernel replay and transitive axiom audit are
NOT_RUN. Independent review is UNASSESSED.

## Fixed source and operator domains

The consumer is DirichletStageChain.PrimitiveStageLower at
modThreeQuadratic, with its primitive and nonprincipal proofs and
stage 3. It asks for $Q_{\chi_3,4}(f)\ge-E(f)/8$ on every original real
odd $C^2$ admissible test with pointwise support in $[-4,4]$, physical
whole-line $L^2$ energy $E(f)$ and full gamma-density integrability.
The character is primitive, nonprincipal, of conductor three and
parity one. Its angular multiplier is

$$
s_4(\xi)=\log(3/\pi)+\operatorname{Re}\psi(3/4+i\xi/2)
 -2\sum_{n=p^e\le2980,\ p\ne3}
 \frac{\log p}{\sqrt n}\chi_3(n)\cos(\xi\log n).
$$

This sector has no principal pole, and the sum has 458 nonzero terms.
Keep the original filters and their weight $w=P_H^2(1-P_L^2)$, with
$(7990,2820,h_H=1/(2\cdot10^{25}))$ and
$(19000,1425,h_L=153/(2\cdot10^9))$ as in the source. The original
frequency set $\mathcal D$ is $H_{\rm cut}<|\xi|<\Omega$ minus the
mirrored pair of radius 10 centered at $\pm18524227541662946/10^7$.
Here $H_{\rm cut}=30000000$ and $\Omega=35\cdot10^{24}$. The bounded
physical carrier is $\mathcal H=L^2_{\rm odd}([-4,4],dt;\mathbb C)$ with
zero extension and conjugate-linear first inner product. Angular
Fourier transform is $\widehat f(\xi)=\int f(t)e^{i\xi t}dt$ with
measure $d\xi/(2\pi)$. Write $K$ for Fourier restriction to
$\mathcal D$, a contraction by Plancherel, and $R=K^*(ws_4)K$.

Use the actual original trace-zero sine projection $P=P_{23}$ and
complement $Q=I-P$. With $B=124997987/10^9$, the first head is
$A_{23}=P(R+BI)P|_{P\mathcal H}$. The original Schur operator is

$$
S=Q(R+BI)Q|_{Q\mathcal H}
  -QRP A_{23}^{-1}PRQ|_{Q\mathcal H}
  =B I+K_Q^* M K_Q,\qquad \|M\|<741 .
$$

$A_{23}^{-1}$ is the genuine inverse on $P\mathcal H$. Here
$K_A=K|_A$ for a closed subspace $A$. The representation and norm
estimate are the source inputs at their written mathematical
scope. They retain the full signed multiplier and first head
interaction. [LegendreTail](WeilConductorThreeRadiusFourLegendreTail.lean)

Let $N_{\rm old}=12\Omega$ and let $V$ span the odd normalized
physical Legendre polynomials $\ell_n$ of degree $n<N_{\rm old}$.
Use the actual orthogonal splits

$$
F=QV,\quad W=Q\mathcal H\cap V^\perp,\quad
Z=U\oplus W,\quad \mathcal L=F\cap U^\perp.
$$

$U=\Pi_F X$ is the already-paid moment space of dimension $15159001$,
where $X$ lies in the span of the first $38170000$ native sine modes.
Thus $Q\mathcal H=\mathcal L\oplus Z$. The actual compression
$D=\Pi_Z S|_Z$ satisfies $D\ge(2/25)I$. With
$T=\Pi_{\mathcal L}S|_{\mathcal L}$ and $J=\Pi_Z S|_{\mathcal L}$,
the exact remaining sign is $C=T-J^*D^{-1}J\ge0$ on $\mathcal L$,
equivalent to $S\ge0$ by completing the square. The physical Gram of
the independent $Q\ell_n$ determines every projection. [GramMomentSector](WeilConductorThreeRadiusFourGramMomentSector.lean)

## Uniform Fourier leakage above a smaller degree cutoff

Put $\sigma=10^{-8}$ and $N_0=4\Omega+10^{11}$, an even integer
strictly below $N_{\rm old}$. Let $V_0$ span the odd physical Legendre
polynomials of degree below $N_0$. We will use the full estimate

$$
\|Kf\|^2\le10^{-530}\|f\|^2
\qquad(f\in\mathcal H\cap V_0^\perp).
$$

For each $|\xi|\le\Omega$, expand
$z\mapsto\exp(2i\xi(z+z^{-1}))$ on $0<|z|<\infty$ in its Laurent
series $\sum_{n\in\mathbb Z}a_n z^n$. Invariance under $z\mapsto z^{-1}$
gives $a_{-n}=a_n$. Cauchy's coefficient integral on $|z|=e^\sigma$
gives $|a_n|\le\exp(4\Omega\sinh\sigma-n\sigma)$ for $n\ge0$, since
$|\operatorname{Im}(z+z^{-1})|\le2\sinh\sigma$ there. On the unit
circle take $x=\cos\theta$. Then

$$
e^{4i\xi x}=a_0+2\sum_{n\ge1}a_n T_n(x),\qquad
T_n(\cos\theta)=\cos(n\theta).
$$

$T_n$ is a polynomial of degree $n$ by the cosine recurrence and is
bounded in modulus by one on $[-1,1]$. Truncating before $n=N_0$
gives a polynomial $p_\xi$ of degree $<N_0$ with

$$
\sup_{[-1,1]}|e^{4i\xi x}-p_\xi(x)|
 \le \frac{2e^{4\Omega\sinh\sigma-N_0\sigma}}{1-e^{-\sigma}}
 \le \frac4{\sigma}e^{-972}.
$$

Indeed $1-e^{-\sigma}\ge\sigma/2$ by $e^\sigma\ge1+\sigma$ and
$\sigma\le1$. The consecutive ratios in the positive $\sinh$
series after the linear term give
$\sinh\sigma-\sigma\le\sigma^3/[6(1-\sigma^2/20)]\le\sigma^3/5$.
Thus $4\Omega\sinh\sigma-N_0\sigma\le28-1000=-972$.

For $f\in\mathcal H\cap V_0^\perp$, the odd part of
$\overline{p_\xi(t/4)}$ belongs to $V_0$, and the even part is
orthogonal to $f$. Hence $\widehat f(\xi)$ is the integral of $f$
times the polynomial approximation error. Cauchy–Schwarz gives
$\|f\|_1\le\sqrt8\|f\|$ and both frequency signs together have
angular measure at most $\Omega/\pi$. Consequently

$$
\|Kf\|^2\le\frac{8\Omega}{\pi}(4\cdot10^8)^2 e^{-1944}\|f\|^2 .
$$

The first two factors are less than $10^{27}$ and $10^{18}$
respectively. Since $e>2$ and $2^{1940}>10^{582}$ by $2^{10}>10^3$,
the coefficient is less than $10^{-537}$. This proves the stated
bound uniformly, with the complete polynomial series tail summed.

## Positive part of the corrected operator and its full mixed price

Set $F_0=QV_0$, $L_0=\mathcal L\cap F_0^\perp$, and
$G_0=\Pi_{\mathcal L}F_0$. These are physical finite subspaces with
$\mathcal L=L_0\oplus G_0$. For $z\in\mathcal L$ and $p\in V_0$,
$\langle z,Qp\rangle=\langle z,p\rangle$ since $Qz=z$. Thus $L_0$
is precisely the part of $\mathcal L$ orthogonal to $V_0$, and its
$K$ leakage satisfies the preceding estimate.

The scalar part of $S$ vanishes between $Z$ and $\mathcal L$ by
orthogonality. Using the actual $D^{-1}$ in $C$ gives

$$
C=B I_{\mathcal L}+K_{\mathcal L}^* M_C K_{\mathcal L},
\qquad
M_C=M-M K_Z D^{-1}K_Z^* M,\qquad
\|M_C\|\le741+(25/2)741^2<10^7.
$$

For every nonzero $z\in L_0$ this yields

$$
\left|\frac{\langle z,Cz\rangle}{\|z\|^2}-B\right|<10^{-523}.
$$

Define $D_0=\Pi_{L_0}C|_{L_0}$,
$J_0=\Pi_{L_0}C|_{G_0}$ and $T_0=\Pi_{G_0}C|_{G_0}$.
The Rayleigh estimate gives $D_0\ge(1/9)I$, since
$B-10^{-523}>1/9$. The scalar part again vanishes across the two
orthogonal spaces, so $\|J_0\|<10^7\cdot10^{-265}=10^{-258}$.
The exact smaller sign equivalent to $C\ge0$ is

$$
C_0=T_0-J_0^*D_0^{-1}J_0\ge0\quad\hbox{on all of }G_0,\qquad
T_0-10^{-515}I\le C_0\le T_0 .
$$

The equivalence is the square completion on $L_0\oplus G_0$.
The lower comparison pays the full mixed correction
$\|J_0^*D_0^{-1}J_0\|\le9\|J_0\|^2<10^{-515}$.
The dimension of $G_0$ is at most $N_0/2=2\Omega+5\cdot10^{10}$,
whereas $\dim\mathcal L=6\Omega-15159001$. Both inverse interactions
use their actual domains. The entries of $T_0$ and $J_0$ use the
true physical Gram. The sign on $G_0$ remains open.

## An explicit positive direction in the original missing finite block

Let $N_s=38170000$, $\omega_k=k\pi/4$, and write $\partial=d/dt$.
On $[-4,4]$ define

$$
g(t)=\partial^{N_0}\left[\prod_{k=1}^{N_s}(\partial^2+\omega_k^2)\right]
               \left[t(16-t^2)^{N_0+2N_s+3}\right],
$$

and set $g(t)=0$ outside. The input polynomial has endpoint
multiplicity $N_0+2N_s+3$ and the derivative order is at most
$N_0+2N_s$, so the zero extension is $C^2$. All derivative orders
are even. The term with derivative order $N_0$ has coefficient
$\prod_k\omega_k^2>0$ and supplies the leading degree
$N_0+4N_s+7<N_{\rm old}$. Thus $g$ is nonzero, real, odd and in $V$.
Its gamma shift energy is bounded by
$\min(s^2\|g'\|^2,4\|g\|^2)$ for $s>0$, giving full original
gamma-density integrability.

All endpoint terms vanish when transferring the differential
operator by parts. Derivatives of order at least $N_0$ annihilate
each polynomial of lower degree. The even differential operator
annihilates each $\sin(\omega_k t)$ for $k\le N_s$ by the factor
$\partial^2+\omega_k^2$. Thus $g\perp V_0$ and $g$ is orthogonal to
the first $N_s$ native sine modes. In particular $Qg=g$ and $g\perp X$.
As $g\in F$, this gives $g\perp\Pi_F X=U$. Therefore $g\in L_0$ and
the displayed Rayleigh interval applies to this actual finite
Gram direction with both preceding mixed corrections included.

## Remaining arithmetic sign and hostile comparison

The earlier large-weight direction $z_*$ lies in the original
remaining $\mathcal L$ and has
$\|K_w z_*\|^2\ge(19/20)\|z_*\|^2$, with $K_w=\sqrt w K$ and
$0\le w\le1$. [WeightedSchurSource §8](WeilConductorThreeRadiusFourWeightedSchurSource.lean#L314)

Write $a=\Pi_{G_0}z_*$ and $b=\Pi_{L_0}z_*$. The leakage bound gives
$\|K_w b\|\le10^{-265}\|z_*\|$, so

$$
\|K_w a\|\ge(\sqrt{19/20}-10^{-265})\|z_*\|
 >(97/100)\|z_*\|\ge(97/100)\|a\|.
$$

In particular $a\ne0$. The smaller finite block still contains a
direction with large mass in the native pass region. Its signed
$T_0$ and exact final correction still need a sign proof. The
prime-419 two-bump cutoff check and all the other terms remain
in the full signed multiplier. [Inventory](WeilConductorThreeRadiusFourInventory.lean)

This argument uses uniform polynomial approximation to the actual
Fourier kernel and two physical square completions. The earlier
Legendre tail starts at $12\Omega$ and the paid moment construction
controls a different space. The new cutoff pays an additional
subspace of the previously open finite sign. The global
radius-four stage still needs the remaining sign. The cofinal
stage and negative-witness obligations retain their original
quantifiers, exact complex zero multiplicities, dual orientation
and source return. The independent conductor-one zeta branch
retains both pole orientations. RH and primitive Dirichlet GRH
remain unproved.

## Positive sector inside the smaller Schur block

2026-11-14, grwtsk contributors, AI-assisted. Written analytic proof.
Lean elaboration, fresh kernel replay and transitive axiom audit are
NOT_RUN for the sector below. Independent review is UNASSESSED.

Keep the same physical space, $P=P_{23}$, $R$, $S$, $Z=U\oplus W$,
$D$, $\mathcal L$, $G_0$ and corrected form $C_0$ above. Write
$E(g)=\|g\|^2$ and take the orthonormal physical sine functions
$\psi_j(t)=\sin(j\pi t/4)/2$ on $[-4,4]$, zero outside. Put
$k=4\cdot10^{25}$, $d=10^{17}$ and $\omega_j=j\pi/4$. Define the
complex space
$$
Y=\left\{g=\sum_{j=k}^{k+d-1}c_j\psi_j:
                 \sum_{j=k}^{k+d-1}(-1)^j\omega_jc_j=0\right\}.
$$
It has dimension $d-1$. The single equation makes the first
derivative vanish at the endpoints. The sine values and second
derivatives already vanish there, so every real coefficient vector
in $Y$ produces an original real odd $C^2$ compact test. The compact
$H^1$ shift bound used above gives finite original gamma density.

For every $g\in Y$, write $a=\Pi_{G_0}g$. This is also
$\Pi_{G_0}\Pi_{\mathcal L}g$. The map is injective on $Y$, and
for every nonzero $g\in Y$,
$$
\frac14
 < \frac{\langle a,C_0a\rangle}{E(a)}
 < 120 .
$$
In particular this interval holds for the stated adjacent pair
$\psi_k+[k/(k+1)]\psi_{k+1}$ after its actual physical projection.
The estimates below also cover the full span with the endpoint
condition, with both Schur interactions retained.

### Signed frequency estimate with the full physical prime form

Let $\omega=\omega_k=\pi\cdot10^{25}$, $H=10^{23}$, and let $I$
be the union of the two frequency intervals of radius $H$ centered
at $\pm\omega$. On $I$,
$2.99\cdot10^{25}<|\xi|<3.2\cdot10^{25}$ by $3<\pi<22/7$.
Thus $I$ belongs to the original residual set $\mathcal D$,
including its exclusion of the earlier paid pair. All mode centers
in $Y$ are less than $\Omega$ in absolute value.

For $\lambda=|\xi|$ outside $I$, put $b=|\lambda-\omega|\ge H$.
The exact sine transform, with positive angular convention, is
$$
\widehat\psi_j(\xi)=i(-1)^j\omega_j
                       \frac{\sin(4\xi)}{\xi^2-\omega_j^2}.
$$
For $g\in Y$ the endpoint equation permits subtraction of
$1/(\xi^2-\omega^2)$ inside the sum with coefficient
$(-1)^j\omega_jc_j$. Each difference, including the factor $\omega_j$,
has absolute value at most
$$
\frac{\omega_j(\omega_j^2-\omega^2)}
 {|\lambda-\omega_j|\,|\lambda-\omega|(\lambda+\omega_j)(\lambda+\omega)}
 \le \frac{3d}{(b-d)b}\le\frac{6d}{b^2},
$$
since $0\le\omega_j-\omega<d$, $\omega_j<2\omega$ and $b\ge H>2d$.
Cauchy–Schwarz in the exact sine coefficients gives
$|\widehat g(\xi)|^2\le36d^3E(g)/b^4$. Integrating both signs and
the two tails around each sign gives at most $4/(3H^3)$ for the
unweighted integral of $b^{-4}$. With angular measure $d\xi/(2\pi)$
the full off-band mass is less than
$\theta E(g)$ where $\theta=8(d/H)^3=8\cdot10^{-18}$.

Use the exact split $s_4=A-P_4$ of the original angular multiplier.
Here $A=\log(3/\pi)+\operatorname{Re}\psi(3/4+i\xi/2)$ and $P_4$
has every native term, with factor $2\log(p)\chi_3(p^e)/\sqrt{p^e}$
at lag $\log(p^e)$. The source bounds are $A\ge-2$ globally,
$A\ge\log|\xi|-3/4$ for $|\xi|\ge100$, $A<61$ on $\mathcal D$,
and $|P_4|<211$ globally. The whole signed physical prime form has
absolute value at most $(577531/10000)E(g)$ by the existing
4096-row weighted Schur estimate on the larger interval containing
$[-4,4]$ with the same 458 atoms. The Binet bounds use the full
parity-one digamma term. [MiddleReturn](WeilConductorThreeRadiusFourMiddleReturn.lean#L45)
· [LegendreTail](WeilConductorThreeRadiusFourLegendreTail.lean#L53)
· [DLMF 5.9.15](https://dlmf.nist.gov/5.9.E15)

On $I$ we have $A>1447/25=57.88$. Indeed $\log10>2877/1250$
from $\log10=3\log2+\log(5/4)$ and the first four positive atanh
terms for $\log2$ and first term for $\log(5/4)$. Also
$\log(299/100)>109/100$ since
$e^{109/100}<(68/25)(100/91)<299/100$. The first bound uses
$e<68/25$ by its Taylor sum through degree six and the geometric
tail starting at degree seven, and $e^{9/100}\le100/91$.
The original high pass law gives $P_H\ge1-10^{-10}$ on $I$.
The real all-lobe low stop law gives $P_L\le10^{-40}$ there.
Thus $1-w\le\eta=3\cdot10^{-10}$ on $I$. [High pass law](WeilConductorThreeRadiusFourMiddleReturn.lean#L121)
· [Low stop law](WeilConductorThreeRadiusFourLowFilter.lean#L112)

Use the full physical bound on $P_4$ before restricting the
frequency integral. In the difference between the full prime
integral and its weighted residual, the pointwise absolute
prime bound costs at most $211(\theta+\eta)E(g)$, regardless
of the signs of the terms. The gamma lower estimate spends
$\theta E(g)$ off the band at price at most $2$ and the full
lower on-band weighted mass. Consequently
$$
\begin{aligned}
\frac{\langle g,Rg\rangle}{E(g)}
&\ge (1447/25)(1-\theta)(1-\eta)-2\theta
          -577531/10000-211(\theta+\eta),\\
\frac{\langle g,Rg\rangle}{E(g)}
&\le 61+577531/10000+211(\theta+\eta).
\end{aligned}
$$
These comparisons use the whole signed source and cover the
complete Fourier tail.

### Return to the physical projection and price of both inverses

Write $\delta=10^{-272}$ and $\delta_{\rm old}=10^{-60}$. The
Chebyshev approximation above at each $\omega_j<\Omega$ gives an
odd polynomial in $V_0$ approximating $\psi_j$ with pointwise error
at most $(2/\sigma)e^{-972}$. This follows by taking the odd part
of the imaginary part and using the factor $1/2$ of $\psi_j$.
Using $\sum|c_j|\le\sqrt d\|g\|$ and the interval length eight,
it follows that $\operatorname{dist}(g,V_0)<\delta\|g\|$. Here
$\sqrt d<10^9$, $e^{-972}<10^{-291}$, and $\sqrt8<3$.

Let $E_s$ be the span of the first $N_s=38170000$ native sine modes.
Then $g\perp E_s$, so $Qg=g$ and $g\perp X$. The actual old estimate
for $x\in X$, $u=\Pi_Fx$, is
$\|x-u\|\le\delta_{\rm old}\|x\|$ and $x-u\in W$.
In particular $\|x\|\le(10/9)\|u\|$. Since $W\subset V_0^\perp$,
$\|\Pi_Wg\|\le\delta\|g\|$ and
$|\langle g,u\rangle|=|\langle\Pi_Wg,x-u\rangle|$.
It follows that $\|\Pi_Zg\|<2\delta\|g\|$. For any $v\in V_0$,
$\Pi_{\mathcal L}Qv\in G_0$ and
$\|\Pi_{\mathcal L}g-\Pi_{\mathcal L}Qv\|\le\|g-v\|$.
Thus $\|a-g\|<3\delta\|g\|$, proving the asserted injectivity.
In particular $\|a\|\le\|g\|$ and $\|a\|>(1-3\delta)\|g\|$.
[Old projection bound](WeilConductorThreeRadiusFourGramMomentSector.lean#L119)

For every $j\le N_s$, both distances from $\xi\in I$ to
$\pm\omega_j$ exceed $2\cdot10^{25}$. The two-fraction sine formula
gives $|\widehat\psi_j(\xi)|\le1/(2\cdot10^{25})$ on $I$.
Summing the squared norms of these restricted transforms gives
$\|1_I K|_{E_s}\|^2\le (2H/\pi)N_s/(2\cdot10^{25})^2<10^{-20}$.
For a unit vector $x\in E_s$, split $\langle x,Rg\rangle$ at $I$.
With $\|ws_4\|_{\infty,\mathcal D}<300$ and the full off-band
bound, the absolute mixed value is less than
$300(10^{-10}+3\cdot10^{-9})\|g\|$. This bounds the projection
onto $P\mathcal H\subset E_s$. For $U$, replace a unit $u$ by its
preimage $x\in X\subset E_s$, paying $300\|u-x\|\|g\|$ and
$\|x\|\le10/9$. Replacing $g$ by $a$ then costs at most
$900\delta\|g\|$ in either projection. Both
$\|PRa\|$ and $\|\Pi_U Ra\|$ are less than
$2\cdot10^{-6}\|g\|$.

The first inverse in $S$ costs
$\|A_{23}^{-1}\|\|PRa\|^2\le10\|PRa\|^2$. For the actual
second mixed block $J=\Pi_Z S|_{\mathcal L}$, its $U$ component
is $\Pi_U Ra-\Pi_U RP A_{23}^{-1}PRa$ because $a\perp U$.
The $W$ component is bounded by
$741\,10^{-265}\|a\|$ using $S=B I+K_Q^*M K_Q$ and the
proved $V_0^\perp$ leakage. Hence
$$
\|Ja\|\le(1+3000)\,2\cdot10^{-6}\|g\|
                  +741\,10^{-265}\|a\| < \|g\|/160 .
$$
The second inverse costs at most $(25/2)\|Ja\|^2$.
The additional $L_0$ correction in $C_0$ has the proved bound
$10^{-515}E(a)$. Each correction is nonnegative before subtraction because its
compressed inverse is positive.

The price of transferring $\langle g,Rg\rangle$ to
$\langle a,Ra\rangle$ is at most $1800\delta E(g)$, since
$\|R\|<300$. The displayed signed bounds then give
$\langle a,Ra\rangle>(63/500)E(g)$ and the upper bound
$(61+577531/10000+211(\theta+\eta)+1800\delta)E(g)$.
Combining with the actual inverse prices proves the interval
stated above. For the lower endpoint the remaining coefficient
of $E(g)$ is positive, so $E(g)\ge E(a)$ can be used. For the
upper endpoint the inverse terms are subtracted and the norm
ratio is at most $(1-3\delta)^{-2}$.

## What remains after this sector

The compression of $C_0$ to $\Pi_{G_0}Y$ has gap $1/4$.
A further Schur reduction must retain its mixed interaction
with the orthogonal complement inside $G_0$. The earlier
low-frequency large-weight direction and the prime-419 cutoff
test keep their exact scopes. The argument here obtains its
positive signed balance on a specified high-frequency band and
uses the full original atoms. It leaves the sign on the rest of
$G_0$, the radius-four stage and the global RH and primitive
Dirichlet GRH returns open, including the conductor-one pole terms.

## A lower-frequency direction after eliminating the positive sector

2026-11-14, grwtsk contributors, AI-assisted. Written analytic proof with
the exact finite arithmetic below. Lean elaboration, fresh kernel
replay and transitive axiom audit are NOT_RUN. Independent review is
UNASSESSED.

Keep the original radius-four sources and bounded physical domains
above. Set $Y_0=\Pi_{G_0}Y$ for the previously paid sector, and write
$G_1=G_0\cap Y_0^\perp$. Let
$$
A_Y=\Pi_{Y_0} C_0|_{Y_0},\qquad J_Y=\Pi_{Y_0}C_0|_{G_1},\qquad
C_1=\Pi_{G_1} C_0|_{G_1}-J_Y^* A_Y^{-1}J_Y .
$$
The actual $A_Y$ is bounded below by $I/4$. Thus $\|A_Y^{-1}\|\le4$,
and square completion on $G_1\oplus Y_0$ makes $C_1\ge0$ equivalent to
$C_0\ge0$. Define
$$
j=2\cdot10^{25},\qquad q=\frac{j}{j+1},\qquad
g=\psi_j+q\psi_{j+1},\qquad b=(I-\Pi_{Y_0})\Pi_{G_0}g.
$$
The input $g$ is real odd and has the same endpoint cancellation
and finite full gamma energy as above. The projection $b$ belongs
to the bounded physical space $G_1$. We prove that $b\ne0$ and
$$
\frac{121}{10}<\frac{\langle b,C_1 b\rangle}{E(b)}<107 .
$$

### Physical overlap at all original prime-power lags

Use the physical comparison vector
$f=\psi_j+\psi_{j+1}=\cos(\alpha t)\sin(\nu t)$ on $[-4,4]$,
zero outside, where $\alpha=\pi/8$ and $\nu=(2j+1)\pi/8$.
Here $E(f)=2$, $E(g)=1+q^2$, and $\|f-g\|=1/(j+1)$.
The prime form is bounded on the physical $L^2$ carrier,
which suffices for this use of $f$.

For $0\le r\le8$, the actual whole-line correlation of $f$
integrates over $I_r=[-4,4-r]$. Let
$c_r(t)=\cos(\alpha t)\cos(\alpha(t+r))$. Product-to-sum gives
$$
C_f(r)=\frac12\cos(\nu r)\int_{I_r}c_r(t)\,dt
 -\frac12\int_{I_r}c_r(t)\cos(2\nu t+\nu r)\,dt .
$$
The endpoint products vanish and $\int_{I_r}|c'_r|\le16\alpha$,
so integration by parts in the second integral costs at most
$2\alpha/\nu<1/j$ after multiplying by $1/2$ and dividing by
$E(f)=2$. Also
$0\le c_r(t)\le\alpha^2(t+4)(4-r-t)$, by $\sin x\le x$ on the
two endpoint distances. Its integral is at most
$\alpha^2(8-r)^3/6$. With the original correlation
Cauchy–Schwarz bound and $\pi^2<10$, this proves
$$
\frac{|C_f(r)|}{E(f)}
 \le \min\left(1,\frac5{768}(8-r)^3\right)+\frac1j .
$$
The correlation is zero for $r\ge8$. This covers the full actual
active set.

For each native $n=p^e\le2980$ with $p\ne3$, let $a$ be the
integer with $2^a\le n<2^{a+1}$. Put $\ell_a=693a/1000$ and
$s_a=2^{\lfloor a/2\rfloor}(7/5)^{a\bmod2}$. Then
$\log n>\ell_a$, $\sqrt n\ge s_a$, and
$\log p<7(a+1)/(10e)$. These use $693/1000<\log2<7/10$,
by the positive atanh series and the exponential sum through degree
three at $7/10$, and $\sqrt2>7/5$. The exact sum of the upper prices
$$
\sum_{n=p^e\le2980,\ p\ne3}
  \frac{14(a+1)}{10e s_a}
         \min\left(1,\frac5{768}(8-\ell_a)^3\right)
 =\frac{19189515873984109}{425779200000000}
$$
follows from the integer enumeration below. This bounds the main
physical overlap for all 458 original signed Fourier coefficients
by their absolute contributions. The additional $1/j$ price uses
the original sum of absolute Fourier coefficients $<211$.
The finite cutoff, sign and factor of two are those of the exact
Plancherel return
$\int P_4|\widehat f|^2\,d\xi/(2\pi)
=2\sum \log(p)\chi_3(p^e)\operatorname{Re}C_f(\log(p^e))/\sqrt{p^e}$.
[Native inventory](WeilConductorThreeRadiusFourInventory.lean)
· [Absolute coefficient bound](WeilConductorThreeRadiusFourLowFilter.lean#L224)

Passing from $f$ to $g$ costs at most
$211(\|f\|+\|g\|)\|f-g\|<844/(j+1)$ in the full physical prime
quadratic form. Also $E(f)/E(g)\le 1+2/j$ and $E(g)\ge1$.
Hence the original signed integral satisfies
$$
\left|\int_{\mathbb R}P_4|\widehat g|^2\,\frac{d\xi}{2\pi}\right|
 < \frac{451}{10} E(g).
$$

### Return from the exact band to the bounded residual form

Let $I_\ell$ be the two intervals of radius $H_\ell=10^{16}$
centered at $\pm\omega_j$, where $\omega_j=\pi\cdot10^{25}/2$.
Their absolute frequencies lie between $1.49\cdot10^{25}$ and
$1.6\cdot10^{25}$ and hence in the original residual set
$\mathcal D$ and the range of the inherited high pass law.
They are disjoint from the previous high sector bands.
The same trace cancellation tail estimate above applied with
two modes gives the full off-band mass $\le\theta E(g)$, where
$\theta=8(2/H_\ell)^3=(8\cdot10^{-24})^2$.

The original $\log(3/\pi)+\operatorname{Re}\psi(3/4+i\xi/2)$
term, denoted $A(\xi)$ above, obeys $A>2857/50$ on $I_\ell$.
Indeed $\log10>23/10$ as above and $\log(149/100)>98/249$
by the first positive atanh term. The Binet lower bound
$A\ge\log|\xi|-3/4$ gives the result. The original filters give
$1-w\le \eta=3\cdot10^{-10}$ on $I_\ell$ with their real all-lobe
bounds. The original bounds $A\ge-2$ globally, $A<61$ on $\mathcal D$,
and $|P_4|<211$ bound the full complement and mask error.
[Gamma and high pass](WeilConductorThreeRadiusFourMiddleReturn.lean#L105)
· [Low stop](WeilConductorThreeRadiusFourLowFilter.lean#L112)

Thus the reference full physical prime integral may be returned
to the actual bounded signed $R$ at cost at most
$211(\theta+\eta)E(g)$. Writing $p=451/10$ yields
$$
\begin{aligned}
\langle g,Rg\rangle/E(g)
&\ge (2857/50)(1-\theta)(1-\eta)-2\theta-p-211(\theta+\eta),\\
\langle g,Rg\rangle/E(g)
&\le61+p+211(\theta+\eta).
\end{aligned}
$$

### Exact orthogonality return and the four mixed prices

Write $\delta=10^{-272}$. The two lower native sine modes are
orthogonal to $E_s$ and have centers below $\Omega$.
The earlier polynomial approximation and the same $U,W$
projection argument give $\|\Pi_{G_0}g-g\|<3\delta\|g\|$.
Every $a\in Y_0$ has a unique preimage $h\in Y$ with
$\|a-h\|<3\delta\|h\|$ and $\|h\|\le\|a\|/(1-3\delta)$.
Because $g$ and $h$ use disjoint native sine indices, for unit
$a=\Pi_{G_0}h$,
$$
|\langle a,\Pi_{G_0}g\rangle|
=|\langle(I-\Pi_{G_0})h,(I-\Pi_{G_0})g\rangle|
<\frac{9\delta^2}{1-3\delta}\|g\| .
$$
Thus $\|b-g\|<4\delta\|g\|$. In particular
$(1-4\delta)\|g\|<\|b\|\le\|g\|$.

For $m\le N_s$ the exact sine transform gives
$|\widehat\psi_m(\xi)|<6\cdot10^{-43}$ on $I_\ell$, using
$\omega_m<3\cdot10^7$, $|\xi|>10^{25}$ and
$|\xi^2-\omega_m^2|>\xi^2/2$. The sum of squared
restriction norms over $E_s$ gives
$\|1_{I_\ell}K|_{E_s}\|<4\cdot10^{-31}$, using angular measure
$2H_\ell/\pi<H_\ell$. Split the bounded multiplier $w s_4$
at $I_\ell$, use its bound $300$, and use the lower off-band tail.
The raw mixed norm onto $E_s$ is below
$300(4\cdot10^{-31}+8\cdot10^{-24})\|g\|$.
For $U$, the old preimage $x\in X\subset E_s$ of a unit $u$
obeys $\|x\|\le10/9$, $\|x-u\|\le10^{-60}\|x\|$.
After transferring $g$ to $b$, both $\|PRb\|$ and
$\|\Pi_U Rb\|$ are below $4\cdot10^{-21}\|g\|$.
The actual first correction costs at most $10\|PRb\|^2$.
The second mixed term $Jb=\Pi_Z Sb$ obeys
$$
\|Jb\|
\le \|\Pi_U Rb\|+3000\|PRb\|+741\cdot10^{-265}\|b\|
< 13\cdot10^{-18}\|g\|.
$$
Here the last term uses $W\subset V_0^\perp$ and the exact
representation of $S$ on $Q\mathcal H$. The second correction
costs at most $(25/2)\|Jb\|^2$, and the $L_0$ correction in $C_0$
costs at most $10^{-515} E(b)$.

To bound the new mixed term, let $a\in Y_0$ be unit with preimage
$h\in Y$. On $I_\ell$ the distance to the high carrier exceeds
$10^{25}$. The pointwise tail above for the high $d=10^{17}$
packet gives
$|\widehat h|\le6d^{3/2}(10^{25})^{-2}\|h\|
<6\cdot10^{-24}\|h\|$. Since the lower band's measure is less than
$10^{16}$, $\|1_{I_\ell}Kh\|<6\cdot10^{-16}\|h\|$.
Split the mixed term of $R$ at that same band and add the
projection costs. This gives
$$
|\langle a,Rb\rangle|
 < \frac{300(6\cdot10^{-16}+8\cdot10^{-24})+2100\delta}
          {1-3\delta}\|g\|.
$$
The actual old $P_{23}$ and $Z$ mixed corrections contribute
at most $10\|PRa\|\|PRb\|$ and $(25/2)\|Ja\|\|Jb\|$,
respectively, with $\|PRa\|<3\cdot10^{-6}$ and
$\|Ja\|<1/159$ by the already proved high bounds. The scalar
$B$ cancels since $a\perp b$. The $L_0$ correction has full
operator norm at most $10^{-515}$. Consequently
$$
\|J_Y b\| < 3\cdot10^{-13}\|g\|,\qquad
\langle J_Yb,A_Y^{-1}J_Yb\rangle<4(3\cdot10^{-13})^2 E(g).
$$

Since $\|R\|<300$, the projection costs at most
$2400\delta E(g)$ in the diagonal. The signed diagonal
bounds give $\langle b,Rb\rangle>(1203/100)E(g)$.
Adding $B E(b)$ and subtracting the four quantified inverse
prices yields the lower endpoint $121/10$ on division by
$E(b)$. For the upper endpoint, each inverse term is
subtracted and the residual upper bound transfers with
$E(g)/E(b)<(1-4\delta)^{-2}$. This yields the stated upper bound.

### Exact arithmetic and remaining sign

The following check enumerates the native integers and verifies
the displayed numerical inequalities. It uses trial division
through the integer square root and repeated multiplication for
the powers. Its scope is finite integer and rational arithmetic.

```python
from fractions import Fraction as F
from math import isqrt

limit = 2980
counts = [0] * 11
prime_envelope = F(0)
for prime in range(2, limit + 1):
    if prime == 3 or any(prime % factor == 0
                         for factor in range(2, isqrt(prime) + 1)):
        continue
    n, exponent = prime, 1
    while n <= limit:
        bin_index = n.bit_length() - 1
        counts[bin_index - 1] += 1
        lag_lower = F(693 * bin_index, 1000)
        root_lower = 2 ** (bin_index // 2) * F(7, 5) ** (bin_index % 2)
        weight_upper = F(14 * (bin_index + 1), 10 * exponent) / root_lower
        prime_envelope += weight_upper * min(1, F(5, 768) * (8 - lag_lower)**3)
        n *= prime
        exponent += 1

assert counts == [1, 3, 3, 7, 9, 16, 25, 47, 80, 142, 125]
assert sum(counts) == 458
assert prime_envelope == F(19189515873984109, 425779200000000)
carrier = 2 * 10**25
prime_price = F(451, 10)
assert (prime_envelope + F(211, carrier)) * (1 + F(2, carrier)) \
       + F(844, carrier) < prime_price
ln2_lower = sum(F(2, (2 * r + 1) * 3**(2 * r + 1)) for r in range(4))
assert ln2_lower > F(693, 1000) and 3 * ln2_lower + F(2, 9) > F(23, 10)
assert sum(F(7, 10)**r / [1, 1, 2, 6][r] for r in range(4)) > 2
assert 25 * F(23, 10) + F(98, 249) - F(3, 4) > F(2857, 50)
assert (F(22, 7) / 2 * 10**25 + 10**16) < F(16, 10) * 10**25
assert (F(3, 2) * 10**25 - 10**16) > F(149, 100) * 10**25

theta = 8 * F(2, 10**16)**3
eta, delta = F(3, 10**10), F(1, 10**272)
budget = F(124997987, 10**9)
small = F(4, 10**21)
paid = F(13, 10**18)
mix = F(3, 10**13)
assert theta == F(8, 10**24)**2
assert 10**16 * 38170000 * F(6, 10**43)**2 < F(4, 10**31)**2
raw_low = 300 * (F(4, 10**31) + F(8, 10**24))
assert F(10, 9) * (raw_low + 300 * F(1, 10**60)) + 1200 * delta < small
assert 3001 * small + F(741, 10**265) < paid
assert 10**16 * F(6, 10**24)**2 == F(6, 10**16)**2
raw_mixed = (300 * (F(6, 10**16) + F(8, 10**24)) + 2100 * delta) / (1 - 3 * delta)
assert raw_mixed + 10 * F(3, 10**6) * small + F(25, 2 * 159) * paid \
       + F(1, 10**515) < mix

mask_price = 211 * (theta + eta)
r_lower = F(2857, 50) * (1-theta) * (1-eta) - 2*theta - prime_price - mask_price
assert r_lower - 2400 * delta > F(1203, 100)
assert budget + F(1203, 100) - 10 * small**2 - F(25, 2) * paid**2 \
       - F(1, 10**515) - 4 * mix**2 > F(121, 10)
assert budget + (61 + prime_price + mask_price + 2400*delta) / (1-4*delta)**2 < 107
print("PASS 458 native atoms and lower-band Schur guards")
```

The overlap improves the diagonal estimate on this adjacent pair.
The earlier high-sector argument remains the uniform bound on that
sector. The old projected large-weight witness and prime-419 cutoff
example remain applicable to their original premises. The sign on
all of $G_1$, the radius-four stage, and the original RH and
primitive Dirichlet GRH returns remain open. In particular the
conductor-one argument retains both pole terms and the completed
zero divisor with multiplicities.

## A separated family in the corrected lower-frequency block

2026-11-14, grwtsk contributors, AI-assisted. Written analytic proof
with exact rational inequalities checked below. Lean elaboration,
fresh kernel replay and transitive axiom audit are NOT_RUN.
Independent review is UNASSESSED.

Keep the same $G_1$, $C_1$, all four inverse corrections and full
radius-four source above. The native sector has conductor three,
parity one and all 458 signed unramified prime-power terms. Use the
physical norm and the original angular measure $d\xi/(2\pi)$.

Put $j_0=2\cdot10^{25}$, $M=10^4$, $R_*=3\cdot10^{19}$ and
$j_r=j_0+Mr$ for $0\le r\le R_*$. For each $r$ use
$$
g_r=\psi_{j_r}+\frac{j_r}{j_r+1}\psi_{j_r+1},\qquad
b_r=\Pi_{G_1}g_r,\qquad
u_r=\frac{g_r}{\|g_r\|},\qquad v_r=\Pi_{G_1}u_r .
$$
Here $\Pi_{G_1}=(I-\Pi_{Y_0})\Pi_{G_0}$ is the actual physical
projection. Every $g_r$ is a real odd compact $C^2$ test with the
complete original gamma integrability. The $u_r$ are physically
orthonormal because their sine indices are disjoint. The projected
vectors live in the original bounded Schur carrier.

Their span $\mathcal V$ has dimension $3\cdot10^{19}+1$, and for
every nonzero $v\in\mathcal V$,
$$
12<\frac{\langle v,C_1 v\rangle}{E(v)}<108 .
$$
The particular second packet prescribed in the journal has
$j=j_0+10^{20}$ and occurs at index $r_*=10^{16}$. Its normalized
mixed entry with the first packet satisfies
$$
\frac{|\langle b_0,C_1 b_{r_*}\rangle|}{\|b_0\|\|b_{r_*}\|}
 <5\cdot10^{-25}.
$$

### Uniform inherited diagonal and mixed bounds

The previous adjacent-pair proof is uniform on this family.
Every $j$ lies in $[2\cdot10^{25},\,2.03\cdot10^{25}]$. The
collar of radius $10^{16}$ at $\pm j\pi/4$ lies in
$1.49\cdot10^{25}<|\xi|<1.6\cdot10^{25}$ and stays more than
$10^{25}$ from the high carrier in absolute frequency. Thus the
same inherited high pass, all-lobe low stop, gamma floor,
old sine restriction and high tail estimates apply on each
such collar. All mode centers remain below $\Omega$.

The comparison with the unweighted adjacent pair in the preceding
proof uses the same exact finite 458-atom bin sum for every carrier.
The only carrier-dependent prices in that sum and its transfer
decrease with $j$. Thus its original signed prime integral on
$g_r$ still has absolute value $<(451/10)E(g_r)$ with the same
complete cutoff and signs. Endpoint cancellation gives the same
full off-band norm bound as for the first pair, and the same
Chebyshev estimate applies to the physical projections.

In particular, with $\delta=10^{-272}$, the preceding inequalities
on each $u_r$ give
$$
\begin{aligned}
\|u_r-v_r\|&<4\delta, &
\|PRv_r\|&<4\cdot10^{-21},\\
\|Jv_r\|&<13\cdot10^{-18},&
\|J_Yv_r\|&<3\cdot10^{-13},\\
121/10&<\langle v_r,C_1v_r\rangle/E(v_r)<107 .
\end{aligned}
$$
Here $P$, $J$ and $J_Y$ are precisely the inherited mixed operators.
The scalar interval checks below verify the uniform band endpoints
and separation from the high carrier. The diagonal argument
uses each pair's own collar, which may overlap other collars.

### Decay of the actual mixed entries

For an adjacent pair at carrier $\omega=j\pi/4$, set
$\Delta=\pi/4$ and $b=||\xi|-\omega|$. Its first derivative
cancellation gives the difference of the two exact sine resolvents,
with the common numerator $i(-1)^j\omega\sin(4\xi)$. For $b\ge2$
the absolute transform is at most
$$
\frac{\omega\Delta(2\omega+\Delta)}
 {|\lambda-\omega|\,|\lambda-\omega-\Delta|
  (\lambda+\omega)(\lambda+\omega+\Delta)}
 \le \frac{2\Delta}{b(b-\Delta)}\le\frac4{b^2},
 \qquad \lambda=|\xi|.
$$
We used $\Delta<1$ and $\|g_r\|\ge1$. For $b\le2$, the ordinary
physical $L^1$ bound gives $|\widehat u_r|\le\sqrt8$.
Together the bounds give the whole-line envelope
$$
|\widehat u_r(\xi)|\le
 \frac{27}{(1+||\xi|-\omega_r|)^2},\qquad
 \omega_r=\pi j_r/4 .
$$

For distinct indices let $D_{rs}=|\omega_r-\omega_s|$.
At each $\lambda\ge0$ at least one distance to these centers
is at least $D_{rs}/2$. Integrating the other decaying factor
on each of the two sets gives at most 2 per set, since
$\int_{\mathbb R}(1+|x|)^{-2}\,dx=2$. The bounded original
multiplier has $\|w s_4\|_{\infty,\mathcal D}<300$. Integrating
both angular signs and enlarging the envelope integral to
both complete half-lines now gives
$$
|\langle u_r,Ru_s\rangle|
 \le \frac{300\cdot27^2\cdot4}{\pi(1+D_{rs}/2)^2}
 < \frac{2073600}{M^2(r-s)^2}.
$$
The last comparison uses $\pi>3$ both in the measure and in
$D_{rs}\ge (3/4)M|r-s|$. It uses the original signed multiplier
with its physical norm bound on the whole relevant frequency set.

Write $e_r=u_r-v_r$. The exact orthogonal projection identity
gives $\langle v_r,v_s\rangle=-\langle e_r,e_s\rangle$
for $r\ne s$. Thus the scalar $B I$ mixed entry is priced by
$16B\delta^2$. The transfer from $u$ to $v$ in an entry of $R$
costs at most $2400\delta$. By the actual inverse norms and the
uniform mixed estimates on each $v_r$, the other four mixed
prices are bounded by
$$
10(4\cdot10^{-21})^2,\qquad
(25/2)(13\cdot10^{-18})^2,\qquad
10^{-515},\qquad 4(3\cdot10^{-13})^2.
$$
These are respectively the $A_{23}$, $D$, $D_0$ and $A_Y$
corrections on their actual domains. The sum with the scalar
and transfer prices is less than $4\cdot10^{-25}$. Consequently
for $r\ne s$,
$$
|\langle v_r,C_1 v_s\rangle|
 < \frac{2073600}{M^2(r-s)^2}+4\cdot10^{-25}.
$$
At $r=0,s=r_*$, division by the two projected norms costs
at most $(1-4\delta)^{-2}$. This yields the claimed normalized
bound for the requested mixed entry.

### Joint positivity on the physical span

Set $N=R_*+1$. The exact physical Gram of the $v_r$ is
$I-[\langle e_r,e_s\rangle]_{r,s}$. The subtracted matrix is
positive semidefinite with norm at most its trace, less than
$16N\delta^2$. Thus the Gram is bounded below by
$(1-16N\delta^2)I>0$ and above by $I$. This proves the stated
dimension.

In the matrix of the actual form on the $v_r$, the absolute
sum of off-diagonal entries in each row is at most
$$
\frac{4\cdot2073600}{M^2}+(N-1)4\cdot10^{-25}
=\frac{20739}{250000}<\frac{83}{1000}.
$$
Here $\sum_{m\ge1}m^{-2}\le2$ by the elementary integral
comparison, and there are at most two entries at each index
distance. The diagonal entries lie between
$(121/10)(1-4\delta)^2$ and $107$. Applying
$2|c_r c_s|\le|c_r|^2+|c_s|^2$ in the Hermitian form and
then using the above physical Gram bounds gives the claimed
interval $(12,108)$. These calculations use a formula for the
entire row bound and require no enumeration of the carriers.

```python
from fractions import Fraction as F

delta = F(1, 10**272)
budget = F(124997987, 10**9)
step = 10**4
last_index = 3 * 10**19
size = last_index + 1
base = 2 * 10**25
band_width = 10**16
assert base + step * last_index == 203 * 10**23
assert F(3, 4) * base - band_width > 149 * 10**23
assert F(11, 14) * (base + step * last_index) + band_width < 16 * 10**24
assert F(3, 4) * (4 * 10**25 - base - step * last_index) - band_width > 10**25
assert 27**2 > 9**2 * 8
decay = 300 * 27**2 * F(4, 3) * F(8, 3)**2
assert decay == 2073600
inverse_and_transfer = (
    2400 * delta + 16 * budget * delta**2
    + 10 * F(4, 10**21)**2 + F(25, 2) * F(13, 10**18)**2
    + F(1, 10**515) + 4 * F(3, 10**13)**2
)
remainder = F(4, 10**25)
assert inverse_and_transfer < remainder
pair_index = 10**20 // step
assert 0 < pair_index <= last_index and pair_index * step == 10**20
assert (decay / (step * pair_index)**2 + remainder) / (1 - 4 * delta)**2 < F(5, 10**25)
row = 4 * decay / step**2 + last_index * remainder
assert row == F(20739, 250000) < F(83, 1000)
gram_floor = 1 - 16 * size * delta**2
assert gram_floor > 0
assert F(121, 10) * (1 - 4 * delta)**2 - row > 12
assert 107 + row < 108 * gram_floor
print("PASS separated radius-four sector guards")
```

The new positive compression has inverse norm at most $1/12$
on $\mathcal V$. A further sign reduction must pay the true
mixed operator from its physical orthogonal complement inside
$G_1$. The earlier large-weight witness and the prime-419
cutoff test keep their original domains and arithmetic signs.
The remaining corrected complement, the original radius-four
stage, and RH and primitive Dirichlet GRH remain open. The
global return still requires actual dual phases, zero
multiplicities, all character and window instances and the
conductor-one pole terms.

## Lower carrier rays after eliminating the separated sector

2026-11-14, grwtsk contributors, AI-assisted. Written analytic proof
with exact rational checks. Lean elaboration, fresh kernel replay
and transitive axiom audit are NOT_RUN. Independent review is UNASSESSED.

Use the same radius-four signed bounded source, $C_1$ on $G_1$,
and separated sector $\mathcal V$ above. Write $G_2=G_1\cap\mathcal V^\perp$,
$A_{\mathcal V}=\Pi_{\mathcal V}C_1|_{\mathcal V}$ and
$J_{\mathcal V}=\Pi_{\mathcal V}C_1|_{G_2}$. The exact remaining
form is
$$
C_2=\Pi_{G_2}C_1|_{G_2}-J_{\mathcal V}^*A_{\mathcal V}^{-1}J_{\mathcal V}.
$$
The established $A_{\mathcal V}\ge12I$ gives
$\|A_{\mathcal V}^{-1}\|\le1/12$ on $\mathcal V$. Completing the
square gives equivalence of the signs of $C_2$ on $G_2$ and $C_1$
on $G_1$.

For every integer $10^{10}\le j\le10^{20}$, let
$g=\psi_j+[j/(j+1)]\psi_{j+1}$, $u=g/\|g\|$ and $z=\Pi_{G_2}u$.
The native $g$ has the same first derivative cancellation,
real odd compact $C^2$ extension and full original gamma
integrability. The vector $z$ is in the actual bounded physical
carrier. It is nonzero and satisfies
$$
 5/4<\langle z,C_2z\rangle/E(z)<82.
$$
At the prescribed $j=10^{20}$ the lower endpoint improves to
$97/4$. These are ray estimates for individually projected inputs.

### Sharper prime price from the exact overlap

Use the same comparison $f=\psi_j+\psi_{j+1}$ as in the
previous adjacent-pair proof, with $\alpha=\pi/8$. For
$0\le r\le8$ let $L=8-r$. Direct integration of the nonoscillatory
overlap there gives its normalized absolute cost bounded by
$$
F(L)=\frac{\sin(\alpha L)-\alpha L\cos(\alpha L)}{8\alpha}.
$$
Indeed the amplitude integral of $\cos(\alpha t)\cos(\alpha(t+r))$
is $(\sin(\alpha L)-\alpha L\cos(\alpha L))/(2\alpha)$, and the
product-to-sum factor and $E(f)=2$ give the additional factor
$1/4$. The once-integrated oscillatory term still costs at most
$1/j$ per native lag. By the physical correlation
Cauchy–Schwarz bound the full normalized estimate is
$\min(1,F(L))+1/j$.

On $0\le L\le8$ the derivative shows $F$ is increasing, since
$0\le\alpha L\le\pi$ and
$(\sin x-x\cos x)'=x\sin x\ge0$. Its Taylor series is alternating,
with terms of absolute value
$m\alpha^{2m}L^{2m+1}/[4(2m+1)!]$, $m\ge1$. The consecutive ratio
is at most
$[(m+1)/m]\pi^2/[(2m+2)(2m+3)]<1$, using $\pi^2<10$.
The three terms through $m=3$ give an upper bound. For an upper
input $L^+$ evaluate there and use $\alpha\le11/28$ on the positive
terms and $\alpha\ge157/400$ on the negative term.
The latter rational bound follows from the alternating arctangent
series and $\pi=16\arctan(1/5)-4\arctan(1/239)$.

For each native active $n=p^e\le2980$, $p\ne3$, our arithmetic
uses an outward log enclosure for $p$ and $n$, and rounds
$\sqrt n$ down on the $10^{-8}$ grid by integer square root.
For a positive integer $n=2^k v$ with $1\le v<2$, apply the
positive atanh series at $(v-1)/(v+1)$ to $\log v$, and at $1/3$
to $\log2$. The first eight terms and the geometric upper
remainder $2y^{17}/[17(1-y^2)]$ bound each logarithm. Use
$L^+=8-\log_{\mathrm{lower}} n$ in the overlap bound and the
upper prime log in the coefficient. Multiplying each price by
$10^9$ and rounding up gives exact integer sum $20675207546$
over the 458 original terms. The checker below recreates this sum
by trial division and power enumeration.

The inherited absolute coefficient sum $<211$ pays the
oscillatory error. Returning $f$ to $g$ uses
$\|f-g\|=1/(j+1)$ and $E(f)/E(g)\le1+2/j$ on the same
bounded physical prime carrier. Consequently
$$
\frac{|\int_{\mathbb R}P_4|\widehat g|^2\,d\xi/(2\pi)|}{E(g)}
\le
\left(\frac{20675207546}{10^9}+\frac{211}{j}\right)
 (1+2/j)+\frac{844}{j}<517/25 .
$$
The price accounts for all original signed terms with the actual
normalization. The comparison uses the exact support overlap of
this adjacent sine pair.

### Original mask and physical projection

Use the two mirrored collars $I_j$ of radius $H=10^5$ at
$\pm j\pi/4$. They lie in the original residual set $\mathcal D$,
above the cutoff and away from the excluded paid pair. Their
absolute frequencies lie below $10^{20}$ and above $(37/50)j$.
Thus $\|1_{\mathbb R\setminus I_j}\widehat u\|^2\le\theta$
in the original angular measure with
$\theta=8(2/H)^3$, by the previous adjacent trace formula.
In particular the off-band norm is less than $3\cdot10^{-7}$.
The inherited all-lobe filter bounds give $1-w\le\eta=3\cdot10^{-10}$
on $I_j$. The Binet estimate and $\log10>23/10$ give
$A(\xi)> k(23/10)-1/3-3/4$ there for $j\ge10^k$, using
$\log(37/50)>-1/3$ by the positive exponential series.
Use $k=10$ for the uniform bound and $k=20$ at the prescribed
carrier. The old $A\ge-2$ globally, $A<61$ on $\mathcal D$,
and $|P_4|<211$ account for the full tails and mask error.

Put $\delta=10^{-272}$ and $b=\Pi_{G_1}u$. The earlier Chebyshev
estimate and exact native orthogonality to the old sine space
and high carrier give $\|b-u\|<4\delta$, with the same two
projection steps as for the previous lower rays. Their use
here needs only that these two sine centers are below $\Omega$
and their indices exceed the old sine indices and are outside
the high carrier.

For the separated sector write $v_r=\Pi_{G_1}u_r$ with its true
Gram $\Gamma$. The native sine indices of $u$ and $u_r$ are
disjoint. Therefore
$|\langle v_r,b\rangle|
=|\langle u_r-v_r,u-b\rangle|<16\delta^2$.
With $N=3\cdot10^{19}+1$ and
$\Gamma\ge\kappa I$, $\kappa=1-16N\delta^2>99/100$,
the actual squared projection onto $\mathcal V$ is bounded by
$N(16\delta^2)^2/\kappa<\delta^2$. This follows by applying
$\Gamma^{-1}$ to the vector of true mixed inner products.
Hence $z=b-\Pi_{\mathcal V}b$ satisfies
$\|z-u\|<5\delta$ and $1-5\delta<\|z\|\le1$.

### All five actual inverse prices

For each of the first $N_s=38170000$ native sine modes the exact
transform on $I_j$ has absolute value at most $11\cdot10^{-13}$,
using $\omega_m<3\cdot10^7$ and
$|\xi^2-\omega_m^2|>\xi^2/2$ there. The angular collar measure is
less than $H$. Summing their squared norms gives
$\|1_{I_j}K|_{E_s}\|<22\cdot10^{-7}$.
Split the original $R$ pairing into this collar and its complement.
Use $\|w s_4\|_\infty<300$, and for $U$ use its old physical
preimage in $X$ of norm at most $10/9$ with relative error
$10^{-60}$. The transfer from $u$ to $z$ costs at most
$1500\delta$ for either projection. This gives
$\|PRz\|,\|\Pi_U Rz\|<p_*=9/10000$.

The source head leakage law $\|KP\|^2\le\alpha_{23}$ with
$213+900000\alpha_{23}<741$ gives $\|KP\|<1/40$. Thus
$\|RP\|\le300\|KP\|<15/2$ and the actual head interaction
$\|\Pi_U R P A_{23}^{-1}\|<75$. In the $W$ component use the
previous $741\cdot10^{-265}$ estimate. This yields
$\|Jz\|<76p_*+741\cdot10^{-265}<z_*=69/1000$.
The first two prices are at most $10p_*^2$ and $(25/2)z_*^2$.
[Head leakage](WeilConductorThreeRadiusFourLegendreTail.lean#L335)

For a unit $a\in Y_0$ use its actual high preimage $h\in Y$.
The distance to the high carrier on $I_j$ exceeds $10^{25}$.
The pointwise high-tail bound gives
$\|1_{I_j}Kh\|<2\cdot10^{-21}\|h\|$.
Splitting the $R$ pairing at $I_j$ and transferring the physical
projections gives
$$
|\langle a,Rz\rangle|<
 \frac{300(2\cdot10^{-21}+3\cdot10^{-7})+2400\delta}
      {1-3\delta}.
$$
Add the mixed first two prices
$10(3\cdot10^{-6})p_*$ and $(25/2)(1/159)z_*$
using the established high estimates. Add the full old $L_0$
price $10^{-515}$. The scalar $B I$ vanishes in this mixed pairing.
This proves
$\|J_Yz\|<y_*=3/500$, with fourth price $4y_*^2$.

For each unit native $u_r$ of the separated sector,
the carrier separation from $u$ exceeds $10^{25}$.
The full two-envelope mixed estimate above gives
$|\langle u_r,Ru\rangle|<3\cdot10^{-44}$.
Transferring both projections costs $2700\delta$.
For each $v_r$ add the four actual mixed prices from the
bounded estimates on both sides, including
$4(3\cdot10^{-13})y_*$ for the high inverse. The scalar $B I$
vanishes because $z\perp\mathcal V$. This gives
$|\langle v_r,C_1z\rangle|<8\cdot10^{-15}$ for every $r$.
The same physical Gram $\Gamma$ bounds the actual projected norm,
so $\|J_{\mathcal V}z\|^2\le N(8\cdot10^{-15})^2/\kappa$.
In particular $\|J_{\mathcal V}z\|<5\cdot10^{-5}$ and the fifth
price is at most $(5\cdot10^{-5})^2/12$.

The signed $R$ lower estimate is the on-collar gamma lower
bound times $(1-\eta)(1-\theta)$, minus the complete off-band
gamma price $2\theta$, prime price $517/25$, mask price
$211(\theta+\eta)$ and the physical transfer price $3000\delta$.
After the five inverse debits this coefficient is positive,
so $E(z)\le1$ preserves that remaining lower coefficient when
dividing. Adding $B$ then gives the two lower endpoints stated
above. The upper estimate uses $61+517/25+211(\theta+\eta)$,
the same transfer and $E(z)>(1-5\delta)^2$, with all five
inverse terms subtracted. The exact comparisons are reproduced
below.

```python
from fractions import Fraction as F
from functools import cache
from math import factorial, isqrt

def log_from_atanh(y):
    lower = 2 * sum(y**(2*k + 1) / (2*k + 1) for k in range(8))
    return lower, lower + 2*y**17 / (17*(1-y*y))

log2_lower, log2_upper = log_from_atanh(F(1, 3))

@cache
def log_bounds(n):
    exponent = n.bit_length() - 1
    power = 2**exponent
    lower, upper = log_from_atanh(F(n-power, n+power))
    return exponent*log2_lower + lower, exponent*log2_upper + upper

alpha_lower, alpha_upper = F(157, 400), F(11, 28)
assert 16*(F(1, 5)-F(1, 375)) - F(4, 239) > 8*alpha_lower
total, count = 0, 0
for p in range(2, 2981):
    if p == 3 or any(p % d == 0 for d in range(2, isqrt(p) + 1)):
        continue
    n = p
    while n <= 2980:
        length = 8 - log_bounds(n)[0]
        root_lower = F(isqrt(n*10**16), 10**8)
        overlap = sum(
            (-1)**(m+1)*F(m, 4*factorial(2*m+1))
            * (alpha_upper if m % 2 else alpha_lower)**(2*m)
            * length**(2*m+1)
            for m in range(1, 4)
        )
        term = 10**9 * 2*log_bounds(p)[1]/root_lower * min(1, overlap)
        total += (term.numerator + term.denominator - 1)//term.denominator
        count += 1
        n *= p

assert (count, total) == (458, 20675207546)
j_min, j_max = 10**10, 10**20
prime_price = F(517, 25)
assert (F(total, 10**9) + F(211, j_min))*(1 + F(2, j_min)) \
       + F(844, j_min) < prime_price

width, delta = 10**5, F(1, 10**272)
eta, theta = F(3, 10**10), 8*F(2, width)**3
assert F(3, 4)*j_min-width > F(37, 50)*j_min
assert F(11, 14)*j_max+width < 10**20
assert F(3, 4)*(2*10**25-j_max)-width > 10**25
assert 1+F(1, 3)+F(1, 18) > F(50, 37)
assert log_bounds(10)[0] > F(23, 10)
assert theta < F(3, 10**7)**2
assert 10**5 * 38170000 * F(11, 10**13)**2 < F(22, 10**7)**2
assert F(6, 10**24)**2 * width < F(2, 10**21)**2
assert F(528, 900000) < F(1, 40)**2

sector_count = 3*10**19+1
gram_floor = 1-16*sector_count*delta**2
assert gram_floor > F(99, 100)
assert sector_count*(16*delta**2)**2/gram_floor < delta**2
raw_low = 300*(F(22, 10**7)+F(3, 10**7))
p_bound, z_bound, y_bound = F(9, 10000), F(69, 1000), F(3, 500)
assert F(10, 9)*(raw_low + 300*F(1, 10**60)) + 1500*delta < p_bound
assert 76*p_bound + F(741, 10**265) < z_bound
high_raw = (300*(F(2, 10**21)+F(3, 10**7))+2400*delta)/(1-3*delta)
assert high_raw + 10*F(3, 10**6)*p_bound + F(25, 2*159)*z_bound \
       + F(1, 10**515) < y_bound
assert F(291600, 1)/(1+F(10**25, 2))**2 < F(3, 10**44)
mixed_entry = (
    F(3, 10**44) + 2700*delta + 10*F(4, 10**21)*p_bound
    + F(25, 2)*F(13, 10**18)*z_bound
    + F(1, 10**515) + 4*F(3, 10**13)*y_bound
)
assert mixed_entry < F(8, 10**15)
sector_bound = F(5, 10**5)
assert sector_count*F(8, 10**15)**2/gram_floor < sector_bound**2
debit = 10*p_bound**2 + F(25, 2)*z_bound**2 + F(1, 10**515) \
        + 4*y_bound**2 + sector_bound**2/12
budget = F(124997987, 10**9)
for log_power, target in [(10, F(5, 4)), (20, F(97, 4))]:
    gamma_lower = log_power*F(23, 10)-F(1, 3)-F(3, 4)
    raw_lower = gamma_lower*(1-theta)*(1-eta) - 2*theta \
                - prime_price - 211*(theta+eta) - 3000*delta
    assert raw_lower-debit > 0 and budget+raw_lower-debit > target
assert budget + (61+prime_price+211*(theta+eta)+3000*delta)/(1-5*delta)**2 < 82
print("PASS exact prime envelope and threshold-ray Schur guards")
```

The prime-419 cutoff example and the original large-weight
obstruction keep their exact scopes. The sign on the entire
corrected complement remains open. The radius-four stage and
the global RH and primitive Dirichlet GRH returns still require
all original characters and windows, exact dual phases and zero
multiplicities, and the conductor-one pole terms.

## The historical large-weight carrier in the current complement

2026-11-14, grwtsk contributors, AI-assisted. Written analytic proof
with exact directed arithmetic. Lean elaboration, fresh kernel replay
and transitive axiom audit are NOT_RUN. Independent review is UNASSESSED.

Use the exact native datum $j=4800000000$ of
[WeightedSchurSource §8](WeilConductorThreeRadiusFourWeightedSchurSource.lean#L314).
Thus $g=\psi_j+[j/(j+1)]\psi_{j+1}$ is the original real odd compact
$C^2$ test, with finite full gamma energy by the same support and
derivative bounds. The original datum there was projected onto $Z_F$
to falsify a proposed uniform small-weight inequality. Here project
the same normalized native input $u=g/\|g\|$ onto the actual $G_2$,
and set $z=\Pi_{G_2}u$.

The vector $z$ is nonzero. On the actual five-times corrected form
from the preceding sections,
$$
\frac{206167}{10000}<\frac{\langle z,C_2z\rangle}{E(z)}
 <\frac{206175}{10000}.
$$
Both estimates use the actual radius-four parity-one conductor-three
source, signed inventory, residual frequency set, both angular signs
with measure $d\xi/(2\pi)$, and physical inverse domains.

### Directed enclosure of the signed prime contribution

For $f=\psi_j+\psi_{j+1}$ use the physical overlap calculation above
with $\alpha=\pi/8$ and $\nu=(2j+1)\pi/8$. For an active lag $r=\log n$
and $L=8-r$, it gives the signed identity with a controlled remainder
$$
\frac{C_f(r)}{E(f)}
 = F(L)\cos(\nu r)+\varepsilon_r,\qquad
 F(L)=\frac{\sin(\alpha L)-\alpha L\cos(\alpha L)}{8\alpha},
 \qquad |\varepsilon_r|\le 1/j .
$$
The same endpoint vanishing and one integration by parts bound the
oscillatory term. In particular this comparison only uses the bounded
physical prime form on $f$. It retains each signed coefficient
$2\log(p)\chi_3(n)/\sqrt n$, where $n=p^e\le2980$ and $p\ne3$.

For a log input $n=2^k v$, $1\le v<2$, use the first 26 positive
atanh terms at $y=(v-1)/(v+1)$ and the upper remainder
$2y^{53}/[53(1-y^2)]$, and use the same bounds at $1/3$ for $\log 2$.
Round the resulting log interval outward on the $10^{-22}$ grid.
The checker obtains the interval for $\pi$ on that grid from Machin's
identity and the alternating arctangent series. It encloses $\sqrt n$
using the integer square root of $n(10^{22})^2$ and the next integer.

Since $F$ increases on $[0,8]$, its lower and upper input lengths
are $8-\log_{\mathrm{upper}}n$ and $8-\log_{\mathrm{lower}}n$.
Bound $F$ below by the first eight alternating terms and above by
the first seven, using the exact series from the preceding section.
At each endpoint choose the outward powers of $\alpha$ by the
term sign. The interval is intersected with $[0,1]$.

For the phase, first enclose $c=(2j+1)\log n/8$. Subtract the same
integer multiple $2m$ from both endpoint values, choosing
$m=\lfloor(c_{\mathrm{lower}}+1)/2\rfloor$. Then
$q=c_{\mathrm{lower}}-2m\in[-1,1)$.
The exact cosine is $\cos(\pi(c-2m))$. Approximate
$\cos(\pi_{\mathrm{lower}}q)$ by its Taylor sum through degree 24.
The remainder is at most $(22/7)^{26}/26!$, using the zero odd term
at degree 25. Cosine is one-Lipschitz, so also pay
$\pi_{\mathrm{upper}}(c_{\mathrm{upper}}-c_{\mathrm{lower}})
+\pi_{\mathrm{upper}}-\pi_{\mathrm{lower}}$.
This reduces the dimensionless phase before multiplication by
$\pi$ and retains the exact periodic identity, including if its
interval crosses the chosen reduction endpoint.

Use interval multiplication for each true signed coefficient,
overlap, and cosine, and round each signed product outward
on the $10^{-10}$ grid. The full sum over all 458 terms lies in
$[8186499442,8186508068]/10^{10}$.
The oscillatory error for $f$ is at most $211/j$ by the original
absolute coefficient sum. The transfer from $f$ to $g$ costs
at most $844/j$ in the quadratic value and $422/j$ in the
normalization, since $\|f-g\|=1/(j+1)$, $E(g)\ge1$, and
$E(f)/E(g)\le1+2/j$. Thus the actual normalized signed prime term
on $g$ and on $u$ lies in
$$
\left(\frac{81864}{100000},\,\frac{81866}{100000}\right).
$$
This interval uses the exact native signs as well as the magnitudes.

### Gamma, Fourier tail and physical projection

Use the mirrored collar $I$ of radius $H=10^4$ at $\pm\omega$,
$\omega=j\pi/4$. On it $3.5\cdot10^9<|\xi|<4\cdot10^9$ and it
belongs to $\mathcal D$ away from the paid pair. The inherited
high pass and all-lobe low stop give $1-w\le\eta=3\cdot10^{-10}$.
The adjacent trace tail gives complete off-band mass at most
$\theta=8(2/H)^3$ on unit input $u$. Its norm there is at most
$8\cdot10^{-6}$.

Use the full original gamma term $A(\xi)$. With $y=|\xi|/2$,
the Binet error bound in the original source gives
$$
\left|A(\xi)-\log\frac{3|\xi|}{2\pi}\right|
 \le \frac{5}{9y}+\frac{9}{32y^2}.
$$
The first term bounds $\psi(3/4+iy)-\log(3/4+iy)$ and the
second bounds $\operatorname{Re}\log(3/4+iy)-\log y$ using
$\log(1+t)\le t$. The sum is below $10^{-8}$ on the collar.
Since $\pi>3$, its log input $3|\xi|/(2\pi)$ lies between
$1800000000-H/2$ and $1800000000+H/2$. The same rational log
enclosure yields $21.31104<A(\xi)<21.31106$ on $I$.
[Inherited Binet and filter bounds](WeilConductorThreeRadiusFourMiddleReturn.lean#L105)

Write $\delta=10^{-272}$. The old projection estimates apply to the
two native modes, which are above $E_s$ and below $\Omega$ and
disjoint from the high-sector indices. This gives
$\|u-\Pi_{G_1}u\|<4\delta$. Each unit native carrier of
$\mathcal V$ is physically orthogonal to $u$. Hence each mixed
entry with the corresponding projected $v_r$ is less than
$16\delta^2$, by the two orthogonal projection defects.
The actual sector Gram lower bound
$\kappa=1-16N\delta^2$, $N=3\cdot10^{19}+1$, gives squared
norm of the projection onto $\mathcal V$ less than
$N(16\delta^2)^2/\kappa<\delta^2$. Therefore
$\|z-u\|<5\delta$ and $1-5\delta<\|z\|\le1$.

### All five actual Schur corrections

The old $E_s$ sine transforms on $I$ have absolute value
below $5\cdot10^{-12}$, using $\omega_m<3\cdot10^7$ and
$|\xi^2-\omega_m^2|>\xi^2/2$. Hence
$\|1_I K|_{E_s}\|<31\cdot10^{-7}$ by summing their squared
norms with angular measure less than $H$.
Splitting the original $R$ pairing at $I$, using its
multiplier bound $300$, the old $U$ preimage norm at most
$10/9$ and error at most $10^{-60}$ relative to the preimage,
then transferring $u$ to $z$, gives
$\|PRz\|,\|\Pi_U Rz\|<p_0=1/250$.

The weighted representation $R=K_w^*s_4 K_w$ gives a
sharper old mixed bound here. The inherited $U$ and $P$
bounds give $\|K_w|_U\|^2<1/49900$ and $\|K_wP\|<1/40$.
The first follows from the same nested $U\subset U_{\mathrm{new}}$
and its actual projected bound. With $\|s_4\|_{\infty,\mathcal D}<300$
and $\|A_{23}^{-1}\|\le10$, this gives
$\|\Pi_U RP A_{23}^{-1}\|<3/8$. The $W$ component keeps the
$741\cdot10^{-265}$ estimate. Hence
$\|Jz\|<(1+3/8)p_0+741\cdot10^{-265}<z_0=3/500$.
[Weighted projection bounds](WeilConductorThreeRadiusFourWeightedSchurSource.lean#L172)

For a unit $a\in Y_0$ with true preimage $h\in Y$, the earlier
high tail bound gives $\|1_I Kh\|<6\cdot10^{-22}\|h\|$.
Thus the direct $R$ mixed entry is bounded by
$[300(8\cdot10^{-6}+6\cdot10^{-22})+2400\delta]/(1-3\delta)$.
Add the original $A_{23}$, $D$ and $D_0$ mixed prices,
respectively $10(3\cdot10^{-6})p_0$, $(25/2)(1/159)z_0$ and
$10^{-515}$. They use the same high estimates on $a$.
The scalar $B I$ mixed term vanishes by physical orthogonality.
This gives $\|J_Yz\|<y_0=3/1000$.

For each $v_r$ of the separated sector, the native carrier
separation exceeds $10^{25}$. The whole-line two-envelope
estimate pays less than $3\cdot10^{-44}$ for the native $R$
pairing, before the projection transfer of $2700\delta$.
The four old mixed prices, using the established uniform bounds
on $v_r$, give $|\langle v_r,C_1z\rangle|<4\cdot10^{-15}$.
The scalar $B I$ term again vanishes by orthogonality.
The true projected norm is bounded using $\Gamma^{-1}$:
$$
\|J_{\mathcal V}z\|^2
 \le \frac{N(4\cdot10^{-15})^2}{\kappa}<(3\cdot10^{-5})^2 .
$$

The difference between the original signed prime expectation
and the masked residual prime expectation is bounded by
$211(\theta+\eta)$ using the bound on the entire complement
of $I$ and the true filter on $I$. The original gamma lower
bound there is $-2$, and the gamma upper bound on the
residual set is 61. Thus the diagonal residual is enclosed
using the on-collar gamma bounds, the signed prime interval,
the full mask price, and the physical transfer $3000\delta$.
Subtract the true five inverse prices
$$
10p_0^2,\quad (25/2)z_0^2,\quad 10^{-515},\quad
4y_0^2,\quad (3\cdot10^{-5})^2/12
$$
for the lower estimate and add $B$ after dividing by $E(z)$.
For the upper estimate use $E(z)>(1-5\delta)^2$ and
subtract nonnegative terms. The exact finite comparisons
below yield the claimed interval.

```python
from fractions import Fraction as F
from functools import cache
from math import factorial, isqrt

source_grid = 10**22
atom_grid = 10**10
j = 4800000000

def round_out(lower, upper, grid):
    return F(lower*grid // 1, grid), F(-((-upper*grid) // 1), grid)

def log_from_atanh(y):
    lower = 2*sum(y**(2*k+1)/(2*k+1) for k in range(26))
    return lower, lower + 2*y**53/(53*(1-y*y))

log2_lower, log2_upper = log_from_atanh(F(1, 3))

@cache
def log_bounds(n):
    k = n.bit_length()-1
    q = 2**k
    lower, upper = log_from_atanh(F(n-q, n+q))
    return round_out(k*log2_lower+lower, k*log2_upper+upper, source_grid)

def atan_bounds(y):
    upper = sum((-1)**k*y**(2*k+1)/(2*k+1) for k in range(17))
    return upper-y**35/35, upper

atan5_lower, atan5_upper = atan_bounds(F(1, 5))
atan239_lower, atan239_upper = atan_bounds(F(1, 239))
pi_lower, pi_upper = round_out(
    16*atan5_lower-4*atan239_upper, 16*atan5_upper-4*atan239_lower,
    source_grid,
)
assert 3 < pi_lower <= pi_upper < F(22, 7)
alpha_lower, alpha_upper = pi_lower/8, pi_upper/8

def overlap_bound(length, last, upper):
    return sum(
        (-1)**(m+1)*F(m, 4*factorial(2*m+1))
        * (alpha_upper if bool(m % 2) == upper else alpha_lower)**(2*m)
        * length**(2*m+1)
        for m in range(1, last+1)
    )

def cosine_bounds(log_lower, log_upper):
    phase_lower = F(2*j+1, 8)*log_lower
    phase_upper = F(2*j+1, 8)*log_upper
    period = (phase_lower+1)//2
    residue = phase_lower-2*period
    assert -1 <= residue < 1
    angle = pi_lower*residue
    value = sum((-1)**k*angle**(2*k)/factorial(2*k) for k in range(13))
    error = (pi_upper*(phase_upper-phase_lower) + pi_upper-pi_lower
             + F(22, 7)**26/factorial(26))
    return max(-1, value-error), min(1, value+error)

def product_bounds(x, y):
    corners = [a*b for a in x for b in y]
    return min(corners), max(corners)

count = 0
sum_lower = sum_upper = F(0)
for prime in range(2, 2981):
    if prime == 3 or any(prime % m == 0 for m in range(2, isqrt(prime)+1)):
        continue
    n = prime
    while n <= 2980:
        lag_lower, lag_upper = log_bounds(n)
        assert 0 < lag_lower <= lag_upper < 8
        root_floor = isqrt(n*source_grid**2)
        log_p_lower, log_p_upper = log_bounds(prime)
        magnitude = 2*log_p_lower*source_grid/(root_floor+1), 2*log_p_upper*source_grid/root_floor
        signed = magnitude if n % 3 == 1 else (-magnitude[1], -magnitude[0])
        overlap = (max(0, overlap_bound(8-lag_upper, 8, False)),
                   min(1, overlap_bound(8-lag_lower, 7, True)))
        term = product_bounds(product_bounds(signed, overlap),
                              cosine_bounds(lag_lower, lag_upper))
        lower, upper = round_out(*term, atom_grid)
        sum_lower += lower
        sum_upper += upper
        count += 1
        n *= prime

assert count == 458
assert sum_lower*atom_grid == 8186499442 and sum_upper*atom_grid == 8186508068
print('signed envelope integer numerators:', sum_lower*atom_grid, sum_upper*atom_grid)
prime_lower, prime_upper = F(81864, 100000), F(81866, 100000)
assert prime_lower < sum_lower-F(1477, j) and sum_upper+F(1477, j) < prime_upper

width, delta = 10**4, F(1, 10**272)
theta, eta = 8*F(2, width)**3, F(3, 10**10)
p_bound, z_bound, y_bound, v_bound = F(1, 250), F(3, 500), F(3, 1000), F(3, 10**5)
y_min = F(17, 10)*10**9
assert F(3, 4)*j-width > 2*y_min
assert F(5, 9)/y_min+F(9, 32)/y_min**2 < F(1, 10**8)
gamma_lower, gamma_upper = F(2131104, 100000), F(2131106, 100000)
assert log_bounds(1800000000-width//2)[0]-F(1, 10**8) > gamma_lower
assert log_bounds(1800000000+width//2)[1]+F(1, 10**8) < gamma_upper
assert theta == F(8, 10**6)**2
assert width*38170000*F(5, 10**12)**2 < F(31, 10**7)**2
raw_low = 300*(F(31, 10**7)+F(8, 10**6))
assert F(10, 9)*(raw_low+300*F(1, 10**60))+1500*delta < p_bound
assert F(1, 49900) < F(1, 200)**2
assert F(528, 900000) < F(1, 40)**2
assert (1+F(3, 8))*p_bound+F(741, 10**265) < z_bound
assert (300*(F(6, 10**22)+F(8, 10**6))+2400*delta)/(1-3*delta) \
       + 10*F(3, 10**6)*p_bound+F(25, 2*159)*z_bound+F(1, 10**515) < y_bound
sector_count = 3*10**19+1
gram_floor = 1-16*sector_count*delta**2
assert sector_count*(16*delta**2)**2/gram_floor < delta**2
entry_bound = F(4, 10**15)
assert F(3, 10**44)+2700*delta+10*F(4, 10**21)*p_bound \
       + F(25, 2)*F(13, 10**18)*z_bound+F(1, 10**515) \
       + 4*F(3, 10**13)*y_bound < entry_bound
assert sector_count*entry_bound**2/gram_floor < v_bound**2
debit = 10*p_bound**2+F(25, 2)*z_bound**2+F(1, 10**515)+4*y_bound**2+v_bound**2/12
budget = F(124997987, 10**9)
lower = gamma_lower*(1-theta)*(1-eta)-2*theta-prime_upper-211*(theta+eta)-3000*delta
upper = gamma_upper+61*theta-prime_lower+211*(theta+eta)+3000*delta
assert lower-debit > 0 and budget+lower-debit > F(206167, 10000)
assert budget+upper/(1-5*delta)**2 < F(206175, 10000)
print('PASS signed historical prime phases and five Schur prices')
```

The original $Z_F$ large-weight falsifier and the prime-419
cutoff example retain their exact signs and domains. The new
interval concerns the same native input projected into $G_2$.
The corrected sign on the whole $G_2$, the original radius-four
stage and RH and primitive Dirichlet GRH remain open. The global
return still requires original dual phases, zero multiplicities,
all required characters and windows and the conductor-one pole terms.

## A lower carrier below the original paid pair

2026-11-14, grwtsk contributors, AI-assisted. Written analytic proof
with exact directed arithmetic. Lean elaboration, fresh kernel replay
and transitive axiom audit are NOT_RUN. Independent review is UNASSESSED.

Let $j=10^9$, $q=j/(j+1)$, $g=\psi_j+q\psi_{j+1}$, and
$u=g/\|g\|$. The real odd native input has the same compact $C^2$
extension and full gamma integrability as the historical input. Write
$z=\Pi_{G_2}u$ on the same actual bounded residual form $C_2$, with
the same five inverse corrections. Then $z\ne0$ and
$$
 20.88894<\frac{\langle z,C_2z\rangle}{E(z)}<20.88900.
$$
The test is in the original conductor-three parity-one radius-four
problem. All norms, gamma and prime terms, and inverse domains are
the ones fixed above.

### Exact signed phases for the smaller carrier

Use $f=\psi_j+\psi_{j+1}$, $\alpha=\pi/8$ and
$\nu=(2j+1)\pi/8$ as in the historical test. For $0\le r\le8$,
put $L=8-r$ and center the overlap by $x=t+r/2$. Then
$2\cos(\alpha t)\cos(\alpha(t+r))=\cos(2\alpha x)-\cos(\alpha L)$.
Integrating the two cosine products on $[-L/2,L/2]$ gives
$$
 \frac{C_f(r)}{E(f)}=F(L)\cos(\nu r)-\frac{O(L)}8,\qquad
 O(L)=\frac{\alpha^2\sin(\nu L)\cos(\alpha L)}{\nu(\nu^2-\alpha^2)}
       -\frac{\alpha\cos(\nu L)\sin(\alpha L)}{\nu^2-\alpha^2}.
$$
The expression gives $C_f(0)/E(f)=1$ and $C_f(8)=0$. In particular
the oscillatory correction satisfies
$|O|/8\le\alpha/(8\nu(\nu-\alpha))=1/(2\pi j(2j+1))<1/(12j^2)$.
This identity also checks the sign and normalization of the
previous integration-by-parts formula.

In the orthonormal two-sine coordinates the angle $\vartheta$
between $f$ and $g$ satisfies $\tan\vartheta=(1-q)/(1+q)=1/(2j+1)$.
The distance of the two unit vectors is
$2\sin(\vartheta/2)\le\tan\vartheta$. The original full bounded
prime form has norm less than 211. Its normalized value therefore
changes by less than $422/(2j+1)$ when passing from $f$ to $g$.

Use the same directed 26-term logarithms, Machin bounds, integer
square roots, seven/eight overlap terms and phase reduction modulo
two as in the preceding certificate. Recompute each $\log n$ phase
with the new $j$, retaining all signs and outward rounding each
product on the $10^{-10}$ grid. The resulting signed main sum over
the 458 terms lies in $[-10215476967,-10215469014]/10^{10}$.
On adding the transfer $422/(2j+1)+211/(12j^2)$, the full unmasked
expectation on $u$ obeys
$$
 -1.0215480 < \int_{\mathbb R}P_4(\xi)|\widehat u(\xi)|^2
                   \frac{d\xi}{2\pi} < -1.0215466 .
$$
Thus the prime term contributes positively to $R$ before the mask
error. The earlier unsigned overlap budget $517/25$ exceeds the
gamma lower bound here and cannot by itself give this signed estimate.

### Source gamma, mask and actual projection

The mirrored collar $I$ of radius $H=10^4$ at $\pm j\pi/4$
lies in $7\cdot10^8<|\xi|<8\cdot10^8$, below the original paid pair
and wholly in $\mathcal D$. The inherited all-lobe low stop and high
pass give $1-w\le\eta=3\cdot10^{-10}$ there, and the complete
off-collar mass is at most $\theta=8(2/H)^3=(8\cdot10^{-6})^2$.
Using the preceding Binet estimate with $y>(7\cdot10^8)/2$, its
error is less than $10^{-8}$. The log input $3|\xi|/(2\pi)$ lies
between $375000000-H/2$ and $375000000+H/2$. Directed logarithms
give $19.742423<A(\xi)<19.742450$ on the collar.

Put $\delta=10^{-272}$. Both native modes are above the old sine
indices, below $\Omega$ and outside the high and separated
carriers. The inherited approximation and projection estimates
give $\|u-\Pi_{G_1}u\|<4\delta$, and the mixed inner products
with the projected separated carriers are below $16\delta^2$.
The actual physical Gram bound $\Gamma\ge\kappa I$ with
$N=3\cdot10^{19}+1$ and $\kappa=1-16N\delta^2$ gives
$N(16\delta^2)^2/\kappa<\delta^2$. In particular
$\|z-u\|<5\delta$ and $1-5\delta<\|z\|\le1$.

### Sharper mixed estimates on the actual inverse domains

Write $b=||\xi|-j\pi/4|$. The two-sine trace envelope proved above
gives $|\widehat u|\le\sqrt8$ at $b\le2$ and
$|\widehat u|\le4/b^2$ for $b\ge2$. Integrating on both signs yields
$\|\widehat u\|_{L^1(d\xi/(2\pi))}\le(4\sqrt8+4)/\pi<16/3$.

On $|\xi|\ge7\cdot10^8$ the native old-head sine transform satisfies
$$
 |\widehat\psi_m(\xi)|\le
 \frac{\omega_m}{\xi^2-\omega_m^2}<7\cdot10^{-11}
 \qquad(1\le m\le38170000).
$$
Here $\omega_m<3\cdot10^7$. Therefore any unit vector in $E_s$
has transform at most $6200\,(7\cdot10^{-11})$ pointwise there by
Cauchy–Schwarz. Below $7\cdot10^8$ the distance to the new carrier
exceeds $4\cdot10^7$, so the full angular $L^2$ norm of
$\widehat u$ on that part is below $4\cdot10^{-11}$ by the same tail
formula. Pair $R$ above the split using the angular $L^1$ bound
and below it using Cauchy–Schwarz. The multiplier bound 300,
the $10/9$ preimage norm and $10^{-60}$ preimage error on $U$,
and the transfer from $u$ to $z$, prove
$\|PRz\|,\|\Pi_U Rz\|<p_*=1/1250$.
The inherited weighted first-head interaction is below $3/8$ and
the $W$ contribution stays below $741\cdot10^{-265}$. Hence
$\|Jz\|<(1+3/8)p_*+741\cdot10^{-265}<j_*=3/2500$.

For unit $a\in Y_0$ use the actual preimage $h\in Y$.
For $|\xi|\le10^{25}$ the distance to the high carrier exceeds
$10^{25}$, giving $|\widehat h|<6\cdot10^{-24}\|h\|$
by the high-packet tail formula. Above this split, the current
carrier distance exceeds $10^{24}$, and the angular $L^2$ tail
of $\widehat u$ is below $10^{-35}$. With the same two norm
estimates and both projection transfers,
$$
 |\langle a,Rz\rangle|<
 \frac{300((16/3)(6\cdot10^{-24})+10^{-35})+2400\delta}{1-3\delta}.
$$
The scalar mixed term vanishes by orthogonality. The three old
inverse prices in this entry are bounded by
$10(3\cdot10^{-6})p_*$, $(25/2)(1/159)j_*$ and $10^{-515}$.
Their sum with the direct term gives $\|J_Yz\|<y_*=1/10000$.

The new native ray is separated from every native carrier of
$\mathcal V$ by more than $10^{25}$. The whole-line two-envelope
estimate and physical transfer give $|\langle v_r,Rz\rangle|<
3\cdot10^{-44}+2700\delta$. Adding all four inherited mixed
prices bounds each $|\langle v_r,C_1 z\rangle|$ by $13\cdot10^{-17}$,
using $\|PRv_r\|<4\cdot10^{-21}$, $\|Jv_r\|<13\cdot10^{-18}$,
the $L_0$ bound, and $\|J_Yv_r\|<3\cdot10^{-13}$. The scalar
term vanishes since $z\perp\mathcal V$. The actual Gram inverse
then gives $\|J_{\mathcal V}z\|<v_*=10^{-6}$.

The full diagonal mask loss on the prime estimate is at most
$211(\theta+\eta)$. Off the collar, use the global gamma lower
bound $A\ge-2$ and residual gamma upper bound $A<61$. Transfer
from $u$ to $z$ costs at most
$3000\delta$. The total debit from the five genuine inverse prices
is bounded by
$$
 10p_*^2+(25/2)j_*^2+10^{-515}+4y_*^2+v_*^2/12<0.0000245.
$$
The resulting residual lower bound after this debit is positive.
Use $E(z)\le1$ for the lower quotient and
$E(z)>(1-5\delta)^2$ for the upper quotient, where all inverse
terms are subtracted. Add $B$ to both after division, giving the
stated interval.

### Directed arithmetic guards

Take the Python block in the preceding historical test up to
its line `assert count == 458`, excluding that line. Set `j = 10**9`
in that prefix and append the block below. This runs the identical
inventory and interval algorithms with every new integer phase
and tests the displayed rational inequalities.

```python
assert count == 458
assert sum_lower*atom_grid == -10215476967
assert sum_upper*atom_grid == -10215469014
transfer = F(422, 2*j+1)+F(211, 12*j**2)
prime_lower, prime_upper = F(-10215480, 10**7), F(-10215466, 10**7)
assert prime_lower < sum_lower-transfer and sum_upper+transfer < prime_upper

width, delta = 10**4, F(1, 10**272)
theta, eta = 8*F(2, width)**3, F(3, 10**10)
assert F(3*j, 4)-width > 7*10**8 and F(11*j, 14)+width < 8*10**8
y_min = F(7, 2)*10**8
assert F(5, 9)/y_min+F(9, 32)/y_min**2 < F(1, 10**8)
gamma_lower, gamma_upper = F(19742423, 10**6), F(19742450, 10**6)
assert log_bounds(375000000-width//2)[0]-F(1, 10**8) > gamma_lower
assert log_bounds(375000000+width//2)[1]+F(1, 10**8) < gamma_upper
assert theta == F(8, 10**6)**2

threshold = 7*10**8
max_old_center = 3*10**7
assert F(max_old_center, threshold**2-max_old_center**2) < F(7, 10**11)
assert 38170000 < 6200**2
assert F(3*j, 4)-threshold > 4*10**7
assert 8*F(2, 4*10**7)**3 < F(4, 10**11)**2
assert 8*F(2, 10**24)**3 < F(1, 10**35)**2
p_bound, z_bound, y_bound, v_bound = F(1, 1250), F(3, 2500), F(1, 10000), F(1, 10**6)
raw_low = 300*(F(16, 3)*6200*F(7, 10**11)+F(4, 10**11))
assert F(10, 9)*(raw_low+300*F(1, 10**60))+1500*delta < p_bound
assert F(1, 49900) < F(1, 200)**2
assert F(528, 900000) < F(1, 40)**2
assert (1+F(3, 8))*p_bound+F(741, 10**265) < z_bound
raw_high = (300*(F(16, 3)*F(6, 10**24)+F(1, 10**35))+2400*delta)/(1-3*delta)
assert raw_high+10*F(3, 10**6)*p_bound+F(25, 2*159)*z_bound+F(1, 10**515) < y_bound

sector_count = 3*10**19+1
gram_floor = 1-16*sector_count*delta**2
assert sector_count*(16*delta**2)**2/gram_floor < delta**2
assert F(300*27**2*4, 3*(1+10**25//2)**2) < F(3, 10**44)
entry_bound = F(13, 10**17)
assert F(3, 10**44)+2700*delta+10*F(4, 10**21)*p_bound \
       + F(25, 2)*F(13, 10**18)*z_bound+F(1, 10**515) \
       + 4*F(3, 10**13)*y_bound < entry_bound
assert sector_count*entry_bound**2/gram_floor < v_bound**2

debit = 10*p_bound**2+F(25, 2)*z_bound**2+F(1, 10**515)+4*y_bound**2+v_bound**2/12
assert debit < F(245, 10**7)
budget = F(124997987, 10**9)
lower = gamma_lower*(1-theta)*(1-eta)-2*theta-prime_upper-211*(theta+eta)-3000*delta
upper = gamma_upper+61*theta-prime_lower+211*(theta+eta)+3000*delta
assert lower-debit > 0 and budget+lower-debit > F(2088894, 10**5)
assert budget+upper/(1-5*delta)**2 < F(2088900, 10**5)
print('PASS signed billionth-carrier phases and five Schur prices')
```

The earlier prime-419 cutoff counterexample and the historical
large-weight counterexample retain their original signs and
domains. This is a further ray of the true corrected form. Its
sign leaves the coupled inequality on all of $G_2$, the original
radius-four stage and the full primitive and zeta returns open.

## A positive block of overlapping adjacent-sine rays

2026-11-14, grwtsk contributors, AI-assisted. Written analytic proof
with exact directed arithmetic. Lean elaboration, fresh kernel replay
and transitive axiom audit are NOT_RUN. Independent review is UNASSESSED.

Put $k=10^9$, $q=k/(k+1)$ and $t=(k+1)/(k+2)$. In the original
physical space take
$$
 g_0=\psi_k+q\psi_{k+1},\qquad
 g_1=\psi_{k+1}+t\psi_{k+2},\qquad z_i=\Pi_{G_2}g_i.
$$
Each real native input has the same compact $C^2$ extension and
full gamma integrability as the preceding ray. The two projected
vectors are independent. On their complex span, for every nonzero
$z$, the true five-times corrected radius-four form satisfies
$$
 14.7898<\frac{\langle z,C_2 z\rangle}{E(z)}<22.0026.
$$
In the unnormalized basis $(z_0,z_1)$ the mixed entry has real part
in $(16.3752,16.3754)$. All 458 original signed atoms, the parity-one
gamma term and all five physical inverse domains are retained.

### The physical Gram and the exact signed matrix

Set $u_i=g_i/\|g_i\|$ and $\delta=10^{-272}$. The native Gram
in the $g_i$ basis is
$$
 G=\begin{pmatrix}1+q^2&q\\q&1+t^2\end{pmatrix}.
$$
Its off-diagonal in the unit basis is
$q/\sqrt{(1+q^2)(1+t^2)}\in(0.49,1/2)$, using $0<q<t<1$
for the upper bound. The shared sine mode rules out native
orthogonality. If $x=\sum_i c_i g_i$, then
$\sum_i |c_i|\|g_i\|\le2\|x\|$ since the unit Gram is strictly
above $I/2$. The old sine and high sector separations hold for
both native pairs, as do the below-$\Omega$ polynomial
approximation and the separated-sector Gram estimates.
Consequently $\|g_i-z_i\|<5\delta\|g_i\|$ by the two
preceding projection steps. With $e_i=g_i-z_i$, the true projected
Gram is $G_z=G-(\langle e_i,e_j\rangle)_{ij}$ by orthogonal projection.
For $z=\Pi_{G_2}x$ the error norm is at most $10\delta\|x\|$, hence
$(1-100\delta^2)E(x)\le E(z)\le E(x)$, with strict lower bound for
nonzero $x$. This proves injectivity on the native span.

For integers $a\le b$ and $0\le r\le8$, put $L=8-r$,
$\tau_m=m\pi r/8$, $d=b-a$ and $s=a+b$. Define
$$
 T_0=L,\qquad T_m=(-1)^{m+1}\frac{8\sin\tau_m}{m\pi}\quad(m>0).
$$
The physical cosine-shift matrix in the orthonormal sine basis is
$$
 S_{ab}(r)=\frac{\cos\tau_s\,T_d-\cos\tau_d\,T_s}{8}.
$$
Indeed the overlap of $\psi_a(v)$ and $\psi_b(v+r)$ is
$[-4,4-r]$. Center it by $v+r/2$, apply the sine product identity,
and integrate the two cosines on $[-L/2,L/2]$.
The two integrated factors are $L$ at index zero and
$8\sin(m\pi L/8)/(m\pi)$ otherwise. Reflection of the odd inputs
gives the same overlap for $-r$, so this is the matrix of the
Fourier cosine under the stated angular measure. At $r=0$
the matrix is the identity and at $r=8$ it vanishes.
The leading and high-sum terms are both included.

For each pair $a,b\in\{k,k+1,k+2\}$ sum $S_{ab}(\log n)$
against $2\log(p)\chi_3(n)/\sqrt n$ over every original nonzero
prime-power atom $n=p^e\le2980$. The outward intervals for the
upper triangle, in lexicographic order and units of $10^{-10}$,
are
$$
\begin{gathered}
[-38357213542,-38357213084],\quad[-5147674444,-5147673986],\quad
[-6699593403,-6699592945],\\
[28221610032,28221610490],\quad[18546860359,18546860817],\quad
[34172792217,34172792675].
\end{gathered}
$$
The checker below uses the preceding directed log, square-root
and Machin bounds. Reduce each $m\log n/8$ by an even integer
before multiplying by the lower endpoint of $\pi$. Use cosine
through degree 24, sine through degree 25, and the Taylor
remainders $(22/7)^{26}/26!$ and $(22/7)^{27}/27!$, respectively.
Both functions are one-Lipschitz, giving the same phase uncertainty
allowance as before. The interval operations retain the signs of
the weights and both terms of the exact shift identity. Rounding
each atom outwards on the stated grid gives the six sums.

Restrict this matrix to the actual native coefficient vectors
$(1,q,0)$ and $(0,1,t)$ and call the resulting matrix $M_P$.
Its mixed entry lies in $[34921202485,34921204318]/10^{10}$.
The first diagonal is negative and the second is positive. The two interval determinant tests below give
$$
 -2.13510\,G<M_P<5.07750\,G
$$
in positive definite order. For each of the two differences, the
lower endpoints of the two diagonals are positive and their product
exceeds the square of the maximum absolute endpoint of the mixed
entry. These real symmetric comparisons hold on complex coefficients
as well. In particular they bound the full unmasked prime term
throughout the native span using physical energy.

### Common gamma collar and genuine inverse prices

Use the mirrored collar of radius $10001$ centered at $\pm k\pi/4$,
which contains both individual radius-$10^4$ collars. It lies
in $7\cdot10^8<|\xi|<8\cdot10^8$ inside $\mathcal D$ and below the
original paid pair. Its gamma log input lies between
$375000000-5001$ and $375000000+5001$. Binet and the directed logs
therefore give $19.742423<A<19.742450$, with $1-w\le\eta=3\cdot10^{-10}$
on the collar by the original filters. The individual angular
tail masses on unit inputs are at most $\theta=8(2/10^4)^3$.
On the entire native span use the triangle inequality on the tail
norm and $\sum_i|c_i|\|g_i\|\le2\|x\|$, giving off-collar mass at most
$4\theta E(x)$. This pays all overlap between the two Fourier inputs.

The preceding signed ray estimates for the four maps
$PR$, $J$, $J_Y$ and $J_{\mathcal V}$ hold on each
$\Pi_{G_2}u_i$ with respective bounds $1/1250$, $3/2500$, $1/10000$,
$10^{-6}$. Their proofs use the fixed splits $7\cdot10^8$ and
$10^{25}$. Both native carriers exceed the lower split by more
than $4\cdot10^7$, are more than $10^{24}$ below the second split,
and are more than $10^{25}$ from the separated sector. The old sine
and high-packet bounds, angular $L^1$ bound and true Gram estimate
are the same for both inputs. The $D_0$ correction keeps its original
operator norm bound $10^{-515}$ on $G_0$. For unit native inputs the
five inverse prices together are less than $d_*=0.0000245$ by the
preceding estimates. Each mixed entry is bounded by the product of
the corresponding map norms times the actual inverse norm.
Applying the map estimates to a general $z$ through the two
coefficients therefore bounds the total inverse debit by
$4d_* E(x)$. The scalar term here is $B E(z)$.

The full prime mask costs $211(\eta+4\theta)E(x)$.
For the gamma lower bound the off-collar cost is $8\theta E(x)$
using $A\ge-2$ and the on-collar factor is at least
$(1-\eta)(1-4\theta)E(x)$. The upper gamma tail costs at most
$244\theta E(x)$ using $A<61$ on the residual set. The bounded $R$
transfer from $x$ to $z$ costs at most $6000\delta E(x)$.
The lower bound remains positive after the full debit. Divide
by $E(z)$ with the above Gram comparison, and add $B$.
This gives the asserted bounds on every nonzero projected combination.

For the mixed entry, subtract the gamma midpoint
$A_*=19.7424365$ times $G_{01}$ before charging the gamma error.
On the common collar its pointwise error is at most
$0.0000135+61\eta$. Off the collar, the difference between the
masked residual gamma and $A_*$ is at most 42. Cauchy–Schwarz
on the two full tails gives the factor $\theta$ there.
The prime mask costs $211(\eta+\theta)$ per product of input norms.
Add $3000\delta$ for the bounded transfer and $d_*$ for the
mixed inverse prices, again per product of norms. That product
is below 2 in the $g_i$ basis. Finally the error in $B G_{01}$
is at most $50 B\delta^2$. Together with the directed $M_{P,01}$
interval this yields the claimed enclosure of the mixed entry.

### Directed arithmetic guards for the block

Use the historical checker's prefix up to its `alpha_lower, alpha_upper`
assignment, excluding that assignment and omitting its old `j`
assignment, followed by this block. This shares its outward arithmetic for $\log$ and $\pi$ while
evaluating the new exact two-sine formula.

```python
from itertools import combinations_with_replacement

k = 10**9
modes = range(k, k+3)
pairs = tuple(combinations_with_replacement(modes, 2))

def add(x, y):
    return x[0]+y[0], x[1]+y[1]

def scale(c, x):
    return (c*x[1], c*x[0]) if c < 0 else (c*x[0], c*x[1])

def multiply(x, y):
    corners = [a*b for a in x for b in y]
    return min(corners), max(corners)

@cache
def trig(m, lag):
    if m == 0:
        return (F(1), F(1)), (F(0), F(0))
    lower, upper = scale(F(m, 8), lag)
    period = (lower+1)//2
    residue = lower-2*period
    assert -1 <= residue < 1
    angle = pi_lower*residue
    uncertainty = pi_upper*(upper-lower)+pi_upper-pi_lower
    cos = sum((-1)**l*angle**(2*l)/factorial(2*l) for l in range(13))
    sin = sum((-1)**l*angle**(2*l+1)/factorial(2*l+1) for l in range(13))
    cos_err = uncertainty+F(22, 7)**26/factorial(26)
    sin_err = uncertainty+F(22, 7)**27/factorial(27)
    return ((max(-1, cos-cos_err), min(1, cos+cos_err)),
            (max(-1, sin-sin_err), min(1, sin+sin_err)))

def integrated_cosine(m, lag):
    if m == 0:
        return 8-lag[1], 8-lag[0]
    amplitude = 8/(pi_upper*m), 8/(pi_lower*m)
    return scale((-1)**(m+1), multiply(amplitude, trig(m, lag)[1]))

def shift_entry(a, b, lag):
    d, s = b-a, a+b
    first = multiply(trig(s, lag)[0], integrated_cosine(d, lag))
    second = multiply(trig(d, lag)[0], integrated_cosine(s, lag))
    return scale(F(1, 8), add(first, scale(-1, second)))

for r in (0, 8):
    for a, b in pairs:
        lower, upper = shift_entry(a, b, (F(r), F(r)))
        assert lower <= int(r == 0 and a == b) <= upper

entries = dict.fromkeys(pairs, (F(0), F(0)))
count = 0
for prime in range(2, 2981):
    if prime == 3 or any(prime % m == 0 for m in range(2, isqrt(prime)+1)):
        continue
    n = prime
    while n <= 2980:
        lag = log_bounds(n)
        assert 0 < lag[0] <= lag[1] < 8
        root_floor = isqrt(n*source_grid**2)
        log_p_lower, log_p_upper = log_bounds(prime)
        magnitude = (2*log_p_lower*source_grid/(root_floor+1),
                     2*log_p_upper*source_grid/root_floor)
        signed = scale(1 if n % 3 == 1 else -1, magnitude)
        for a, b in pairs:
            term = multiply(signed, shift_entry(a, b, lag))
            entries[a, b] = add(entries[a, b], round_out(*term, atom_grid))
        count += 1
        n *= prime
assert count == 458

q, t = F(k, k+1), F(k+1, k+2)
p00 = add(add(entries[k, k], scale(2*q, entries[k, k+1])),
          scale(q*q, entries[k+1, k+1]))
p11 = add(add(entries[k+1, k+1], scale(2*t, entries[k+1, k+2])),
          scale(t*t, entries[k+2, k+2]))
p01 = add(add(entries[k, k+1], scale(t, entries[k, k+2])),
          add(scale(q, entries[k+1, k+1]), scale(q*t, entries[k+1, k+2])))

expected = [
    (-38357213542, -38357213084), (-5147674444, -5147673986),
    (-6699593403, -6699592945), (28221610032, 28221610490),
    (18546860359, 18546860817), (34172792217, 34172792675),
]
assert [tuple(v*atom_grid for v in entries[pair]) for pair in pairs] == expected
assert round_out(*p01, atom_grid) == (F(34921202485, atom_grid), F(34921204318, atom_grid))

g00, g01, g11 = 1+q*q, q, 1+t*t
assert 0 < 4*g01*g01 < g00*g11
assert (F(49, 100))**2*g00*g11 < g01*g01
assert 0 < q < t < 1
prime_lower, prime_upper = F(-213510, 10**5), F(507750, 10**5)
for sign, shift in [(1, -prime_lower), (-1, prime_upper)]:
    h00 = add(scale(sign, p00), (shift*g00,)*2)
    h01 = add(scale(sign, p01), (shift*g01,)*2)
    h11 = add(scale(sign, p11), (shift*g11,)*2)
    assert min(h00[0], h11[0]) > 0
    offdiag = max(abs(v) for v in h01)
    assert h00[0]*h11[0] > offdiag**2

width, delta = 10**4, F(1, 10**272)
theta, eta = 8*F(2, width)**3, F(3, 10**10)
collar = width+1
assert F(3*k, 4)-collar > 7*10**8
assert F(11*(k+1), 14)+collar < 8*10**8
assert F(3*k, 4)-7*10**8 > 4*10**7
assert 10**25-F(11*(k+1), 14) > 10**24
assert F(3, 4)*(2*10**25-(k+1)) > 10**25
y_min = F(7, 2)*10**8
binet = F(5, 9)/y_min+F(9, 32)/y_min**2
assert binet < F(1, 10**8)
gamma_lower, gamma_upper = F(19742423, 10**6), F(19742450, 10**6)
assert log_bounds(375000000-5001)[0]-F(1, 10**8) > gamma_lower
assert log_bounds(375000000+5001)[1]+F(1, 10**8) < gamma_upper

p_bound, j_bound, y_bound, v_bound = F(1, 1250), F(3, 2500), F(1, 10000), F(1, 10**6)
debit = 10*p_bound**2+F(25, 2)*j_bound**2+F(1, 10**515)+4*y_bound**2+v_bound**2/12
assert debit < F(245, 10**7)
budget = F(124997987, 10**9)
mask_price = 211*(eta+4*theta)
lower = gamma_lower*(1-eta)*(1-4*theta)-8*theta-prime_upper-mask_price-6000*delta-4*debit
upper = gamma_upper+244*theta-prime_lower+mask_price+6000*delta
assert lower > 0 and budget+lower > F(147898, 10**4)
assert budget+upper/(1-100*delta**2) < F(220026, 10**4)

center = (gamma_lower+gamma_upper)/2
midpoint = (center+budget)*g01
mixed_error = 2*((gamma_upper-gamma_lower)/2+61*eta+42*theta
                +211*(eta+theta)+3000*delta+debit)+50*budget*delta**2
assert F(163752, 10**4) < midpoint-p01[1]-mixed_error
assert midpoint-p01[0]+mixed_error < F(163754, 10**4)
print('PASS overlapping two-ray signed Schur block')
```

The prime-419 signed cutoff and the historical small-weight
counterexample on $Z_F$ retain their scopes. This block establishes
a joint sign inside the original $G_2$. Positivity on the whole $G_2$,
the original radius-four stage, and the full RH and primitive
Dirichlet GRH returns remain open.

## The full three-sine block at the lower carrier

2026-11-14, grwtsk contributors, AI-assisted. Written analytic proof
with exact directed arithmetic. Lean elaboration, fresh kernel replay
and transitive axiom audit are NOT_RUN. Independent review is UNASSESSED.

For $k=10^9$ put $X_3=\operatorname{span}_{\mathbb C}
\{\psi_k,\psi_{k+1},\psi_{k+2}\}$ in the original bounded physical
space and $Z_3=\Pi_{G_2}X_3$. The restriction of the projection to
$X_3$ is injective. For every nonzero $z\in Z_3$ the same corrected
conductor-three radius-four form satisfies
$$
 14.7873<\frac{\langle z,C_2z\rangle}{E(z)}<23.7853 .
$$
The earlier adjacent pairs span the two-dimensional subspace of
$X_3$ with vanishing endpoint derivative. For each bare sine the
inner derivative at $4$ is $(-1)^m\omega_m/2$, where
$\omega_m=m\pi/4$. The zero extension has a derivative jump and
falls outside the original $C^2$ admissible test class. The whole
$X_3$ belongs to the bounded physical $L^2$ domain used to define
$R$ and the projection, which is the domain used in this result.

### The original signed matrix and physical Gram

Use the six directed entries already proved with all 458
signed prime-power terms in the native orthonormal basis.
For this full three-coordinate span call the corresponding
matrix $M_3$. Interval evaluation of the leading principal minors
of $M_3+3.9160 I$ and $5.0781 I-M_3$ makes them positive. For a
symmetric matrix with upper triangular entries $(a,b,c,d,e,f)$
in lexicographic order, the three minors are
$a$, $ad-b^2$ and $adf+2bce-ae^2-dc^2-fb^2$. Consequently
$$
 -3.9160 I<M_3<5.0781 I .
$$
This holds over complex coefficients and compares the full
unmasked prime form to native physical energy.

Each bare mode exceeds the old sine indices, has center below
$\Omega$, and is orthogonal to both native high sectors. The
inherited polynomial, physical preimage and separated-sector
Gram estimates give
$\|\psi_m-\Pi_{G_2}\psi_m\|<5\delta$, $\delta=10^{-272}$.
The polynomial approximation uses each single sine. Its use
here is independent of the subsequent Fourier estimate for a
trace-cancelled pair. With $e_m=\psi_m-\Pi_{G_2}\psi_m$, the
true output Gram in these coordinates is
$I-(\langle e_m,e_n\rangle)_{mn}$. For $x=\sum c_m\psi_m$ use
$\sum|c_m|\le\sqrt3\|x\|$ and orthogonal projection. This gives
$(1-75\delta^2)E(x)<E(\Pi_{G_2}x)\le E(x)$ when $x\ne0$.

### Uncancelled Fourier tails and gamma

For $\lambda=|\xi|$ and $b=|\lambda-\omega_m|$ the exact
single-sine formula gives
$$
 |\widehat\psi_m(\xi)|=
 \frac{\omega_m|\sin(4\xi)|}{b(\lambda+\omega_m)}
 \le\frac1b\qquad(b>0).
$$
Use the continuous transform at the removable points.
The squared angular mass at $b\ge H$ is at most $2/(\pi H)$,
integrating both signs and enlarging the positive-$\lambda$
integral to both sides of the carrier. The cancellation-dependent
$8(2/H)^3$ mass bound fails for a bare sine at $H=500000$.
Indeed on $\lambda=\omega_m+b$ with $H\le b\le2H<\omega_m$,
the amplitude is at least $|\sin(4b)|/(6H)$.
The integral of $\sin^2(4b)$ over this interval is at least
$H/2-1/8\ge H/3$. Using both angular signs proves a mass lower
bound $1/(108\pi H)>8(2/H)^3$. This witnesses the need to
price the uncancelled tail separately.

The two mirrored intervals of radius $H+2$ about $\pm\omega_k$
contain the three radius-$H$ collars and lie in
$7\cdot10^8<|\xi|<8\cdot10^8$ inside the original $\mathcal D$.
Cauchy–Schwarz in the three native coefficients gives full
off-collar mass at most $\theta E(x)$, $\theta=2/H$.
On the common collar the original filters give
$1-w\le\eta=3\cdot10^{-10}$. The Binet log input lies between
$375000000-250001$ and $375000000+250001$.
Its remainder is below $10^{-8}$, so
$19.74176<A(\xi)<19.74311$. The full signed prime mask costs
$211(\eta+\theta)E(x)$. Use $A\ge-2$ for the gamma lower tail
and $A<61$ on the residual set for the gamma upper tail.

### The actual five inverse prices

For one unit native mode there is a global angular Fourier
$L^1$ bound $17/2$. To see this, for $0\le\lambda\le2\omega_m$
and $b\ge1/4$ use
$\tfrac12(1/b+1/(\lambda+\omega_m))$ in the exact formula.
Its integral in $d\lambda$ is at most
$\log(4\omega_m)+(\log3)/2<22+1$. At $b<1/4$ use the
physical bound $|\widehat\psi_m|\le\sqrt8<3$, at cost $3/2$.
Above $2\omega_m$ use $(4/3)\omega_m/\lambda^2$,
at cost $2/3$. The full angular integral is the sum divided
by $\pi$. At $|\xi|>10^{25}$ the exact formula instead
gives $|\widehat\psi_m|\le 2\cdot10^9/|\xi|^2$ and angular
$L^2$ tail norm below $10^{-28}$. This far tail is used
for the interactions with the higher sectors.

Write $b_m=\Pi_{G_2}\psi_m$. Below $7\cdot10^8$ the bare tail
has angular norm below $13/10^5$ since the carrier is more
than $4\cdot10^7$ away. Pair it through the actual weighted
representation with $\|K_wP\|<1/40$ and
$\|K_w|_U\|<1/200$. Above the split the old unit sine-head
transform is bounded pointwise by $6200\cdot7\cdot10^{-11}$.
This uses $\omega_m<3\cdot10^7$ for the old modes and
Cauchy–Schwarz in their $38170000$ coefficients. Use the
new mode's angular $L^1$ bound there. For $U$ use the true
old preimage of norm at most $10/9$ and relative error
$10^{-60}$ above the split. The transfer to $b_m$ costs
at most $1500\delta$. With multiplier bound 300 this gives
$\|PRb_m\|<11/5000$ and $\|\Pi_U Rb_m\|<3/2000$.
The inherited weighted head interaction of norm below $3/8$
and the $W$ term below $741\cdot10^{-265}$ give
$\|J b_m\|<3/1250$.

For the actual $Y_0$ mixed entry split at $10^{25}$.
Below it the high native preimage has Fourier supremum
at most $6\cdot10^{-24}$ per unit preimage norm. Pair using
$17/2$ and use the bare far tail above that split.
The physical preimage and transfer costs give the direct
bound
$$
 \frac{300((17/2)(6\cdot10^{-24})+10^{-28})+2400\delta}
      {1-3\delta}.
$$
The scalar mixed term vanishes by orthogonality. Add the
genuine first two mixed inverse prices using the old
bounds $3\cdot10^{-6}$ and $1/159$ on the other vector,
and $10^{-515}$ for the $D_0$ correction. This gives
$\|J_Y b_m\|<1/5000$.

For each separated native unit carrier $u_r$, below $10^{25}$
its adjacent envelope is at most $4\cdot10^{-48}$ since
the separation there is more than $10^{24}$. Above the split
use the bare far tail again. After transfer to $v_r=\Pi_{G_1}u_r$
and $b_m$, the direct mixed bound is
$300((17/2)(4\cdot10^{-48})+10^{-28})+2700\delta$.
Add the four actual inherited mixed inverse prices, with
the old bounds $4\cdot10^{-21}$, $13\cdot10^{-18}$ and
$3\cdot10^{-13}$ for $PRv_r$, $Jv_r$ and $J_Yv_r$, and the
full $D_0$ operator bound. The scalar term vanishes by
$b_m\perp\mathcal V$. This bounds the resulting $C_1$
entries by $2.5\cdot10^{-16}$. The actual separated-sector
Gram inverse then gives $\|J_{\mathcal V}b_m\|<1.5\cdot10^{-6}$.

With the five original inverse norms these bounds cost less
than $0.000121$ per unit native sine. Applying the same linear
map bounds and $\sum |c_m|\le\sqrt3\|x\|$ gives total debit
less than $0.000363 E(x)$ for the full span. Transfer the
bounded $R$ from $x$ to $z=\Pi_{G_2}x$ at cost at most
$6000\delta E(x)$. Apply the native signed matrix comparison
and the full mask and gamma costs. The lower bound after
the debit is positive. Use the true output energy for
division and add $B$ on both sides.

### Directed guards for the uncancelled block

Take the historical checker prefix as in the preceding block,
followed by the overlapping block up to its `q, t` assignment,
excluding the assignment. This provides the six exact native
matrix intervals. Append the following guards.

```python

def shifted_entries(shift, sign):
    return [
        add(scale(sign, entries[a, b]), (shift, shift) if a == b else (0, 0))
        for a, b in pairs
    ]

def triple_product(x, y, z):
    return multiply(multiply(x, y), z)

def minors(matrix):
    a, b, c, d, e, f = matrix
    minor2 = add(multiply(a, d), scale(-1, multiply(b, b)))
    minor3 = add(triple_product(a, d, f), scale(2, triple_product(b, c, e)))
    minor3 = add(minor3, scale(-1, triple_product(a, e, e)))
    minor3 = add(minor3, scale(-1, triple_product(d, c, c)))
    minor3 = add(minor3, scale(-1, triple_product(f, b, b)))
    return a, minor2, minor3

prime_lower, prime_upper = F(-39160, 10**4), F(50781, 10**4)
for shift, sign in [(-prime_lower, 1), (prime_upper, -1)]:
    assert all(bound[0] > 0 for bound in minors(shifted_entries(shift, sign)))

delta = F(1, 10**272)
width = 500000
eta = F(3, 10**10)
theta = F(2, width)
collar = width+2
assert F(3*k, 4)-collar > 7*10**8
assert F(11*(k+2), 14)+collar < 8*10**8
assert F(3*k, 4)-7*10**8 > 4*10**7
assert F(3, 4)*2*10**25-10**25 >= 10**24
assert 2*width < F(3*k, 4)
assert F(1, 108*width)/pi_upper > 8*F(2, width)**3
y_min = F(7, 2)*10**8
binet = F(5, 9)/y_min+F(9, 32)/y_min**2
assert binet < F(1, 10**8)
gamma_lower, gamma_upper = F(1974176, 10**5), F(1974311, 10**5)
assert log_bounds(375000000-250001)[0]-F(1, 10**8) > gamma_lower
assert log_bounds(375000000+250001)[1]+F(1, 10**8) < gamma_upper

assert log_bounds(3200000000)[1] < 22
assert log_bounds(3)[1] < 2
assert (F(3, 2)+22+1+F(2, 3))/3 < F(17, 2)
low_tail, high_tail = F(13, 10**5), F(1, 10**28)
assert F(2, 3*4*10**7) < low_tail**2
assert F((2*10**9)**2, 9*10**75) < high_tail**2
assert F(3*10**7, (7*10**8)**2-(3*10**7)**2) < F(7, 10**11)
assert 38170000 < 6200**2
head_high = F(17, 2)*6200*F(7, 10**11)
head_bound, u_bound = F(11, 5000), F(3, 2000)
assert 300*(head_high+low_tail/40)+1500*delta < head_bound
assert 300*(F(10, 9)*(head_high+F(1, 10**60))+low_tail/200)+1500*delta < u_bound
j_bound = F(3, 1250)
assert u_bound+F(3, 8)*head_bound+F(741, 10**265) < j_bound

high_pairing = (300*(F(17, 2)*F(6, 10**24)+high_tail)+2400*delta)/(1-3*delta)
y_bound = F(1, 5000)
assert high_pairing+10*F(3, 10**6)*head_bound+F(25, 2*159)*j_bound+F(1, 10**515) < y_bound
sector_count = 3*10**19+1
gram_floor = 1-16*sector_count*delta**2
assert sector_count*(16*delta**2)**2/gram_floor < delta**2
v_pairing = 300*(F(17, 2)*F(4, 10**48)+high_tail)+2700*delta
entry_bound, v_bound = F(25, 10**17), F(15, 10**7)
assert v_pairing+10*F(4, 10**21)*head_bound+F(25, 2)*F(13, 10**18)*j_bound \
       +F(1, 10**515)+4*F(3, 10**13)*y_bound < entry_bound
assert sector_count*entry_bound**2/gram_floor < v_bound**2
debit = 10*head_bound**2+F(25, 2)*j_bound**2+F(1, 10**515)+4*y_bound**2+v_bound**2/12
assert debit < F(121, 10**6)

budget = F(124997987, 10**9)
mask_price = 211*(eta+theta)
lower = gamma_lower*(1-eta)*(1-theta)-2*theta-prime_upper-mask_price-6000*delta-3*debit
upper = gamma_upper+61*theta-prime_lower+mask_price+6000*delta
assert lower > 0 and budget+lower > F(147873, 10**4)
assert budget+upper/(1-75*delta**2) < F(237853, 10**4)
print('PASS bare three-sine Schur block and uncancelled tail guards')
```

The sign on the entire actual $G_2$ remains open. The
prime-419 cutoff and historical $Z_F$ small-weight falsifications
retain their original hypotheses and domains. This result
also leaves the known negative frequency compression at
$x_*=3806849122861433/10^6$ at its original scope.
[Original frequency obstruction](WeilConductorThreeRadiusFourFrequencyObstruction.lean)
