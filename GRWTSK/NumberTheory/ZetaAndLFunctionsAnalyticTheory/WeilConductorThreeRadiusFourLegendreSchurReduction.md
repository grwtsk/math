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

## A physical ray nearest the negative frequency collar

2026-11-14, grwtsk contributors, AI-assisted. Written analytic proof
with exact directed arithmetic. Lean elaboration, fresh kernel replay
and transitive axiom audit are NOT_RUN. Independent review is UNASSESSED.

Put $x_*=3806849122861433/10^6$ and $r_*=10^{-5}$.
The [original negative frequency collar](WeilConductorThreeRadiusFourFrequencyObstruction.lean)
is $J_*=[x_*-r_*,x_*+r_*]\cup[-x_*-r_*,-x_*+r_*]$.
Its masked residual multiplier $m=1_{\mathcal D}w(A-P_4)$
is negative. The original corrected frequency form $M$ has
a negative compression on the odd frequency functions supported
there. Take the original radius-four physical ray
$$
 k=4847030844,\quad q=\frac{k}{k+1},\quad g=\psi_k+q\psi_{k+1},
 \quad u=\frac{g}{\|g\|},\quad z=\Pi_{G_2}u.
$$
The native $g$ is real odd with compact $C^2$ extension and
full gamma energy. The projected vector is nonzero and satisfies
$$
 15.949350<\frac{\langle z,C_2z\rangle}{E(z)}<15.949357.
$$
The same unit native ray has angular mass in $J_*$
between $1.4414\cdot10^{-5}$ and $1.4436\cdot10^{-5}$.
The collar's contribution to its bounded residual $R$
is in $(-0.0001133,-0.0001123)$.

### Signed prime phases and the full gamma return

The existing Machin bounds verify $-1/2<4x_*/\pi-k<1/2$.
Thus $k$ is the unique nearest native index. Use the exact
two-sine shift formula above on $k,k+1$. Recomputing its
three entries with all 458 original signed atoms gives
$$
 [108842793925,108842794384],\quad
 [17771811338,17771811796],\quad
 [-34457464285,-34457463827]
$$
in upper triangular order and units of $10^{-10}$.
Evaluate the actual matrix on $(1,q)$ and divide by $1+q^2$.
The full unmasked prime expectation on $u$ is in
$(5.4964476172,5.4964477090)$.

Use the mirrored radius-$10^4$ collar $I$ about $\pm k\pi/4$.
It lies within $3.5\cdot10^9<|\xi|<4\cdot10^9$ inside
$\mathcal D$, above the paid pair and containing $J_*$.
The filter defect is at most $\eta=3\cdot10^{-10}$. The whole
off-collar mass is at most $\theta=8(2/10^4)^3$.
The log input $3|\xi|/(2\pi)$ lies between $1817631566$
and $1817641567$. With $y_0=1.75\cdot10^9$ in the original
Binet error $5/(9y_0)+9/(32y_0^2)$ this gives
$21.32080015<A(\xi)<21.32080566$ on $I$.
Pay $A\ge-2$ on its complement and $A<61$ on the rest of
the residual set. The entire prime mask costs $211(\eta+\theta)$.

### Mass and direct debit in the negative collar

Write $\omega=k\pi/4$, $\Delta=\pi/4$ and $b=\xi-\omega$ on
the positive part of $J_*$. The directed angle bounds put
$0<b<\Delta$ there. The exact sine transforms and
$q\omega_{k+1}=\omega$ give
$$
 |\widehat g(\xi)|=\omega\sin(4b)
 \left(\frac{1}{b(2\omega+b)}
       +\frac{1}{(\Delta-b)(2\omega+b+\Delta)}\right).
$$
The two contributions add between the native centers.
Use outward bounds for both positive denominators and
the first two and three terms of the sine series at the
outward inputs. Sine increases on the short argument
interval, which lies in $(0,1)$. Squaring, dividing by
$1+q^2$ and multiplying by the full angular measure
$2r_*/\pi$ gives the stated mass interval.

At the exact rational $x_*$, direct directed cosines give
$P_4(x_*)\in[291481183577,291481184040]/10^{10}$.
For these cosines reduce the dimensionless interval
$x_*\log n/\pi$ by a common even integer, multiply the lower
residue by the lower $\pi$ endpoint, and pay the phase uncertainty
and degree-24 Taylor bound. The original $1688$ Lipschitz bound
for $P_4$, evenness, the enclosing gamma bounds and
$1-\eta\le w\le1$ give $-7.845<m<-7.810$ on $J_*$.
Multiplying by the full mass interval gives the stated
negative contribution on $u$.

For any odd physical $f$, its Fourier evaluation at $\xi$
has representing kernel of absolute value $|\sin(\xi t)|$.
Its squared norm in $dt$ on $[-4,4]$ is
$4-\sin(8\xi)/(2\xi)$. Since $|\xi|>3.5\cdot10^9$ here,
the direct multiplier term on $J_*$ for every such $f$ is
bounded below by
$$
 -7.845\frac{2r_*}{\pi}\left(4+\frac1{7\cdot10^9}\right)E(f)
 >-E(f)/5000
$$
when $f\ne0$. This estimates the original $R$ term restricted
to the collar. The inverse prices are evaluated on the actual
coupled operators.

### Physical projection and the five inverse prices

Both native indices lie above the old sine head, below $\Omega$,
and outside the two higher sectors. The inherited polynomial
and preimage estimates give $\|u-\Pi_{G_1}u\|<4\delta$,
$\delta=10^{-272}$. Native orthogonality to the separated
carriers and their physical Gram $\Gamma\ge(1-16N\delta^2)I$,
$N=3\cdot10^{19}+1$, bound the last projection by $\delta$.
Hence $\|z-u\|<5\delta$ and $1-5\delta<\|z\|\le1$.
The bounded $R$ transfer costs $3000\delta$.
The $J_*$ mass changes by at most $10\delta$ by the contraction
of Fourier restriction. The stated mass and local $R$ intervals
also hold on $z$ before division by its energy.

For the old head use the angular $L^1$ bound $16/3$ and split
at $3.5\cdot10^9$. Above the split each old sine transform
is below $2.45\cdot10^{-12}$ by its exact denominator and
the old carrier bound $3\cdot10^7$. The unit old sine space
has pointwise bound $6200\cdot2.45\cdot10^{-12}$ there.
Below the split the new carrier distance exceeds $10^8$.
The original adjacent tail makes its angular norm there
strictly below $8\cdot10^{-12}$. With multiplier 300,
actual $U$ preimage norm $10/9$, its relative error
$10^{-60}$ and the transfer to $z$, this gives
$\|PRz\|,\|\Pi_U Rz\|<3\cdot10^{-5}$.
The inherited weighted head interaction below $3/8$ and the
$W$ term give $\|Jz\|<4.2\cdot10^{-5}$.

Split the high $Y_0$ pairing at $10^{25}$.
Below it the high-preimage transform bound is
$6\cdot10^{-24}$ per unit preimage norm. Above it the new
tail has norm below $10^{-35}$. The same physical
preimage transfer and first three inverse prices give
$\|J_Yz\|<3.4\cdot10^{-6}$. For each separated carrier the
separation of native centers exceeds $10^{25}$ and the
two-envelope direct mixed bound is $3\cdot10^{-44}$.
After the $2700\delta$ transfer and four inherited mixed
inverse prices, each $C_1$ entry is below $4.1\cdot10^{-18}$.
The actual Gram inverse gives
$\|J_{\mathcal V}z\|<2.3\cdot10^{-8}$.

The five original inverse prices, including the $D_0$ operator
bound $10^{-515}$, sum to less than $3.12\cdot10^{-8}$.
Subtract them from the lower residual estimate, which stays
positive. Divide the lower and upper residual bounds by the
actual $E(z)$ in $((1-5\delta)^2,1]$ and add $B$ on both sides.
The guards give the stated positive quotient including the
negative collar contribution.

### Directed guards for the adverse carrier

Use the historical prefix and the overlapping block up to its
`q, t` assignment as for the preceding certificate. In that
prefix set `k = 4847030844` and `modes = range(k, k+2)`. Append
the following guards.

```python

assert [tuple(v*atom_grid for v in entries[pair]) for pair in pairs] == [
    (108842793925, 108842794384), (17771811338, 17771811796),
    (-34457464285, -34457463827),
]
q = F(k, k+1)
energy = 1+q*q
prime = add(add(entries[k, k], scale(2*q, entries[k, k+1])),
            scale(q*q, entries[k+1, k+1]))
prime = scale(1/energy, prime)
prime_lower, prime_upper = F(54964476172, 10**10), F(54964477090, 10**10)
assert prime_lower < prime[0] <= prime[1] < prime_upper

adverse = F(3806849122861433, 10**6)
radius = F(1, 10**5)
omega_lower, omega_upper = F(k, 4)*pi_lower, F(k, 4)*pi_upper
step_lower, step_upper = pi_lower/4, pi_upper/4
assert -F(1, 2) < 4*adverse/pi_upper-k <= 4*adverse/pi_lower-k < F(1, 2)
offset_lower, offset_upper = adverse-radius-omega_upper, adverse+radius-omega_lower
assert 0 < offset_lower < offset_upper < step_lower
arg_lower, arg_upper = 4*offset_lower, 4*offset_upper
assert 0 < arg_lower <= arg_upper < 1
sin_lower = arg_lower-arg_lower**3/6
sin_upper = arg_upper-arg_upper**3/6+arg_upper**5/120
amplitude_lower = omega_lower*sin_lower*(
    1/(offset_upper*(2*omega_upper+offset_upper))
    +1/((step_upper-offset_lower)*(2*omega_upper+offset_upper+step_upper))
)
amplitude_upper = omega_upper*sin_upper*(
    1/(offset_lower*(2*omega_lower+offset_lower))
    +1/((step_lower-offset_upper)*(2*omega_lower+offset_lower+step_lower))
)
mass_lower = (2*radius/pi_upper)*amplitude_lower**2/energy
mass_upper = (2*radius/pi_lower)*amplitude_upper**2/energy
mass_floor, mass_ceiling = F(14414, 10**9), F(14436, 10**9)
assert mass_floor < mass_lower <= mass_upper < mass_ceiling

def point_cosine(lag):
    c_lower = adverse*lag[0]/pi_upper
    c_upper = adverse*lag[1]/pi_lower
    period = (c_lower+1)//2
    residue = c_lower-2*period
    assert -1 <= residue < 1
    angle = pi_lower*residue
    total = sum((-1)**l*angle**(2*l)/factorial(2*l) for l in range(13))
    error = pi_upper*(c_upper-c_lower)+pi_upper-pi_lower+F(22, 7)**26/factorial(26)
    return max(-1, total-error), min(1, total+error)

point_prime = (F(0), F(0))
point_count = 0
for p in range(2, 2981):
    if p == 3 or any(p % m == 0 for m in range(2, isqrt(p)+1)):
        continue
    log_p_lower, log_p_upper = log_bounds(p)
    n = p
    while n <= 2980:
        root_floor = isqrt(n*source_grid**2)
        magnitude = (2*log_p_lower*source_grid/(root_floor+1),
                     2*log_p_upper*source_grid/root_floor)
        signed = scale(1 if n % 3 == 1 else -1, magnitude)
        term = multiply(signed, point_cosine(log_bounds(n)))
        point_prime = add(point_prime, round_out(*term, atom_grid))
        point_count += 1
        n *= p
assert point_count == 458
assert tuple(v*atom_grid for v in point_prime) == (291481183577, 291481184040)

width, delta = 10**4, F(1, 10**272)
theta, eta = 8*F(2, width)**3, F(3, 10**10)
assert F(3*k, 4)-width > F(35, 10)*10**9
assert F(11*k, 14)+width < 4*10**9
assert F(3, 4)*(2*10**25-k) > 10**25
y_min = F(7, 4)*10**9
binet = F(5, 9)/y_min+F(9, 32)/y_min**2
gamma_lower, gamma_upper = F(2132080015, 10**8), F(2132080566, 10**8)
assert 1817631566 < F(3*k, 8)-width//2
assert F(3*k, 8)+width//2 < 1817641567
assert log_bounds(1817631566)[0]-binet > gamma_lower
assert log_bounds(1817641567)[1]+binet < gamma_upper
assert adverse-radius > omega_upper-width and adverse+radius < omega_lower+width
assert mass_floor < mass_lower-10*delta and mass_upper+10*delta < mass_ceiling
prime_variation = 1688*radius
local_lower, local_upper = F(-7845, 1000), F(-7810, 1000)
assert local_lower < gamma_lower-point_prime[1]-prime_variation
assert (1-eta)*(gamma_upper-point_prime[0]+prime_variation) < local_upper
assert F(-1133, 10**7) < local_lower*mass_ceiling
assert local_upper*mass_floor < F(-1123, 10**7)
assert (-local_lower)*2*radius*(4+F(1, 7*10**9))/pi_lower < F(1, 5000)

threshold = 35*10**8
assert F(3*k, 4)-threshold > 10**8
assert 8*F(2, 10**8)**3 == F(8, 10**12)**2
assert F(3*10**7, threshold**2-(3*10**7)**2) < F(245, 10**14)
assert 38170000 < 6200**2
mixed_old = 300*(F(16, 3)*6200*F(245, 10**14)+F(8, 10**12))
p_bound, j_bound = F(3, 10**5), F(42, 10**6)
assert F(10, 9)*(mixed_old+300*F(1, 10**60))+1500*delta < p_bound
assert (1+F(3, 8))*p_bound+F(741, 10**265) < j_bound
assert 10**25-F(11*k, 14)>10**24
assert 8*F(2, 10**24)**3 < F(1, 10**35)**2
mixed_high = (300*(F(16, 3)*F(6, 10**24)+F(1, 10**35))+2400*delta)/(1-3*delta)
y_bound, v_bound = F(34, 10**7), F(23, 10**9)
assert mixed_high+10*F(3, 10**6)*p_bound+F(25, 2*159)*j_bound+F(1, 10**515) < y_bound

sector_count = 3*10**19+1
gram_floor = 1-16*sector_count*delta**2
assert sector_count*(16*delta**2)**2/gram_floor < delta**2
entry_bound = F(41, 10**19)
assert F(3, 10**44)+2700*delta+10*F(4, 10**21)*p_bound \
       +F(25, 2)*F(13, 10**18)*j_bound+F(1, 10**515) \
       +4*F(3, 10**13)*y_bound < entry_bound
assert sector_count*entry_bound**2/gram_floor < v_bound**2
debit = 10*p_bound**2+F(25, 2)*j_bound**2+F(1, 10**515)+4*y_bound**2+v_bound**2/12
assert debit < F(312, 10**10)
budget = F(124997987, 10**9)
mask_price = 211*(theta+eta)
lower = gamma_lower*(1-theta)*(1-eta)-2*theta-prime_upper-mask_price-3000*delta-debit
upper = gamma_upper+61*theta-prime_lower+mask_price+3000*delta
assert lower > 0 and budget+lower > F(15949350, 10**6)
assert budget+upper/(1-5*delta)**2 < F(15949357, 10**6)
print('PASS adjacent ray and original negative collar')
```

The original negative frequency compression remains on its stated
domain. The full sign on the physical $G_2$, the original radius-four
stage and the RH and primitive Dirichlet GRH returns remain open.

## Uniform direct bounds on wider negative collars

2026-11-14, grwtsk contributors, AI-assisted. Written analytic proof
with exact directed arithmetic. Lean elaboration, fresh kernel replay
and transitive axiom audit are NOT_RUN. Independent review is UNASSESSED.

Keep the original center $x_*=3806849122861433/10^6$.
For $r>0$ let $J_r=[x_*-r,x_*+r]\cup[-x_*-r,-x_*+r]$ and
let $R_r=K^*(1_{J_r}m)K$, where $K$ is the actual odd physical
Fourier restriction and $m=1_{\mathcal D}w(A-P_4)$. Use the original
angular measure $d\xi/(2\pi)$. For every nonzero odd physical
$f\in L^2([-4,4],dt;\mathbb C)$, zero extended,
$$
 \langle f,R_{1/165}f\rangle>-0.121 E(f),\qquad
 \langle f,R_{1/160}f\rangle>-0.12451 E(f).
$$
The multiplier lies in $(-7.89,-7.76)$ on $J_{1/165}$ and
in $(-7.90,-7.76)$ on $J_{1/160}$. In particular the direct
collar and scalar budget together obey
$$
 \langle f,(B I+R_{1/160})f\rangle>0.000487987 E(f),
 \qquad B=124997987/10^9 .
$$
The inequality uses the same scalar $B$ as the original
bounded form. The physical Schur corrections still use the
full original $R$, with each original inverse on its own domain.

### The actual signed prime derivatives

For every active $n=p^e\le2980$ write
$a_n=2\log(p)\chi_3(n)/\sqrt n$ and $s_n=\log n$.
Differentiating the finite original sum at the rational
center gives the three multipliers for $a_n$
$$
 \cos(x_*s_n),\qquad -s_n\sin(x_*s_n),\qquad
 -s_n^2\cos(x_*s_n).
$$
Use the same range-reduced log bounds, integer square roots,
and Machin bounds as above. Enclose $x_*s_n/\pi$ with both
endpoints divided in the outward direction. Subtract a common
even integer and use the lower residue with $\pi_{\rm lower}$.
Sine and cosine are one-Lipschitz. The argument uncertainty
is bounded by $\pi_{\rm upper}$ times the original dimensionless
interval width plus $\pi_{\rm upper}-\pi_{\rm lower}$.
The Taylor remainders through degrees 25 and 24 respectively
are $(22/7)^{27}/27!$ and $(22/7)^{26}/26!$.
Include all signs and round each term outwards before summing.
The resulting intervals, expressed in units of $10^{-10}$, are
$$
\begin{aligned}
P_4(x_*)&\in[291481183577,291481184040]/10^{10},\\
P_4'(x_*)&\in[-67794695180,-67794694685]/10^{10},\\
P_4''(x_*)&\in[-8062789830970,-8062789830317]/10^{10}.
\end{aligned}
$$
The direct positive sum of the upper bounds for
$|a_n|s_n^3$ is less than $59746$. This is a global absolute
bound on $P_4'''$. Taylor's theorem therefore applies at
every point of the collar with a remainder bounded by
$59746|h|^3/6$, where $h=\xi-x_*$ on its positive component.

### Full collar sign and integrated physical price

The wider $J_{1/160}$ lies in $\mathcal D$, with
$3.5\cdot10^9<|\xi|<4\cdot10^9$. The original high and
all-lobe low filter laws give $1-3\cdot10^{-10}\le w\le1$.
The Binet logarithmic input $3|\xi|/(2\pi)$ lies between the
integers $1817636566$ and $1817636567$. With $y_0=1.75\cdot10^9$,
the original Binet error $5/(9y_0)+9/(32y_0^2)$ proves
$21.3208028<A<21.3208031$ throughout that collar.

For the pointwise statement use the signed center bounds
and the whole absolute variation
$7r+405r^2+59746r^3/6$. Evenness covers the negative component.
Both resulting upper bounds for $A-P_4$ are negative, so
multiplying the lower bound by $1$ and the upper bound by
$1-3\cdot10^{-10}$ yields the stated intervals for $m$.
For a nonzero odd physical $f$ the evaluation estimate
$$
 |\widehat f(\xi)|^2\le\left(4-\frac{\sin(8\xi)}{2\xi}\right)E(f)
 \le \left(4+\frac1{7\cdot10^9}\right)E(f)
$$
holds on both components. It follows by representing the
Fourier evaluation by the sine kernel on the odd subspace
and applying Cauchy–Schwarz with its exact squared norm.
The pointwise bound alone yields the direct debit below
$0.122E$ at radius $1/165$.

For the sharper integrated comparison, use $w\le1$ and
$P_4-A>0$ to bound the integral of $-m$ by that of $P_4-A$.
The evenness of the multiplier bounds repeats the positive
side on the negative side. On the positive interval integrate
the directed Taylor upper bound. The linear term in $h$
integrates to zero. The mean curvature term is
$P_4''(x_*)r^2/6$, and the mean absolute remainder is at most
$59746r^3/24$. Thus, writing $P^+$ and $P_2^+$ for the
certified upper endpoints of $P_4(x_*)$ and $P_4''(x_*)$,
the full direct debit is bounded above by
$$
 \frac{2r}{\pi}\left(4+\frac1{7\cdot10^9}\right)
 \left(P^+-21.3208028+P_2^+\frac{r^2}6+
                         59746\frac{r^3}{24}\right)E(f).
$$
The rational bounds below give the two displayed prices.
This comparison isolates the original bounded multiplier
on its exact support. The earlier negative compression
of $M$ retains its original frequency domain, and the
remaining full coupled physical sign is still open.

### Directed guards for the wider collars

Use the historical checker prefix before its
`alpha_lower, alpha_upper` assignment, omitting its old
`j` assignment. Append the following guards.

```python

def interval_sum(x, y):
    return x[0]+y[0], x[1]+y[1]

def interval_scale(factor, x):
    if factor < 0:
        return factor*x[1], factor*x[0]
    return factor*x[0], factor*x[1]

def interval_product(x, y):
    products = [a*b for a in x for b in y]
    return min(products), max(products)

def point_trig(center, lag):
    phase_lower = center*lag[0]/pi_upper
    phase_upper = center*lag[1]/pi_lower
    period = (phase_lower+1)//2
    residue = phase_lower-2*period
    assert -1 <= residue < 1
    angle = pi_lower*residue
    uncertainty = pi_upper*(phase_upper-phase_lower)+pi_upper-pi_lower
    cosine = sum((-1)**l*angle**(2*l)/factorial(2*l) for l in range(13))
    sine = sum((-1)**l*angle**(2*l+1)/factorial(2*l+1) for l in range(13))
    cos_error = uncertainty+F(22, 7)**26/factorial(26)
    sin_error = uncertainty+F(22, 7)**27/factorial(27)
    return ((max(-1, cosine-cos_error), min(1, cosine+cos_error)),
            (max(-1, sine-sin_error), min(1, sine+sin_error)))

center = F(3806849122861433, 10**6)
point = [(F(0), F(0)) for _ in range(3)]
third_absolute = F(0)
count = 0
for p in range(2, 2981):
    if p == 3 or any(p % d == 0 for d in range(2, isqrt(p)+1)):
        continue
    log_p_lower, log_p_upper = log_bounds(p)
    n = p
    while n <= 2980:
        lag = log_bounds(n)
        assert 0 < lag[0] <= lag[1] < 8
        root_floor = isqrt(n*source_grid**2)
        magnitude = (2*log_p_lower*source_grid/(root_floor+1),
                     2*log_p_upper*source_grid/root_floor)
        signed = interval_scale(1 if n % 3 == 1 else -1, magnitude)
        cosine, sine = point_trig(center, lag)
        factors = (
            cosine,
            interval_scale(-1, interval_product(sine, lag)),
            interval_scale(-1, interval_product(cosine, (lag[0]**2, lag[1]**2))),
        )
        for index, factor in enumerate(factors):
            product = interval_product(signed, factor)
            point[index] = interval_sum(point[index], round_out(*product, atom_grid))
        third_absolute += magnitude[1]*lag[1]**3
        n *= p
        count += 1
assert count == 458
assert [tuple(bound*atom_grid for bound in interval) for interval in point] == [
    (291481183577, 291481184040),
    (-67794695180, -67794694685),
    (-8062789830970, -8062789830317),
]
assert third_absolute < 59746 < 211*8**3
value, first, second = point
assert -7 < first[0] <= first[1] < 0
assert -810 < second[0] <= second[1] < -806

outer_radius = F(1, 160)
assert 35*10**8 < center-outer_radius < center+outer_radius < 4*10**9
log_argument_lower = 3*(center-outer_radius)/(2*pi_upper)
log_argument_upper = 3*(center+outer_radius)/(2*pi_lower)
assert 1817636566 < log_argument_lower < log_argument_upper < 1817636567
y_min = F(7, 4)*10**9
binet = F(5, 9)/y_min+F(9, 32)/y_min**2
gamma_lower, gamma_upper = F(213208028, 10**7), F(213208031, 10**7)
assert log_bounds(1817636566)[0]-binet > gamma_lower
assert log_bounds(1817636567)[1]+binet < gamma_upper
evaluation_price = (4+F(1, 7*10**9))/pi_lower
eta = F(3, 10**10)
budget = F(124997987, 10**9)

for radius, point_bound, integrated_bound in [
    (F(1, 165), F(789, 100), F(121, 1000)),
    (outer_radius, F(790, 100), F(12451, 10**5)),
]:
    variation = 7*radius+405*radius**2+59746*radius**3/6
    assert value[1]+variation-gamma_lower < point_bound
    assert (1-eta)*(gamma_upper-value[0]+variation) < -F(776, 100)
    average = value[1]-gamma_lower+second[1]*radius**2/6+59746*radius**3/24
    assert 2*radius*evaluation_price*average < integrated_bound < budget
    if radius == F(1, 165):
        assert 2*radius*evaluation_price*point_bound < F(122, 1000)
print('PASS signed prime derivatives and both physical collar debits')
```

## Deleting the negative collar through the five physical pivots

2026-11-14, grwtsk contributors, AI-assisted. Written analytic proof
with exact rational checks. Lean elaboration, fresh kernel replay
and transitive axiom audit are NOT_RUN. Independent review is UNASSESSED.

Let $J_*=J_{1/160}$ in the preceding section and
$K_*=1_{J_*}K$. Use the original physical Hilbert space $\mathcal H$,
with the original angular measure, and put
$$
 T=B I+R,\qquad W_*=(-m)^{1/2}K_*,\qquad T_+=T+W_*^*W_*.
$$
The square root acts on the collar, where $-m>0$. Thus $T_+$
deletes exactly the negative collar from $R$. Keep the same
five eliminated spaces and actual final $G_2$. Let $C_{2,+}$
be the resulting corrected form for $T_+$ on $G_2$. Then
$$
 0\le C_{2,+}-C_2\le0.124512 I_{G_2},\qquad
 \left\|C_{2,+}-C_2-\Pi_{G_2}W_*^*W_*|_{G_2}\right\|
   <6.6\cdot10^{-7}.
$$
The exact deletion formula below retains all five coupled
inverse effects. The sign of the original full complement
still requires a lower bound for the remaining outside-collar
form.

### Quantitative bounds on the original blocks

Use the original orthogonal decomposition
$$
 \mathcal H=\mathcal E\oplus G_2,\qquad
 \mathcal E=P\mathcal H\oplus Z\oplus L_0\oplus Y_0\oplus\mathcal V .
$$
The displayed subspaces are closed. The successive pivot blocks are
$A_{23}$, $D$, $D_0$, $A_Y$ and $A_{\mathcal V}$. Their positive
lower bounds are $1/10,2/25,1/9,1/4,12$, respectively.
Below all block norms use the physical inner product.

From the original weighted source, $K_w=\sqrt w K$ is contractive,
$\|K_wP\|<1/40$ and $\|K_w|_U\|^2<1/49900$.
Both $W$ and $L_0$ have $K$ norm at most $10^{-265}$.
Cauchy–Schwarz on $Z=U\oplus W$ therefore gives
$\|K_w|_Z\|<1/200$. In particular $\|PR\|<7.5$,
$\|PR|_Z\|<0.0375$ and $\|PR|_{L_0}\|\le300\cdot10^{-265}$.
In the exact weighted representation of $S$, the middle
operator $M_w$ has norm below 741. Thus
$\|J\|<3.705$ and $\|J|_{L_0}\|\le741\cdot10^{-265}$.
On $Y_0$ the inherited bounds are
$\|PR|_{Y_0}\|<3\cdot10^{-6}$ and $\|J|_{Y_0}\|<1/159$.
[Weighted representation and old projected norm](WeilConductorThreeRadiusFourWeightedSchurSource.lean#L70)

For $\mathcal V$ set $N=3\cdot10^{19}+1$ and
$\kappa=1-16N\delta^2$, $\delta=10^{-272}$.
A bound on each $v_r$ carries to a bound on its actual span
with factor $\sqrt{N/\kappa}<5.52\cdot10^9$ by
Cauchy–Schwarz in the true Gram coordinates. Applying the
earlier $v_r$ estimates gives
$$
 \|PR|_{\mathcal V}\|<2.3\cdot10^{-11},\qquad
 \|J|_{\mathcal V}\|<7.2\cdot10^{-8},\qquad
 \|J_Y|_{\mathcal V}\|<0.0017.
$$
On all $G_1$, expand $J_Y$ using direct $R$ norm below 300,
the genuine first two inverse corrections and the $D_0$
operator price $10^{-515}$. The norm is below
$300+10(3\cdot10^{-6})(7.5)+(25/2)(1/159)(3.705)+10^{-515}<301$.
Expanding $J_{\mathcal V}$ on all $G_2$ gives the direct bound
300, the first two prices using the just established
$\mathcal V$ norms, the $D_0$ price, and the $A_Y$
price at most $4(0.0017)(301)$. Their sum is below 303.

### The true joint inverse and minimizing lift

Write $A_{\mathcal E}=\Pi_{\mathcal E}T|_{\mathcal E}$.
The five successive square completions give
$A_{\mathcal E}=F^*D_{\mathcal E}F$, with
$D_{\mathcal E}=\operatorname{diag}(A_{23},D,D_0,A_Y,A_{\mathcal V})$.
The upper triangular $F$ has identity diagonal and an off-diagonal
entry in row $i$ equal to the inverse of that pivot times its
mixed block into the later coordinates. For the first two rows
the sums of the entry bounds are
$$
\begin{aligned}
 &10(0.0375+300\cdot10^{-265}+3\cdot10^{-6}+2.3\cdot10^{-11}),\\
 & (25/2)(741\cdot10^{-265}+1/159+7.2\cdot10^{-8}).
\end{aligned}
$$
The third and fourth rows add at most $18\cdot10^{-258}$
and $4(0.0017)$. Hence $\|F-I\|<1/2$ and
$A_{\mathcal E}\ge(1/50)I$. In particular the true
joint minimizing lift is
$$
 Lz=z-A_{\mathcal E}^{-1}\Pi_{\mathcal E}Tz
 \qquad(z\in G_2).
$$
It realizes the minimum of the original quadratic form over
$z+\mathcal E$. Applying the successive completions in reverse
also gives exactly this vector. From a unit $z\in G_2$ write its
eliminated part as $v+y+\ell+a+p$, where
$$
\begin{aligned}
 v&=-A_{\mathcal V}^{-1}J_{\mathcal V}z,\
 y&=-A_Y^{-1}J_Y(z+v),\
 \ell&=-D_0^{-1}J_0(z+v+y),\
 a&=-D^{-1}J(z+v+y+\ell),\
 p&=-A_{23}^{-1}PR(z+v+y+\ell+a).
\end{aligned}
$$
Each operator acts on its original domain. In that order the
bounds above give norms below $26,1205,10^{-253},142,130$.
The actual $D_0$ inverse has norm at most 9, with
$\|J_0\|<10^{-258}$, as used in these substitutions.

### Collar restriction and exact deletion formula

The angular measure of $J_*$ is $2/(160\pi)$, with square root
below $0.064$ by $\pi>3.14$. For an old native sine with
$\omega_j<3\cdot10^7$, the exact transform on $J_*$ has
absolute value bounded by
$$
 \frac{\omega_j}{\xi^2-\omega_j^2}<2.45\cdot10^{-12}.
$$
Using $38170000<6200^2$ for the unit old sine space gives
$\|K_*|_{P\mathcal H}\|<10^{-9}$. On $U$ use the original
preimage with norm at most $10/9$ and its relative error
$10^{-60}$. Adding the $W$ leakage gives
$\|K_*|_Z\|<1.1\cdot10^{-9}$.
The same leakage bound as above gives
$\|K_*|_{L_0}\|\le10^{-265}$.
On $Y_0$, use the high native preimage with error less than
$3\delta$ times its norm. The distance from its carrier to
the collar exceeds $10^{25}$, where the earlier high-packet
bound gives transform at most $6\cdot10^{-24}$ per unit preimage
norm. Thus $\|K_*|_{Y_0}\|<10^{-24}$.
For each native separated packet the carrier distance
exceeds $10^{24}$. The adjacent envelope there is at most
$4\cdot10^{-48}$. Use the same angular measure, the individual
projection defect $4\delta$, and the actual basis factor above.
This gives $\|K_*|_{\mathcal V}\|<2\cdot10^{-39}$.
Combine the five restriction bounds with the reverse
substitution to obtain
$$
 \|K_*(L-I)\|<3.1\cdot10^{-7}.
$$
In this expression $I$ embeds $G_2$ in $\mathcal H$.

Set $X=W_*|_{\mathcal E}$ and $Y_L=W_*L$. For
$z\in G_2$, write any candidate in $z+\mathcal E$ as
$Lz+e$ for $e\in\mathcal E$. The original quadratic form
is $\langle z,C_2 z\rangle+\langle e,A_{\mathcal E}e\rangle$.
On adding the deleted term, the extra expression to minimize is
$$
 \langle e,A_{\mathcal E}e\rangle+\|Y_Lz+Xe\|^2 .
$$
The new joint pivot is $A_{\mathcal E}+X^*X>0$. Each new
successive pivot is also positive. Indeed at each prefix the
original minimum only increases after adding $W_*^*W_*$.
Restricting that comparison to the next pivot bounds it
below by the original positive pivot. Thus the new sequential
elimination and the joint minimum give the same $C_{2,+}$.
Completing the joint square and multiplying the two inverse
identities gives the exact correction
$$
 C_{2,+}-C_2
 =Y_L^*\left[I-X(A_{\mathcal E}+X^*X)^{-1}X^*\right]Y_L
 =Y_L^*(I+X A_{\mathcal E}^{-1}X^*)^{-1}Y_L .
$$
For the last identity one can multiply the middle bracket
by $I+XA_{\mathcal E}^{-1}X^*$ and use
$(A_{\mathcal E}+X^*X)^{-1}(I+X^*X A_{\mathcal E}^{-1})
=A_{\mathcal E}^{-1}$.

Since $-m<7.90$, the five collar restriction bounds and
$\|A_{\mathcal E}^{-1}\|\le50$ give
$\|XA_{\mathcal E}^{-1}X^*\|<9\cdot10^{-16}$.
Also $\|W_*|_{G_2}\|^2\le0.12451$ by the full odd direct
bound. The norm of $Y_L-W_*|_{G_2}$ is below
$\sqrt{7.90}\,(3.1\cdot10^{-7})$. Hence
$$
 \|Y_L\|^2
 \le\left(\sqrt{0.12451}+\sqrt{7.90}\,3.1\cdot10^{-7}\right)^2
 <0.124512 .
$$
The exact middle inverse is between zero and the
identity and differs from the identity in norm by less
than $9\cdot10^{-16}$. Both $\|Y_L\|$ and
$\|W_*|_{G_2}\|$ are below $0.353$.
Subtracting the direct compression and using the norm
difference bound proves the stated $6.6\cdot10^{-7}$ estimate.
The bound on the full difference is $0.000485987$ below $B$.

The lift is needed even for a positive two-dimensional example.
With the first coordinate eliminated, take
$T=\bigl(\begin{smallmatrix}1&2\\2&4\end{smallmatrix}\bigr)$ and
$W=(1,0)$. The original Schur complement is zero and that of
$T+W^*W$ is 2, although $\|W\|^2=1$ and $W$ vanishes on the
last coordinate. The physical bound above pays this coupling
through the actual five inverses.

### Exact rational guards for the joint comparison

The numerical comparisons use the following guards. The
original multiplier, its arithmetic signs, and the angular
support are the ones used in the preceding proof.

```python
from fractions import Fraction as F

delta = F(1, 10**272)
leak = F(1, 10**265)
j_zero = F(1, 10**258)
d_zero_price = F(1, 10**515)
r = F(1, 160)
collar_measure_sqrt = F(64, 1000)
assert 2*r/F(157, 50) < collar_measure_sqrt**2
assert F(3*10**7, (35*10**8)**2-(3*10**7)**2) < F(245, 10**14)
assert 38170000 < 6200**2
old_collar = collar_measure_sqrt*6200*F(245, 10**14)
k_p, k_z, k_y, k_v = F(1, 10**9), F(11, 10**10), F(1, 10**24), F(2, 10**39)
assert old_collar < k_p
assert F(10, 9)*(old_collar+F(1, 10**60))+leak < k_z
assert F(3, 4)*4*10**25-4*10**9 > 10**25
assert (collar_measure_sqrt*F(6, 10**24)+3*delta)/(1-3*delta) < k_y

sector_count = 3*10**19+1
gram_lower = 1-16*sector_count*delta**2
basis_factor = F(552, 100)*10**9
assert gram_lower > 0 and sector_count/gram_lower < basis_factor**2
assert F(3, 4)*2*10**25-4*10**9 > 10**24
assert basis_factor*(collar_measure_sqrt*F(4, 10**48)+4*delta) < k_v

p_total, p_z, p_y = F(15, 2), F(3, 80), F(3, 10**6)
p_v, j_v_sector, y_v = F(23, 10**12), F(72, 10**9), F(17, 10**4)
assert basis_factor*F(4, 10**21) < p_v
assert basis_factor*F(13, 10**18) < j_v_sector
assert basis_factor*F(3, 10**13) < y_v
weighted_z = F(1, 200)
assert F(1, 49900)+leak**2 < weighted_z**2
assert 300*F(1, 40) == p_total
assert 300*F(1, 40)*weighted_z == p_z
j_total, j_y_sector = 741*weighted_z, F(1, 159)
j_l0 = 741*leak
inverse_z = F(25, 2)
mixed_y, mixed_v = F(301), F(303)
assert 300+10*p_y*p_total+inverse_z*j_y_sector*j_total+d_zero_price < mixed_y
assert (300+10*p_v*p_total+inverse_z*j_v_sector*j_total
        +d_zero_price+4*y_v*mixed_y) < mixed_v

triangular_excess = (
    10*(p_z+300*leak+p_y+p_v)
    +inverse_z*(j_l0+j_y_sector+j_v_sector)
    +18*j_zero+4*y_v
)
assert triangular_excess < F(1, 2)
assert F(2, 25)*F(1, 2)**2 == F(1, 50)

v_norm, y_norm, l0_norm, z_norm, p_norm = 26, 1205, F(1, 10**253), 142, 130
assert mixed_v/12 < v_norm
assert 4*(mixed_y+y_v*v_norm) < y_norm
assert 9*j_zero*(1+v_norm+y_norm) < l0_norm
assert inverse_z*(j_total+j_v_sector*v_norm+j_y_sector*y_norm+j_l0*l0_norm) < z_norm
assert 10*(p_total+p_v*v_norm+p_y*y_norm+300*leak*l0_norm+p_z*z_norm) < p_norm
lift_error = F(31, 10**8)
assert k_p*p_norm+k_z*z_norm+leak*l0_norm+k_y*y_norm+k_v*v_norm < lift_error

amplitude = F(79, 10)
direct = F(12451, 10**5)
collar_compression = F(9, 10**16)
assert 50*amplitude*(k_p**2+k_z**2+leak**2+k_y**2+k_v**2) < collar_compression
assert 4*direct*amplitude < 6**2 and amplitude < 8
shift = F(124512, 10**6)
assert direct+6*lift_error+8*lift_error**2 < shift < F(12452, 10**5)
assert F(124997987, 10**9)-shift == F(485987, 10**9)

norm_ceiling = F(353, 1000)
assert shift < norm_ceiling**2
assert amplitude < 3**2
assert 2*norm_ceiling*3*lift_error+shift*collar_compression < F(66, 10**8)

original_schur = 4-F(2)**2/1
shifted_schur = 4-F(2)**2/2
assert shifted_schur-original_schur == 2 > 1
print('PASS five-pivot collar deletion and compression guards')
```

## Weighted rank-one approximation of the exact collar correction

2026-11-14, grwtsk contributors, AI-assisted. Written analytic proof
with exact rational checks. Lean elaboration, fresh kernel replay
and transitive axiom audit are NOT_RUN. Independent review is UNASSESSED.

Keep $r=1/160$, $x_*=3806849122861433/10^6$, and the exact
delete-and-eliminate correction $\Delta=C_{2,+}-C_2$ from
the preceding section. On the positive part of the original
collar set $\rho(h)=-m(x_*+h)$ for $-r\le h\le r$. Define
$$
 \tau=\frac1\pi\int_{-r}^r\rho(h)\,dh,qquad
 c=\frac{\int_{-r}^r h\rho(h)\,dh}{\int_{-r}^r\rho(h)\,dh},
 \qquad a=\Pi_{G_2}\sin((x_*+c)\,\cdot).
$$
For a physical vector $v$ write $v\otimes v$ for the operator
$z\mapsto v\langle v,z\rangle$. Then
$$
 \|\Delta-\tau a\otimes a\|<1.09\cdot10^{-5},
 \qquad 0.124481<\|\Delta\|<0.12449283 .
$$
The coefficient is $0.03112298<\tau<0.03112304$ and the
shift of center is $-1.168\cdot10^{-5}<c<-1.089\cdot10^{-5}$.
In particular the exact correction on $a^\perp\cap G_2$ has
quadratic upper bound $1.09\cdot10^{-5}I$.
All comparisons use the original complex odd physical
inner product on $[-4,4]$ and the actual five Schur pivots.

### Signed second derivative of the sine evaluation operator

For $\xi$ on the positive collar write $v_\xi(t)=\sin(\xi t)$,
$d_\xi(t)=t\cos(\xi t)$ and $u_\xi(t)=t^2\sin(\xi t)$ on
$[-4,4]$. All three vectors are odd. The norm derivatives of
$S(\xi)=v_\xi\otimes v_\xi$ satisfy
$$
 \frac12 S''(\xi)=d_\xi\otimes d_\xi
   -\frac{u_\xi\otimes v_\xi+v_\xi\otimes u_\xi}{2}.
$$
Put $b=\langle u_\xi,v_\xi\rangle\ge0$ and
$p=\|u_\xi\|\|v_\xi\|$. On the two-vector span the nonzero
eigenvalues of the symmetrized product are among
$(b+p)/2$ and $(b-p)/2$. This follows by expanding in
the unit direction of $v_\xi$ and the orthogonal part of
$u_\xi$. On the perpendicular space it vanishes. Therefore
$$
 -\frac{b+p}{2}I\le \frac12 S''(\xi)
 \le \left(\|d_\xi\|^2+\frac{p-b}{2}\right) I.
$$
Here $b+\|d_\xi\|^2=128/3$ exactly. Integration by parts gives
$|\int_0^4 t^n\cos(2\xi t)dt|\le4^n/|\xi|$ for $n=2,4$,
using the boundary term and the full derivative integral.
Consequently
$$
 |b-64/3|\le16/|\xi|,\qquad
 \|u_\xi\|^2\le1024/5+256/|\xi|,\qquad
 \|v_\xi\|^2=4-\frac{\sin(8\xi)}{2\xi}.
$$
Using $|\xi|>3.5\cdot10^9$ gives $p<28.622$ and makes
both order endpoints lie strictly between $-25$ and 25.
Thus $\|S''(\xi)/2\|<25$, also after compression to $G_2$.

Oddness and the two signs of the exact angular measure give
the direct compression as the following operator integral
on the actual $G_2$:
$$
 D_G=\Pi_{G_2}W_*^*W_*|_{G_2}
 =\frac1\pi\int_{-r}^r\rho(h)\,
   \Pi_{G_2}S(x_*+h)|_{G_2}\,dh.
$$
The norm derivatives are valid by bounded physical support.
As $\rho>0$, $c$ lies in the positive collar's parameter interval
and the weighted linear term of the Taylor expansion about
$c$ integrates to zero. The centered second moment is no
greater than the uncentered one. This gives
$$
 \|D_G-\tau a\otimes a\|
 \le\frac{25}{\pi}\int_{-r}^r\rho(h)(h-c)^2dh
 <25\frac{2\cdot7.90\,r^3}{3\pi}.
$$
The preceding exact five-pivot result bounds
$\|\Delta-D_G\|<6.6\cdot10^{-7}$. Their sum is below
$1.09\cdot10^{-5}$.

### Actual weight, centroid and projected norm

Keep $\eta=3\cdot10^{-10}$ and $M_3=59746$ from the true
collar bounds. The positive coefficient sum used for $M_3$
also bounds $|P_4^{(4)}|$ by $M_4=8M_3$, since each
$\log n<8$. Taylor through the cubic term gives a mean
remainder at most $M_4 r^4/120$ after integration, with the
odd two terms integrating to zero. Use the signed center
and curvature endpoints from the earlier directed calculation
and the actual gamma bounds $A_-<A<A_+$.
Since $P_4-A>0$ throughout the interval and $1-\eta\le w\le1$,
the mean of $\rho$ lies between
$$
 (1-\eta)(P^- - A_+ + P_2^-r^2/6-M_4r^4/120)
 \quad\text{and}\quad
 P^+ - A_- + P_2^+r^2/6+M_4r^4/120 .
$$
For the first moment use the signed derivative endpoints
times $2r^3/3$. The absolute error in this moment is at most
$$
 (A_+-A_-)r^2/2+M_3r^5/15+8\eta r^2.
$$
The three terms respectively subtract the gamma midpoint,
integrate $|h|$ times the cubic remainder after quadratic
Taylor expansion, and use the uniform filter defect with
$|P_4-A|<8$. These directed bounds give the stated scalar
and centroid ranges.

For the projected norm, evaluate the old block bounds at
$\xi=x_*+c$. The norm of the projection of $v_\xi$ onto
$P\mathcal H$ is at most $6200(2.45\cdot10^{-12})$ by the exact
old single-sine transform. On $U$ the old preimage bound
$10/9$ applies to this same number plus $3\cdot10^{-60}$.
For $W$ and $L_0$, both orthogonal to $V_0$, the Chebyshev
estimate bounds the evaluation norm by
$\sqrt8(4/\sigma)e^{-972}<10^{-281}$.
Combining $U$ and $W$ bounds the norm on $Z$.
On $Y_0$ the high preimage gives at most
$(6\cdot10^{-24}+9\delta)/(1-3\delta)$.
On $\mathcal V$ the separated native envelopes and the true
Gram give at most $5.52\cdot10^9(4\cdot10^{-48}+12\delta)$.
Here $\delta=10^{-272}$ and the projection error is paid
using $\|v_\xi\|<3$. By orthogonality of the eliminated
coordinates, the squared norm removed from $v_\xi$ is below
$10^{-15}$. It follows that
$$
 4-1/(7\cdot10^9)-10^{-15}<\|a\|^2
 <4+1/(7\cdot10^9).
$$
The rank-one eigenvalue $\tau\|a\|^2$ lies in
$(0.12449194,0.12449216)$.

For the lower norm bound on $\Delta$, subtract its proved
rank-one error from the rank-one eigenvalue. For the upper
bound use $\|D_G\|\le\tau(4+1/(7\cdot10^9))$
and the actual coupled error $6.6\cdot10^{-7}$. The tighter
unrounded directed endpoints in the checks give the
stated interval for $\|\Delta\|$.
The exact correction is strictly positive on nonzero
vectors. Indeed $W_*Lz=0$ implies that the entire Fourier
transform of the compactly supported $Lz$ vanishes on
the collar, since $-m>0$ there. Plancherel then gives
$Lz=0$ and $z=0$. The exact middle inverse in the previous
section is positive and coercive.

With $\varepsilon=1.09\cdot10^{-5}$, a sufficient remaining
condition is that $H_+=C_{2,+}-\varepsilon I$ be coercive
and $\tau\langle a,H_+^{-1}a\rangle\le1$.
Cauchy–Schwarz in the $H_+$ norm gives the rank-one
comparison $H_+\ge\tau a\otimes a$ under this condition.
These outside-collar premises and the full original sign
remain open.

### Exact rational checks for the rank-one comparison

Use the historical checker prefix before its
`alpha_lower, alpha_upper` assignment and omit its old
`j` assignment. Append the following guards. They use the
published directed signed derivatives and the preceding
coupled comparison.

```python

r = F(1, 160)
frequency_floor = 35*10**8
density_max = F(79, 10)
eps = F(109, 10**7)
transfer = F(66, 10**8)
p_norm = F(28622, 1000)
b_lower = F(64, 3)-F(16, frequency_floor)
b_upper = F(64, 3)+F(16, frequency_floor)
sine_energy_error = F(1, 2*frequency_floor)
assert (4+sine_energy_error)*(F(1024, 5)+F(256, frequency_floor)) < p_norm**2
assert (p_norm+b_upper)/2 < 25
assert F(128, 3)-b_lower+(p_norm-b_lower)/2 < 25
assert F(314159, 10**5) < pi_lower <= pi_upper < F(314160, 10**5)
assert 25*2*density_max*r**3/(3*pi_lower)+transfer < eps

p_lower, p_upper = F(291481183577, 10**10), F(291481184040, 10**10)
first_lower, first_upper = F(-67794695180, 10**10), F(-67794694685, 10**10)
second_lower, second_upper = F(-8062789830970, 10**10), F(-8062789830317, 10**10)
gamma_lower, gamma_upper = F(213208028, 10**7), F(213208031, 10**7)
eta, third_bound = F(3, 10**10), 59746
fourth_bound = 8*third_bound
mean_error = fourth_bound*r**4/120
mean_lower = (1-eta)*(p_lower-gamma_upper+second_lower*r**2/6-mean_error)
mean_upper = p_upper-gamma_lower+second_upper*r**2/6+mean_error
assert 0 < mean_lower < mean_upper
tau_lower, tau_upper = 2*r*mean_lower/pi_upper, 2*r*mean_upper/pi_lower
assert F(3112298, 10**8) < tau_lower <= tau_upper < F(3112304, 10**8)

moment_error = (gamma_upper-gamma_lower)*r**2/2+third_bound*r**5/15+8*eta*r**2
moment_lower = first_lower*2*r**3/3-moment_error
moment_upper = first_upper*2*r**3/3+moment_error
assert moment_lower <= moment_upper < 0
assert F(-1168, 10**8) < moment_lower/(2*r*mean_lower)
assert moment_upper/(2*r*mean_upper) < F(-1089, 10**8)

delta = F(1, 10**272)
point_p = 6200*F(245, 10**14)
point_z = F(10, 9)*(point_p+3*F(1, 10**60))+F(1, 10**281)
point_l0 = F(1, 10**281)
point_y = (F(6, 10**24)+9*delta)/(1-3*delta)
point_v = F(552, 100)*10**9*(F(4, 10**48)+12*delta)
removed_energy = point_p**2+point_z**2+point_l0**2+point_y**2+point_v**2
assert removed_energy < F(1, 10**15)

amplitude_lower = tau_lower*(4-sine_energy_error-removed_energy)
amplitude_upper = tau_upper*(4+sine_energy_error)
assert F(12449194, 10**8) < amplitude_lower
assert amplitude_upper < F(12449216, 10**8)
assert F(124481, 10**6) < amplitude_lower-eps
assert amplitude_upper+transfer < F(12449283, 10**8)
print('PASS weighted rank-one collar and actual projected norm guards')
```

## Positive physical pivot at the collar centroid

2026-11-14, grwtsk contributors, AI-assisted. Written analytic proof
with exact rational checks. Lean elaboration, fresh kernel replay
and transitive axiom audit are NOT_RUN. Independent review is UNASSESSED.

Use the exact weighted centroid $\alpha=x_*+c$ of the preceding
collar, with $-1.168\cdot10^{-5}<c<-1.089\cdot10^{-5}$.
Let $s(t)=\sin(\alpha t)$ on $[-4,4]$ and zero outside, and
$a=\Pi_{G_2}s$, $e=a/\|a\|$. Then the actual physical pivot is
$$
 9.86900<\langle e,C_2e\rangle<9.87028.
$$
This uses the original bounded odd physical $L^2$ domain for the
Schur form. The directed bounds place $\alpha-4847030844\pi/4$
in $(0.053,0.054)$, so the zero extension of $s$ has nonzero
endpoint jumps. The original arithmetic stage keeps its compact
$C^2$ admission.

### Signed prime expectation of the true centroid sine

For $0\le r\le8$ the exact whole-line correlation and energy are
$$
 C_s(r)=\frac{(8-r)\cos(\alpha r)
                  -\sin(\alpha(8-r))/\alpha}{2},
 \qquad E(s)=4-\frac{\sin(8\alpha)}{2\alpha}.
$$
The formula follows by centering the product on the overlap
and integrating its constant and oscillatory cosine terms.
Reflection gives the other sign of the shift. The cut at $r=8$
is the actual zero correlation boundary. Thus the original
full unmasked prime expectation on $u=s/\|s\|$ is
$$
 \frac{1}{E(s)}
 \sum_{n=p^j\le2980,\,p\ne3}
    \frac{2\log p\,\chi_3(n)}{\sqrt n}\,C_s(\log n).
$$
Use the directed enclosure for $\alpha$ in all phases,
including the short sine term and the denominator $E(s)$.
For each phase interval divide outward by $\pi$, subtract a
common even integer, and use the same sine and cosine
unit-Lipschitz and Taylor bounds as in the preceding checks.
The original signs, both correlation terms and all 458
prime-power rows give the unnormalized sum in
$[463039688333,463053943540]/10^{10}$ and the normalized
expectation in $(11.57599220,11.57634860)$.

### Uncancelled transform, gamma and the actual projection

At $\nu\in\mathbb R$ the exact normalized transform is
$$
 \widehat u(\nu)=\frac{i}{\|s\|}
 \left(\frac{\sin(4(\nu-\alpha))}{\nu-\alpha}
       -\frac{\sin(4(\nu+\alpha))}{\nu+\alpha}\right)
$$
with removable singularities filled in continuously.
Set $\lambda=|\nu|$ and $b=|\lambda-\alpha|$. Its amplitude is
at most $\sqrt8$ everywhere and below $1.01/b$ for $b>0$,
since $\|s\|>1.99$. Integrating both signs shows that the
mass outside the mirrored radius-$10^6$ collar is less
than $\theta=7\cdot10^{-7}$. The collar lies in
$3.5\cdot10^9<|\nu|<4\cdot10^9$ inside the actual residual set.
The original all-lobe filter bounds give
$1-w\le\eta=3\cdot10^{-10}$ there. The full Binet error
at $y\ge1.75\cdot10^9$ and directed logs give
$21.32053<A<21.32107$ on the collar.
The rest of the angular mass uses the global $A\ge-2$ and
residual $A<61$. The original prime mask costs $211(\eta+\theta)$.

Put $z=\Pi_{G_2}u$. The uniform pointwise projection estimate
of the previous section gives $\|\Pi_{\mathcal E}s\|^2<10^{-15}$,
where $\mathcal E=G_2^\perp$ is the true joint eliminated space.
Thus $\|z-u\|<d=1.6\cdot10^{-8}$ and
$1-d^2<E(z)\le1$ by orthogonality. This bounds the diagonal
transfer for $R$ by $600d$.

For the mixed estimates the angular $L^1$ norm of $\widehat u$
on the finite residual set is less than 42. Indeed on the positive
half-line the region $b<1$ costs at most 6 in ordinary
Lebesgue measure. Integrating $1.01/b$ over the two
remaining intervals up to $\Omega$ costs at most
$2(1.01)\log\Omega<2(1.01)\cdot61$. Including both signs
divides these ordinary bounds by $\pi$.
This argument uses the finite residual set and the exact
uncancelled tail.

### All five original inverse prices on this direction

Split the mixed head pairings at $3.5\cdot10^9$. Above it
the old native sine amplitude is below $2.45\cdot10^{-12}$
per sine, by the exact old sine transform and the upper carrier
bound $3\cdot10^7$. Hence the unit old sine space has
pointwise bound $6200(2.45\cdot10^{-12})$. Pair it with the
angular $L^1$ bound 42. For the part below the split,
$\alpha-3.5\cdot10^9>3\cdot10^8$ and the one-sided
integral of $(1.01)^2/b^2$ on the positive half-line
gives angular norm below $3.5\cdot10^{-5}$ including
both signs. Use the actual weighted $P$ and $U$ bounds
$1/40$ and $1/200$ there. Include the true old $U$ preimage
cost $10/9$ and its relative error $10^{-60}$ above
the split. The multiplier bound 300 and physical
projection transfer give
$$
 \|PRz\|<4.6\cdot10^{-4},
 \qquad \|\Pi_U Rz\|<2.7\cdot10^{-4}.
$$
Add the old interaction bound $3/8$ times the first norm
and the $W$ price $741\cdot10^{-265}$ to obtain
$\|Jz\|<4.5\cdot10^{-4}$.

For the high pairing at $10^{25}$, below that split the
native high preimage of $Y_0$ has amplitude at most
$6\cdot10^{-24}$ per unit preimage. Use the finite angular
$L^1$ bound for $u$. Above the split the actual uncancelled
amplitude of $u$ is below $2/\lambda$, giving angular norm
below $4\cdot10^{-13}$. Use the true preimage and global
projection transfers before adding the first three inverse
prices. This gives $\|J_Yz\|<4.2\cdot10^{-5}$.

For a unit native separated packet $u_r$, the amplitude on
$\lambda\le10^{25}$ is at most $4\cdot10^{-48}$ by its
distance from the collar and the original adjacent envelope.
Above the split use the bound $2/10^{25}$ on the amplitude
of $u$ and the full angular $L^1$ bound $16/3$ on $u_r$.
Thus the raw entry $|\langle u_r,Ru\rangle|$ is at most
$300[42(4\cdot10^{-48})+(2/10^{25})(16/3)]$.
Replace $u_r$ by $v_r$ using the actual native projection
error $4\delta$. Apply the true separated Gram factor
$\sqrt{N/\kappa}<5.52\cdot10^9$ to those entries first.
The nonnative projection error $d$ then costs just $300d$
in the resulting whole-space mixed norm. Add the other
four actual inverse prices using
$\|PR|_{\mathcal V}\|<2.3\cdot10^{-11}$,
$\|J|_{\mathcal V}\|<7.2\cdot10^{-8}$ and
$\|J_Y|_{\mathcal V}\|<0.0017$, retaining the $D_0$
operator price. This gives $\|J_{\mathcal V}z\|<5.2\cdot10^{-6}$.

The five inverse prices add to less than $4.7\cdot10^{-6}$
per unit raw input. Subtract them from the positive lower
residual estimate, divide by the actual output energy
$E(z)$ and add $B$. The upper bound drops the subtracted
prices and uses the same output energy lower bound.
This gives the stated interval for the true pivot.

In particular, put $H_e=G_2\cap e^\perp$,
$\beta=\langle e,C_2e\rangle$ and $b_e=\Pi_{H_e}C_2e$.
The exact next sign condition is
$$
 \Pi_{H_e} C_2|_{H_e}-\beta^{-1}b_e\otimes b_e\ge0
 \qquad\text{on }H_e .
$$
It is equivalent to $C_2\ge0$ by the one-coordinate square
completion. Its mixed column and complementary sign remain
to be controlled on the original source.

### Exact rational checks for the centroid pivot

Use the historical checker prefix before its
`alpha_lower, alpha_upper` assignment and omit its old
`j` assignment. Append the following guards.

```python

def add(x, y):
    return x[0]+y[0], x[1]+y[1]

def scale(factor, interval):
    lower, upper = interval
    if factor < 0:
        return factor*upper, factor*lower
    return factor*lower, factor*upper

def multiply(x, y):
    products = [a*b for a in x for b in y]
    return min(products), max(products)

def phase_trig(angles):
    lower, upper = angles[0]/pi_upper, angles[1]/pi_lower
    period = (lower+1)//2
    residue = lower-2*period
    assert -1 <= residue < 1
    angle = pi_lower*residue
    uncertainty = pi_upper*(upper-lower)+pi_upper-pi_lower
    cosine = sum((-1)**l*angle**(2*l)/factorial(2*l) for l in range(13))
    sine = sum((-1)**l*angle**(2*l+1)/factorial(2*l+1) for l in range(13))
    cos_error = uncertainty+F(22, 7)**26/factorial(26)
    sin_error = uncertainty+F(22, 7)**27/factorial(27)
    return ((max(-1, cosine-cos_error), min(1, cosine+cos_error)),
            (max(-1, sine-sin_error), min(1, sine+sin_error)))

center = F(3806849122861433, 10**6)
carrier = center-F(1168, 10**8), center-F(1089, 10**8)
assert F(53, 1000) < carrier[0] - F(4847030844, 4)*pi_upper
assert carrier[1] - F(4847030844, 4)*pi_lower < F(54, 1000)
prime_sum = (F(0), F(0))
count = 0
for p in range(2, 2981):
    if p == 3 or any(p % d == 0 for d in range(2, isqrt(p)+1)):
        continue
    log_p_lower, log_p_upper = log_bounds(p)
    n = p
    while n <= 2980:
        lag = log_bounds(n)
        assert 0 < lag[0] <= lag[1] < 8
        length = 8-lag[1], 8-lag[0]
        cosine, _ = phase_trig(multiply(carrier, lag))
        _, sine = phase_trig(multiply(carrier, length))
        overlap = scale(F(1, 2), add(
            multiply(length, cosine),
            scale(-1, multiply(sine, (1/carrier[1], 1/carrier[0]))),
        ))
        root_floor = isqrt(n*source_grid**2)
        magnitude = (2*log_p_lower*source_grid/(root_floor+1),
                     2*log_p_upper*source_grid/root_floor)
        signed = scale(1 if n % 3 == 1 else -1, magnitude)
        term = multiply(signed, overlap)
        prime_sum = add(prime_sum, round_out(*term, atom_grid))
        n *= p
        count += 1
assert count == 458
_, energy_sine = phase_trig(scale(8, carrier))
energy = add((4, 4), scale(-1, multiply(energy_sine,
                                       (1/(2*carrier[1]), 1/(2*carrier[0])))))
prime = multiply(prime_sum, (1/energy[1], 1/energy[0]))
assert tuple(v*atom_grid for v in prime_sum) == (463039688333, 463053943540)
prime_lower, prime_upper = F(1157599220, 10**8), F(1157634860, 10**8)
assert prime_lower < prime[0] <= prime[1] < prime_upper

width = 10**6
eta, theta = F(3, 10**10), F(7, 10**7)
energy_projection = F(1, 10**15)
defect = F(16, 10**9)
assert energy[0] > F(199, 100)**2
assert 2/F(199, 100) < F(101, 100)
assert energy_projection/energy[0] < defect**2
assert F(35, 10)*10**9 < carrier[0]-width < carrier[1]+width < 4*10**9
assert 2*F(101, 100)**2/(pi_lower*width) < theta
assert 1817159000 < 3*(carrier[0]-width)/(2*pi_upper)
assert 3*(carrier[1]+width)/(2*pi_lower) < 1818114100
y_min = F(7, 4)*10**9
binet = F(5, 9)/y_min+F(9, 32)/y_min**2
gamma_lower, gamma_upper = F(2132053, 10**5), F(2132107, 10**5)
assert log_bounds(1817159000)[0]-binet > gamma_lower
assert log_bounds(1818114100)[1]+binet < gamma_upper

assert log_bounds(10)[1] < F(231, 100) and 26*F(231, 100) < 61
assert (6+2*F(101, 100)*61)/pi_lower < 42
old_split = 35*10**8
assert carrier[0]-old_split > 3*10**8
low_tail = F(35, 10**6)
assert F(101, 100)**2/(pi_lower*3*10**8) < low_tail**2
assert F(3*10**7, old_split**2-(3*10**7)**2) < F(245, 10**14)
assert 38170000 < 6200**2
old_high = 42*6200*F(245, 10**14)
delta = F(1, 10**272)
p_bound, u_bound, j_bound = F(46, 10**5), F(27, 10**5), F(45, 10**5)
assert 300*(old_high+low_tail/40+defect) < p_bound
assert 300*(F(10, 9)*(old_high+F(1, 10**60))+low_tail/200+defect) < u_bound
assert u_bound+F(3, 8)*p_bound+741*F(1, 10**265) < j_bound

high_split = 10**25
assert carrier[1] < F(high_split, 4)
assert F(101, 100)*F(4, 3) < 2
high_tail = F(4, 10**13)
assert F(4, high_split)/pi_lower < high_tail**2
high_direct = 300*((42*F(6, 10**24)+high_tail+3*delta)/(1-3*delta)+defect)
y_bound, v_bound = F(42, 10**6), F(52, 10**7)
price_d0 = F(1, 10**515)
assert high_direct+10*F(3, 10**6)*p_bound+F(25, 2*159)*j_bound+price_d0 < y_bound
assert F(3, 4)*2*10**25-high_split > 10**24
raw_v = 300*(42*F(4, 10**48)+F(2, high_split)*F(16, 3)+4*delta)
mixed_v = F(552, 100)*10**9*raw_v+300*defect
assert (mixed_v+10*F(23, 10**12)*p_bound+F(25, 2)*F(72, 10**9)*j_bound
        +price_d0+4*F(17, 10**4)*y_bound) < v_bound

debit = 10*p_bound**2+F(25, 2)*j_bound**2+price_d0+4*y_bound**2+v_bound**2/12
assert debit < F(47, 10**7)
price_mask = 211*(theta+eta)
budget = F(124997987, 10**9)
lower = gamma_lower*(1-theta)*(1-eta)-2*theta-prime_upper-price_mask-600*defect-debit
upper = gamma_upper+61*theta-prime_lower+price_mask+600*defect
assert lower > 0 and budget+lower > F(986900, 10**5)
assert budget+upper/(1-defect**2) < F(987028, 10**5)
print('PASS original projected centroid sine and five inverse prices')
```

## The actual mixed column after the centroid pivot

2026-11-14, grwtsk contributors, AI-assisted. Written analytic proof
with exact rational checks. Lean elaboration, fresh kernel replay
and transitive axiom audit are NOT_RUN. Independent review is UNASSESSED.

Keep the actual centroid vector $e=z/\|z\|$, $z=\Pi_{G_2}u$ from
the preceding section, and write $C_3$ for the corrected form on
$H_e=G_2\cap e^\perp$. For $b_e=\Pi_{H_e} C_2e$ and
$\beta=\langle e,C_2e\rangle$ we have
$$
 2.29<\|b_e\|<2.59,\qquad
 0.53<\|\beta^{-1}b_e\otimes b_e\|<0.68.
$$
In the real or complex physical form, completing the square gives
$$
 \langle he+v,C_2(he+v)\rangle
 =\beta|h+\beta^{-1}\langle b_e,v\rangle|^2
   +\langle v,C_3v\rangle,\qquad
 C_3=\Pi_{H_e} C_2|_{H_e}-\beta^{-1}b_e\otimes b_e
$$
for every $h\in\mathbb C$ and $v\in H_e$. Here $C_3\ge0$ is the
remaining condition. The bound by $0.68I_{H_e}$ holds uniformly,
but the proposed bound by the scalar budget $BI_{H_e}$ fails on
$b_e/\|b_e\|$, where the debit is above $0.53>B$.

### The centered physical shift column

Let $T_P$ be the compression of the unmasked original prime
multiplier $P_4$ by zero extension and restriction to the physical
interval. For $\ell_n=\log n$ and
$a_n=2\chi_3(n)\log(p)/\sqrt n$ with $n=p^j\le2980$, $p\ne3$,
the cosine multiplier gives
$$
 (T_Ps)(t)=\tfrac12\sum_n a_n [s(t+\ell_n)+s(t-\ell_n)],
 \qquad -4\le t\le4 .
$$
Here $s$ is the zero-extended centroid sine at the same actual
$\alpha$. Symmetric shifts preserve oddness, and $T_P$ is bounded
and self-adjoint. Its expectation on $u=s/\|s\|$ is the real
$\mu\in(11.57599220,11.57634860)$ from the preceding section.

For $0<t<4$, cut at all $|4-\ell_n|$. On each open cell the
shifted sum is $A\sin(\alpha t)+D\cos(\alpha t)$.
For $\ell_n<4$ both shifts contribute at zero. The contribution
to the initial sine coefficient is $a_n\cos(\alpha\ell_n)$,
and at $4-\ell_n$ the plus shift exits, changing the coefficient
pair by $-(a_n/2)(\cos(\alpha\ell_n),\sin(\alpha\ell_n))$.
For $\ell_n>4$ only the minus shift enters at $\ell_n-4$, changing
the pair by $(a_n/2)(\cos(\alpha\ell_n),-\sin(\alpha\ell_n))$.
All 458 positive cuts are separated by directed logarithm intervals.
Both endpoints have measure zero.

Put $q=(T_P-\mu)u$ so $\langle u,q\rangle=0$.
On a cell of length $L$, the mean term in the integral of the
squared centered sine combination is
$L((A-\mu)^2+D^2)/2$. The rest is a single harmonic at $2\alpha$
with amplitude $((A-\mu)^2+D^2)/2$. Its integral over any cell has
absolute value at most $((A-\mu)^2+D^2)/(2\alpha)$, by the
endpoint primitive. Double for the odd physical vector and divide
by $E(s)$ to get the centered squared norm. The checker sums the
mean terms and pays the full error of all 459 cells. It uses the
true directed carrier and mean intervals, keeping the signs and
both coefficients of every translate. It gives
$$
 2.43<\|q\|<2.45 .
$$

### Gamma and mask action on the same vector

Write $A(\nu)=\log(3/\pi)+\operatorname{Re}\psi(3/4+i\nu/2)$,
$\mathcal D$ for the original residual set, and $A_0=21.3208029$.
On the full angular line the multiplier of the difference
$R-(A_0 I-T_P)$ before physical restriction is
$$
 G(\nu)=1_{\mathcal D}wA(\nu)-A_0+
           (1-1_{\mathcal D}w)P_4(\nu).
$$
The mirrored collar $||\nu|-\alpha|\le5\cdot10^7$ lies in
$3.5\cdot10^9<|\nu|<4\cdot10^9$ and hence inside $\mathcal D$
with $1-w\le\eta=3\cdot10^{-10}$. Directed logarithms of the
endpoints for $3|\nu|/(2\pi)$ and the full Binet error give
$|A-A_0|<0.01334$ there. Since $|A-P_4|<300$ on $\mathcal D$,
$|G|<0.01334+300\eta$ on the collar. Off it,
$1_{\mathcal D}wA$ belongs to $[-2,61]$, so $|G|<40+211=251$.
This includes the cut-out pair and the entire angular tail outside
the residual set.

The two-sided bare-sine bound with $b=||\nu|-\alpha|>0$ gives
$|\widehat u|\le1.01/b$. Its squared integral off the collar
with measure $d\nu/(2\pi)$ is below $1.3\cdot10^{-8}$.
Plancherel, orthogonality of the two frequency regions and
contractive physical restriction give
$$
 \|Ru-(A_0-\mu)u+q\|
 \le\|G\widehat u\|_{L^2(d\nu/(2\pi))}<0.032 .
$$

### Transfer through the true projections and five inverse actions

We have $\Pi_{H_e}u=0$, $\|z-u\|<d=1.6\cdot10^{-8}$
and $1-d<\|z\|\le1$. Thus
$\|\Pi_{H_e}Rz+\Pi_{H_e}q\|<0.032+300d$.
Compress all five preceding correction terms to $G_2$ and
then project their output to $H_e$. Their combined action on
$z$ has norm at most
$$
 \begin{aligned}
 &\|PR\|\|A_{23}^{-1}\|\|PRz\|
 +\|J\|\|D^{-1}\|\|Jz\|+\|J_0^*D_0^{-1}J_0\|\|z\|\\
 &\quad+\|J_Y\|\|A_Y^{-1}\|\|J_Yz\|
 +\|J_{\mathcal V}\|\|A_{\mathcal V}^{-1}\|\|J_{\mathcal V}z\|
 <0.10604 .
 \end{aligned}
$$
Use the global map norms from the five-pivot deletion section,
the actual inverse bounds in their physical domains, and the
smaller local column norms from the centroid section. These are
products of a local and a global norm, as required for action
on one input. The scalar $Bz$ vanishes under $\Pi_{H_e}$.
The triangle inequality and division by $\|z\|$ give
$\|b_e\|<2.59$.

For a lower bound, let $\mathcal E=G_2^\perp$. The raw projected
action satisfies $\|\Pi_{\mathcal E}Ru\|<0.00075$.
On $P\mathcal H$ and $U$ use the preceding bounds on $Rz$,
$0.00046$ and $0.00027$, respectively, and add $300d$ to each.
On $W$ and $L_0$ use $300\cdot10^{-265}$ each. On $Y_0$,
the preceding high-frequency pairing before adding projection
transfer or any inverse term gives the raw bound
$$
 300\frac{42(6\cdot10^{-24})+4\cdot10^{-13}+3\delta}{1-3\delta}
 <2\cdot10^{-10}.
$$
On $\mathcal V$, the preceding raw separated packet bound times
the true Gram factor, before transfer or any inverse term, gives
$$
 (5.52\cdot10^9)\,300
 \left[42(4\cdot10^{-48})+
       \frac{2}{10^{25}}\frac{16}{3}+4\delta\right]<2\cdot10^{-10}.
$$
Adding these raw bounds proves the claimed estimate on
$\mathcal E$. With $|A_0-\mu|<10$ and $\|\Pi_{\mathcal E}u\|<d$,
the full angular comparison gives $\|\Pi_{\mathcal E}q\|<0.033$.
Also $\|e-u\|<2d$ and $q\perp u$, so
$|\langle e,q\rangle|<2d(2.45)$. Orthogonal Pythagoras on
$\mathcal E\oplus\mathbb C e\oplus H_e$ gives
$\|\Pi_{H_e}q\|>2.429$. Subtract the same angular, projection and
inverse action bounds and use $\|z\|\le1$. This gives
$\|b_e\|>2.29$. Finally
$9.86900<\beta<9.87028$ and the norm identity for a rank-one
operator give the stated debit interval.

### Exact rational guards on the actual mixed column

Append this block to the historical prefix and preceding centroid
pivot checker. The parity-one gamma log remainder, centroid interval,
native pair estimates and unnormalized sine energy are inherited at
their original scopes.

```python
def subtract(left, right):
    return add(left, scale(-1, right))

def square(interval):
    lower, upper = interval
    minimum = 0 if lower <= 0 <= upper else min(lower**2, upper**2)
    return minimum, max(lower**2, upper**2)

zero = (F(0), F(0))
four = (F(4), F(4))
events = []
a, b = zero, zero
for p in range(2, 2981):
    if p == 3 or any(p % divisor == 0 for divisor in range(2, isqrt(p)+1)):
        continue
    log_p_lower, log_p_upper = log_bounds(p)
    n = p
    while n <= 2980:
        lag = log_bounds(n)
        assert 0 < lag[0] <= lag[1] < 8
        near = lag[1] < 4
        assert near or lag[0] > 4
        cut = subtract(four, lag) if near else subtract(lag, four)
        root_floor = isqrt(n*source_grid**2)
        half_weight = scale(1 if n % 3 == 1 else -1, (
            log_p_lower*source_grid/(root_floor+1),
            log_p_upper*source_grid/root_floor,
        ))
        cosine, sine = phase_trig(multiply(carrier, lag))
        cosine_row = round_out(*multiply(half_weight, cosine), atom_grid)
        sine_row = round_out(*multiply(half_weight, sine), atom_grid)
        if near:
            a = add(a, scale(2, cosine_row))
        events.append((cut, scale(-1 if near else 1, cosine_row),
                       scale(-1, sine_row)))
        n *= p

assert len(events) == 458
events.sort(key=lambda event: event[0][0])
mean = prime_lower, prime_upper
left = zero
centered_sum = zero
for right, a_jump, b_jump in events + [(four, zero, zero)]:
    width = subtract(right, left)
    assert 0 < width[0] <= width[1]
    squared_amplitude = add(square(subtract(a, mean)), square(b))
    assert squared_amplitude[1] < 50000
    centered_sum = add(centered_sum, round_out(
        *multiply(squared_amplitude, width), atom_grid,
    ))
    a, b = add(a, a_jump), add(b, b_jump)
    left = right

oscillation = F(459*50000, 1)/carrier[0]
physical_variance = multiply(add(centered_sum, (-oscillation, oscillation)),
                             (1/energy[1], 1/energy[0]))
assert F(243, 100)**2 < physical_variance[0]
assert physical_variance[1] < F(245, 100)**2

# Gamma and full prime mask, including the complement of the residual set.
wide = 5*10**7
assert F(35, 10)*10**9 < carrier[0]-wide < carrier[1]+wide < 4*10**9
wide_tail = F(13, 10**9)
assert 2*F(101, 100)**2/(pi_lower*wide) < wide_tail
gamma_center = F(213208029, 10**7)
gamma_error = F(1334, 10**5)
log_left = 3*(carrier[0]-wide)/(2*pi_upper)
log_right = 3*(carrier[1]+wide)/(2*pi_lower)
assert log_bounds(log_left//1)[0]-binet > gamma_center-gamma_error
assert log_bounds(-((-log_right)//1))[1]+binet < gamma_center+gamma_error
assert max(gamma_center+2, 61-gamma_center) < 40
angular_error = F(32, 1000)
assert (gamma_error+300*eta)**2+251**2*wide_tail < angular_error**2

old_action = (F(15, 2)*10*p_bound + F(3705, 1000)*F(25, 2)*j_bound
              +price_d0+301*4*y_bound+F(303, 12)*v_bound)
assert old_action < F(10604, 10**5)
column = F(259, 100)
assert F(245, 100)+angular_error+300*defect+old_action < column*(1-defect)
assert column**2 < F(68, 100)*F(9869, 1000)
# Lower bound uses the raw projections of Ru, before any Schur correction.
native_y_action = high_direct - 300*defect
native_v_action = F(552, 100)*10**9*raw_v
assert native_y_action < F(2, 10**10) and native_v_action < F(2, 10**10)
raw_eliminated = (p_bound+u_bound+600*defect
                  +600*F(1, 10**265)+native_y_action+native_v_action)
assert raw_eliminated < F(75, 10**5)
assert gamma_center-10 < prime_lower < prime_upper < gamma_center+10
removed = F(33, 1000)
assert raw_eliminated+10*defect+angular_error < removed
retained = F(2429, 1000)
assert retained**2+removed**2+(2*defect*F(245, 100))**2 < F(243, 100)**2
column_lower = F(229, 100)
assert retained-angular_error-300*defect-old_action > column_lower
assert budget < F(53, 100)
assert F(53, 100)*F(987028, 10**5) < column_lower**2
print("PASS 458 signed rows, 459 cells, mixed norm (2.29, 2.59), debit (0.53, 0.68)")
```

The original narrow negative frequency compression, the prime-419
cutoff witness, and the adverse small-weight sector retain their
earlier scopes. The bare sine is in the bounded physical
carrier and its direct shifts are valid there. Its zero extension
has endpoint jumps, so the original real odd compact $C^2$ stage
admission is still required for the arithmetic form. The sign on all
of $H_e$, the original conductor-three radius-four stage and the
unconditional RH and primitive Dirichlet GRH returns remain open.

## The neighboring native sine after the centroid pivot

2026-11-14, grwtsk contributors, AI-assisted. Written analytic proof
with exact rational checks. Lean elaboration, fresh kernel replay
and transitive axiom audit are NOT_RUN. Independent review is UNASSESSED.

Keep the actual centroid $\alpha$, the unit physical $u$, its
normalized projection $e$, and the corrected form $C_3$ on $H_e$
from the preceding sections. Put $k=4847030844$,
$\omega=(k-1)\pi/4$, and $y=\psi_{k-1}$ with its positive sine
orientation. Define
$$
 t=\Pi_{H_e}y,\qquad v=t/\|t\|.
$$
Then $\|t\|>0.99$, and the fully corrected pivot and its mixed
entry with the preceding pivot satisfy
$$
 \begin{split}
 1.6149 &< \langle v,b_e\rangle <1.6164,\\
 23.535 &< \gamma_v:=\langle v,C_3v\rangle <23.538.
 \end{split}
$$
These are real entries. The even real multiplier on both angular
signs preserves the real carrier. All projections come from real
physical spaces and their coercive inverses commute with conjugation.
This test uses the bounded physical form. The single native sine
has derivative jumps at the endpoints of its zero extension and
the original arithmetic stage retains its compact $C^2$ admission.

### Unprojected Gram and original signed lag integral

For $r\in[0,8]$ write $L=8-r$. For the two raw, zero-extended
sines at carriers $x$ and $y_0$ the common forward and backward
lag integral is
$$
 M_{x,y_0}(r)=
 \frac{L}{2}\left[
 \cos((x+y_0)r/2)\operatorname{sinc}((x-y_0)L/2)
 -\cos((x-y_0)r/2)\operatorname{sinc}((x+y_0)L/2)
 \right],
 \qquad \operatorname{sinc}(t)=\sin(t)/t,\quad \operatorname{sinc}(0)=1.
$$
For the forward shift, the overlap is $[-4,4-r]$. Center it
at $-r/2$, use the product-to-sum identity and integrate the
two cosines, whose odd parts vanish on the symmetric interval.
Reflection gives the backward shift because both raw sines are odd.
For $x=y_0$ this recovers exactly the two original terms of the
diagonal correlation. For $x=\alpha$ and $y_0=\omega$, the
directed enclosures give $0.838<x-y_0<0.840$, so the mixed
check can divide by both carrier sum and difference.

Write $g=\langle u,y\rangle$, $t_0=y-gu$, and
$v_0=t_0/\kappa$, where $\kappa=\sqrt{1-g^2}$. The energy for
the native raw sine is $4$ and the centroid energy is the actual
$E(s)=4-\sin(8\alpha)/(2\alpha)$. Normalizing $M_{\alpha,\omega}(0)$
gives $-0.062786<g<-0.062783$ and
$0.998027<\kappa<0.998028$. Thus orthogonality of two
different native sine indices cannot be applied to this
nonnative centroid and its neighbor.

Use the original physical signed operator $T_P$ and all 458 rows
with coefficient $2\chi_3(n)\log(p)/\sqrt n$ at $r=\log n$.
Let $\mu=\langle u,T_Pu\rangle$,
$d_y=\langle y,T_Py\rangle$ and $m_y=\langle y,T_Pu\rangle$.
The directed arithmetic computes $d_y$ and $m_y$ from the
native diagonal and mixed integrals, using the actual energy
normalizations. It gives
$$
 \begin{split}
 -2.097474&<d_y<-2.097473,\qquad
 -2.339350<m_y<-2.339134,\\
 -1.615759&<\frac{m_y-g\mu}{\kappa}<-1.615498,\qquad
 -2.354880<\frac{d_y-2g m_y+g^2\mu}{\kappa^2}<-2.354838 .
 \end{split}
$$
The last two are the exact unprojected $(v_0,u)$ and $(v_0,v_0)$
entries of $T_P$.

### Actual projection and five prior inverses

Put $z_y=\Pi_{G_2}y$ and keep $z=\Pi_{G_2}u$ and
$d=1.6\cdot10^{-8}$. The old evaluation bounds for the raw sine
also apply at $\omega$ in the stated low and high splits.
More explicitly, the raw projection norm bounds on the five
orthogonal spaces $P\mathcal H$, $U\oplus W$, $L_0$, $Y_0$ and
$\mathcal V$ use the component bounds
$$
 6200(2.45\cdot10^{-12}),\quad
 (10/9)\big[6200(2.45\cdot10^{-12})+3\cdot10^{-60}\big],
 \quad10^{-281},\quad10^{-281},\quad
 \frac{6\cdot10^{-24}+9\delta}{1-3\delta},\quad
 (5.52\cdot10^9)(4\cdot10^{-48}+12\delta)
$$
on $P\mathcal H,U,W,L_0,Y_0,\mathcal V$, respectively.
These are the exact old sine denominator bound, the $U$
preimage bound, Chebyshev leakage on $W,L_0$, the true high
preimage bound and the separated native envelope with its Gram
factor. They use $3.5\cdot10^9<\omega<4\cdot10^9$,
$\omega<10^{25}$ and $\delta=10^{-272}$. The squared sum is
less than $10^{-15}$. Dividing by raw energy $4$ gives
$\|z_y-y\|<d$, just as $\|z-u\|<d$.

Now $t=(I-e\otimes e)z_y$, $\|e-u\|<2d$ and
$\|e\otimes e-u\otimes u\|\le2\|e-u\|$. Thus
$\|t-t_0\|<5d$, $\|t\|>\kappa-5d>0.99$,
$\|v-v_0\|\le2\|t-t_0\|/\|t\|<11d$, and
$|\langle e,z_y\rangle|<0.071$.

The local inverse column bounds of the centroid sine section
also hold on $z_y$. The proof there uses the normalized
uncancelled bound $1.01/||\nu|-\omega|$, angular $L^1$ on
$\mathcal D$ below $42$, the distance $\omega-3.5\cdot10^9>3\cdot10^8$,
the bound $2/|\nu|$ on the high tail above $10^{25}$, and the
true projection error $d$. These are valid for $y$ with its
native energy. At the removable centers use the universal
bound $\sqrt8$. The old head, high preimage and separated
Gram bounds therefore supply the same $PR,J,J_Y,J_{\mathcal V}$
local bounds on both projected inputs. On $e$ they grow by at
most $1/(1-d)<1.1$. On $v$ the triangle inequality and
$\|t\|>0.99$ grow them by at most $(1+0.071)/0.99<1.1$.
Taking a product of the two local bounds gives the mixed
inverse estimate. Squaring gives the diagonal inverse estimate.
Both pay the actual five inverse blocks with norms bounded
by $10,25/2,9,4,1/12$. Use the original full $10^{-515}$
bound for the third inverse action. Each total costs less than
$(1.1)^2(4.7\cdot10^{-6})<6\cdot10^{-6}$.

### Common-collar bilinear estimate and exact second correction

Use the preceding full angular comparison multiplier
$$
 G=1_{\mathcal D}wA-A_0+(1-1_{\mathcal D}w)P_4,
 \qquad A_0=21.3208029.
$$
Take the common mirrored collar $||\nu|-\alpha|\le10^6+1$.
It covers both radius-$10^6$ collars, since $|\alpha-\omega|<1$.
The two original log input endpoints $1817159000,1818114100$
still enclose the enlarged collar. With the original Binet
remainder and defect $\eta=3\cdot10^{-10}$ this gives
$|G|<0.000273+300\eta$ there. On the rest of the full line
$|G|<251$, including the tails omitted by the residual mask.
The angular masses of $\widehat u$ and $\widehat y$
off the common collar are each below $\theta=7\cdot10^{-7}$.
The angular norm of $\widehat v_0$ off it is below
$(1+|g|)\sqrt\theta/\kappa<1.1\sqrt\theta$.

By Plancherel the exact bilinear errors from gamma and mask
are bounded by the collar supremum plus, respectively,
$251(1.1)\theta$ and $251(1.1)^2\theta$ for $(v_0,u)$ and
$(v_0,v_0)$. This uses both off-collar tails. The physical
projection errors in the original $R$ entries cost at most
$300(13d)$ and $600(11d)$, by $\|R\|<300$ and the unit
norms. Add the five inverse costs in each case. The total
errors are below $0.00055$ for the mixed entry, and $0.00060$
for the diagonal entry. The scalar $A_0+B$ has zero mixed
entry by exact orthogonality. Subtract the two prime entries
and retain $A_0+B$ on the diagonal. This proves
$$
 1.6149<\langle v,C_2e\rangle<1.6164,\qquad
 23.80003<\langle v,C_2v\rangle<23.80130 .
$$
Since $v\in H_e$, the first entry is $\langle v,b_e\rangle$.
The genuine sixth debit on $v$ lies between $0.264$ and
$0.265$ by the exact $\beta$ interval. Subtract it to obtain
the asserted positive $\gamma_v$.

Put $H_{e,v}=H_e\cap v^\perp$ and
$b_v=\Pi_{H_{e,v}}C_3v$. The next equivalent sign is
$$
 C_4=\Pi_{H_{e,v}}C_3|_{H_{e,v}}-\gamma_v^{-1}b_v\otimes b_v
 \ \ge 0\qquad \text{on all of }H_{e,v}.
$$
This is the one-coordinate square completion for the true
$C_3$, with all previous coupling retained. The full sign
and original stage return remain open.

### Exact rational guards for the neighboring sine

Append these guards to the historical prefix and the previous
centroid pivot and mixed-column blocks.

```python
# Continue with the historical centroid / mixed-column written checker.
j_native = 4847030844
neighbor = (F(j_native-1, 4)*pi_lower, F(j_native-1, 4)*pi_upper)
xi_sum = add(carrier, neighbor)
xi_difference = subtract(carrier, neighbor)
assert F(838, 1000) < xi_difference[0] <= xi_difference[1] < F(84, 100)

def divide_positive(numerator, denominator):
    lo, hi = denominator
    assert 0 < lo <= hi
    return multiply(numerator, (1/hi, 1/lo))

def sqrt_interval(interval):
    lo, hi = interval
    assert 0 <= lo <= hi
    return (F(isqrt(lo*source_grid**2 // 1), source_grid),
            F(isqrt(hi*source_grid**2 // 1)+1, source_grid))

def neighbor_correlation(lag):
    length = subtract((8, 8), lag)
    cosine, _ = phase_trig(multiply(neighbor, lag))
    _, sine = phase_trig(multiply(neighbor, length))
    return scale(F(1, 2), subtract(multiply(length, cosine),
                                  divide_positive(sine, neighbor)))

def mixed_correlation(lag):
    length = subtract((8, 8), lag)
    cos_sum, _ = phase_trig(scale(F(1, 2), multiply(xi_sum, lag)))
    cos_difference, _ = phase_trig(scale(F(1, 2), multiply(xi_difference, lag)))
    _, sin_sum = phase_trig(scale(F(1, 2), multiply(xi_sum, length)))
    _, sin_difference = phase_trig(scale(F(1, 2), multiply(xi_difference, length)))
    return subtract(divide_positive(multiply(cos_sum, sin_difference), xi_difference),
                    divide_positive(multiply(cos_difference, sin_sum), xi_sum))

native_diag, native_mixed = zero, zero
row_count = 0
for p in range(2, 2981):
    if p == 3 or any(p % d == 0 for d in range(2, isqrt(p)+1)):
        continue
    log_p = log_bounds(p)
    n = p
    while n <= 2980:
        lag = log_bounds(n)
        assert 0 < lag[0] <= lag[1] < 8
        root_floor = isqrt(n*source_grid**2)
        magnitude = (2*log_p[0]*source_grid/(root_floor+1),
                     2*log_p[1]*source_grid/root_floor)
        weight = scale(1 if n % 3 == 1 else -1, magnitude)
        native_diag = add(native_diag, round_out(*multiply(weight, neighbor_correlation(lag)), atom_grid))
        native_mixed = add(native_mixed, round_out(*multiply(weight, mixed_correlation(lag)), atom_grid))
        n *= p
        row_count += 1
assert row_count == 458
s_norm = sqrt_interval(energy)
raw_norm_prod = scale(2, s_norm)
gram_overlap = divide_positive(mixed_correlation(zero), raw_norm_prod)
prime_native = scale(F(1, 4), native_diag)
prime_raw_mixed = divide_positive(native_mixed, raw_norm_prod)
norm_squared_orth = subtract((1, 1), square(gram_overlap))
norm_orth = sqrt_interval(norm_squared_orth)
prime_mixed_orth = divide_positive(
    subtract(prime_raw_mixed, multiply(gram_overlap, mean)), norm_orth,
)
prime_diag_orth = divide_positive(
    add(subtract(prime_native, scale(2, multiply(gram_overlap, prime_raw_mixed))),
        multiply(square(gram_overlap), mean)), norm_squared_orth,
)

def assert_inside(value, lo, hi):
    assert F(lo) < value[0] <= value[1] < F(hi)

assert_inside(gram_overlap, '-.062786', '-.062783')
assert_inside(prime_native, '-2.097474', '-2.097473')
assert_inside(prime_raw_mixed, '-2.339350', '-2.339134')
assert_inside(norm_orth, '.998027', '.998028')
assert_inside(prime_mixed_orth, '-1.615759', '-1.615498')
assert_inside(prime_diag_orth, '-2.354880', '-2.354838')
print("PASS 458 signed neighbor rows, physical overlap and normalized orthogonal prime entries")

# Both true carrier intervals use the same source transfer and envelope.
assert F(3_800_000_000) < neighbor[0] <= neighbor[1] < F(3_900_000_000)
assert F(3_800_000_000) < carrier[0] <= carrier[1] < F(3_900_000_000)
assert neighbor[0]-old_split > 3*10**8
assert neighbor[1] < F(high_split, 4)
pair_radius = 10**6
pair_collar = pair_radius+1
assert xi_difference[1] < 1
assert F(3_500_000_000) < carrier[0]-pair_collar
assert carrier[1]+pair_collar < F(4_000_000_000)
pair_log_left = 3*(carrier[0]-pair_collar)/(2*pi_upper)
pair_log_right = 3*(carrier[1]+pair_collar)/(2*pi_lower)
assert 1817159000 < pair_log_left <= pair_log_right < 1818114100
pair_gamma_error = F(273, 10**6)
assert gamma_center-pair_gamma_error < gamma_lower < gamma_upper < gamma_center+pair_gamma_error
assert 2*F(101, 100)**2/(pi_lower*pair_radius) < theta

# The input sine projection bound uses the raw evaluation norm.
old_evaluation = 6200*F(245, 10**14)
old_u_evaluation = F(10, 9)*(old_evaluation+F(3, 10**60))
low_evaluation = F(1, 10**281)
high_evaluation = (F(6, 10**24)+9*delta)/(1-3*delta)
separated_evaluation = F(552, 100)*10**9*(F(4, 10**48)+12*delta)
raw_loss = (old_evaluation**2+old_u_evaluation**2+2*low_evaluation**2
            +high_evaluation**2+separated_evaluation**2)
assert raw_loss < F(1, 10**15) < 4*defect**2

# Compare the true normalized orthogonal pair with the unprojected pair.
raw_overlap_bound = F(7, 100)
true_norm_floor = F(99, 100)
assert max(abs(v) for v in gram_overlap) < raw_overlap_bound
assert norm_orth[0]-5*defect > true_norm_floor
assert 10/true_norm_floor < 11
true_overlap_bound = F(71, 1000)
assert raw_overlap_bound+3*defect < true_overlap_bound
action_factor = F(11, 10)
assert 1/(1-defect) < action_factor
assert (1+true_overlap_bound)/true_norm_floor < action_factor

inverse_action = F(6, 10**6)
assert action_factor**2*debit < inverse_action
assert (1+raw_overlap_bound)/true_norm_floor < action_factor
collar_error = pair_gamma_error+300*eta
mixed_error = F(55, 10**5)
diag_error = F(60, 10**5)
assert collar_error+251*action_factor*theta+300*13*defect+inverse_action < mixed_error
assert (collar_error+251*action_factor**2*theta
        +600*11*defect+inverse_action) < diag_error

mixed_entry = add(scale(-1, prime_mixed_orth), (-mixed_error, mixed_error))
diag_entry = add(subtract((budget+gamma_center, budget+gamma_center), prime_diag_orth),
                 (-diag_error, diag_error))
assert_inside(mixed_entry, '1.6149', '1.6164')
assert_inside(diag_entry, '23.80003', '23.80130')
beta_interval = F(9869, 1000), F(987028, 10**5)
sixth_debit = divide_positive(square(mixed_entry), beta_interval)
assert_inside(sixth_debit, '.264', '.265')
seventh_pivot = subtract(diag_entry, sixth_debit)
assert_inside(seventh_pivot, '23.535', '23.538')
print("PASS projected neighboring sine: coupling (1.6149, 1.6164), seventh pivot (23.535, 23.538)")
```

## The actual mixed column of the neighboring pivot

2026-11-14, grwtsk contributors, AI-assisted. Written analytic proof
with exact rational checks. Lean elaboration, fresh kernel replay
and transitive axiom audit are NOT_RUN. Independent review is UNASSESSED.

Keep the actual $e,v$ and $C_3,C_4$ from the preceding sections,
and write $H=H_{e,v}$. On the original bounded physical carrier
the seventh mixed column and its correction satisfy
$$
 1.407<\|b_v\|<1.671,\qquad
 0.084<\|\gamma_v^{-1}b_v\otimes b_v\|<0.119<B,
 \qquad b_v=\Pi_H C_3v.
$$
In particular the seventh correction is nonzero and its operator
norm is smaller than the scalar budget. The sign of $C_4$ still
depends on the compression of $C_3$ to all of $H$.

Set $\lambda=\langle v,b_e\rangle/\beta$ and $x=v-\lambda e$.
Realness and the true sixth correction give $b_v=\Pi_H C_2x$.
With the preceding unprojected Gram data $g,\kappa,v_0$ put
$h=v_0-\lambda u$. Write $P_0=u\otimes u+v_0\otimes v_0$ and
$P_1=e\otimes e+v\otimes v$. These are orthogonal projections.
We have $\|P_1-P_0\|<26d$ and $\|x-h\|<12d$ by
$\|e-u\|<2d$, $\|v-v_0\|<11d$, $\lambda<0.164$ and
$d=1.6\cdot10^{-8}$. Both $h$ and $x$ have norm
$\sqrt{1+\lambda^2}<1.02$.

### Two centered physical carriers and the slow cross term

Let $T_P$ be the original unmasked signed prime compression and
$q=(I-P_0)T_Ph$. Write $\mu=\langle u,T_Pu\rangle$,
$m=\langle v_0,T_Pu\rangle$, and $D=\langle v_0,T_Pv_0\rangle$.
These are the exact signed entries of the preceding checks.
Then
$$
 q=T_Ph-(m-\lambda\mu)u-(D-\lambda m)v_0,\qquad
 h=y/\kappa-(g/\kappa+\lambda)u.
$$
The 458 exact lags cut the positive physical half-interval into
459 cells. For each of the two carriers, start both shifts for
$\log n<4$ and remove the plus shift at its cut. For $\log n>4$
add the minus shift at its cut. The coefficient changes are the
two signed cosine and sine changes of the centroid mixed-column
section, applied now at $\alpha$ and $\omega$ with their same
original signed weights. Multiply each pair by its coefficient
in $h$, with the actual sine energies, and subtract the two
components in the displayed formula for $q$. On each open cell
write the resulting $q$ as
$$
 A\sin(\alpha t)+D_\alpha\cos(\alpha t)
 +C\sin(\omega t)+D_\omega\cos(\omega t).
$$
Put $E_\alpha=A^2+D_\alpha^2$ and $E_\omega=C^2+D_\omega^2$.
By oddness the cell's contribution to the physical squared norm
is twice the positive-half integral. Its constant term is
$(E_\alpha+E_\omega)$ times cell length. Its two slow terms
in the doubled integrand are
$$
 2(AC+D_\alpha D_\omega)\cos((\alpha-\omega)t)
 +2(AD_\omega-D_\alpha C)\sin((\alpha-\omega)t).
$$
Integrate them by their exact endpoint primitives at
$0.838<\alpha-\omega<0.840$. The fast remainder from $2\alpha$,
$2\omega$ and $\alpha+\omega$ per cell has absolute integral
at most
$$
 \frac{E_\alpha}{\alpha}+\frac{E_\omega}{\omega}
   +\frac{2(E_\alpha+E_\omega)}{\alpha+\omega}.
$$
For the last term the doubled cross harmonic has amplitude
$2\sqrt{E_\alpha E_\omega}\le E_\alpha+E_\omega$.
All these bounds use the full endpoint primitive.

With the entire true $\lambda$ range the directed slow
contribution lies in $(-12.278,-12.225)$ and the summed absolute
fast error is below $1.1\cdot10^{-6}$. Dropping the slow terms
would give squared energy in $(14.609,14.633)$ even with the fast
terms retained. For the norm enclosure evaluate at the rational
midpoint of the $\lambda$ interval and transfer by the exact
affine dependence. The norm of $(I-P_0)T_Pu$ is at most
$\|(T_P-\mu)u\|<2.45$ by the earlier signed shift estimate.
Multiplying this bound by the interval half-width gives the full
$\lambda$ transfer. The resulting enclosure is
$$
 1.5338<\|q\|<1.545.
$$

### Full gamma and mask action on both sine inputs

Use $\widetilde R=A_0I-T_P$, $A_0=21.3208029$,
and the same full angular difference multiplier
$G=1_{\mathcal D}w A-A_0+(1-1_{\mathcal D}w)P_4$.
Its off-band magnitude is bounded by 251. In this paragraph
use the larger common band $L\le|\nu|\le U$, where
$L=3.5\cdot10^9$ and $U=4\cdot10^9$. This band is inside
the original residual set with $1-w\le3\cdot10^{-10}$.

For either normalized sine at $\rho=\alpha,\omega$, keep both
fractions in its transform. If $s_\rho$ is the raw sine,
the off-band angular norm of the normalized Fourier transform
is at most
$$
 \frac{\sqrt{D_1}+\sqrt{D_2}}{\|s_\rho\|\sqrt{\pi}},\qquad
 D_1=\frac1{\rho-L}-\frac1\rho+\frac1{U-\rho},\quad
 D_2=\frac1\rho-\frac1{L+\rho}+\frac1{U+\rho}.
$$
Indeed these are the integrals of $(\nu-\rho)^{-2}$ and
$(\nu+\rho)^{-2}$ over $[0,L]\cup[U,\infty)$.
The two signs account for the factor $1/\sqrt{\pi}$.
Minkowski and the exact uncancelled transform give the displayed
bound, which is less than $3.02\cdot10^{-5}$.

On the band, directed logarithms at both carrier centers and
the full Binet remainder give
$$
 |A(\nu)-A_0|<10^{-8}+\frac{\big||\nu|-\rho\big|}{L}.
$$
The slope term follows from the bound $1/L$ on the log
derivative. The uncancelled amplitude bound
$1.01/\big||\nu|-\rho\big|$ controls its product with the Fourier
transform. In angular norm this costs at most $12800/L$.
Charge the original filter error $300\eta$ on the band and
the full off-band multiplier bound. Plancherel and physical
restriction give an action bound of $0.0076$ on each of $u,y$
for $R-\widetilde R$.

### Transfer to the actual seventh column and its Schur debit

Write $z_y=\Pi_{G_2}y$, $n=\|\Pi_{H_e}y\|$ and
$g_a=\langle e,z_y\rangle$. Then $|g_a-g|<3d$,
$|n-\kappa|<5d$, and
$$
 x=z_y/n-(\lambda+g_a/n)\,e .
$$
The retained sign $g_a<0$ matters. Both
$\lambda+g_a/n$ and $\lambda+g/\kappa$ lie in $(0.100,0.102)$.
With $e=z/\|z\|$ this bounds by $1.104$ the sum of the absolute
coefficients in the expression for $x$ on $z_y,z$, and also in
the expression for $h$ on $y,u$.

On $G_2$, write $D_{\mathrm{old}}$ for the sum of the five
positive inverse corrections, each with its original compression
to $G_2$. Their sum has action norm below $0.10604$ on each of
$z,z_y$. This uses their previously displayed common local
column bounds paired with the global map norms, plus the
full $D_0$ price. Thus its action on $x$ is below
$1.104(0.10604)$. The projection $\Pi_H$ kills $P_0$ exactly, since the
$G_2$ projections of $u,y$ lie in $\operatorname{ran}P_1$.
With $\widetilde R h=-q+P_0\widetilde R h$, we obtain
$$
 \left\|\Pi_H C_2x+\Pi_H q\right\|
 \le 300(12d)+1.104(0.0076)+1.104(0.10604)<0.126 .
$$
The scalar $Bx$ also vanishes in this projection.

For the lower bound let $\mathcal E=G_2^\perp$. The raw bound
$\|\Pi_{\mathcal E}R u\|<0.00075$ of the centroid mixed-column
proof also holds on $y$. On the first $P,U$ sectors use the
now common $Rz,Rz_y$ local bounds and $300d$ for transfer.
On $W,L_0$ use the same leakage $300\cdot10^{-265}$ for each.
The $Y_0$ and $\mathcal V$ estimates are the raw high and
separated pairings before transfer or inverse terms. They
use only the common $L^1$ bound, high-tail amplitude
$2/|\nu|$, projected preimage errors, and the true Gram factor.
Each raw bound is below $2\cdot10^{-10}$, as in the centroid
mixed-column proof. It follows that $\|\Pi_{\mathcal E}Rh\|$
is below $1.104(0.00075)$. Using
$q=-\widetilde R h+P_0\widetilde R h$,
$\|\widetilde R\|<233$ and $\Pi_{\mathcal E}P_1=0$ gives
$$
 \|\Pi_{\mathcal E}q\|
 <1.104(0.00075+0.0076)+26d\,(233)(1.02)<0.0094,\qquad
 \|P_1q\|<26d(1.545)<10^{-6}.
$$
The second bound uses $P_0q=0$. The orthogonal decomposition
$\mathcal E\oplus\operatorname{ran}P_1\oplus H$ gives
$\|\Pi_H q\|>1.5337$ by Pythagoras. Combining it with the
action error, and using $\|\Pi_H q\|\le\|q\|$ for the upper
bound, proves the stated interval for $\|b_v\|$. The interval
$23.535<\gamma_v<23.538$ gives the norm of the exact seventh
rank-one debit.

The bounded odd carrier, actual masks and inverse domains, and
the original real odd compact $C^2$ arithmetic tests are unchanged.
The original radius-four stage, all-support localization sign,
and global pole-inclusive Weil source return remain open.

### Exact rational guards for the two-carrier mixed action

Append this block to the historical prefix and the previous
centroid, mixed-column and neighboring sine blocks.

```python
# Uses historical prefix, centroid, mixed column and neighboring sine guards.
coupling_bounds = F('1.6149'), F('1.6164')
lambda_bounds = divide_positive(coupling_bounds, beta_interval)
lambda_mid = (lambda_bounds[0]+lambda_bounds[1])/2
lambda_rad = (lambda_bounds[1]-lambda_bounds[0])/2
def outward(x):
    return round_out(*x, atom_grid)

shift_events = []
initial = [zero, zero]
for p in range(2, 2981):
    if p == 3 or any(p % d == 0 for d in range(2, isqrt(p)+1)):
        continue
    log_p = log_bounds(p)
    n = p
    while n <= 2980:
        lag = log_bounds(n)
        assert 0 < lag[0] <= lag[1] < 8
        near = lag[1] < 4
        assert near or lag[0] > 4
        cut = subtract(four, lag) if near else subtract(lag, four)
        root_floor = isqrt(n*source_grid**2)
        half_weight = scale(1 if n % 3 == 1 else -1, (
            log_p[0]*source_grid/(root_floor+1),
            log_p[1]*source_grid/root_floor,
        ))
        jumps = []
        for i, x in enumerate((carrier, neighbor)):
            cosine, sine = phase_trig(multiply(x, lag))
            c = outward(multiply(half_weight, cosine))
            s = outward(multiply(half_weight, sine))
            if near:
                initial[i] = add(initial[i], scale(2, c))
            jumps.extend((scale(-1 if near else 1, c), scale(-1, s)))
        shift_events.append((cut, jumps))
        n *= p
assert len(shift_events) == 458
shift_events.sort(key=lambda event: event[0][0])

cell_data = []
left, cos_left, sin_left = zero, (1, 1), zero
state = [initial[0], zero, initial[1], zero]
for right, jumps in shift_events + [(four, [zero]*4)]:
    step = subtract(right, left)
    assert 0 < step[0] <= step[1]
    cos_right, sin_right = map(outward, phase_trig(multiply(xi_difference, right)))
    cos_integral = divide_positive(subtract(sin_right, sin_left), xi_difference)
    sin_integral = divide_positive(subtract(cos_left, cos_right), xi_difference)
    cell_data.append((step, cos_integral, sin_integral, state))
    state = [add(value, change) for value, change in zip(state, jumps)]
    left, cos_left, sin_left = right, cos_right, sin_right
assert len(cell_data) == 459

def centered_cells(lambda7):
    coeff_y = divide_positive((1,1), norm_orth)
    coeff_u = subtract(scale(-1, multiply(gram_overlap, coeff_y)), lambda7)
    removed_u = subtract(prime_mixed_orth, multiply(lambda7, mean))
    removed_v = subtract(prime_diag_orth, multiply(lambda7, prime_mixed_orth))
    alpha_scale = divide_positive(coeff_u, s_norm)
    omega_scale = scale(F(1,2), coeff_y)
    alpha_offset = divide_positive(
        subtract(multiply(multiply(gram_overlap, coeff_y), removed_v), removed_u), s_norm)
    omega_offset = scale(F(-1,2), multiply(coeff_y, removed_v))
    leading_sum = zero
    slow_sum = zero
    fast_error = F(0)
    for step, cos_integral, sin_integral, state in cell_data:
        A = outward(add(multiply(alpha_scale, state[0]), alpha_offset))
        B = outward(multiply(alpha_scale, state[1]))
        C = outward(add(multiply(omega_scale, state[2]), omega_offset))
        D = outward(multiply(omega_scale, state[3]))
        alpha_energy = add(square(A), square(B))
        omega_energy = add(square(C), square(D))
        energy_pair = add(alpha_energy, omega_energy)
        leading_sum = add(leading_sum, outward(multiply(energy_pair, step)))
        slow_cos = add(multiply(A,C), multiply(B,D))
        slow_sin = subtract(multiply(A,D), multiply(B,C))
        slow_sum = add(slow_sum, outward(scale(2, add(multiply(slow_cos, cos_integral),
                                                      multiply(slow_sin, sin_integral)))))
        fast_error += (alpha_energy[1]/carrier[0] + omega_energy[1]/neighbor[0]
                       +2*energy_pair[1]/xi_sum[0])
    return leading_sum, slow_sum, fast_error

# Audit the effect of omitting the slow terms on the whole true lambda range.
full_leading, full_slow, full_fast = centered_cells(lambda_bounds)
assert_inside(full_leading, '14.609', '14.633')
assert_inside(full_slow, '-12.278', '-12.225')
assert full_fast < F(11, 10**7)
assert_inside(add(full_leading, (-full_fast, full_fast)), '14.609', '14.633')
leading_sum, slow_sum, fast_error = centered_cells((lambda_mid, lambda_mid))
column_energy = add(add(leading_sum, slow_sum), (-fast_error, fast_error))
assert F('14.60') < leading_sum[0] <= leading_sum[1] < F('14.64')
assert F('-12.28') < slow_sum[0] <= slow_sum[1] < F('-12.22')
assert fast_error < F(11, 10**7)
midpoint_column = sqrt_interval(column_energy)
# Projected T_P u is bounded by the prior centered norm (<2.45).
column_radius = lambda_rad*F('2.45')
raw_column = add(midpoint_column, (-column_radius, column_radius))
assert_inside(raw_column, '1.5338', '1.545')
print("PASS 459 complete cells, slow terms in (-12.278,-12.225), centered shift norm in (1.5338,1.545)")
# Append to the historical, centroid, mixed and neighboring checker blocks.
column_band_low, column_band_high = 3_500_000_000, 4_000_000_000
rho_low, rho_high = 3_806_000_000, 3_807_000_000
for rho in (carrier, neighbor):
    assert rho_low < rho[0] <= rho[1] < rho_high
    rho_log_low = 3*rho[0]/(2*pi_upper)
    rho_log_high = 3*rho[1]/(2*pi_lower)
    rho_log = (log_bounds(rho_log_low//1)[0], log_bounds(-((-rho_log_high)//1))[1])
    assert gamma_center-F(1, 10**8)+binet < rho_log[0]
    assert rho_log[1] < gamma_center+F(1, 10**8)-binet

geo_main = (F(1, rho_low-column_band_low)-F(1, rho_high)
            +F(1, column_band_high-rho_high))
geo_other = (F(1, rho_low)-F(1, column_band_low+rho_high)
             +F(1, column_band_high+rho_low))
main_tail_root, other_tail_root = F(905, 10**7), F(16, 10**6)
sin_floor, pi_root_floor = F('1.997'), F('1.7724')
assert geo_main < main_tail_root**2
assert geo_other < other_tail_root**2
assert min(energy[0], 4) > sin_floor**2 and pi_lower > pi_root_floor**2
column_tail = F('0.0000302')
assert (main_tail_root+other_tail_root)/(sin_floor*pi_root_floor) < column_tail
assert F(101, 100)**2*(column_band_high-column_band_low)/pi_lower < 12800**2
angular_column_price = (251*column_tail+F(12800, column_band_low)
                        +F(1, 10**8)+300*eta)
assert angular_column_price < F('.0076')

action_lambda = divide_positive((F('1.6149'), F('1.6164')), beta_interval)
assert_inside(action_lambda, '.1636', '.164')
act_g = (gram_overlap[0]-3*defect, gram_overlap[1]+3*defect)
act_k = (norm_orth[0]-5*defect, norm_orth[1]+5*defect)
assert_inside(act_k, '.998026', '.998029')
for g0, k0 in ((gram_overlap, norm_orth), (act_g, act_k)):
    zeta = add(divide_positive(g0, k0), action_lambda)
    assert_inside(zeta, '.100', '.102')
assert F(1)/F('.998026') + F('.102')/(1-defect) < F('1.104')
assert 11+2*action_lambda[1] < 12
assert 300+gamma_center < 322

# Use the true and unprojected rank-two projections together.
assert lambda_bounds == action_lambda
assert 1+lambda_bounds[1]**2 < F('1.02')**2
assert gamma_center+211 < 233
span_error = F(26)*defect
span_action = span_error*233*F('1.02')
input_action = 300*12*defect
coefficient_bound = F('1.104')
action_column_price = (coefficient_bound*(F('.0076')+old_action)
                       +input_action)
assert action_column_price < F('.126')

# Both projections lose only the raw head component and the close span.
raw_head = F('.00075')
removed_head = coefficient_bound*(raw_head+F('.0076'))+span_action
removed_span = span_error*F('1.545')
assert removed_head < F('.0094') and removed_span < F(1, 10**6)
assert F('1.5337')**2+removed_head**2+removed_span**2 < F('1.5338')**2

column7_lo, column7_hi = F('1.407'), F('1.671')
pivot7_lo, pivot7_hi = F('23.535'), F('23.538')
assert F('1.5337')-action_column_price > column7_lo
assert F('1.545')+action_column_price < column7_hi
assert F('.084')*pivot7_hi < column7_lo**2
assert column7_hi**2 < F('.119')*pivot7_lo
assert F('.119') < budget
print("PASS actual seventh mixed norm (1.407, 1.671), seventh debit (.084, .119) below B")
```

## Transport of the negative collar through the two new pivots

2026-11-14, grwtsk contributors, AI-assisted. Written analytic proof
with exact rational checks. Lean elaboration, fresh kernel replay
and transitive axiom audit are NOT_RUN. Independent review is UNASSESSED.

Keep the actual bounded odd physical space and all five preceding
eliminated sectors. On $G_2$, let $\Delta=C_{2,+}-C_2$ be the
exact correction after deletion of the negative collar $J_{1/160}$.
Keep its previous bound
$$
 \|\Delta-\rho e\otimes e\|<\varepsilon=1.09\cdot10^{-5},
 \qquad
 0.12449194<\rho=\tau\|a\|^2<0.12449216 .
$$
The earlier coupled deletion proof gives $\Delta\ge0$ and
strict positivity of its quadratic value on each nonzero vector.
Eliminate the same physical subspace $\mathcal P=\operatorname{span}(e,v)$
from both $C_2$ and $C_{2,+}$, and write $C_4$ and $C_{4,+}$ for
the resulting operators on $H=H_{e,v}=G_2\cap\mathcal P^\perp$.
Then $\Delta_7=C_{4,+}-C_4$ has strictly positive quadratic value on
each nonzero vector of $H$. Its norm and rank-one approximation
satisfy
$$
 0.00285<\|\Delta_7\|<0.00580,\qquad
 \|\Delta_7-\sigma g_*\otimes g_*\|<0.000012 ,
$$
where $\sigma$ and the actual physical vector $g_*$ are specified below.

### Joint compression and ideal rank-one update

Write $J:\mathcal P\hookrightarrow G_2$ for the inclusion,
$A=J^*C_2J$, $F=\Pi_H C_2J$ and $D=\Pi_H C_2|_H$.
All use the physical orthogonal sum $G_2=\mathcal P\oplus H$.
In the ordered orthonormal basis $(e,v)$ put
$c=\langle v,b_e\rangle$ and $d_v=\langle v,C_2v\rangle$.
The actual entries are real. Thus
$$
 A=\begin{pmatrix}\beta&c\\ c&d_v\end{pmatrix},
 \qquad d_v-c^2/\beta=\gamma_v.
$$
The leading principal minors of $A-9.6 I$ are positive
by the previously proved strict entry bounds and the directed
guard below. Hence $A>9.6 I$, and the actual collar-deleted
leading block $A_+=A+J^*\Delta J$ has the same lower bound.
Completing the square gives $C_4=D-F A^{-1}F^*$, the same
operator as the successive Schur corrections in the two preceding
pivots. For fixed $h\in H$, $\langle h,C_4h\rangle$ is the infimum over all
$\mathcal P$ components in the original $C_2$ quadratic form.
Joint and successive minimization give the same infimum.
Both actual leading blocks are invertible on $\mathcal P$.

Let $\widetilde C_2=C_2+\rho e\otimes e$ and
$\widetilde A=A+\rho e\otimes e$ on $\mathcal P$. The ideal addition
changes only this leading block. Since $A>0$ and $\rho>0$,
the exact inverse identity obtained by multiplication is
$$
 \widetilde A^{-1}
  =A^{-1}-\frac{\rho}{1+\rho t}\,(A^{-1}e)\otimes(A^{-1}e),
 \qquad t=\langle e,A^{-1}e\rangle.
$$
Let $\widetilde C_4=D-F\widetilde A^{-1}F^*$, and put
$b_0=\Pi_H b_e$. Since $C_3$ is the actual first Schur complement,
$$
 Fe=b_0,\qquad Fv=b_v+(c/\beta)b_0 .
$$
Inverting the two-by-two block and using these two column identities
gives the exact formulas
$$
 t=\beta^{-1}+\frac{c^2}{\beta^2\gamma_v},\qquad
 g_*=F A^{-1}e=\beta^{-1}\left(b_0-\frac{c}{\gamma_v}b_v\right),
 \qquad \sigma=\frac{\rho}{1+\rho t}.
$$
Consequently $\widetilde C_4-C_4=\sigma g_*\otimes g_*$.
This direction lies in the actual physical complement. Orthogonality
of $H$ to $e$ kills the direct compression of the ideal addition,
while the inverse block still changes.

### Exact transport of the full approximation error

Set $E_\Delta=\Delta-\rho e\otimes e$ on $G_2$, and let
$L:H\to G_2$ be the ideal minimizing lift
$Lh=(-\widetilde A^{-1}F^*h,h)$.
For each fixed $h$, write the general lift as $Jp+Lh$.
The cross term of the ideal form vanishes in these coordinates.
The actual form therefore has quadratic value
$$
 \langle h,\widetilde C_4 h\rangle+
 \langle Lh,E_\Delta Lh\rangle+
 \langle p,A_+p\rangle+
 2\operatorname{Re}\langle p,J^* E_\Delta Lh\rangle .
$$
Minimize in $p$ using coercivity of the actual $A_+$ on $\mathcal P$.
By equality of quadratic forms and polarization,
$$
 C_{4,+}-\widetilde C_4
  =L^*E_\Delta L
    -L^*E_\Delta J A_+^{-1}J^* E_\Delta L .
$$
The perturbation may have either sign. The identity keeps its
mixed effect and gives
$$
 \|C_{4,+}-\widetilde C_4\|
 \le\varepsilon
       \left(1+\frac{\|F\|^2}{9.6^2}\right)
       \left(1+\frac{\varepsilon}{9.6}\right)<0.000012 .
$$
Here $\|L\|^2\le1+\|F\|^2/9.6^2$ by orthogonality,
and $A_+\ge A$ follows from the genuine $\Delta\ge0$.
No positivity on the entire complement is needed for this identity.

For strict positivity, alternatively take the actual minimizing lift
$L_+h$ for the collar-deleted form. If $h\ne0$ then $L_+h\ne0$.
Its original quadratic value is at least $\langle h,C_4h\rangle$.
Thus
$$
 \langle h,\Delta_7h\rangle
 =\langle L_+h,C_2L_+h\rangle-\langle h,C_4h\rangle
       +\langle L_+h,\Delta L_+h\rangle >0.
$$
The final term uses the strict earlier correction at its true source.
This step supplies no explicit uniform lower floor.

### Directed size and a source-local falsifier

Since $b_e=cv+b_0$, orthogonality and the original mixed-column
bounds give $1.622<\|b_0\|<2.026$. Cauchy--Schwarz in the
two-dimensional input bounds $\|F\|^2$ by
$\|b_0\|^2+(\|b_v\|+(c/\beta)\|b_0\|)^2$.
The reverse and forward triangle inequalities in the exact expression
for $g_*$ give the directed lower and upper bounds below.
They imply $0.1527<\|g_*\|<0.217$. Combining the ideal norm
$\sigma\|g_*\|^2$ with the full error gives the stated interval
for $\|\Delta_7\|$.

More precisely, put $w_*=g_*/\|g_*\|$. The lower guard is for
the quadratic value $\langle w_*,\Delta_7w_*\rangle$ itself.
On the same vector the direct compression has absolute value
$|\langle w_*,\Delta w_*\rangle|<\varepsilon$ since $w_*\perp e$.
Thus
$$
 \langle w_*,\Delta_7w_*\rangle-\langle w_*,\Delta w_*\rangle
 >0.00283 .
$$
This falsifies dropping the transported correction or substituting
its simple direct compression on $H$.

### Remaining source sign

Set $\varepsilon_7=0.000012$ and $H_+=C_{4,+}-\varepsilon_7 I_H$.
If $H_+$ is coercive, then
$$
 H_+\ge\sigma g_*\otimes g_*
 \quad\Longleftrightarrow\quad
 \sigma\langle g_*,H_+^{-1}g_*\rangle\le1 .
$$
The forward direction tests $H_+^{-1}g_*$, and the reverse uses
Cauchy--Schwarz in the $H_+$ norm. These two quantitative premises
would prove $C_4\ge0$ on all $H$, by the proved transport error.
The simpler uniform bound $C_{4,+}\ge0.00580 I_H$ also suffices.
Neither outside-collar estimate is supplied here.

The original primitive nonprincipal parity-one conductor-three
radius-four consumer retains all real odd compact $C^2$ tests,
genuine gamma, signed prime powers, both angular signs, the full
mask, and all physical inverse domains. The resulting all-support
arithmetic sign and the pole-inclusive global Weil return remain open.

### Exact rational guards for the joint collar transport

```python
from fractions import Fraction as Q

beta_lo, beta_hi = Q('9.86900'), Q('9.87028')
c_lo, c_hi = Q('1.6149'), Q('1.6164')
d_lo = Q('23.80003')
gamma_lo, gamma_hi = Q('23.535'), Q('23.538')
be_lo, be_hi, bv_hi = Q('2.29'), Q('2.59'), Q('1.671')
rho_lo, rho_hi = Q('0.12449194'), Q('0.12449216')
epsilon = Q('0.0000109')

pivot_floor = Q('9.6')
assert beta_lo > pivot_floor
assert (beta_lo-pivot_floor)*(d_lo-pivot_floor) > c_hi**2

b0_lo, b0_hi = Q('1.622'), Q('2.026')
assert b0_lo**2 < be_lo**2-c_hi**2
assert be_hi**2-c_lo**2 < b0_hi**2
f_squared = b0_hi**2 + (bv_hi+(c_hi/beta_lo)*b0_hi)**2
lift_squared = 1+f_squared/pivot_floor**2
error = epsilon*lift_squared*(1+epsilon/pivot_floor)
assert error < Q('0.000012')

t_lo = 1/beta_hi+c_lo**2/(beta_hi**2*gamma_hi)
t_hi = 1/beta_lo+c_hi**2/(beta_lo**2*gamma_lo)
g_lo = (b0_lo-c_hi*bv_hi/gamma_lo)/beta_hi
g_hi = (b0_hi+c_hi*bv_hi/gamma_lo)/beta_lo
assert Q('0.1527') < g_lo <= g_hi < Q('0.217')

ideal_lo = rho_lo*g_lo**2/(1+rho_hi*t_hi)
ideal_hi = rho_hi*g_hi**2/(1+rho_lo*t_lo)
assert Q('0.00285') < ideal_lo-error
assert ideal_hi+error < Q('0.00580')
assert Q('0.00283') < ideal_lo-error-epsilon
print("PASS joint collar transport: error < .000012, actual norm in (.00285, .00580)")
```

## A signed physical approximation to the transported collar direction

2026-11-14, grwtsk contributors, AI-assisted. Written analytic proof
with exact rational checks. Lean elaboration, fresh kernel replay
and transitive axiom audit are NOT_RUN. Independent review is UNASSESSED.

Keep $H=H_{e,v}$, its true pivot and mixed map $A,F$, and the
transported direction $g_*=FA^{-1}e$ from the joint collar
transport. Let $P_0$ be the orthogonal projection onto the raw
physical span of $u,v_0$. Put
$$
 t=\beta^{-1}+\frac{c^2}{\beta^2\gamma_v},\qquad
 \eta_c=\frac{c}{\beta\gamma_v},\qquad
 h=t u-\eta_c v_0,\qquad g_0=-(I-P_0)T_P h.
$$
Here $T_P$ uses the original unmasked signed physical translates.
We prove
$$
 0.1875<\|g_0\|<0.1886,\qquad
 \|g_*-g_0\|<0.01243,\qquad
 0.175<\|g_*\|<0.2011.
$$
With the earlier rank-one error this improves the bounds on the
actual transported correction to $0.00375<\|\Delta_7\|<0.00499$.

### Signed two-carrier norm

The two-by-two inverse gives $A^{-1}e=t e-\eta_c v$.
Since $\eta_c>0$, write
$$
 \Lambda=t/\eta_c=\gamma_v/c+c/\beta,\qquad
 g_0=\eta_c(I-P_0)T_P(v_0-\Lambda u).
$$
The signed 459-cell calculation above applies with this new
interval for $\Lambda$. Its parameters are the actual $\alpha$
and $\omega$, the exact coefficient intervals from the actual
inner products, and the original 458 signed lags. Both low
difference-frequency terms are integrated by their endpoint
primitives. Over the full $\Lambda$ and $\eta_c$ intervals the
scaled slow contribution to squared norm lies in
$(-0.05454,-0.05354)$, and the absolute scaled fast remainder
is below $6.5\cdot10^{-9}$. Omitting the slow contributions
while retaining the fast ones would give squared norm in
$(0.08894,0.08987)$. This would differ from the true value
by more than $0.05354$.

Evaluate the centered norm at the rational midpoint of the
$\Lambda$ interval and transfer to the full interval using
$\|(I-P_0)T_Pu\|<2.45$. Multiply the resulting norm bounds
by the positive $\eta_c$ bounds. This gives the stated
$0.1875<\|g_0\|<0.1886$ on the full physical interval.

### Projection, angular action and true inverse transfer

Let $P_1$ project onto the actual pivot span of $e,v$,
and put $k=t e-\eta_c v$. We have $g_*=\Pi_H C_2 k$.
Keep $z,z_y$, $d=1.6\cdot10^{-8}$ and the actual Gram data
$g_a=\langle e,z_y\rangle$, $n=\|\Pi_{H_e}y\|$ from the
neighboring pivot. The raw counterparts are $g=\langle u,y\rangle$
and $\kappa$. The exact coordinate expressions are
$$
 k=(t+\eta_c g_a/n)e-(\eta_c/n)z_y,\qquad
 h=(t+\eta_c g/\kappa)u-(\eta_c/\kappa)y .
$$
In both cases the first coefficient is positive and uses the
negative overlap. With $e=z/\|z\|$, the sum of the two absolute
coefficients is less than $0.10901$ on $z,z_y$ for $k$ and on
$u,y$ for $h$. The existing projection errors also give
$$
 \|k-h\|<(2t+11\eta_c)d<0.282d,\qquad
 \|h\|<0.103,\qquad \|P_1-P_0\|<26d .
$$

Use $\widetilde R=A_0I-T_P$ with the actual broad-band
gamma and mask action $\|(R-\widetilde R)u\|,
\|(R-\widetilde R)y\|<0.0076$, retaining all tails.
Then $g_0=(I-P_0)\widetilde R h$. We have $\Pi_H P_0=0$
exactly, since both $G_2$ projections of $u,y$ belong to
the actual pivot span. Also $\Pi_H Bk=0$. The sum of the
five genuine inverse terms in $C_2$ has action norm below
$0.10604$ on each of $z,z_y$ from the preceding bounds,
with the full $D_0$ term. Combining these input-by-input
bounds yields
$$
 \|\Pi_H(g_*-g_0)\|
 <300(0.282d)+0.10901(0.0076+0.10604)<0.01239 .
$$
This retains the original local and global factors for all
five physical inverse columns.

Let $\mathcal E=G_2^\perp$. The existing raw estimates give
$\|\Pi_{\mathcal E}Ru\|,\|\Pi_{\mathcal E}Ry\|<0.00075$.
Thus the part of $g_0=\widetilde R h-P_0\widetilde R h$
in $\mathcal E$, using $\Pi_{\mathcal E}P_1=0$, satisfies
$$
 \|\Pi_{\mathcal E}g_0\|
 <0.10901(0.00075+0.0076)+26d\,(233)(0.103)<0.000921.
$$
The bound $\|\widetilde R\|<233$ used here is the full signed
prime multiplier bound with the constant $A_0$.
Since $P_0g_0=0$, the remaining part in the new pivot span
is bounded by $\|P_1g_0\|\le\|P_1-P_0\|\|g_0\|$.
The three error components are orthogonal in
$H\oplus\mathcal E\oplus\operatorname{ran}P_1$.
Their directed squares give $\|g_*-g_0\|<0.01243$.
The triangle inequalities now give the stated new interval
for $\|g_*\|$.

With $\rho$ and $\sigma=\rho/(1+\rho t)$ as before,
the rational bounds give $0.1229<\sigma<0.123$.
Use the norm of $\sigma g_*\otimes g_*$ and the full
$0.000012$ error of the true $\Delta_7$ to obtain
$0.00375<\|\Delta_7\|<0.00499$. The lower estimate also
holds on $g_*/\|g_*\|$. In particular the quantitative bound
$C_{4,+}\ge0.00499 I_H$ would suffice for the original
$C_4$ sign.

### Fourier tails of the same physical approximation

Each translate of a normalized bare sine, compressed to the
physical interval, is a phase-shifted sine restricted to one
interval. The two exponential endpoint integrals give the same
bound
$$
 \frac1{\|s_\rho\|}
 \left(\frac1{|\nu-\rho|}+\frac1{|\nu+\rho|}\right)
$$
as for the unshifted sine. Thus the whole broad-band argument
above applies to each shifted piece. In particular each off-band
norm is below $3.02\cdot10^{-5}$, and each pointwise tail above
$|\nu|=10^{25}$ is below $2/|\nu|$. The phase factors in each
fraction have modulus one.

The absolute sum of the signed prime coefficients is below 211.
The coefficients of $h$ on the two normalized sines have sum
below $0.10901$. The subtracted projection of $T_Ph$ onto the
raw span is
$$
 (t\mu-\eta_c m)u+(tm-\eta_c D)v_0
$$
using the exact signed entries $\mu,m,D$ from the seventh mixed
column. The absolute values of these coefficients are below
$1.21$ and $0.17$, respectively, and the sum of absolute
coefficients of $v_0$ on $u,y$ is below $1.066$.
Consequently represent $g_0$ with total coefficient sum below
$24.4$ in the compressed translated and raw normalized sines.
Its off-band angular norm is below $0.00074$. Its pointwise
amplitude for $|\nu|\ge10^{25}$ is below $49/|\nu|$, giving
angular norm there below $9\cdot10^{-12}$.

Write $G$ for the full angular difference multiplier of
$R-\widetilde R$ as above. On the broad band the log-slope
argument applies to the endpoint bound for each compressed
translate, and its angular action costs at most
$10^{-8}+300\eta+12800/L$ per normalized input.
Here $\eta$ is the original filter defect and $L=3.5\cdot10^9$.
Outside the band use $|G|<251$ and the square of the new
off-band norm. Plancherel and the actual physical projection give
$$
 \left|\langle g_0,(R-\widetilde R)g_0\rangle\right|<0.00016 .
$$
This estimate concerns the raw direction and the uncorrected
$R$ quadratic form, before pricing any genuine inverse action.

There is a genuine interior jump at the physical cut
$4-\log 2$. The plus translate for $n=2$ exits there.
No other signed atom has the same positive cut, and the native
sine part vanishes at the exiting endpoint. Subtracting the raw
span projection is continuous in the interior. Hence the
magnitude of the jump of $g_0$ is exactly
$$
 \frac{\log 2}{\sqrt{2}}\,
 \left(t+\eta_c g/\kappa\right)\frac{|\sin(4\alpha)|}{\|s\|}
 >0.0048 ,
$$
The nonnative offset and the sine Taylor bound give
$|\sin(4\alpha)|>0.20$. In particular $g_0$ has no continuous
representative at this cut. A uniform $O(|\nu|^{-2})$ Fourier
bound would give an integrable transform and hence a continuous
representative by inversion. The raw approximation therefore
requires its endpoint tail estimates and the bounded physical
carrier, with the original compact $C^2$ admission kept distinct.

The new physical approximation controls vector norm.
A quadratic comparison for the actual $C_{4,+}$ must still
estimate its signed arithmetic, angular terms and genuine
inverse actions on this direction. The aligned Rayleigh value,
the uniform outside-collar coercivity and inverse pairing
remain open. The actual arithmetic consumer retains every
original real odd compact $C^2$ admitted test, the full
parity-one gamma and signed prime-power source, and the
original pole-inclusive global Weil return.

### Exact rational guards for the transported direction

Append this block to the historical prefix and the centroid,
centroid mixed-column, neighboring sine and seventh mixed-column
checkers. The 459-cell integration is reused at $\Lambda$.

```python
# Reuse the signed two-carrier integral on the same physical cells.
proxy_eta = divide_positive(coupling_bounds,
                            multiply(beta_interval, (pivot7_lo, pivot7_hi)))
proxy_lambda = add(divide_positive((pivot7_lo, pivot7_hi), coupling_bounds),
                   divide_positive(coupling_bounds, beta_interval))
proxy_lead, proxy_slow, proxy_fast = centered_cells(proxy_lambda)
proxy_eta_squared = square(proxy_eta)
proxy_without_slow = multiply(proxy_eta_squared,
                              add(proxy_lead, (-proxy_fast, proxy_fast)))
proxy_slow = multiply(proxy_eta_squared, proxy_slow)
assert_inside(proxy_without_slow, '.08894', '.08987')
assert_inside(proxy_slow, '-.05454', '-.05354')
assert proxy_eta[1]**2*proxy_fast < F('.0000000065')

proxy_mid = (proxy_lambda[0]+proxy_lambda[1])/2
proxy_radius = (proxy_lambda[1]-proxy_lambda[0])/2
mid_lead, mid_slow, mid_fast = centered_cells((proxy_mid, proxy_mid))
mid_energy = add(add(mid_lead, mid_slow), (-mid_fast, mid_fast))
mid_norm = sqrt_interval(mid_energy)
proxy_norm_radius = F('2.45')*proxy_radius
proxy_norm = multiply(proxy_eta,
    add(mid_norm, (-proxy_norm_radius, proxy_norm_radius)))
assert_inside(proxy_norm, '.1875', '.1886')
print("PASS physical collar proxy norm (.1875, .1886) and indispensable slow harmonics")

# Transfer the same physical column through the exact Gram and Schur maps.
proxy_t = add(divide_positive((1, 1), beta_interval),
              divide_positive(square(coupling_bounds),
                              multiply(square(beta_interval), (pivot7_lo, pivot7_hi))))
assert_inside(proxy_t, '.10245', '.10247')
assert_inside(proxy_eta, '.00695', '.00696')
proxy_coeff_sum = F('.10901')
for g0, k0, z_floor in ((gram_overlap, norm_orth, F(1)),
                         (act_g, act_k, 1-defect)):
    overlap_piece = divide_positive(g0, k0)
    first = add(proxy_t, multiply(proxy_eta, overlap_piece))
    second_abs = divide_positive(proxy_eta, k0)
    assert 0 < first[0] <= first[1]
    assert first[1]/z_floor + second_abs[1] < proxy_coeff_sum
assert 2*proxy_t[1]+11*proxy_eta[1] < F('.282')
assert proxy_t[1]**2+proxy_eta[1]**2 < F('.103')**2

projected_difference = (300*F('.282')*defect
                        +proxy_coeff_sum*(F('.0076')+old_action))
head_difference = (proxy_coeff_sum*(F('.00075')+F('.0076'))
                   +26*defect*233*F('.103'))
span_difference = 26*defect*proxy_norm[1]
assert projected_difference < F('.01239')
assert head_difference < F('.000921')
assert span_difference < F('.000000111')
proxy_error = F('.01243')
assert projected_difference**2+head_difference**2+span_difference**2 < proxy_error**2
actual_proxy_lo, actual_proxy_hi = F('.175'), F('.2011')
assert actual_proxy_lo < proxy_norm[0]-proxy_error
assert proxy_norm[1]+proxy_error < actual_proxy_hi

rho_range = F('.12449194'), F('.12449216')
sigma_range = divide_positive(rho_range, add((1, 1), multiply(rho_range, proxy_t)))
assert_inside(sigma_range, '.1229', '.123')
transport_error = F('.000012')
assert F('.00375') < sigma_range[0]*actual_proxy_lo**2-transport_error
assert sigma_range[1]*actual_proxy_hi**2+transport_error < F('.00499')
print("PASS collar proxy error < .01243, actual direction (.175, .2011), debit (.00375, .00499)")

# Fourier endpoints of the same proxy give a direct bilinear bound.
first_center = subtract(multiply(proxy_t, mean), multiply(proxy_eta, prime_mixed_orth))
second_center = subtract(multiply(proxy_t, prime_mixed_orth), multiply(proxy_eta, prime_diag_orth))
raw_v_coeff = (1+max(abs(g) for g in gram_overlap))/norm_orth[0]
assert max(abs(q) for q in first_center) < F('1.21')
assert max(abs(q) for q in second_center) < F('.17')
assert raw_v_coeff < F('1.066')
shift_coeff_sum = 211*proxy_coeff_sum+F('1.21')+F('.17')*F('1.066')
assert shift_coeff_sum < F('24.4')
proxy_tail = F('.00074')
assert shift_coeff_sum*column_tail < proxy_tail
assert 2*shift_coeff_sum < 49
assert 49**2 < F('.000000000009')**2*pi_lower*10**25

inside_action = F(1, 10**8)+300*eta+F(12800, column_band_low)
proxy_bilinear_error = inside_action*shift_coeff_sum*proxy_norm[1]+251*proxy_tail**2
assert proxy_bilinear_error < F('.00016')
print("PASS physical proxy off-band norm < .00074 and raw gamma-mask form error < .00016")

# A genuine interior jump rules out inheriting smooth-test decay.
jump_coeff = proxy_t[0]-proxy_eta[1]*max(abs(g) for g in gram_overlap)/norm_orth[0]
assert jump_coeff > F('.10')
assert F('.212')-F('.216')**3/6 > F('.20')
assert log_bounds(2)[0] > F('.69')
assert 2 < F('1.415')**2 and s_norm[1] < F('2.001')
assert F('.69')*F('.10')*F('.20')/(F('1.415')*F('2.001')) > F('.0048')
print("PASS interior jump > .0048 at the signed n=2 cut")
```

## Signed prime quadratic value of the collar approximation

2026-11-14, grwtsk contributors, AI-assisted. Written analytic proof
with exact rational checks. Lean elaboration, fresh kernel replay
and transitive axiom audit are NOT_RUN. Independent review is UNASSESSED.

Keep the signed physical approximation $g_0$ and the actual transmitted
collar direction $g_*$ from the preceding section. The exact quotient
of the original unmasked signed prime operator satisfies
$$
 -2.651<\frac{\langle g_0,T_Pg_0\rangle}{\|g_0\|^2}<-1.468 .
$$
As a consequence the direct form $\langle g_*,(BI+R)g_*\rangle$
is above $12.5\|g_*\|^2$. The same bound holds with the collar
deleted in the direct form. The true inverse costs of the outside-collar
Schur form on this direction still require their own estimate.

### Whole physical cells and exact lag integrals

Write $q_\Lambda=(I-P_0)T_P(v_0-\Lambda u)$ with
$\Lambda=\gamma_v/c+c/\beta$. The positive factor $\eta_c$ in
$g_0=\eta_c q_\Lambda$ cancels in the quotient. First use $q=q_{\Lambda_m}$
at the rational midpoint $\Lambda_m$ of the preceding $\Lambda$ interval.
On each positive physical cell use the two sine and cosine coefficients
of the centered signed shift from the seventh mixed-column calculation.
Equivalently write
$$
 q(x)=\operatorname{Re}\bigl(a e^{i\alpha x}+b e^{i\omega x}\bigr)
$$
on that open cell, with complex coefficients encoding the two real
sine and cosine pairs. Thus $A\sin(\alpha x)+B_1\cos(\alpha x)$ uses
$a=B_1-iA$. On the reflected negative cell the coefficients are
$-\bar a,-\bar b$ by oddness. This gives 918 open cells up to
their boundary points, with zero extension outside $[-4,4]$.

For each of the actual 458 lags $r=\log n>0$, the correlation at $r$
is the integral of $q(x)q(x+r)$ on $[-4,4-r]$. Along this overlap
merge the cells for $q(x)$ with those for $q(x+r)$. Each endpoint is
represented by an exact pair $(k,Q)$ for $4k+\log Q$, $Q>0$ rational.
Reflection maps this pair to $(-k,1/Q)$, and translation of a cut
by $-r$ maps it to $(k,Q/n)$. Equal keys are exact equalities; for
distinct keys the directed comparisons in the computation certify
disjoint intervals wherever required for the merge. At equal end
points both cell indices advance. This counts 213970 nonempty
intersections and 624 equal-endpoint advances over the full signed
lag list. An open endpoint has no effect on any integral.

On a merged cell let $a',b'$ be the coefficients for $q(x+r)$
after multiplying the two carrier phases by $e^{i\alpha r}$ and
$e^{i\omega r}$. The constant and slow part of the product is
$$
 \frac12\operatorname{Re}\left(
   a\overline{a'}+b\overline{b'}
    +(a\overline{b'}+\bar b a')e^{i(\alpha-\omega)x}
 \right).
$$
Integrate both terms by the two endpoints. The three remaining
frequencies are $2\alpha,2\omega,\alpha+\omega$.
Their coefficients come from $aa',bb',ab'+ba'$, with the same
factor $1/2$. Let $M$ bound the sum of the absolute real and
imaginary parts of the original two coefficients in each cell.
Rotating the shifted pair preserves each complex modulus.
The summed absolute error of the omitted fast primitives on
a merged cell is at most $M^2/(2\omega)$, since each frequency
is at least $2\omega$ and the two-endpoint oscillatory integral
has magnitude at most two divided by its frequency.

The full physical signed prime operator has both translates at
half-weight. On this real vector their correlations are equal
by a change of variables in the whole-line integral. Thus the
quadratic value is the sum of the forward correlations with
the actual full weights $2\log(p)\chi_3(n)/\sqrt n$.
The checker rounds both ends outward on the $10^{15}$ grid
for the merged-cell operations. It computes the slow endpoint
primitives with directed bounds for $\alpha-\omega$,
and uses the exact translation identity when moving a cut.
Signed midpoint numerator bounds are $(-1870,-1138)$.
At the same rational midpoint, the slow contribution to this
numerator lies in $(2540,3331)$. The computation that leaves
out this contribution, while still accounting for fast
terms, has quotient in $(-6.2,-5.8)$.
It therefore fails even as a bound for the midpoint quotient.

### Return from the midpoint and a direct form bound

The exact dependence gives
$\|q_\Lambda-q_{\Lambda_m}\|\le2.45|\Lambda-\Lambda_m|$
by the preceding centered-shift bound on $u$.
For the numerator use the original weighted Schur bound
$$
 \|T_P\|\le 577531/10000 .
$$
It applies to the bounded physical carrier by zero extension to
the source interval of the exact 4096-row, 458-atom bound and
restriction to $[-4,4]$.
[Signed prime compression](WeilConductorThreeRadiusFourNeumannTail.lean#L259)
Writing $d_q$ for $2.45$ times the half-width of the $\Lambda$ interval,
the numerator changes by at most
$(577531/10000)d_q(2\|q_{\Lambda_m}\|+d_q)$.
The norm denominator is controlled by the same $d_q$.
The exact rational guards give the stated quotient on the full
$\Lambda$ interval with strictly positive denominator.

For the direct form on $g_*$, keep the signed decomposition
$R=A_0I-T_P+G_{\rm phys}$ of the preceding section, with
$G_{\rm phys}$ the compression of its full angular comparison
multiplier. That multiplier has absolute bound 251 everywhere:
$\mathbf1_{\mathcal D}wA$ is in $[-2,61]$ and
$|\mathbf1_{\mathcal D}wA-A_0|<40$, and the prime part
has modulus at most 211. The previous on-band action and off-band
norm on $g_0$ give $\|G_{\rm phys}g_0\|<0.186$.
Its quadratic value there has absolute bound $0.00016$.
If $d_g=0.01243$, the exact norm approximation therefore bounds
the absolute gamma-mask quadratic value on $g_*$ by
$$
 0.00016+2(0.186)d_g+251d_g^2 .
$$
The signed prime quadratic value on $g_*$ is at most its bound
$-1.468(0.1875)^2$ on $g_0$ plus
$(577531/10000)d_g(2(0.1886)+d_g)$. Combine these inequalities
with the exact scalar $(B+A_0)\|g_*\|^2$ and
$\|g_*\|>0.175$ to get the claimed quotient above $12.5$.
Deleting the collar adds the positive operator $W_*^*W_*$,
so the direct form bound holds on the same $g_*$ after that
deletion.

The physical approximation has its original interior jump.
This calculation uses bounded forms on the physical carrier,
and the original arithmetic stage retains its real odd compact
$C^2$ admission and whole gamma term. The actual corrected
quotient needs all seven eliminated inverse actions evaluated
on the aligned direction. The all-support sign and the
pole-inclusive global Weil return remain open.

### Exact rational guards for the signed proxy quotient

Append this block to the preceding proxy checker and its
listed dependencies.

```python
# Signed Rayleigh quotient of the physical collar proxy.
# The amplitude factor proxy_eta cancels. Evaluate at proxy_mid first.
quotient_grid = 10**15
point_zero = (0, 0)

def integer_interval(interval):
    lo, hi = interval
    return (lo*quotient_grid // 1, -((-hi*quotient_grid) // 1))

def iadd(x, y):
    return (x[0]+y[0], x[1]+y[1])

def ineg(x):
    return (-x[1], -x[0])

def isub(x, y):
    return iadd(x, ineg(y))

def imul(x, y):
    values = (x[0]*y[0], x[0]*y[1], x[1]*y[0], x[1]*y[1])
    return (min(values)//quotient_grid, -((-max(values))//quotient_grid))

def rational_interval(interval):
    return tuple(F(x, quotient_grid) for x in interval)

# Reuse centered_cells' sine and cosine coefficients.
column_y = divide_positive((1, 1), norm_orth)
column_u = subtract(scale(-1, multiply(gram_overlap, column_y)), (proxy_mid, proxy_mid))
removed_u = subtract(prime_mixed_orth, scale(proxy_mid, mean))
removed_v = subtract(prime_diag_orth, scale(proxy_mid, prime_mixed_orth))
coefficient_u = divide_positive(column_u, s_norm)
coefficient_y = scale(F(1, 2), column_y)
offset_u = divide_positive(
    subtract(multiply(multiply(gram_overlap, column_y), removed_v), removed_u), s_norm)
offset_y = scale(F(-1, 2), multiply(column_y, removed_v))
positive_amplitudes = []
for _, _, _, state in cell_data:
    A = add(multiply(coefficient_u, state[0]), offset_u)
    B = multiply(coefficient_u, state[1])
    C = add(multiply(coefficient_y, state[2]), offset_y)
    D = multiply(coefficient_y, state[3])
    positive_amplitudes.append(tuple(map(integer_interval, (B, scale(-1, A), D, scale(-1, C)))))

# The key (k,q) represents 4k+log(q) for exact rational q>0.
cut_points = []
prime_rows = []
for p in range(2, 2981):
    if p == 3 or any(p % d == 0 for d in range(2, isqrt(p)+1)):
        continue
    n = p
    log_p = log_bounds(p)
    while n <= 2980:
        log_n = log_bounds(n)
        if log_n[1] < 4:
            cut_points.append(((1, F(1, n)), subtract(four, log_n)))
        else:
            assert log_n[0] > 4
            cut_points.append(((-1, F(n)), subtract(log_n, four)))
        root_floor = isqrt(n*source_grid**2)
        weight = scale(1 if n % 3 == 1 else -1, (
            2*log_p[0]*source_grid/(root_floor+1),
            2*log_p[1]*source_grid/root_floor,
        ))
        prime_rows.append((n, log_n, integer_interval(weight)))
        n *= p
assert len(cut_points) == len(prime_rows) == 458
cut_points.sort(key=lambda row: row[1][0])
assert [row[1] for row in cut_points] == [row[0] for row in shift_events]
positive_points = [((0, F(1)), zero)] + cut_points + [((1, F(1)), four)]
inverse_difference = integer_interval(divide_positive((1, 1), xi_difference))
positive_trig = [
    tuple(map(integer_interval, phase_trig(multiply(xi_difference, x))))
    for _, x in positive_points
]
whole_points = [
    ((-k, 1/q), scale(-1, x), cosine, ineg(sine))
    for ((k, q), x), (cosine, sine) in reversed(list(zip(positive_points, positive_trig))[1:])
] + [
    (key, x, cosine, sine)
    for (key, x), (cosine, sine) in zip(positive_points, positive_trig)
]
full_amplitudes = [
    (ineg(a), b, ineg(c), d) for a,b,c,d in reversed(positive_amplitudes)
] + positive_amplitudes
assert len(whole_points) == len(full_amplitudes)+1 == 919

# For speed one point keeps its fixed-grid location and slow primitives.
def fixed_point(key, time, cosine, sine):
    return key, integer_interval(time), imul(inverse_difference, sine), imul(inverse_difference, ineg(cosine))

fixed_points = [fixed_point(*point) for point in whole_points]

def point_order(left, right):
    if left[0] == right[0]:
        return 0
    if left[1][1] < right[1][0]:
        return -1
    assert right[1][1] < left[1][0], (left[0], right[0], left[1], right[1])
    return 1

def rotate(a, b, phase_cos, phase_sin):
    return (isub(imul(a, phase_cos), imul(b, phase_sin)),
            iadd(imul(a, phase_sin), imul(b, phase_cos)))

def constant_and_slow(left, right):
    a,b,c,d = left
    e,f,g,h = right
    constant = iadd(iadd(imul(a,e), imul(b,f)), iadd(imul(c,g), imul(d,h)))
    cosine = iadd(iadd(imul(a,g), imul(b,h)), iadd(imul(c,e), imul(d,f)))
    sine = iadd(isub(imul(a,h), imul(b,g)), isub(imul(d,e), imul(c,f)))
    return constant, cosine, sine

# Fast phases: four products, frequencies 2α, 2ω, α+ω, α+ω.
# Bound their total per subinterval by the square of a common amplitude sum / (2ω).
amplitude_sum = max(sum(max(abs(a), abs(b)) for a,b in row)
                    for row in full_amplitudes)
amplitude_sum = F(amplitude_sum, quotient_grid)
fast_unit = amplitude_sum**2/(2*neighbor[0])
quotient_numerator = point_zero
unsigned_sum = 0
merged_count = 0
exact_coincidences = 0
quotient_constant = point_zero
for n, log_n, weight in prime_rows:
    unsigned_sum += max(abs(w) for w in weight)
    slow_c, slow_s = map(integer_interval, phase_trig(multiply(xi_difference, log_n)))
    alpha_c, alpha_s = map(integer_interval, phase_trig(multiply(carrier, log_n)))
    omega_c, omega_s = map(integer_interval, phase_trig(multiply(neighbor, log_n)))
    moved_points = [
        fixed_point((k, q/n), subtract(time, log_n), *rotate(cosine, sine, slow_c, ineg(slow_s)))
        for (k, q), time, cosine, sine in whole_points
    ]
    moved_amplitudes = [
        rotate(a,b,alpha_c,alpha_s)+rotate(c,d,omega_c,omega_s)
        for a,b,c,d in full_amplitudes
    ]
    left_cell, right_cell = 0, 0
    contribution = point_zero
    constant_contribution = point_zero
    overlap_count = 0
    while left_cell < len(full_amplitudes) and right_cell < len(full_amplitudes):
        start_a, end_a = fixed_points[left_cell:left_cell+2]
        start_b, end_b = moved_points[right_cell:right_cell+2]
        start = start_a if point_order(start_a, start_b) >= 0 else start_b
        order = point_order(end_a, end_b)
        end = end_a if order <= 0 else end_b
        if point_order(start, end) < 0:
            base, slow_cosine, slow_sine = constant_and_slow(
                full_amplitudes[left_cell], moved_amplitudes[right_cell])
            ordinary = imul(base, isub(end[1], start[1]))
            slow = iadd(imul(slow_cosine, isub(end[2], start[2])),
                        imul(slow_sine, isub(end[3], start[3])))
            constant_contribution = iadd(constant_contribution, ordinary)
            contribution = iadd(contribution, iadd(ordinary, slow))
            overlap_count += 1
        if order <= 0:
            left_cell += 1
        if order >= 0:
            right_cell += 1
        if order == 0:
            exact_coincidences += 1
    assert overlap_count > 0
    merged_count += overlap_count
    # Product-to-sum coefficients above are twice the original integrand.
    numerator_part = add(scale(F(1, 2), rational_interval(contribution)),
                         (-overlap_count*fast_unit, overlap_count*fast_unit))
    constant_part = add(scale(F(1, 2), rational_interval(constant_contribution)),
                        (-overlap_count*fast_unit, overlap_count*fast_unit))
    quotient_numerator = iadd(quotient_numerator, imul(weight, integer_interval(numerator_part)))
    quotient_constant = iadd(quotient_constant, imul(weight, integer_interval(constant_part)))
assert F(unsigned_sum, quotient_grid) < 211
assert merged_count == 213970 and exact_coincidences == 624

# Transport both the exact numerator and its positive denominator to true Λ.
quotient_displacement = F('2.45')*proxy_radius
signed_operator_bound = F(577531, 10000)
quotient_change = signed_operator_bound*quotient_displacement*(2*mid_norm[1]+quotient_displacement)
assert quotient_change < 60
quotient_norm = add(mid_norm, (-quotient_displacement, quotient_displacement))
quotient_numerator_true = add(rational_interval(quotient_numerator),
                             (-quotient_change, quotient_change))
sign_quotient = divide_positive(quotient_numerator_true, square(quotient_norm))
assert_inside(rational_interval(quotient_numerator), '-1870', '-1138')
assert_inside(rational_interval(quotient_constant), '-4470', '-4409')
assert_inside(rational_interval(isub(quotient_numerator, quotient_constant)), '2540', '3331')
omitted_slow_quotient = divide_positive(rational_interval(quotient_constant), square(mid_norm))
assert_inside(omitted_slow_quotient, '-6.2', '-5.8')
assert_inside(sign_quotient, '-2.651', '-1.468')
print("PASS 458 signed lags, 213970 nonempty merged cells and 624 exact merge ties")
print("PASS midpoint slow contribution in (2540, 3331), omitted-slow quotient in (-6.2, -5.8)")
print("PASS directed signed physical proxy quotient in (-2.651, -1.468)")

# Actual direct form on g_* before all inverse corrections.
proxy_g_action = 251*proxy_tail+inside_action*shift_coeff_sum
assert proxy_g_action < F('.186')
signed_error = signed_operator_bound*proxy_error*(2*F('.1886')+proxy_error)
gamma_form_error = (F('.00016')+2*proxy_g_action*proxy_error
                    +251*proxy_error**2)
direct_price = signed_error+gamma_form_error-F('1.468')*F('.1875')**2
assert 0 < direct_price
assert budget+gamma_center-direct_price/F('.175')**2 > F('12.5')
print("PASS actual direct radius-four form on the transported direction > 12.5 times energy")
```

## High-frequency bound and corrected value on the true collar direction

2026-11-14, grwtsk contributors, AI-assisted. Written analytic proof
with exact rational checks. Lean elaboration, fresh kernel replay
and transitive axiom audit are NOT_RUN. Independent review is UNASSESSED.

Keep the actual transmitted direction $g_*=FA^{-1}e$ in
$H=H_{e,v}$. With the original angular measure on the entire line,
$$
 \big\|\mathbf1_{|\nu|\ge10^{25}}\widehat{g_*}\big\|_2
   <5.04\cdot10^{-5}.
$$
On its normalized direction $w_*=g_*/\|g_*\|$, the actual
outside-collar form after all seven inverse effects satisfies
$$
 \langle w_*,H_+w_*\rangle>5.6,\qquad
 H_+=C_{4,+}-0.000012I_H .
$$
The comparison is only on this direction. Coercivity on all of $H$
and the full inverse-pairing bound are still open.

### Actual high-sector coupling and the minimizing lift

Use the two unit sine inputs $u,y$, with
$z=\Pi_{G_2}u$, $z_y=\Pi_{G_2}y$, $d=1.6\cdot10^{-8}$
and the previous preimage error $\delta=10^{-272}$ for $Y_0$.
The original high trace-zero sine space $Y$ maps onto the actual
$Y_0$ by projection. For an input in $Y_0$, its native preimage
has norm at most $(1-3\delta)^{-1}$ times the input norm.
The two direct estimates on $Y_0$ are
$$
 \|PR|_{Y_0}\|,\ \|\Pi_U R|_{Y_0}\|
 \le \frac{2\cdot10^{-6}}{1-3\delta}.
$$
These come from the preceding physical projection estimates on $Y$.
The $U$ component of $J$ on $Y_0$ is
$\Pi_U R-\Pi_U RP A_{23}^{-1}PR$.
Use the actual old interaction $\|\Pi_U RP A_{23}^{-1}\|<3/8$.
Its $W$ component has norm below $741\cdot10^{-265}$ by the
bounded representation of $S$. The resulting stronger bound is
$$
 \|J|_{Y_0}\|<
 (1+3/8)\frac{2\cdot10^{-6}}{1-3\delta}+741\cdot10^{-265}
 <3\cdot10^{-6}.
$$

For both raw sine inputs $\phi=u,y$, the earlier evaluation
bounds give
$$
 \|\Pi_{Y_0}\phi\|<
 \frac{6\cdot10^{-24}+9\delta}{1-3\delta}<7\cdot10^{-24},\qquad
 \|\Pi_{\mathcal V}\phi\|<
 5.52\cdot10^9(4\cdot10^{-48}+12\delta)<3\cdot10^{-38}.
$$
These are the evaluation bounds at the two carrier frequencies
on the actual high and separated spaces. Division by the raw
sine norm, which exceeds one, preserves the bounds. The earlier
raw pairing also gives $\|\Pi_{Y_0}R\phi\|<2\cdot10^{-10}$.
For $\Pi_{Y_0}R(\phi-\Pi_{G_2}\phi)$, use self-adjointness of
$R$ to use the two direct old cross bounds on the $P,U$ pieces,
each of physical norm less than $d$. On $W,L_0$ use the
$300\cdot10^{-265}$ leakage times $d$. On $Y_0,\mathcal V$
use the two raw sine evaluation bounds with $\|R\|<300$.
Consequently $\|\Pi_{Y_0}Rz\|,\|\Pi_{Y_0}Rz_y\|<4\cdot10^{-10}$,
with the sharper expression used in the rational guards below.
Apply the first three actual inverse corrections in $C_0$ to get
$$
 \|J_Yz\|,\ \|J_Yz_y\|<3.2\cdot10^{-8}.
$$
The $PR$ and $J$ input prices are $4.6\cdot10^{-4}$ and
$4.5\cdot10^{-4}$, the old two cross prices are below
$3\cdot10^{-6}$, and the entire $D_0$ correction is at most
$10^{-515}$ in operator norm. This uses the structure of
$\phi-\Pi_{G_2}\phi$ even though its total norm is only known
to be below $d$.

Let $T=BI+R$ and let $E$ be its actual old minimizing lift
from $G_2$ through the original five eliminated sectors.
Put $k=A^{-1}e=t e-\eta_c v$.
The actual coefficient sums on $z,z_y$ are below $0.10901$
and $\|k\|<0.103$ by the preceding section. In the reverse
order of the old completions write
$$
 Ek=k+v_s+y_h+\ell+a+p
$$
with eliminated components in $\mathcal V,Y_0,L_0,Z,P\mathcal H$,
respectively. Thus
$$
\begin{split}
 v_s&=-A_{\mathcal V}^{-1}J_{\mathcal V}k,\\
 y_h&=-A_Y^{-1}J_Y(k+v_s),\\
 \ell&=-D_0^{-1}J_0(k+v_s+y_h),\\
 a&=-D^{-1}J(k+v_s+y_h+\ell),\\
 p&=-A_{23}^{-1}PR(k+v_s+y_h+\ell+a).
\end{split}
$$
Use the prior $J_{\mathcal V}$ columns bounded by $5.2\cdot10^{-6}$
and the new $J_Y$ columns for $k$. The cross from $\mathcal V$
to $J_Y$ has norm below $0.0017$. The $L_0$ row uses
$\|J_0\|<10^{-258}$. The $Z$ row uses the true $J$ bounds
on $\mathcal V,Y_0,L_0$ of $7.2\cdot10^{-8}$,
$3\cdot10^{-6}$ and $741\cdot10^{-265}$, respectively.
The final row uses the $PR$ bounds on $\mathcal V,Y_0,L_0,Z$
of $2.3\cdot10^{-11},3\cdot10^{-6},300\cdot10^{-265},0.0375$.
With the original inverse bounds $1/12,4,9,25/2,10$ in
this order, the exact guards give
$$
 \|v_s\|<4.8\cdot10^{-8},\quad \|y_h\|<1.5\cdot10^{-8},\quad
 \|\ell\|<10^{-258},\quad \|a\|<0.00062,\quad \|p\|<0.00074.
$$
The components are orthogonal and $\|Ek\|<0.104$.
For the $W$ part write $a=a_U+a_W$.
The $Z$ normal equation gives $\Pi_W S(k+v_s+y_h+\ell+a)=0$.
In $S=BI+K_Q^*M K_Q$ the scalar contribution is $Ba_W$.
This yields
$\|a_W\|<741\cdot10^{-265}(0.104)/B<10^{-261}$,
using the original unsquared Fourier leakage bound on $W$.

### Fourier tail transfer to the actual direction

Use $M_0=5\cdot10^{12}$ and $L=10^{25}$ for the two frequency
cutoffs. The uncancelled transform of each normalized bare sine
is below $2/|\nu|$ above $M_0$ since its carrier is below
$4\cdot10^9$ and its raw norm exceeds $1.997$.
Integrating both signs gives tails below $5.05\cdot10^{-7}$
at $M_0$ and $3.6\cdot10^{-13}$ at $L$.
The raw approximation $t u-\eta_c v_0$ to $k$ has coefficient
sum below $0.10901$ and error below $0.282d$, so its first
tail estimate transfers to $k$ with that error.

For an old native unit sine, the exact denominator formula gives
amplitude below $6\cdot10^7/|\nu|^2$ above $M_0$, since its
carrier is below $3\cdot10^7$. Cauchy--Schwarz over the old sine
basis costs at most 6200. The tail for a unit input in its span
is therefore below $1.09\cdot10^{-8}$ at $M_0$. This applies to
$p$. The actual preimage of $a_U$ in that span has norm at most
$(10/9)\|a_U\|$ and relative error at most $10^{-60}$.
Add the entire norms of $v_s,y_h,\ell,a_W$.
Together these estimates give
$$
 \big\|\mathbf1_{|\nu|>M_0}\widehat{Ek}\big\|_2<1.23\cdot10^{-7}.
$$

Let $Q_{\rm phys}$ be the Fourier conjugate of multiplication
by $\mathbf1_{[-4,4]}$ on the full physical line. Its kernel
against $d\eta/(2\pi)$ is $2\sin(4(\xi-\eta))/(\xi-\eta)$.
Bounding the squared kernel by $4/(\xi-\eta)^2$ and integrating
first over $|\xi|\ge L$ gives
$$
 \big\|\mathbf1_{|\xi|\ge L}Q_{\rm phys}
                \mathbf1_{|\eta|\le M_0}\big\|_{\rm HS}^2
 \le \frac1{\pi^2}\int_{-M_0}^{M_0}
           \left(\frac1{L-\eta}+\frac1{L+\eta}\right)d\eta
 \le \frac{4M_0}{\pi^2(L-M_0)}.
$$
Use this full projection bound on the odd carrier.
The actual Fourier return is $\widehat{R Ek}=Q_{\rm phys}(m\widehat{Ek})$
with $m=\mathbf1_{\mathcal D}w s_4$ bounded by 300 in absolute
value. Split the input at $M_0$. On the low part use the
Hilbert--Schmidt bound. On the high part use contractivity of
$Q_{\rm phys}$ and the complete estimated input tail.

The old normal equation gives $T Ek=C_2k$ as a physical vector.
The eliminated component is zero and the surviving component is
the exact old Schur operator. By $Ak=e$ this is $e+g_*$.
Thus $g_*=R Ek+B Ek-e$, an identity for the actual direction
before taking any frequency restriction. To the tail bound for
$R Ek$ add $B$ times the $Ek$ tail and the tail of $e$.
The latter is below $2d+3.6\cdot10^{-13}$ by $\|e-u\|<2d$.
The directed total is below $5.04\cdot10^{-5}$ as claimed.

### Corrected Rayleigh value on this direction

Use the prior $\langle g_*,Tg_*\rangle>12.5\|g_*\|^2$.
For the old $P,U$ prices on $g_*$ decompose it as $g_0+(g_*-g_0)$.
Only the Fourier transform of $g_0$ is split at the two common
bands from $3.5\cdot10^9$ to $4\cdot10^9$ in absolute frequency.
An old unit sine space input has amplitude bounded on this
band by $6200(2.45\cdot10^{-12})$ and the square root of
its angular measure is below 12800. Thus the band portion
of the $P$ price is below
$300\cdot6200(2.45\cdot10^{-12})(12800)(0.1886)$.
For $U$ use the $10/9$ preimage factor and its $10^{-60}$
relative error. For both the off-band $g_0$ term and the full
difference use the weighted restrictions
$\|K_w P\|<1/40$ and $\|K_w|_U\|^2<1/49900$.
The latter costs $300/\sqrt{49900}<1.344$.
With the $0.00074$ off-band tail and $0.01243$ difference,
this gives $\|PRg_*\|<0.11$, $\|\Pi_U Rg_*\|<0.03$ and
$\|Jg_*\|<0.0711$, retaining the $3/8$ interaction and the
$W$ leakage.

For a unit vector in either $Y_0$ or $\mathcal V$, its full
angular norm on $|\nu|<L$ is below $1.2\cdot10^{-11}$.
For $Y_0$ use the native $6\cdot10^{-24}$ amplitude bound
times $\sqrt{L/\pi}$ and the actual preimage error $3\delta$.
For $\mathcal V$ apply the $5.52\cdot10^9$ Gram factor to
$4\cdot10^{-48}\sqrt{L/\pi}+4\delta$.
The raw $R$ price on either sector is therefore bounded by
$300(5.04\cdot10^{-5}+(1.2\cdot10^{-11})\|g_*\|)$.
Add the earlier inverse terms using the actual cross prices to get
$\|J_Yg_*\|<0.016$ and $\|J_{\mathcal V}g_*\|<0.017$.
The square prices use the five original inverse bounds
$10,25/2,9,4,1/12$, with the full $10^{-515}$ bound for
the third correction. Divide by $\|g_*\|^2>0.175^2$ when
using the absolute sum of these expenses.

For the last two pivots together the true expense is
$\langle F^*g_*,A^{-1}F^*g_*\rangle\le(8.2/9.6)\|g_*\|^2$,
using the previous actual mixed norm and coercivity.
This proves the lower bound for $C_4$ along $g_*$ before
passing to $H_+$. Since $\Delta_7\ge0$,
$H_+\ge C_4-0.000012 I_H$, and the finite guards give
$\langle w_*,H_+w_*\rangle>5.6$.
In particular this exceeds $\sigma\|g_*\|^2<0.005$
on the actual normalized direction.

A positive Rayleigh value of this size at a single vector does
not bound the inverse entry. For example the positive matrix
$$
 \begin{pmatrix}6&6\\6&6.001\end{pmatrix}
$$
has value 6 at the first unit vector, but its inverse has value
$1000+1/6$ there. Multiplying by $0.004$ fails the inverse bound
by more than a factor of four. The remaining criterion on
all of $H$ needs an independent coercive or mixed-action bound.

All calculations used the bounded operator on the actual odd
physical interval, including the full signed radius-four source
inside $R$. The original arithmetic $\mathrm{PrimitiveStageLower}$
still requires its real odd compact $C^2$ admitted tests,
with the same gamma-density condition. The all-support
radius-four sign and the pole-inclusive global return remain open.

### Exact rational guards for the high tail and aligned value

```python
from fractions import Fraction as F

pi_lower = F('3.14')
delta = F('1e-272')
d = F('1.6e-8')
budget = F('.124997987')
middle_cut = 5*10**12
high_cut = 10**25
coefficient_bound = F('.10901')
p_column = F('4.6e-4')
j_column = F('4.5e-4')
v_column = F('5.2e-6')
y_cross = F('2e-6')/(1-3*delta)
leakage = F('1e-265')
y_j = (1+F(3,8))*y_cross+741*leakage
assert y_cross < F('3e-6') and y_j < F('3e-6')

# Use the two original sine evaluation bounds, with sine norms >1.
y_projection = (F('6e-24')+9*delta)/(1-3*delta)
v_projection = F('5.52e9')*(F('4e-48')+12*delta)
assert y_projection < F('7e-24') and v_projection < F('3e-38')
y_raw_column = (F('2e-10')+2*y_cross*d
                +300*(y_projection+v_projection+2*leakage*d))
d0_form = F('1e-515')
y_column = (y_raw_column+10*F('3e-6')*p_column
            +F(25,2)*F('3e-6')*j_column+d0_form)
assert y_raw_column < F('4e-10') and y_column < F('3.2e-8')

# The actual reverse lift on k=A^-1 e and its W normal equation.
lift_v = coefficient_bound*v_column/12
lift_y = 4*(coefficient_bound*y_column+F('.0017')*lift_v)
lift_l0 = 9*F('1e-258')*(F('.103')+lift_v+lift_y)
lift_z = F(25,2)*(coefficient_bound*j_column+F('7.2e-8')*lift_v
                  +F('3e-6')*lift_y+741*leakage*lift_l0)
lift_p = 10*(coefficient_bound*p_column+F('2.3e-11')*lift_v
             +F('3e-6')*lift_y+300*leakage*lift_l0+F('.0375')*lift_z)
assert lift_v < F('4.8e-8') and lift_y < F('1.5e-8')
assert lift_l0 < F('1e-258') and lift_z < F('.00062') and lift_p < F('.00074')
assert (F('.103')**2+lift_v**2+lift_y**2+lift_l0**2+lift_z**2+lift_p**2
        < F('.104')**2)
lift_w = 741*leakage*F('.104')/budget
assert lift_w < F('1e-261')

# Both bare sines and the old low native sine space.
assert (1/(1-F(4*10**9,middle_cut))+1)/F('1.997') < 2
assert 4 < F('5.05e-7')**2*pi_lower*middle_cut
assert 4 < F('3.6e-13')**2*pi_lower*high_cut
assert (6200*6*10**7)**2 < F('1.09e-8')**2*3*pi_lower*middle_cut**3
tail_k = coefficient_bound*F('5.05e-7')+F('.282')*d
old_native_norm = F(10,9)*lift_z
tail_pu = (lift_p+old_native_norm)*F('1.09e-8')+F('1e-60')*old_native_norm
tail_lift = tail_k+lift_v+lift_y+lift_l0+lift_w+tail_pu
assert tail_lift < F('1.23e-7')

# Fourier support projection from low input to high output.
hs_bound = F('4.51e-7')
assert F(4*middle_cut)/(pi_lower**2*(high_cut-middle_cut)) < hs_bound**2
tail_r = 300*(F('.104')*hs_bound+tail_lift)
tail_e = 2*d+F('3.6e-13')
true_high = F('5.04e-5')
assert tail_r+budget*tail_lift+tail_e < true_high
print("PASS full high-frequency norm of the actual collar direction <5.04e-5")

# Return through the five inverse prices and the genuine two-dimensional pivot.
lo, hi = F('.175'), F('.2011')
assert F(5*10**8)/pi_lower < 12800**2
raw_band = 300*6200*F('2.45e-12')*12800*F('.1886')
off_and_error = F('.00074')+F('.01243')
price_p = raw_band+F('7.5')*off_and_error
u_factor = F('1.344')
assert u_factor**2*49900 > 300**2
assert 300*F(10,9)*F('1e-60')*F('.1886') < F('1e-54')
price_u = F(10,9)*raw_band+u_factor*off_and_error+F('1e-54')
price_j = price_u+F(3,8)*price_p+F('1e-261')
assert price_p < F('.11') and price_u < F('.03') and price_j < F('.0711')

assert F('6e-24')**2*high_cut < F('1.19e-11')**2*pi_lower
assert F('1.19e-11')+3*delta < F('1.2e-11')*(1-3*delta)
assert F(high_cut)/pi_lower < F('2e12')**2
assert (F('4e-48')*F('2e12')+4*delta)*F('5.52e9') < F('1.2e-11')
price_high = 300*(true_high+F('1.2e-11')*hi)
price_y = price_high+10*F('3e-6')*price_p+F(25,2)*F('3e-6')*price_j+d0_form
price_v = (price_high+10*F('2.3e-11')*price_p+F(25,2)*F('7.2e-8')*price_j
           +4*F('.0017')*price_y+d0_form)
assert price_y < F('.016') and price_v < F('.017')
price_five = (10*price_p**2+F(25,2)*price_j**2+d0_form
              +4*price_y**2+price_v**2/12)
assert F('2.026')**2+(F('1.671')+F('1.6164')*F('2.026')/F('9.869'))**2 < F('8.2')
aligned_floor = F('12.5')-price_five/lo**2-F('8.2')/F('9.6')-F('.000012')
assert aligned_floor > F('5.6')
assert F('.123')*hi**2 < F('.005')
print("PASS aligned quotient of H_+ on the actual collar direction >5.6")
```

## Sharper approximation and the projected signed action

2026-11-15, grwtsk contributors, AI-assisted. Written analytic proof
with exact rational checks. Lean elaboration, fresh kernel replay
and transitive axiom audit are NOT_RUN. Independent review is UNASSESSED.

Keep the original bounded physical carrier, the direction
$g_*=FA^{-1}e$ and its physical approximation
$g_0=-(I-P_0)T_Ph$ with $h=tu-\eta_c v_0$.
The sharpened high-sector column estimates above imply
$$
 \|g_*-g_0\|<0.006081,\qquad
 0.1814<\|g_*\|<0.1947,\qquad
 0.00403<\|\Delta_7\|<0.00468 .
$$
On the same normalized direction $w_*$ they improve the
fully corrected value to $\langle w_*,H_+w_*\rangle>15.8$.

### Gamma and mask action using the full filter interval

Write $G$ for the angular multiplier of $R-\widetilde R$,
and $\rho$ for either carrier $\alpha,\omega$ in this paragraph.
Use the original filter laws all the way from
$H_{\rm safe}=10^8/3-1$ to $3.2\cdot10^{25}$ in absolute
frequency. Exclude the actual paid pair. The remaining band
is in $\mathcal D$, and $1-w\le3\cdot10^{-10}$ there.
Indeed the high polynomial is at least $1-10^{-10}$ and
the low polynomial is below $(1003/1000)10^{-40}$.
[Original filter bounds](WeilConductorThreeRadiusFourMiddleReturn.lean#L128)
[Low filter bound](WeilConductorThreeRadiusFourMiddleReturn.lean#L207)

At either carrier the directed center-log bound is
$|\log(3\rho/(2\pi))-A_0|<10^{-8}$.
On the full band $|\nu|/2>1.65\cdot10^7$, and the Binet
error for $A(\nu)-\log(3|\nu|/(2\pi))$ is below
$3.4\cdot10^{-8}$. With the original mask price $300(3\cdot10^{-10})$,
the multiplier difference there satisfies
$$
 |G(\nu)|<|\log(|\nu|/\rho)|+1.4\cdot10^{-7}.
$$
For each normalized sine or any of its compressed translates, use
the literal endpoint bound $2/(1.997\,||\nu|-\rho|)$.
The angular squared norm of the logarithmic contribution
is bounded by
$$
 \frac{4}{1.997^2\pi\rho}
    \int_0^\infty\frac{\log^2 x}{(x-1)^2}\,dx
 <\frac{32}{1.997^2\pi\rho}.
$$
Inverting $x$ on $(1,\infty)$ gives twice the integral on $(0,1)$.
Expand $(1-x)^{-2}=\sum_{n\ge1} n x^{n-1}$ there and use
nonnegative integration and $\int_0^1 x^{n-1}\log^2x\,dx=2/n^3$.
The result is $4\sum_{n\ge1}n^{-2}<8$ by the integral test.
The squared-norm computation includes both angular signs.
Since $\rho>3.8\cdot10^9$, the band action per sine
or compressed translate is bounded by $2.60\cdot10^{-5}+1.4\cdot10^{-7}$.
The constant term uses physical norm at most one for each of these pieces.

On the excluded frequencies use $|G|<251$. Below $H_{\rm safe}$
the square root of angular measure is below 3262 and the
carrier distance is above $3.8\cdot10^9-3.34\cdot10^7$.
The paid pair has square root of angular measure below 2.53,
and the distance there is above $3.8\cdot10^9-1.86\cdot10^9$.
Use $1.01/||\nu|-\rho|$ on both of these regions. Above
$3.2\cdot10^{25}$ use the previously proved complete tails
above $10^{25}$, below $3.6\cdot10^{-13}$ for the bare unit
sines and $9\cdot10^{-12}$ for $g_0$.
Including the coefficient sum $24.4$ for the low and band
parts of $g_0$, the original full physical compression satisfies
$$
 \|G_{\rm phys}u\|,\ \|G_{\rm phys}y\|<0.000247,\qquad
 \|G_{\rm phys}g_0\|<0.00601 .
$$

### Sharpened transfer through the five inverse terms

Let $D_5$ be the sum of the five actual old positive inverse
terms, each compressed to $G_2$, so that
$C_2=\Pi_{G_2}(BI+R)|_{G_2}-D_5$.
The high-tail argument gives $\|J_Yz\|,\|J_Yz_y\|<3.2\cdot10^{-8}$.
Retain the previous actual global bounds for the output maps
and pair each one with its corresponding local input column.
On each of $z,z_y$ this gives
$$
 \|D_5 z\|,\ \|D_5z_y\|
 <7.5(10)(0.00046)+3.705(25/2)(0.00045)+10^{-515}
      +301(4)(3.2\cdot10^{-8})+303(5.2\cdot10^{-6})/12
 <0.055511 .
$$
The third term is the full bound for the $D_0$ correction.
All five inverses act on their actual physical spaces.

Write $k=A^{-1}e=te-\eta_c v$ and let
$\widetilde R=A_0I-T_P$. The coefficient sum of $k$ on the
projected pair $z,z_y$ is below $0.10901$, and the same
bound holds for $h$ on the raw pair $u,y$. The full
gamma-mask action below bounds $R-\widetilde R$ on each raw
sine by $0.000247$. Also $\|k-h\|<0.282d$ with $d=1.6\cdot10^{-8}$.
Since $\Pi_H P_0=0$ and $\Pi_H Bk=0$, the difference satisfies
$$
 \|\Pi_H(g_*-g_0)\|
 <0.10901(0.000247+0.055511)+300(0.282)d<0.00608.
$$
For the eliminated head of $g_0=(I-P_0)\widetilde R h$,
use $\|\Pi_{\mathcal E}Ru\|,\|\Pi_{\mathcal E}Ry\|<0.00075$
and the improved gamma-mask action. As in the first transfer,
$\Pi_{\mathcal E}P_1=0$ and $\|P_1-P_0\|<26d$ give an error
at most $26d(233)(0.103)$ from the raw span. Thus the eliminated
piece is below $0.000119$. In the two actual pivot coordinates use
$\|P_1g_0\|<26d(0.1886)$, since $P_0g_0=0$.
Orthogonality of these three components gives the sharper
$0.006081$ norm estimate. Apply the triangle and reverse triangle
inequalities using $0.1875<\|g_0\|<0.1886$ to bound $\|g_*\|$.
Then $0.1229<\sigma<0.123$ and the full transported error
$0.000012$ give the sharper bounds on $\|\Delta_7\|$.

### Direct and corrected values using the same sharper error

Put $G_{\rm phys}=R-\widetilde R$. The exact bounds
$\|G_{\rm phys}\|\le251$, $\|G_{\rm phys}g_0\|<0.00601$ and
$|\langle g_0,G_{\rm phys}g_0\rangle|<0.00016$ still apply.
With $d_g=0.006081$ the signed operator price is
$57.7531d_g(2(0.1886)+d_g)$, and the gamma-mask form
price is $0.00016+2(0.00601)d_g+251d_g^2$.
The signed quotient of $g_0$ is below $-1.468$.
From $T=(B+A_0)I-T_P+G_{\rm phys}$, the direct quotient on
$g_*$ is therefore above $18.63$.

In the actual low inverse bounds of the preceding section,
use $0.00074+0.006081$ in the off-band and input difference
terms. For the high sectors the actual tail of $g_*$ remains
below $5.04\cdot10^{-5}$, and the low angular norm on each
of the two actual high spaces is below $1.2\cdot10^{-11}$.
Use the new $\|g_*\|$ upper bound there. For the five old
square prices and the last two together, the previous true
inverse norms and cross prices all apply. Dividing the former
absolute price by the lower energy $0.1814^2$, charging
$8.2/9.6$ for the joint two-coordinate price, and taking
$H_+\ge C_4-0.000012I$ gives the stated $15.8$ bound.

### Projection in the norm residual

For any real $s$, put $D_s=T_P+sI$. Since
$h\in\operatorname{ran}P_0$, $g_0\perp\operatorname{ran}P_0$
and $T_P$ is self-adjoint, the exact relation is
$$
 \langle h,D_s g_0\rangle
 =\langle (I-P_0)T_Ph,g_0\rangle=-\|g_0\|^2.
$$
Consequently $\|P_0D_sg_0\|>\,0.1875^2/0.103>0.3413$.
The actual $\Pi_H$ kills this component. The projection
must be accounted for in a comparison of norm residuals.

Take $s=24-B-A_0$ and put $r=g_*-H_+g_*/24$.
The original source identities give the exact decomposition
$$
\begin{split}
 24r={}&\Pi_H(I-P_0)D_sg_0
      +\Pi_H[D_s(g_*-g_0)-G_{\rm phys}g_*+D_5g_*]\\
     &+FA^{-1}F^*g_*-\Delta_7 g_*+0.000012g_*.
\end{split}
$$
The first term is a projected physical signed action.
The other terms require a bound on their combined action on
the actual direction. The fully corrected Rayleigh value does
not by itself bound this norm.

### Exact rational guards for the sharpened transfer

```python
from fractions import Fraction as F

pi_lower = F('3.14')
rho_lower = F('3.8e9')
coefs = F('24.4')
norm_floor = F('1.997')
Hsafe = F(10**8,3)-1
assert F('3.3e7') < Hsafe < F('3.34e7')
assert F('3.34e7') < 3262**2*pi_lower
paid_upper = F('1.86e9')
assert F(18524227541662946,10**7)+10 < paid_upper
assert 20 < F('2.53')**2*pi_lower
assert F(2,1)/norm_floor < F('1.01')
unit_log = F('2.60e-5')
# Both angular signs, sum n^(-2) bounded by 2.
assert unit_log**2*norm_floor**2*pi_lower*rho_lower > 32

binet = F(5,9)/F('1.65e7') + F(9,32)/F('1.65e7')**2
assert binet < F('3.4e-8')
remainder = F('1.4e-7')
assert F('1e-8')+binet+300*F('3e-10') < remainder

unit_low = F('1.01')*3262/(rho_lower-F('3.34e7'))
unit_gap = F('1.01')*F('2.53')/(rho_lower-paid_upper)
unit_high = F('3.6e-13')
unit_action = unit_log+remainder+251*(unit_low+unit_gap+unit_high)
proxy_action = coefs*(unit_log+remainder+251*(unit_low+unit_gap)) + 251*F('9e-12')
assert unit_action < F('.000247')
assert proxy_action < F('.00601')

print("PASS full gamma-mask action below .000247 per carrier and .00601 on g0")

d = F('1.6e-8')
coefficient_sum = F('.10901')
d0 = F('1e-515')
inverse_action = (F('7.5')*10*F('4.6e-4')
                  +F('3.705')*F(25,2)*F('4.5e-4')
                  +d0+301*4*F('3.2e-8')
                  +F(303,12)*F('5.2e-6'))
assert inverse_action < F('.055511')

h_error = coefficient_sum*(unit_action+inverse_action)+300*F('.282')*d
head_error = coefficient_sum*(F('.00075')+unit_action)+26*d*233*F('.103')
pivot_error = 26*d*F('.1886')
error = F('.006081')
assert h_error < F('.00608') and head_error < F('.000119')
assert h_error**2+head_error**2+pivot_error**2 < error**2
g_min, g_max = F('.1814'), F('.1947')
assert F('.1875')-error > g_min and F('.1886')+error < g_max
transport_error = F('.000012')
assert F('.1229')*g_min**2-transport_error > F('.00403')
assert F('.123')*g_max**2+transport_error < F('.00468')

# Return through the exact signed quotient, then through all seven inverses.
pi_lower = F('3.14')
budget, gamma_center = F('.124997987'), F('21.3208029')
signed_error = F('57.7531')*error*(2*F('.1886')+error)
gamma_error = F('.00016')+2*proxy_action*error+251*error**2
direct_cost = signed_error+gamma_error-F('1.468')*F('.1875')**2
assert 0 < direct_cost
assert budget+gamma_center-direct_cost/g_min**2 > F('18.63')
raw_band = 300*6200*F('2.45e-12')*12800*F('.1886')
assert F(5*10**8)/pi_lower < 12800**2
off_and_error = F('.00074')+error
price_p = raw_band+F('7.5')*off_and_error
price_u = F(10,9)*raw_band+F('1.344')*off_and_error+F('1e-54')
price_j = price_u+F(3,8)*price_p+F('1e-261')
price_high = 300*(F('5.04e-5')+F('1.2e-11')*g_max)
price_y = price_high+10*F('3e-6')*price_p+F(25,2)*F('3e-6')*price_j+d0
price_v = (price_high+10*F('2.3e-11')*price_p+F(25,2)*F('7.2e-8')*price_j
           +4*F('.0017')*price_y+d0)
price_five = 10*price_p**2+F(25,2)*price_j**2+d0+4*price_y**2+price_v**2/12
assert F('18.63')-price_five/g_min**2-F('8.2')/F('9.6')-transport_error > F('15.8')
print("PASS true proxy error < .006081 and corrected aligned quotient > 15.8")

# The exact direction in the two-dimensional span that must be removed.
assert F('.1875')**2 > F('.3413')*F('.103')
print("PASS raw signed action's P0 component has norm > .3413")
```

## Directed bound for the unprojected signed action

2026-11-15, grwtsk contributors, AI-assisted. Written analytic proof
with exact rational checks. Lean elaboration, fresh kernel replay
and transitive axiom audit are NOT_RUN. Independent review is UNASSESSED.

For $s_0=24-B-A_0$, the unprojected action on the same proxy satisfies
$$
 0.7045<\|D_{s_0}g_0\|<0.7648 .
$$
It exceeds the unscaled target $24(0.028)=0.672$.
The same obstruction applies even if the scalar is changed:
$$
 \inf_{s\in\mathbb R}\|(T_P+sI)g_0\|>0.674 .
$$
This result concerns the unprojected signed action of the bounded
physical approximation. On the exact complement, the raw
$P_0$ component in the preceding section vanishes.

### Merged cells for the translated action

Use the same two-carrier exponential form and reflected cells as
for the signed quadratic value above. For this norm calculation,
form the entire translated action first and square it afterwards.
There are 916 signed translated rows at lags
$\pm\log n$, each with weight $\log(p)\chi_3(n)/\sqrt n$,
and the constant row $s_0g_0$. For each row use the exact endpoint
key $(m,Q)$ for the value $4m+\log Q$.
The positive or negative translation divides or multiplies $Q$
by $n$, respectively. Reduce each resulting rational key exactly.
All decisions to include a cut strictly inside $[-4,4]$,
initialize the coefficient at the left endpoint, or discard a
cut at the right endpoint use the exact keys and directed comparisons.
There are 459 exact left-endpoint ties in these rows.
An inexact comparison at that endpoint can skip or double the
first update of a translated row.

The model uses rational midpoint values of $\Lambda,\eta_c$ and the
two carriers. On each source cell take the midpoint of each of its four real
coefficient intervals and round it to a $10^{16}$ grid.
For each signed row enclose its weighted carrier rotations using
the actual full intervals for the two carriers and $\log n$,
which include the midpoint rotations. Freeze those four coefficients
on the same grid, and round the four products that give the new
weighted row coefficients back to the grid. While sweeping, keep
the exact integer sum of active model coefficients. Each row
replaces its old four integers by its new four integers at the
appropriate cut. Between successive distinct cuts the action
in the model is one two-carrier expression. This gives 212182
cells, with ties combined and both frequency signs retained.

For model coefficients $a,b$ in the complex exponential
representation, the squared value has constant term
$(|a|^2+|b|^2)/2$ and slow term
$\operatorname{Re}(a\overline b\,e^{i(\alpha_m-\omega_m)x})$.
Use the exact directed endpoint primitives at the rational
midpoint difference. If $E_{\rm cell}=|a|^2+|b|^2$, the
remaining fast terms cost at most $E_{\rm cell}/\omega_m$ on
the cell. This follows by product to sum and the bound
$2/|\rho|$ on the integral of a frequency $\rho$, since
the three fast frequencies are at least $2\omega_m$ and
$2|a||b|\le E_{\rm cell}$.
The summed fast integral allowance is below $0.00001549$.
The final squared norm interval for the finite model lies in
$(0.53969,0.53973)$.

### Transfer from the model and scalar optimization

The total transfer uses the coefficient rounding error at each
source cell, the two carrier errors and the weighted rotation
errors. For the carrier term use
$|e^{i\rho x}-e^{i\rho_m x}|\le 4|\rho-\rho_m|$ on the
physical interval. Multiply the input model error by the original
signed action bound $577531/10000+|s_0|$. For the rotations,
charge the sum of the component errors of the weighted phases
times the maximum sum of absolute model amplitudes. Each row
also costs at most four grid units for its final coefficient
rounding, and the physical norm bound from a pointwise error
uses $\sqrt8<3$. These estimates retain the real signed
operator throughout the transfer.

To pass from midpoint $\Lambda$ to its full interval, use
$\|(I-P_0)T_Pu\|<2.45$ as before. For the remaining prefactor
use $\|q_\Lambda\|\le0.1886/\eta_{\rm lo}$,
where $q_\Lambda=(I-P_0)T_P(v_0-\Lambda u)$ and $\eta_{\rm lo}$
is the lower bound for $\eta_c$. Multiply these input changes
by the same original action bound. The complete norm transfer
is below $0.030101$ and the rational square-root guards give
the stated actual action interval.

For arbitrary real scalar let $D=D_{s_0}$. Completing the
scalar square gives
$$
 \inf_{s\in\mathbb R}\|(T_P+sI)g_0\|^2
  =\|Dg_0\|^2-\frac{|\langle g_0,Dg_0\rangle|^2}{\|g_0\|^2}.
$$
The exact earlier signed quotient and $s_0=2.554199113$ give
$|\langle g_0,Dg_0\rangle|/\|g_0\|^2<1.0863$.
Thus the right side is above
$0.7045^2-(1.0863\cdot0.1886)^2>0.674^2$.
### Projected action at the two parameter endpoints

The actual projected action has the sharper bound
$\|(I-P_0)D_{s_0}g_0\|<0.6688$.
To obtain it, take $\eta_c$ at its upper endpoint and evaluate
the same model separately at the two endpoints of $\Lambda$.
Each endpoint model keeps the original carrier and coefficient
errors, and no $\Lambda$ or prefactor transfer is needed.
The guards give unprojected norm below $0.75086$ at both endpoints.
The previously proved proxy norm interval covers the whole
independently varied $\eta_c,\Lambda$ box. In particular each
endpoint input has $\|g_i\|>0.1875$ and
$\|h_i\|<0.103$ by the upper bound for
$\eta_c\sqrt{1+\Lambda^2}$.
The plane identity gives $\|P_0D_{s_0}g_i\|>0.1875^2/0.103$.
Pythagoras thus gives squared projected norm below
$0.75086^2-(0.1875^2/0.103)^2$ using the actual directed
upper endpoints in the guards. This is below $0.6688^2$
at both endpoints. The norm of this linear action on the
intermediate $\Lambda$ is bounded by convexity. Finally
the true prefactor is at most the chosen upper endpoint.
The actual $\Pi_H$ kills $P_0$ and is contractive, so the same
$0.6688$ bounds the first term in the residual decomposition.

The corrected residual on the actual $H$ remains open.
A bound for that residual must include the combined action
after projecting, retaining the exact inverse domains and full
signed radius-four source. The original arithmetic tests retain
their compact $C^2$ admissibility and gamma condition, and the
global pole and source returns remain open.

### Exact rational guards for the signed action

Append this block to the original physical approximation
checker and its listed dependencies. It uses the original
carrier and signed translate intervals already present there.

```python
# Raw dispersion for the signed physical collar approximation.
from math import gcd

grid = 10**16
origin = (0,0)
left_boundary = (-1,1,1)
right_boundary = (1,1,1)
t0 = 24-budget-gamma_center
alpha_fixed = sum(carrier)/2
omega_fixed = sum(neighbor)/2
difference_fixed = (alpha_fixed-omega_fixed,)*2
frequency_radius = max(carrier[1]-carrier[0],neighbor[1]-neighbor[0])/2


def interval_on_grid(x):
    return (x[0]*grid//1, -(-x[1]*grid//1))

def frozen(x):
    return round((x[0]+x[1])*grid/2)

def freeze_error(x,v):
    return max(abs(a-F(v,grid)) for a in x)

def gadd(a,b):
    return a[0]+b[0],a[1]+b[1]

def gsub(a,b):
    return a[0]-b[1],a[1]-b[0]

def gneg(a):
    return -a[1],-a[0]

def gmul(a,b):
    p=(a[0]*b[0],a[0]*b[1],a[1]*b[0],a[1]*b[1])
    return min(p)//grid, -(-max(p)//grid)

def gpoint(v):
    return (v,v)

def phase_grid(x):
    return tuple(map(interval_on_grid,phase_trig(x)))

def real_point_cos_sin(log_n, frequency):
    return phase_trig(multiply(frequency,log_n))

cut_rows=[]
shift_rows=[]
rot_error=F(0)
for p in range(2,2981):
    if p==3 or any(p%j==0 for j in range(2,isqrt(p)+1)):
        continue
    n=p
    log_p=log_bounds(p)
    while n<=2980:
        log_n=log_bounds(n)
        if log_n[1]<4:
            cut_rows.append(((1,1,n),subtract(four,log_n)))
        else:
            assert 4<log_n[0]
            cut_rows.append(((-1,n,1),subtract(log_n,four)))
        root=isqrt(n*source_grid**2)
        half_weight=scale(1 if n%3==1 else -1,(log_p[0]*source_grid/(root+1),log_p[1]*source_grid/root))
        w_phases=tuple(multiply(half_weight,pair) for f0 in (carrier,neighbor)
                       for pair in real_point_cos_sin(log_n,f0))
        frozen_phase=tuple(frozen(x) for x in w_phases)
        errors=[freeze_error(x,v) for x,v in zip(w_phases,frozen_phase)]
        rot_error+=2*max(errors[0]+errors[1],errors[2]+errors[3])
        c_d,s_d=phase_grid(multiply(difference_fixed,log_n))
        lag=interval_on_grid(log_n)
        shift_rows.append((n,lag,c_d,s_d,frozen_phase))
        a,b,c,d=frozen_phase
        shift_rows.append((-n,gneg(lag),c_d,gneg(s_d),(a,-b,c,-d)))
        n*=p
assert len(cut_rows)==458 and len(shift_rows)==916
shift_rows.append((0,origin,gpoint(grid),origin,(frozen((t0,t0)),0,frozen((t0,t0)),0)))
assert F(shift_rows[-1][-1][0],grid)==t0
cut_rows.sort(key=lambda row:row[1][0])
assert [value for _,value in cut_rows]==[event[0] for event in shift_events]
positive=[((0,1,1),zero)]+cut_rows+[(right_boundary,four)]
positive=[(key,interval_on_grid(value),*phase_grid(multiply(difference_fixed,value))) for key,value in positive]
points=[((-k,b,a),gneg(x),c,gneg(s)) for ((k,a,b),x,c,s) in reversed(positive[1:])]+positive
assert len(points)==919
inv=interval_on_grid(divide_positive((1,1),difference_fixed))

def frozen_amplitudes(lam,eta):
    col_y=divide_positive((1,1),norm_orth)
    col_u=subtract(scale(-1,multiply(gram_overlap,col_y)),(lam,lam))
    rem_u=subtract(prime_mixed_orth,scale(lam,mean))
    rem_v=subtract(prime_diag_orth,scale(lam,prime_mixed_orth))
    coeff_u=divide_positive(col_u,s_norm)
    coeff_y=scale(F(1,2),col_y)
    off_u=divide_positive(subtract(multiply(multiply(gram_overlap,col_y),rem_v),rem_u),s_norm)
    off_y=scale(F(-1,2),multiply(col_y,rem_v))
    out=[]
    epsilon=F(0)
    for _,_,_,state in cell_data:
        a=add(multiply(coeff_u,state[0]),off_u)
        b=multiply(coeff_u,state[1])
        c=add(multiply(coeff_y,state[2]),off_y)
        d=multiply(coeff_y,state[3])
        interval=tuple(scale(eta,x) for x in (b,scale(-1,a),d,scale(-1,c)))
        values=tuple(frozen(x) for x in interval)
        epsilon=max(epsilon,sum(freeze_error(x,v) for x,v in zip(interval,values)))
        out.append(values)
    actual_amplitude_max=max(sum(map(abs,row)) for row in out)
    assert actual_amplitude_max<=F(".35")*grid
    return [(-a,b,-c,d) for a,b,c,d in reversed(out)]+out+[(0,0,0,0)],epsilon,F(actual_amplitude_max,grid)

def rotate_coeff(amplitude,weighted_rotation):
    a,b,c,d=amplitude
    e,f,g,h=weighted_rotation
    return (a*e-b*f)//grid,(a*f+b*e)//grid,(c*g-d*h)//grid,(c*h+d*g)//grid

def sorted_events(amplitudes):
    result=[]
    initial=[0,0,0,0]
    ties=0
    for n,lag,lag_c,lag_s,weighted_rotation in shift_rows:
        previous=(0,0,0,0)
        first=0
        initial_weighted=(0,0,0,0)
        for j,((k,num,den),x,cosine,sine) in enumerate(points):
            key_a= num*max(1,-n)
            key_b= den*max(1,n)
            bounds=gsub(x,lag)
            if bounds[1] < -4*grid or (k==-1 and key_a==key_b):
                initial_weighted=rotate_coeff(amplitudes[j],weighted_rotation)
                first=j+1
                if k==-1 and key_a==key_b: ties+=1
                continue
            assert bounds[0]>-4*grid
            break
        initial=[x+y for x,y in zip(initial,initial_weighted)]
        previous=initial_weighted
        for j in range(first,len(points)):
            (k,num,den),x,cosine,sine=points[j]
            key_a=num*max(1,-n)
            key_b=den*max(1,n)
            bounds=gsub(x,lag)
            if bounds[0]>4*grid or (k==1 and key_a==key_b):
                break
            assert -4*grid<bounds[0]<=bounds[1]<4*grid
            q=gcd(key_a,key_b)
            key=(k,key_a//q,key_b//q)
            c=gadd(gmul(cosine,lag_c),gmul(sine,lag_s))
            s=gsub(gmul(sine,lag_c),gmul(cosine,lag_s))
            next_weighted=rotate_coeff(amplitudes[j],weighted_rotation)
            result.append((bounds,key,gmul(inv,s),gmul(inv,c),tuple(a-b for a,b in zip(next_weighted,previous))))
            previous=next_weighted
    result.sort(key=lambda rec:(rec[0][0],rec[1]))
    key,time,co,si=points[-1]
    result.append((time,key,gmul(inv,si),gmul(inv,co),(0,0,0,0)))
    return result,initial,ties

def energy_of_model(lam,eta):
    amplitudes,coeff_error,amp_max=frozen_amplitudes(lam,eta)
    events,current,left_ties=sorted_events(amplitudes)
    key_old,x_old,c,s=points[0]
    sin_old,cos_old=gmul(inv,s),gmul(inv,c)
    energy=origin
    fast_bound=0
    count=0
    for x,key,sin,cos,jumps in events:
        if key!=key_old:
            assert x_old[1]<x[0], (x_old,x,key_old,key)
            a,b,c,d=current
            mass=a*a+b*b+c*c+d*d
            halfmass=(mass//(2*grid),-(-mass//(2*grid)))
            re,im=a*c+b*d,b*c-a*d
            re,im=(re//grid,-(-re//grid)),(im//grid,-(-im//grid))
            term=gadd(gmul(halfmass,gsub(x,x_old)),
                      gadd(gmul(re,gsub(sin,sin_old)),gmul(im,gsub(cos,cos_old))))
            energy=gadd(energy,term)
            fast_bound+=-(-mass//grid)
            count+=1
            key_old,x_old,sin_old,cos_old=key,x,sin,cos
        current=[a+b for a,b in zip(current,jumps)]
    fast=F(fast_bound,grid*3806000000)
    assert F(3806000000)<neighbor[0]
    approximation_error=3*(amp_max*rot_error + F(4*len(shift_rows),grid))
    energy_interval=F(energy[0],grid)-fast,F(energy[1],grid)+fast
    direction_error=(F(577531,10000)+abs(t0))*3*(coeff_error+4*amp_max*frequency_radius)+approximation_error
    return energy_interval,direction_error,count,len(events),left_ties,fast

eta_mid=sum(proxy_eta)/2
actual_transfer=eta_mid*F('2.45')*proxy_radius+max(abs(eta_mid-v) for v in proxy_eta)*proxy_norm[1]/proxy_eta[0]
energy,model_error,cells,events,left_ties,fast=energy_of_model(proxy_mid,eta_mid)
l2_error=model_error+(F(577531,10000)+abs(t0))*actual_transfer
assert (cells,events,left_ties)==(212182,215512,459)
assert F(".53969")<energy[0]<=energy[1]<F(".53973")
assert fast<F(".00001549") and l2_error<F(".030101")
lo,hi=sqrt_interval(energy)
assert F(".7045")<lo-l2_error<=hi+l2_error<F(".7648")
assert 24*F(".028")<F(".7045")
assert F(".1875")**2/F(".103")>F(".3413")
print("PASS raw signed dispersion in (.7045,.7648), with 459 exact left-boundary ties")

# Optimize over every real scalar addition, using the signed quotient.
assert F('-2.651')+t0 > -F('1.0863')
assert F('-1.468')+t0 < F('1.0863')
assert F('.7045')**2-(F('1.0863')*F('.1886'))**2 > F('.674')**2
assert F('.674') > 24*F('.028')
assert F('.7648')**2-F('.3413')**2 < F('.685')**2
print("PASS every raw scalar shift exceeds .674 and projected action at s is below .685")

# At the two Lambda endpoints there is no Lambda transfer charge.
assert proxy_norm[0] > F('.1875')
assert proxy_eta[1]**2*(proxy_lambda[1]**2+1) < F('.103')**2
plane_lower = F('.1875')**2/F('.103')
largest_raw = F(0)
for lam in proxy_lambda:
    ep_energy, ep_error, ep_cells, ep_events, ep_ties, ep_fast = energy_of_model(lam, proxy_eta[1])
    assert (ep_cells, ep_events, ep_ties) == (212182, 215512, 459)
    assert ep_energy[0] > 0
    largest_raw = max(largest_raw, sqrt_interval(ep_energy)[1]+ep_error)
assert largest_raw < F('.75086')
assert largest_raw**2-plane_lower**2 < F('.6688')**2
print("PASS projected signed dispersion <.6688 from the exact endpoints")
```

## Separated jumps bound the full gamma and mask action on the proxy

2026-11-15, grwtsk contributors, AI-assisted. Written analytic proof
with exact rational checks. Lean elaboration, fresh kernel replay
and transitive axiom audit are NOT_RUN. Independent review is UNASSESSED.

For the same signed physical proxy $g_0=-(I-P_0)T_Ph$ of the actual
collar direction, the full gamma and mask comparison satisfies
$$
 \|G_{\rm phys}g_0\|<0.000174,\qquad
 |\langle g_0,G_{\rm phys}g_0\rangle|<0.00003282.
$$
Here $G_{\rm phys}=R-(A_0I-T_P)$, including the original filters,
the residual set and its paid pair. This is a bound on the whole
physical action on $g_0$. The corresponding action on $g_*-g_0$
requires a separate estimate.

### From the exact signed cells to an angular norm

Write the real proxy as the real part of
$a(x)e^{i\alpha x}+b(x)e^{i\omega x}$ with the same two carriers
and piecewise constant coefficients as in the directed action.
Extend both coefficients by zero off $[-4,4]$. Let $x_j$ be the
sorted cell boundaries and let $d_j(a)$ and $d_j(b)$ be the
right-minus-left coefficient jumps with these extensions.
The 919 boundaries include the endpoints, zero and the reflected
signed prime-power boundaries. The exact guards give
$$
 x_{j+1}-x_j> 0.000014,\quad
 \left(\sum_j (|d_j(a)|^2+|d_j(b)|^2)\right)^{1/2}<0.468,
 \quad |a(x)|+|b(x)|<0.351
$$
on the cells. For the jump guard take the rounded cell models at
both $\Lambda$ endpoints and upper $\eta_c$. Sum squared
differences of the four integer cell coefficients with exterior
values zero, then take a directed square root. If the coefficient
sum of absolute errors is bounded by $e_c$, a single jump error
in Euclidean norm costs at most $2e_c$. The total jump vector costs
at most $2\sqrt{919}\,e_c$. Both the jump norm and the pointwise
coefficient norm are convex in $\Lambda$ and scale with $\eta_c$.
The exact directed cells retain all 458 signed rows used to
construct $a,b$. Their phases and negative weights are included
before taking differences.

For $\rho=\alpha$ or $\omega$, let $c=a$ or $b$ respectively, and
consider a single complex carrier with coefficient $c$.
Integration on each physical cell gives its Fourier value
$$
 \widehat{c e^{i\rho x}}(\nu)
 =\frac{\sum_j d_j(c)e^{-i(\nu-\rho)x_j}}{i(\nu-\rho)}
$$
away from the carrier. The same formula applies to the conjugate
carrier with frequency $-\rho$ and conjugate coefficients.
The oscillatory numerator $S(\nu)$ obeys, for any finite interval $I$,
$$
 \int_I |S(\nu)|^2\,\frac{d\nu}{2\pi}
 \le\left(\frac{|I|}{2\pi}+\frac{16}{\pi(0.000014)}\right)
       \sum_j|d_j(c)|^2 .
$$
The diagonal integral is $|I|/(2\pi)$. An off-diagonal integral has
absolute value at most $1/(\pi|x_j-x_k|)$. For a fixed row, the
ordered distances are at least $|j-k|(0.000014)$, and the sum
of reciprocals up to 918 is less than 8. The resulting row bound
and $2|d_j(c)d_k(c)|\le |d_j(c)|^2+|d_k(c)|^2$ give the estimate.
Carrier phases have modulus one and leave this bound unchanged.

### Low, pass-band, paid-pair and high contributions

Set $H_{\rm safe}=10^8/3-1$. On $|\nu|<H_{\rm safe}$, use
the interval estimate and $|\nu\mp\rho|\ge\rho-H_{\rm safe}$.
Combine all four complex carriers, each with the factor $1/2$
from the real part. The sum of the two jump norms for $a$ and $b$
is at most $\sqrt2(0.468)$. Since each carrier is above
$3.8\cdot10^9$, the angular norm of the low part multiplied by the
full comparison multiplier of modulus below $251$ is below
$0.000147$.

On the retained pass band $H_{\rm safe}\le|\nu|\le3.2\cdot10^{25}$
with the actual paid pair removed, the earlier bound for either
carrier is $|G(\nu)|<|\log(|\nu|/\rho)|+1.4\cdot10^{-7}$.
For the logarithmic part of each complex carrier use
$$
 \frac{|\log(|\nu|/\rho)|}{|\nu\mp\rho|}
 \le L_\rho(|\nu|),\qquad
 L_\rho(x)=\frac{\log x-\log\rho}{x-\rho}
          =\int_0^1\frac{dt}{(1-t)\rho+tx}.
$$
The divided difference has its continuous value at $x=\rho$.
It is positive and decreasing in each positive endpoint. For the
upper bound on the weighted square norm, enlarge the integration
set to $|\nu|\ge H_{\rm safe}$ with weight $L_\rho(|\nu|)^2$.
Each nonempty positive superlevel set of this restricted weight
is the union of two bounded intervals, up to endpoints. Integrate
the interval bound over the levels by nonnegative integration.
The diagonal term contributes at most
$\int_0^\infty L_\rho(x)^2\,dx/\pi<8/(\pi\rho)$ using the preceding
log integral. The off-diagonal term contributes at most
$32 L_\rho(H_{\rm safe})^2/(\pi(0.000014))$.
By decreasingness and $\log((3.8\cdot10^9)/(3.3\cdot10^7))<5$,
$L_\rho(H_{\rm safe})<5/(3.8\cdot10^9-3.3\cdot10^7)$.
The square root of the combined coefficient is less than
$2.60\cdot10^{-5}$. Add the constant part at cost
$1.4\cdot10^{-7}\cdot6(0.351)$ by Plancherel on the four components.
The pass-band contribution is then below $0.000018$.

The earlier pointwise translate estimate on the actual paid pair
costs $251\cdot24.4\cdot1.01\cdot2.53/(3.8\cdot10^9-1.86\cdot10^9)$.
Above $3.2\cdot10^{25}$ use the previously proved full angular tail
at $10^{25}$, giving cost $251\cdot9\cdot10^{-12}$. Add the four
contributions and restrict back to the physical interval, a contraction.
The quadratic bound follows from $\|g_0\|<0.1886$. Both angular signs
and the normalization $d\nu/(2\pi)$ apply throughout. The jump proof
does not give smooth admissibility of $g_0$ for the original arithmetic
form, which still requires the original real odd compact $C^2$ tests.

### Exact rational guards for separation and the weighted norm

Append to the exact directed signed action checker above.

~~~python
# Append to the exact action checker, with the same directed cells.
jump_norm = F('.468')
coefficient_cap = F('.351')
for lam in proxy_lambda:
    amplitudes, coeff_error, amp_max = frozen_amplitudes(lam, proxy_eta[1])
    assert len(amplitudes) == len(points) == 919 and amplitudes[-1] == (0,0,0,0)
    previous = (0,0,0,0)
    integer_energy = 0
    for current in amplitudes:
        integer_energy += sum((x-y)**2 for x,y in zip(current,previous))
        previous = current
    energy = F(integer_energy,grid**2)
    assert 31**2 > len(points)
    assert sqrt_interval((energy,energy))[1]+2*31*coeff_error < jump_norm
    assert amp_max+coeff_error < coefficient_cap

separation = F('.000014')
assert all(F(y[1][0]-x[1][1],grid)>separation
           for x,y in zip(points,points[1:]))
assert sum(F(1,j) for j in range(1,len(points))) < 8
angular_pi = F('3.14')
assert angular_pi < pi_lower
off_diagonal = 16/(angular_pi*separation)
Hsafe = F(10**8,3)-1
rho_lower = F('3.8e9')
low_frame_squared = Hsafe/angular_pi+off_diagonal
assert low_frame_squared < 3315**2
assert 2 < F('1.415')**2
low_input = F('1.415')*jump_norm*3315/(rho_lower-Hsafe)
assert 251*low_input < F('.000147')

# Two angular intervals per level of the decreasing log divided difference.
minimum_x = 33000000
assert minimum_x < Hsafe
assert log_bounds(int(rho_lower))[1]-log_bounds(minimum_x)[0] < 5
log_sup = 5/(rho_lower-minimum_x)
log_frame_squared = 8/(angular_pi*rho_lower)+2*off_diagonal*log_sup**2
assert log_frame_squared < F('2.60e-5')**2
log_band = F('1.415')*jump_norm*F('2.60e-5') + F('1.4e-7')*6*coefficient_cap
assert log_band < F('.000018')

paid = 251*F('24.4')*F('1.01')*F('2.53')/(rho_lower-F('1.86e9'))
high = 251*F('9e-12')
assert F('.000147')+F('.000018')+paid+high < F('.000174')
print("PASS exact jump separation and full gamma-mask proxy action <.000174")
~~~

## The parallel pivot term forces a negative cross contribution

2026-11-15, grwtsk contributors, AI-assisted. Written analytic proof
with exact rational checks. Lean elaboration, fresh kernel replay
and transitive axiom audit are NOT_RUN. Independent review is UNASSESSED.

Use the same $H$, $g_*$, $s_0=24-B-A_0$, $D_{s_0}$, and
$z_p=\Pi_H(I-P_0)D_{s_0}g_0$. In the exact equation
$24r=z_p+\Xi$ from the projected signed action, retain the two actual
pivot coordinates and combine the part of their inverse along $g_*$
with the transported ideal collar. Set $d_v=\langle v,Av\rangle$,
$m=Fv$, $k=A^{-1}e$, $t=\langle e,A^{-1}e\rangle$, and
$\varepsilon_7=0.000012$. The vectors $A^{1/2}k$ and $A^{1/2}v$
are orthogonal since $\langle k,Av\rangle=\langle e,v\rangle=0$.
Their squared norms are $t$ and $d_v$, respectively, and they
span the actual two-dimensional pivot space. Resolve the identity
in this basis and conjugate by $A^{-1/2}$. This gives
$$
 FA^{-1}F^*=\frac{g_*\otimes g_*}{t}+\frac{m\otimes m}{d_v},
 \qquad
 FA^{-1}F^*-\sigma g_*\otimes g_*
 =\frac{g_*\otimes g_*}{t(1+\rho t)}+\frac{m\otimes m}{d_v}.
$$
The second identity uses the actual ideal collar coefficient
$\sigma=\rho/(1+\rho t)$ from the joint collar transport, where
$\rho$ is the size of the ideal collar on the $e$ pivot.
The actual remaining collar operator is
$P_{\rm col}=\varepsilon_7 I_H-(\Delta_7-\sigma g_*\otimes g_*)$.
The transport error gives $0\le P_{\rm col}\le 2\varepsilon_7 I_H$.

With the inner product conjugate-linear in its first argument, put
$$
\begin{split}
 p&=\frac{\|g_*\|^2}{t(1+\rho t)}\,g_*,\\
 W&=\Pi_H[D_{s_0}(g_*-g_0)-G_{\rm phys}g_*+D_5g_*]
       +\frac{\langle m,g_*\rangle}{d_v}\,m+P_{\rm col}g_* .
\end{split}
$$
Thus $\Xi=p+W$ exactly. The last column in $W$ has norm below
$0.000004673$. In the gamma term the separated-cut proof gives
$\|\Pi_HG_{\rm phys}g_0\|<0.000174$ with the original mask.
This leaves the term on $g_*-g_0$ and the actual old corrections
in the same combined vector.

### Directed scalar pairing on the merged cells

The true signed physical pairing has the strict enclosure
$$
 0.01644<\operatorname{Re}\langle g_0,D_{s_0}g_0\rangle<0.01873.
$$
Use the same midpoint model as in the directed action calculation,
and integrate the product of its signed output and input on each
of the same 212182 merged cells. The input cell at each boundary
is changed using its exact log-product key. If the output complex
amplitudes are $a,b$ and the input amplitudes are $A_c,B_c$,
the slow part of the product is
$$
 \tfrac12\operatorname{Re}\bigl(
  a\overline{A_c}+b\overline{B_c}+
  (a\overline{B_c}+\bar b A_c)e^{i(\alpha_m-\omega_m)x}
 \bigr).
$$
The fast part has frequencies $2\alpha_m$, $\alpha_m+\omega_m$,
and $2\omega_m$. If $E_o=|a|^2+|b|^2$ and
$E_i=|A_c|^2+|B_c|^2$, its integral on each cell costs at most
$(E_o+E_i)/(2\omega_m)$. Indeed the sum of unsigned complex
products is at most $(|a|+|b|)(|A_c|+|B_c|)\le E_o+E_i$,
and the integral of each exponential is at most $1/\omega_m$
before the real-part product factor $1/2$.
Use the same stored directed primitives for the constant and
slow terms, with all boundary ties resolved exactly.

Let $d_i$ be the sum of the directed model input error and
the midpoint-to-true-input transfer. Let $d_o$ be the rotation
and rounding cost for the model output relative to the actual
signed action on the midpoint model input. The transfer in
the scalar pairing is at most
$$
 2(0.7648)d_i+(57.7531+|s_0|)d_i^2+(0.1886+d_i)d_o .
$$
For the first two terms expand the difference of the two quadratic
forms around the actual $g_0$, using self-adjointness and the proved
$\|D_{s_0}g_0\|$ bound. The last term uses the norm of the
midpoint input. This avoids multiplying the leading scalar error
by the global signed operator norm.

Since both $g_0$ and $g_*$ lie in $P_0^\perp$, the difference
between the true scalar above and $\operatorname{Re}\langle z_p,g_*\rangle$
is at most $0.6688\cdot0.006081$. Here use the projection bound
on $(I-P_0)D_{s_0}g_0$ before the final projection onto $H$.
The directed guards with the full scalar interval give
$$
 0.01238<\operatorname{Re}\langle z_p,g_*\rangle<0.02280,
 \qquad
 \|p\|>0.05751,\qquad
 2\operatorname{Re}\langle z_p,p\rangle>0.00785.
$$

### The necessary signed estimate

The previous sufficient test for the true norm was
$2\operatorname{Re}\langle z_p,\Xi\rangle+\|\Xi\|^2<0.00429$.
Its exact left side now expands to
$$
 2\operatorname{Re}\langle z_p,p\rangle+\|p\|^2+
 2\operatorname{Re}\langle z_p+p,W\rangle+\|W\|^2 .
$$
The first two terms exceed $0.01115$. A necessary condition
for passing that test is therefore
$$
 \operatorname{Re}\langle z_p+p,W\rangle<-0.00343 .
$$
The strict sign is a source-local obstruction to discarding this
cross term or replacing it by a nonnegative norm allowance in that
test. The expansion leaves open both the actual norm test on $H$
and the separate coercivity needed for its inverse consumer.
The necessary condition concerns this particular sufficient test.
A different test can use the exact remaining budget
$0.672^2-\|z_p+p\|^2$ and the left side
$2\operatorname{Re}\langle z_p+p,W\rangle+\|W\|^2$.

The source return still uses the true seven inverses, the entire
signed radius-four arithmetic inventory, the actual gamma-density
and mask, the entire real odd compact $C^2$ test class, and the
independent all-$H$ coercive estimate if this inverse route is used.

### Exact rational guards for the scalar and the obstruction

Append to the exact directed signed action checker above.

~~~python
# First scalar cross for the actual two-pivot/collar parallel contribution.
# Uses the existing fixed-grid model and the published directed transfer.
def scalar_of_model(lam,eta,reference_amplitudes=None):
    amplitudes,coeff_error,amp_max=frozen_amplitudes(lam,eta)
    events,current,left_ties=sorted_events(amplitudes)
    source_index={p[0]:j for j,p in enumerate(points)}
    assert len(source_index)==919
    key_old,x_old,c,s=points[0]
    sin_old,cos_old=gmul(inv,s),gmul(inv,c)
    if reference_amplitudes is None:
        reference_amplitudes=amplitudes
    reference=reference_amplitudes[0]
    scalar=origin
    fast_bound=0
    count=0
    for x,key,sin,cos,jumps in events:
        if key!=key_old:
            assert x_old[1]<x[0]
            a,b,c,d=current
            A,B,C,D=reference
            real_const=a*A+b*B+c*C+d*D
            real_slow=a*C+b*D+c*A+d*B
            imag_slow=b*C-a*D+c*B-d*A
            covariates=[(raw//(2*grid),-(-raw//(2*grid)))
                        for raw in (real_const,real_slow,imag_slow)]
            primitive=(gsub(x,x_old),gsub(sin,sin_old),gsub(cos,cos_old))
            components=[gmul(kp,dt) for kp,dt in zip(covariates,primitive)]
            scalar=gadd(scalar,gadd(components[0],gadd(*components[1:])))
            fast_bound += -(-sum(j*j for j in (*current,*reference))//grid)
            count+=1
            key_old,x_old,sin_old,cos_old=key,x,sin,cos
            if key in source_index:
                reference=reference_amplitudes[source_index[key]]
        current=[a+b for a,b in zip(current,jumps)]
    assert (count,len(events),left_ties)==(212182,215512,459)
    fast=F(fast_bound,2*grid*3806000000)
    input_model_error=3*(coeff_error+4*amp_max*frequency_radius)
    output_model_error=3*(amp_max*rot_error+F(4*len(shift_rows),grid))
    return (F(scalar[0],grid)-fast,F(scalar[1],grid)+fast),input_model_error,output_model_error,fast

scalar_model,input_model_error,output_model_error,scalar_fast=scalar_of_model(proxy_mid,eta_mid)
input_error=input_model_error+actual_transfer
scalar_price=(2*F(".7648")*input_error+(F(577531,10000)+abs(t0))*input_error**2
              +(F(".1886")+input_error)*output_model_error)
scalar_true=(scalar_model[0]-scalar_price,scalar_model[1]+scalar_price)
assert F(".0175788")<scalar_model[0]<=scalar_model[1]<F(".0175959")
assert scalar_fast<F(".00000849") and scalar_price<F(".00113131")
assert F(".0164475")<scalar_true[0]<=scalar_true[1]<F(".0187272")
gstar_err=F(".006081")
projection_err=F(".6688")*gstar_err
dot_g_bounds=(scalar_true[0]-projection_err,scalar_true[1]+projection_err)
assert F(".01238")<dot_g_bounds[0]<=dot_g_bounds[1]<F(".02280")
t_lo,t_hi=map(F,(".10245",".10247"))
rho_lo,rho_hi=map(F,(".12449194",".12449216"))
chi_lower=1/(t_hi*(1+rho_hi*t_hi))
chi_upper=1/(t_lo*(1+rho_lo*t_lo))
gstar_lo,gstar_hi=map(F,(".1814",".1947"))
par_coeff=(chi_lower*gstar_lo**2,chi_upper*gstar_hi**2)
par_norm=(par_coeff[0]*gstar_lo,par_coeff[1]*gstar_hi)
par_cross=(2*par_coeff[0]*dot_g_bounds[0],2*par_coeff[1]*dot_g_bounds[1])
assert F(".31708")<par_coeff[0]<=par_coeff[1]<F(".36536")
assert F(".057518")<par_norm[0]<=par_norm[1]<F(".071135")
assert F(".007851")<par_cross[0]<=par_cross[1]<F(".016656")
assert (F(".00429")-par_cross[0]-par_norm[0]**2)/2< -F(".00343")
print("PASS exact positive collar-plane parallel cross, necessary remaining covariance < -.00343")
~~~

## The neighboring pivot and high inverses in the required cross term

2026-11-15, grwtsk contributors, AI-assisted. Written analytic proof
with exact rational checks. Lean elaboration, fresh kernel replay
and transitive axiom audit are NOT_RUN. Independent review is UNASSESSED.

Use the preceding exact split $24r=z_p+p+W$, and put $\bar z=z_p+p$.
Keep $p=\kappa g_*$, where $\kappa=\|g_*\|^2/[t(1+\rho t)]$.
In this section $D_P,D_Z,D_{L_0},D_Y,D_{\mathcal V}$ denote the five
positive inverse corrections making up $D_5$ on $G_2$, each with its
actual compression. Then
$$
\begin{gathered}
 \operatorname{Re}\left\langle \bar z,\frac{m\otimes m}{d_v}g_*\right\rangle
     >0.0000068,\qquad
 \operatorname{Re}\langle \bar z,(D_Y+D_{\mathcal V})g_*\rangle
     >-1.11\cdot10^{-7},\\
 w_{\rm low}=\Pi_H\big[(24I-T)(g_*-g_0)+(D_P+D_Z)g_*\big].
\end{gathered}
$$
A necessary condition for the strict $0.00429$ test in the preceding
section is $\operatorname{Re}\langle \bar z,w_{\rm low}\rangle<-0.00331$.
Here $T=BI+R$ is the full original bounded form with the paid pair and
its original gamma and signed rows.

### Signed pairing for the actual neighboring pivot

Let $f_0=-(I-P_0)T_Pv_0$. This is the earlier two-carrier
centered column at $\Lambda=0$ with orientation opposite to $q_0$,
where $q_\Lambda=(I-P_0)T_P(v_0-\Lambda u)$.
The exact guards on the 459 original positive cells give
$$
 -0.031764<\langle f_0,g_0\rangle<-0.013621,\qquad
 \|f_0\|<1.509 .
$$
Use the original cosine-sine coefficient intervals
$(a,b,c,d)$ and $(A,B,C,D)$ on each cell for two inputs,
in sine, cosine, sine, cosine order. By oddness, the integral on the full interval is twice the
positive-side one. After product to sum, the doubled constant
coefficient is $aA+bB+cC+dD$, and the slow cosine and sine
coefficients are $aC+bD+cA+dB$ and $aD-bC-cB+dA$,
respectively. Each discarded primitive has frequency at least
$2\omega$. The total fast allowance per cell is bounded by the
product of the two sums of absolute coefficients divided by $\omega$.

For the second pairing use the exact signed translate sweep with
the $f_0$ reference. The signed output keeps the 212182 merged
cells and all 459 exact left ties. The same mixed slow integral
as in the preceding scalar proof applies with the reference
coefficients of $f_0$. At each endpoint of the $\Lambda$ interval,
take $\eta_c$ at its midpoint. The fixed-grid reference is made
at a twentieth of its scale and then rescaled, including its
errors, which gives $L^2$ reference error below $0.000385$.
The signed output model has the previous input, rotation and
rounding prices. The true signed endpoint output norm is below
$0.75086$ at the upper prefactor and hence at its midpoint by
positive scaling. Its paired transfer costs at most
$$
 0.75086\,d_f+(1.509+d_f)
             \big[(57.7531+|s_0|)d_i+d_o\big],
$$
where $d_f$ is the error on $f_0$ and $d_i,d_o$ are the model
input and rotation/rounding prices on the signed output.
The directed transfer is below $0.02349$ and the fast allowance
below $0.000143$. Linearity in $\Lambda$ and the exact positive
$\eta_c$ scaling give
$$
 -0.130025<\operatorname{Re}\langle D_{s_0}g_0,f_0\rangle<-0.0825769.
$$

Now $m=Fv=\Pi_H C_2v$. The coefficient sums of $v$ on $z,z_y$
and of $v_0$ on $u,y$ are below $1.066$ by the original Gram
bounds. On $H$, the difference from $f_0$ is the projection of
$R(v-v_0)+G_{\rm phys}v_0-D_5v$. Its norm is below
$300(11d)+1.066(0.000247+0.055511)$ using the actual five
inverse action bounds and $d=1.6\cdot10^{-8}$.
For the old eliminated component of $f_0$ use the bound
$1.066(0.00075+0.000247)+26d(233)$, from the old cross to
$R$, the full comparison on $u,y$, and $\|P_1-P_0\|<26d$.
For the true pivot plane use $26d(1.509)$ since $f_0\perp P_0$.
The three components are orthogonal. In the directed guard
the actual bound on the five old inverse actions is used
before rounding, giving $\|m-f_0\|<0.05951$.
Both vectors are in $P_0^\perp$, so the exact transfer for
$\langle z_p,m\rangle$ uses
$\|(I-P_0)D_{s_0}g_0\|<0.6688$. We get
$$
 \operatorname{Re}\langle z_p,m\rangle<-0.04277 .
$$

For the pairing against $g_*$, use the same exact difference on
$H$. Pair each old inverse term with $g_*$ through its actual
input column. For example the first two terms cost
$$
 10\,\|PRv\|\|PRg_*\|+(25/2)\,\|Jv\|\|Jg_*\|.
$$
Use the previous sharpened $g_*$ column bounds before rounding,
and charge the $L_0,Y_0,\mathcal V$ terms with their actual
inverse factors. The local input bounds on $v$ carry factor
$1.066$ from $z,z_y$. The paired norm allowance for
$R(v-v_0)+G_{\rm phys}v_0$ is
$(300(11d)+1.066(0.000247))(0.1947)$.
The sum of all these paired errors is below $0.000635$.
Finally, replacing $g_*$ by $g_0$ against $f_0$ costs at most
$1.509(0.006081)$. This gives
$$
 \operatorname{Re}\langle m,g_*\rangle<-0.00380 .
$$
All inputs and operators in these two pairings preserve the real
physical carrier. Thus the scalars are real. Since $p=\kappa g_*$
with $\kappa>0$, we have $\langle \bar z,m\rangle<-0.04277$.
The exact denominator
$d_v=\gamma_v+\langle v,b_e\rangle^2/\beta$ lies below $23.81$.
Multiplying these two negative scalar bounds and using
$d_v>0$ gives the stated positive contribution. This is a
bound for the linear cross term. The full squared norm of $W$
still includes the mixed interactions of this vector.

### The high terms on the actual projected action

Use the bounded odd physical carrier and the exact radius-four
operator notation from the preceding sections. Put
$w=D_{s_0}g_0$ and $z_p=\Pi_Hw$, using $\Pi_H P_0=0$.
Let $D_{\mathrm{hi}}$ be the sum of the $Y_0$ and
$\mathcal V$ inverse corrections compressed to $H$.
The two original row maps act on $G_1$ and $G_2$,
respectively, and $H\subset G_2\subset G_1$. Thus for
$x,y\in H$ their contributions to the pairing are exactly
$$
 \langle x,D_{\mathrm{hi}} y\rangle
 =\langle J_Y x,A_Y^{-1}J_Y y\rangle+
   \langle J_{\mathcal V}x,A_{\mathcal V}^{-1}J_{\mathcal V}y\rangle .
$$
In particular $D_{\mathrm{hi}}\ge0$ with the actual physical
inverse costs $4$ and $1/12$ on the two target spaces.

#### Full angular tails

Write $L=10^{25}$ and
$\tau(f)=\|\mathbf1_{|\nu|\ge L}\widehat f\|_2$ in the original
angular measure. The proxy $g_0$ is a sum of compressed
translated normalized sines with absolute coefficient sum below
$24.4$. Translating each such piece once more and compressing
to the physical interval retains a sine phase restricted to one
interval. Its Fourier amplitude above $L$ stays below $2/|\nu|$.
The absolute sum of the original 916 signed translation weights
is below $211$, so the representation of $w$ has coefficient
sum below $24.4(211+|s_0|)$. Including both angular signs gives
$\tau(w)<1.861\cdot10^{-9}$. Use the already checked
$\|w\|<0.7648$ for its component norm bounds.

Set $S_b=W\oplus L_0\oplus Y_0\oplus\mathcal V$, with $W$ here the old physical space, using the
actual old orthogonal decomposition. The full angular norm
below $L$ on either $Y_0$ or $\mathcal V$ is below
$1.2\cdot10^{-11}$ per unit vector. For $W\oplus L_0$, the
published Chebyshev estimate applies to the full angular band
$|\nu|\le L$ since it proves its pointwise envelope for every
$|\nu|\le\Omega$ before restriction to the residual set.
Indeed $W\subset V_0^\perp$, and the $L_0$ vectors lie in
$Q\mathcal H$ and are orthogonal to $QV_0$, hence also to $V_0$.
Its full low-band norm is below $10^{-265}$ per unit vector.
Cauchy--Schwarz across these orthogonal inputs gives the norm
bound $1.70\cdot10^{-11}$ for angular restriction below $L$
on $S_b$. Testing against its unit vectors bounds
$$
 \|\Pi_{S_b}w\|\le \tau(w)+(1.70\cdot10^{-11})\|w\|.
$$

For the old low components $P\mathcal H$ and $U$ use the
old native sine tails. Their unit span has tail below
$1.22\cdot10^{-26}$ at $L$, by the amplitude
$6200(6\cdot10^7)/|\nu|^2$ and both angular signs. On $U$
apply the $10/9$ preimage norm and its relative $10^{-60}$
error. The resulting sum of their tail costs is at most
$$
 \left[(1+10/9)(1.22\cdot10^{-26})+(10/9)10^{-60}\right]\|w\|.
$$

The actual $e,v$ plane also has small high tails by its projected
sine definitions. For either raw carrier $u$ or $y$, begin with
tail below $3.6\cdot10^{-13}$. Subtract its $P,U$ components
using their norms below $d=1.6\cdot10^{-8}$ and the same
low native tail estimates. Its $W,L_0$ components each have
norm below $10^{-281}$ by the earlier evaluation at the
actual carrier. Its $Y_0,\mathcal V$ components have norm
below $7\cdot10^{-24}$ and $3\cdot10^{-38}$. These bounds
give the high tails for $z,z_y$. From $e=z/\|z\|$,
$\|z\|>1-d$, and $v=(z_y-g_a e)/n$ with
$|g_a|<0.071$, $n>0.998026$, the tails of $e,v$ are below
$3.61\cdot10^{-13}$ and $3.88\cdot10^{-13}$, respectively.
Since they are orthonormal, Cauchy--Schwarz bounds
$\tau(P_1w)<4.06\cdot10^{-13}$.
Subtract all the old eliminated components and $P_1w$ in the
actual formula for $\Pi_Hw$. The directed sum now gives
$$
 \tau(z_p)<3.736\cdot10^{-9}.
$$

#### The positive inverse square

The raw $R$ output on either high space when applied to $z_p$
has norm at most $300[\tau(z_p)+(1.2\cdot10^{-11})\|z_p\|]$.
This is the original masked angular pairing split at $L$.
Use $\|PRz_p\|<7.5\|z_p\|$ and
$\|Jz_p\|<3.705\|z_p\|$. The exact $Y_0$ cross bounds into
these two rows are $2\cdot10^{-6}/(1-3\delta)$ and
$(11/8)\,2\cdot10^{-6}/(1-3\delta)+741\cdot10^{-265}$,
respectively. For $\mathcal V$ use the original crosses
$2.3\cdot10^{-11}$, $7.2\cdot10^{-8}$ and $0.0017$
into $PR,J,J_Y$. Include the full $D_0$ row bound $10^{-515}$
for each high output. Applying the actual earlier inverse
costs in $C_0$ and $C_1$ gives
$$
 \|J_Yz_p\|<0.000187,\qquad
 \|J_{\mathcal V}z_p\|<0.0000047.
$$

Write $p=\kappa g_*$ as in the exact parallel split, with
$\kappa>0.31708$. For the lower bound relevant to the required
negative covariance, use positivity in the identity
$$
 \operatorname{Re}\langle z_p+p,D_{\mathrm{hi}}g_*\rangle
 =
 \kappa\left\langle g_*+\frac{z_p}{2\kappa},
       D_{\mathrm{hi}}\left(g_*+\frac{z_p}{2\kappa}\right)\right\rangle
 -\frac{\langle z_p,D_{\mathrm{hi}}z_p\rangle}{4\kappa}.
$$
The first term is nonnegative. The two original row bounds
give
$$
 \operatorname{Re}\langle z_p+p,D_{\mathrm{hi}}g_*\rangle
 >-\frac{4(0.000187)^2+(0.0000047)^2/12}{4(0.31708)}
 >-1.11\cdot10^{-7}.
$$
Thus the necessary covariance below $-0.00343$ implies that
after removing these two high terms the covariance must still
be below $-0.0034298$.

### The remaining low inverse and transfer estimate

The exact multiplier comparison gives $D_{s_0}=24I-T+G_{\rm phys}$.
In the remainder the two terms with $G_{\rm phys}$ combine exactly,
$$
 \Pi_H[D_{s_0}(g_*-g_0)-G_{\rm phys}g_*]
 =\Pi_H[(24I-T)(g_*-g_0)-G_{\rm phys}g_0].
$$
Use the exact equality before estimating either term. The full
$\|\bar z\|^2$ satisfies
$\|\bar z\|^2<0.6688^2+0.016656+0.071135^2<0.685^2$ by the
preceding directed parallel cross and parallel norm.
The maximum adverse costs from the gamma and mask on $g_0$,
the full collar error and the $L_0$ term are bounded by
$0.685(0.000174)$, $0.685(0.1947)(0.000024)$ and
$0.685(0.1947)10^{-515}$, respectively. Together with the
positive neighboring pivot and the one-sided high bound, the
necessary inequality $\operatorname{Re}\langle \bar z,W\rangle<-0.00343$
gives the claimed $\operatorname{Re}\langle \bar z,w_{\rm low}\rangle<-0.00331$.

There is an equivalent form using the genuine lift $E$ through
the five old inverse stages. Since $TEg_*=C_2g_*$ and
$Eg_*-g_*\in G_2^\perp$, we have
$$
 \Pi_H\big[(24I-T)(g_*-g_0)+D_5g_*\big]
 =\Pi_H(24I-T)(Eg_*-g_0).
$$
For a direct test of the low pairing, put $b=\Pi_H(24I-T)\bar z$.
The exact direction transfer is
$$
 g_*-g_0
  =\Pi_H[R(k-h)+G_{\rm phys}h-D_5k]-(I-\Pi_H)g_0
$$
because $g_*=\Pi_H C_2k$ and $\Pi_HP_0=0$.
In particular $(D_P+D_Z)g_*$ in $w_{\rm low}$ can be paired
with $\bar z$ on the same inverse domains as the contributions of
$-D_5k$ paired with $b$. These identities isolate the shared
actual low inverse entries. The signed estimate on this
combination and the complete squared norm of $W$ remain open.
The threshold is necessary for the particular $0.00429$ test,
with all-complement coercivity still a separate requirement for
the inverse criterion. The present bounded-carrier proofs retain
the original gamma-density and all signed rows, and the arithmetic
return still requires every admitted real odd compact $C^2$ test.

### Directed guards for the remaining budget

Append the following block to the earlier source guard sequence,
including the separated-jump and parallel-term checks. The
scalar sweep takes an optional explicit reference; its default is
the prior self-pairing. The last two blocks use exact rational
arithmetic and the already checked source bounds.

~~~python
from functools import reduce

def isum(xs):
    return reduce(add,xs,zero)

def column_coeff(lam):
    coeff_y = divide_positive((1,1), norm_orth)
    coeff_u = subtract(scale(-1, multiply(gram_overlap, coeff_y)), lam)
    removed_u = subtract(prime_mixed_orth, multiply(lam, mean))
    removed_v = subtract(prime_diag_orth, multiply(lam, prime_mixed_orth))
    alpha_scale = divide_positive(coeff_u, s_norm)
    omega_scale = scale(F(1,2), coeff_y)
    alpha_offset = divide_positive(
        subtract(multiply(multiply(gram_overlap, coeff_y), removed_v), removed_u), s_norm)
    omega_offset = scale(F(-1,2), multiply(coeff_y, removed_v))
    return [(outward(add(multiply(alpha_scale,state[0]), alpha_offset)),
             outward(multiply(alpha_scale,state[1])),
             outward(add(multiply(omega_scale,state[2]), omega_offset)),
             outward(multiply(omega_scale,state[3])))
             for _,_,_,state in cell_data]

def correlation(one,two):
    out=zero
    fast=F(0)
    for (step,coss,sinn,_),(a,b,c,d),(A,B,C,D) in zip(cell_data,one,two):
        constant=isum(multiply(x,y) for x,y in zip((a,b,c,d),(A,B,C,D)))
        slow_cos=isum([multiply(a,C),multiply(b,D),multiply(c,A),multiply(d,B)])
        slow_sin=isum([multiply(a,D),scale(-1,multiply(b,C)),
                       scale(-1,multiply(c,B)),multiply(d,A)])
        out=add(out,outward(isum([multiply(constant,step),multiply(slow_cos,coss),multiply(slow_sin,sinn)])))
        fast+=(sum(max(map(abs,q)) for q in (a,b,c,d))*sum(max(map(abs,q)) for q in (A,B,C,D)))/neighbor[0]
    return add(out,(-fast,fast)),fast

directs=[tuple(scale(-1,x) for x in c) for c in column_coeff(zero)]
gs=[tuple(outward(multiply(proxy_eta,x)) for x in c) for c in column_coeff(proxy_lambda)]
direct_pair, direct_fast=correlation(directs,gs)
direct_sq, direct_fast_sq=correlation(directs,directs)
assert_inside(direct_pair,'-.031764','-.013621')
assert F('.0') < direct_sq[0] <= direct_sq[1] < F('1.509')**2

# Reuse the same signed output sweep with f_0 as its reference.
scaled_f, scaled_error, scaled_amp = frozen_amplitudes(F(0),F(-1,20))
f_amplitudes = [tuple(20*x for x in row) for row in scaled_f]
f_model_error = 60*(scaled_error+4*scaled_amp*frequency_radius)
eta_center = sum(proxy_eta)/2
action_norm = F(577531,10000)+abs(t0)
endpoint_pairs = []
for lam in proxy_lambda:
    pair, input_price, output_price, fast = scalar_of_model(lam,eta_center,f_amplitudes)
    transfer = f_model_error*F('.75086') + (F('1.509')+f_model_error)*(
        action_norm*input_price+output_price)
    assert fast < F('.000143') and transfer < F('.02349')
    endpoint_pairs.append(add(pair,(-transfer,transfer)))
assert f_model_error < F('.000385')
model_hull = min(pair[0] for pair in endpoint_pairs),max(pair[1] for pair in endpoint_pairs)
mixed = scale(1/eta_center,multiply(proxy_eta,model_hull))
assert_inside(mixed,'-.130025','-.0825769')

for overlap, normalizer in ((gram_overlap,norm_orth),(act_g,act_k)):
    assert (1+max(map(abs,overlap))/(1-defect))/normalizer[0] < F('1.066')
print("PASS physical neighboring proxy pairings on the base and merged signed cells")
~~~

~~~python
from fractions import Fraction as F

cutoff = 10**25
pi_lower = F("3.14")
unprojected_norm = F(".7648")
projected_norm = F(".6688")
actual_norm = F(".1947")
shift_scalar = F("2.554199113")
native_tail = F("1.22e-26")
raw_sine_tail = F("3.6e-13")
assert (6200*6*10**7)**2 < native_tail**2*3*pi_lower*cutoff**3
assert 4 < raw_sine_tail**2*pi_lower*cutoff
# Applying the signed prime translates to a compressed sine interval simply
# translates and recompresses that interval, so the same endpoint bound applies.
unprojected_coefficients = F("24.4")*(211+shift_scalar)
unprojected_tail = F("1.861e-9")
assert 4*unprojected_coefficients**2 < unprojected_tail**2*pi_lower*cutoff
old_preimage_error = F("1e-60")
old_tail_factor = (1+F(10,9))*native_tail+F(10,9)*old_preimage_error
# The full-angle Chebyshev proof covers W+L0 as one subspace.
leakage = F("1e-265")
high_space_low_angle = F("1.2e-11")
grouped_low_angle = F("1.70e-11")
assert leakage**2+2*high_space_low_angle**2 < grouped_low_angle**2
# Exact projected-sine tails, without charging 2d or 11d as high Fourier.
d = F("1.6e-8")
native_y_projection = F("7e-24")
native_v_projection = F("3e-38")
native_w_l0_projection = 2*F("1e-281")
projected_sine_tail = (raw_sine_tail+old_tail_factor*d
                       +native_w_l0_projection+native_y_projection+native_v_projection)
e_tail = projected_sine_tail/(1-d)
v_tail = (projected_sine_tail+F(".071")*e_tail)/F(".998026")
assert e_tail < F("3.61e-13") and v_tail < F("3.88e-13")
plane_tail = F("4.06e-13")
assert unprojected_norm**2*(e_tail**2+v_tail**2) < plane_tail**2
projected_tail = F("3.736e-9")
assert (2*unprojected_tail+(old_tail_factor+grouped_low_angle)*unprojected_norm
        +plane_tail < projected_tail)

# These are full actual column operators on H, not rows of a collar model.
projected_direct_high = 300*(projected_tail+high_space_low_angle*projected_norm)
tiny = F("1e-272")
direct_y_cross = F("2e-6")/(1-3*tiny)
j_y_cross = (1+F(3,8))*direct_y_cross+741*leakage
d0 = F("1e-515")
pr_upper = F("7.5")*projected_norm
j_upper = F("3.705")*projected_norm
y_column = (projected_direct_high+10*direct_y_cross*pr_upper
            +F(25,2)*j_y_cross*j_upper+d0)
v_column = (projected_direct_high+10*F("2.3e-11")*pr_upper
            +F(25,2)*F("7.2e-8")*j_upper+4*F(".0017")*y_column+d0)
assert y_column < F(".000187") and v_column < F(".0000047")

# One-sided use of positive high inverse action. No bounds on J_i g_* needed.
parallel_scale_lower = F(".31708")
high_negative_budget = (4*y_column**2+v_column**2/12)/(4*parallel_scale_lower)
assert high_negative_budget < F("1.11e-7")
print("PASS projected signed-action tail and one-sided high inverse covariance > -1.11e-7")
~~~

~~~python
from fractions import Fraction as F

g_max = F('.1947')
g_error = F('.006081')
column = F('1.066')
d = F('1.6e-8')
d0_price = F('1e-515')
p_unit,j_unit,y_unit,v_unit = map(F,('.00046','.00045','3.2e-8','5.2e-6'))
d5_unit = (F('7.5')*10*p_unit+F('3.705')*F('12.5')*j_unit+d0_price
           +301*4*y_unit+F(303,12)*v_unit)
assert d5_unit < F('.055511')
m_error_H = column*(d5_unit+F('.000247'))+300*11*d
m_error_old = column*(F('.00075')+F('.000247'))+26*d*233
m_error_pivot = 26*d*F('1.509')
assert m_error_H**2+m_error_old**2+m_error_pivot**2 < F('.05951')**2

ell = F('.00074')+g_error
raw_band = 300*6200*F('2.45e-12')*12800*F('.1886')
price_p = raw_band+F('7.5')*ell
price_u = F(10,9)*raw_band+F('1.344')*ell+F('1e-54')
price_j = price_u+F(3,8)*price_p+F('1e-261')
price_y,price_v = F('.016'),F('.017')
pair_m_f = (
    g_max*(300*11*d+column*F('.000247')+d0_price)
    +column*(10*p_unit*price_p+F('12.5')*j_unit*price_j
             +4*y_unit*price_y+v_unit*price_v/12))
assert pair_m_f < F('.000635')
pair_g_upper = -F('.013621')+pair_m_f+F('1.509')*g_error
assert pair_g_upper < -F('.00380')
pair_zp_upper = -F('.082576')+F('.6688')*F('.05951')
assert pair_zp_upper < -F('.04277')
mv_diag = F('23.538')+F('1.6164')**2/F('9.869')
assert mv_diag < F('23.81')
assert F('.00380')*F('.04277')/mv_diag > F('.0000068')
print('PASS actual neighboring inverse makes a positive covariance > .0000068')

z_norm_sq = F('.6688')**2+F('.016656')+F('.071135')**2
assert z_norm_sq < F('.685')**2
gamma_allowance = F('.685')*F('.000174')
collar_allowance = F('.685')*g_max*F('.000024')
d0_allowance = F('.685')*g_max*d0_price
high_allowance = F('1.11e-7')
low_covariance = -F('.00343')+gamma_allowance+collar_allowance+d0_allowance+high_allowance-F('.0000068')
assert low_covariance < -F('.00331')
print('PASS necessary covariance for the low inverses and actual transfer < -.00331')
~~~

## The mixed low inverse entry required by the residual test

2026-11-15, grwtsk contributors, AI-assisted. Written analytic proof
with exact rational guards. Lean elaboration, fresh kernel replay
and transitive axiom audit are NOT_RUN. Independent review is UNASSESSED.

Keep $T=BI+R$, the actual seven pivot domains, the exact direction
transfer and the cutoff and sign conventions of the preceding sections.
Set $D_{\rm lo}=D_P+D_Z$, $D_{\rm hi}=D_Y+D_{\mathcal V}$,
$c_b=(24I-T)\bar z$, and $b=\Pi_H c_b$, where $\bar z=z_p+p$.
For the existing sufficient test with budget $0.00429$, the following
strict inequality is necessary:
$$
             \operatorname{Re}\langle b,D_{\rm lo} k\rangle>0.001173 .
$$
In particular, $\|PRb\|\le1.05$ and $\|Jb\|\le1.05$ together would
falsify that test. This implication uses the same $b$ in both genuine
low inverse rows on their actual domains.

### Low angular estimates on the signed action

Write $u_d=D_{s_0}g_0$ and
$L_M(f)=\|\mathbf1_{|\nu|\le M}\widehat f\|_2$ with $d\nu/(2\pi)$.
Use the actual two-carrier coefficients of $g_0$ with the established
joint jump norm below $0.468$, pointwise sum of coefficient magnitudes
below $0.351$, and minimum gap $0.000014$. For any translated and
physically compressed copy of $g_0$, the interior jumps are a subset of
the translated list. Their phases preserve the jump norm and their
gaps are unchanged. Only the two endpoints of the compression add
jumps, with sum of magnitudes over both carriers below $0.702$.
When a translated cut lies exactly on a physical endpoint, use the
single one-sided endpoint coefficient and exclude it from the
interior list.

Let $\rho_{\min}=3.8\cdot10^9$. Integrating the jump formula for each
complex carrier, and including the factor $1/2$ from the real part,
gives for $0<M<\rho_{\min}$ the following upper bound on $L_M$
for any such copy:
$$
 \frac{
  \sqrt2(0.468)\sqrt{M/\pi+16/(\pi(0.000014))}
       +0.702\sqrt{M/\pi}}
      {\rho_{\min}-M}.
$$
The interior term uses the preceding interval Gram estimate on the
separated subset. The endpoint term uses its uniform numerator bound.
Absolute triangle over the original signed translates, including the
scalar row, costs $211+|s_0|$. At $M=4\cdot10^8$ the resulting
$L_M(u_d)$ is below $0.000969$. The estimates for single translated
copies can use the full zero-extended interval $L^2$ space. The sum
$u_d$ lies in the original odd carrier.

The actual old $P$ space has the first signed endpoint moment zero and
at most $N=23000000$ native sine coefficients. A native preimage
of a vector in $U$ lies in the actual $X$ with $N=38170000$ and all
11000 displayed signed moment constraints. Use its first ten
constraints for this estimate. In either case, with $m$ cancellations
and $\omega_{\max}<M$, the exact sine transform and finite geometric
remainder yield the full angular tail bound
$$
 \|\mathbf1_{|\nu|>M}\widehat f\|_2^2
 \le \|f\|^2
 \frac{N(\omega_{\max}/M)^{4m+2}}
      {\pi(4m+3)M(1-(\omega_{\max}/M)^2)^2}.
$$
The denominator powers come from integrating $|\nu|^{-4m-4}$ on both
signs. Retain the signed constraints
$\sum_j(-1)^j j^{2r+1}a_j=0$ for $0\le r<m$. The guard gives the
unit tail bounds $4.73\cdot10^{-6}$ for $P$ and
$1.12\cdot10^{-23}$ for $U$, including the true $10/9$ preimage and
relative $10^{-60}$ error on the latter.
[Original trace-zero head](WeilConductorThreeRadiusFourResidualHead.lean#L34)
[Original moment carrier](WeilConductorThreeRadiusFourGramMomentSector.lean#L42)

Testing against unit vectors in those spaces bounds the two head
components of $u_d$ by its low angular norm plus the corresponding
tail factor times $0.7648$. The grouped remaining old head projection
is below $1.875\cdot10^{-9}$ by the previous full angular bound.
The orthogonal sum gives $\|\Pi_{\mathcal E}u_d\|<0.001374$.

For the raw rows $PRu_d$ and $\Pi_U Ru_d$, the low part costs the
weighted row factors $7.5,1.344$, respectively. The high part instead
costs $300(0.7648)$ times the corresponding unit tail. In returning
to $z_p=\Pi_Hu_d$, subtract the old $P,U$ components with the
weighted block bounds
$$
 \begin{pmatrix}
 0.1875 & 0.0336\\
 0.0336 & 0.006013
 \end{pmatrix}.
$$
These bounds follow from $300\|K_wP\|^2$, $300\|K_wP\|\|K_w|_U\|$
and $300\|K_w|_U\|^2$. Use $7.5,1.344$ on the other old component.
On the actual last pivot plane, the local $0.00046,0.00027$ row
bounds on $z,z_y$ give row bounds below $0.000674,0.000395$
after the $e,v$ normalization using coefficients $1/(1-d),1.066$.
They multiply at most $\|u_d\|<0.7648$. For the actual $J$ row
into $Z$ use the original $3/8$ interaction with $PR$ in its
$U$ component and the Chebyshev bound $741\cdot10^{-265}\|z_p\|$
in the old physical $W$ component. The directed totals give
$$
       \|PRz_p\|<0.0090741,\qquad \|Jz_p\|<0.0050442 .
$$
Complete the square in the positive form of $D_{\rm lo}$ as in
the preceding high inverse argument. Since $p=\kappa g_*$ with
$\kappa>0.31708$, the actual inverse bounds $10,25/2$ give
$$
 \operatorname{Re}\langle\bar z,D_{\rm lo}g_*\rangle
 \ge-\frac{\langle z_p,D_{\rm lo}z_p\rangle}{4\kappa}
 >-0.000902 .
$$

### Full comparison action on the translated proxy

Use the same separated subset and endpoint decomposition for the
actual $G_{\rm phys}$ comparison, retaining the full filter and paid
pair. The original bounded multiplier defines the same physical
compression on full interval $L^2$. Its restriction to odd functions
is $G_{\rm phys}$, since the multiplier is even. This permits the
estimate on a single translated summand. Below $H_{\rm safe}$,
multiply the angular estimate by 251. The result is below $0.000300$
per compressed copy.

On the pass band the earlier gamma bound is
$|G(\nu)|<|\log(|\nu|/\rho)|+1.4\cdot10^{-7}$ for either carrier.
For the interior jumps use the same interval-superlevel proof
for the squared logarithmic divided difference. Its combined
frame square root is below $2.60\cdot10^{-5}$. For the two
new endpoints, the uniform numerator bound uses the same
constant, since $\int_0^\infty L_\rho(x)^2\,dx/\pi<8/(\pi\rho)$.
The additive $1.4\cdot10^{-7}$ term costs at most $6(0.351)$
times this coefficient by Plancherel. These yield pass-band cost
below $0.000036$. By Cauchy--Schwarz, the total jump-magnitude
sum is below $\sqrt{2(919)}(0.468)+0.702<21$. Use this numerator
on the paid pair and beyond $3.2\cdot10^{25}$. Their costs are
below $0.0000069$ and $1.1\cdot10^{-9}$, respectively. For the
upper tail use $|\nu\mp\rho|\ge0.99|\nu|$ and the full improper
integral on both signs. The complete price is below $0.000344$
per copy, so $\|G_{\rm phys}u_d\|<0.0735$.

To return to $\bar z$, use the true decomposition
$u_d=z_p+\Pi_{\mathcal E}u_d+P_1u_d$ and $p=\kappa g_*$.
The old component costs $251(0.001374)$. On the actual pivot
plane use the bounds $0.000247+251(2d)$ on $e$ and
$1.066(0.000247)+251(11d)$ on $v$. Their Euclidean norm gives
the plane bound below $0.000404$. The final term costs at most
$0.36536(0.000174+251(0.006081))$. Thus
$\|G_{\rm phys}\bar z\|<0.977$. The exact identity
$24I-T=D_{s_0}-G_{\rm phys}$ and the physical signed shift norm give
$$
 \|b\|\le\|c_b\| <(57.7531+|s_0|)(0.685)+0.977<42.29.
$$
The guard evaluates the actual sum before rounding. Then
$\|k-h\|<0.282d$ and the local gamma comparison on $u,y$ give
$$
 \big|\langle b,R(k-h)+G_{\rm phys}h\rangle\big|
 <42.29[300(0.282d)+0.10901(0.000247)]<0.001196 .
$$

### Sampling the removed head at the original native modes

Here test $g_0$ itself on the first $N_s=38170000$ native modes.
Identify the endpoints of the length-eight interval for the sample
frequencies $\nu_j=j\pi/4$. For a single complex carrier, absorb the
carrier phase into the jump coefficients before merging the endpoints.
They have identical sample phases. The merged jump energy grows by
at most a factor of two. The cyclic gaps between distinct remaining
points exceed $0.000014$. If two points have shorter cyclic distance
$d_{jk}\le4$, their off-diagonal exponential sum over the native
samples is bounded by $1/|\sin(\pi d_{jk}/8)|\le4/d_{jk}$.
On either side the $r$th point is at distance at least
$r(0.000014)$, so the absolute off-diagonal row sums are below
$64/(0.000014)$. The sample Gram bound is thus
$N_s+64/(0.000014)<6540^2$ times the merged jump energy.

Use the same jump numerator at $-\nu_j$ for the convention
$\widehat f(\nu)=\int f(x)e^{i\nu x}\,dx$. Each carrier
denominator has modulus above $3.8\cdot10^9-3\cdot10^7$.
The sine coefficient of the real odd proxy has modulus
$|\widehat g_0(-\nu_j)|/2$. Combining four carriers with factor
$1/2$ from the real part, the endpoint merge factor $\sqrt2$,
and the initial joint jump norm gives
$$
 \|\Pi_{E_s}g_0\|<6540(0.468)/(3.8\cdot10^9-3\cdot10^7)
       <8.12\cdot10^{-7}.
$$
Here $E_s$ is the span of those full native sine modes.
To test against a unit vector in $P\mathcal H\oplus U$, replace its
$U$ component by the true preimage in $E_s$. The difference is
below $(10/9)10^{-60}$ and $P\mathcal H\subset E_s$. This gives
$\|\Pi_{P\mathcal H\oplus U}g_0\|<8.13\cdot10^{-7}$.
For the grouped old $W,L_0,Y_0,\mathcal V$ head the bound is
$9\cdot10^{-12}+(1.70\cdot10^{-11})(0.1886)<1.221\cdot10^{-11}$.
On $P_1$, use $\|P_1g_0\|<26d(0.1886)$.

In the pairing with $(I-\Pi_H)g_0$ the $(24-B)$ scalar part
vanishes. The combined weighted rows into the old $P,U$ spaces
have norm below $\sqrt{7.5^2+1.344^2}<7.62$.
Use 300 for the remaining old group. On the actual last pivot plane,
$\Pi_H T|_{\mathcal P}=F+\Pi_H D_5|_{\mathcal P}$ has norm
below $\sqrt{8.2}+\sqrt2(1.1)(0.055511)<3$.
This uses the true $e,v$ columns on $z,z_y$, with coefficient sums
below $1.1$. Thus Cauchy--Schwarz and $\|\bar z\|<0.685$ give
$$
       |\langle c_b,(I-\Pi_H)g_0\rangle|<4.42\cdot10^{-6}.
$$

### The high inverse transfer paired against the actual $b$

Put $\tau_N(f)=\|\mathbf1_{|\nu|>N}\widehat f\|_2$ and use the
cutoffs $M_0=5\cdot10^{12}$, $M_1=10^{20}$ and $L=10^{25}$.
The previously established full physical interval support
projection, from $|\eta|\le M'$ to $|\nu|\ge N'$, has
Hilbert--Schmidt norm bounded by
$\sqrt{4M'/(\pi^2(N'-M'))}$ for $M'<N'$. We use this full angular
bound twice with the genuine compression and the bounded
original masked multiplier of modulus below 300.

At $M_1$ the original $24.4(211+|s_0|)$ coefficient bound for $u_d$
and the $2/|\nu|$ envelope give $\tau_{M_1}(u_d)<5.89\cdot10^{-7}$.
On the original $P,U$ projections use the native $|\nu|^{-2}$
tail and the true $U$ preimage. The other old group has full norm
below $1.875\cdot10^{-9}$. On $P_1$ the actual plane comparison
with $u,v_0$ and the raw sine tail at $M_1$ give a tail cost below
$1.38\cdot10^{-7}$. Consequently $\tau_{M_1}(z_p)<7.29\cdot10^{-7}$.
Use the existing normal equation $g_*=T E k-e$, with
$\|Ek\|<0.104$ and $\tau_{M_0}(Ek)<1.23\cdot10^{-7}$.
The first Hilbert--Schmidt bound and the scalar and $e$ tails
give $\tau_{M_1}(g_*)<0.00449$. Thus $\tau_{M_1}(\bar z)<0.001642$.
At $L$ use the earlier exact $z_p,g_*$ tails. Applying the second
Hilbert--Schmidt bound to $R\bar z$ from $M_1$ to $L$ gives
$\tau_L(c_b)<0.907$.

To project $c_b$ onto $H$, the other old group costs at most
$\tau_L(c_b)+(1.70\cdot10^{-11})\|c_b\|$, as in the preceding
true projection estimate. The old $P,U$ and $P_1$ tail factors
multiply $\|c_b\|<42.29$. The exact sum gives $\tau_L(b)<1.82$.
Use the $1.2\cdot10^{-11}$ low angular bound on unit $Y_0$ or
$\mathcal V$ and split the $R$ pairings at $L$. The direct
$R$ contribution to each high row is at most
$300[\tau_L(b)+(1.2\cdot10^{-11})\|b\|]$.
The earlier formulas for $J_Y,J_{\mathcal V}$ add the actual
previous inverse row interactions and the entire $D_{L_0}$
price. With $\|PRb\|\le7.5\|b\|$, $\|Jb\|\le3.705\|b\|$,
the directed total gives $\|J_Yb\|<546$ and
$\|J_{\mathcal V}b\|<550$.

For $k$ use the coefficient sum below $0.10901$ on $z,z_y$
and the existing high columns below $3.2\cdot10^{-8}$ and
$5.2\cdot10^{-6}$ on each input. Using the genuine inverse
bounds $4,1/12$ gives $|\langle b,D_{\rm hi}k\rangle|<0.000034$.
The $L_0$ pair is at most $42.29(0.103)10^{-515}$.
This preserves both high corrections on the original domains.

### The remaining shared low pair

Use the exact direction identity from the preceding section. The
signed quantity tested there is
$$
\begin{split}
 \operatorname{Re}\langle\bar z,w_{\rm low}\rangle
 ={}&\operatorname{Re}\langle b,R(k-h)+G_{\rm phys}h\rangle
     -\operatorname{Re}\langle c_b,(I-\Pi_H)g_0\rangle\\
   &-\operatorname{Re}\langle b,(D_{\rm hi}+D_{L_0})k\rangle
      +\operatorname{Re}\langle\bar z,D_{\rm lo}g_*\rangle
      -\operatorname{Re}\langle b,D_{\rm lo}k\rangle .
\end{split}
$$
All operators in this equality act on the original carrier and
inverse domains. Combining the first three prices with the required
value below $-0.00331$ shows that the final two terms together
must be below $-0.002075$. The positive inverse square bounds the
first of those terms below by $-0.000902$, giving the claimed
strict lower bound $0.001173$ on the signed mixed entry
$\operatorname{Re}\langle b,D_{\rm lo}k\rangle$.

For the stated falsification test use the $PR,J$ column norms
below $0.00046,0.00045$ on each of $z,z_y$ and the exact
coefficient sum for $k$. If both row norms on $b$ are at most
$1.05$, the absolute mixed value is bounded above by
$$
       1.05(0.10901)[10(0.00046)+(25/2)(0.00045)]<0.001173 .
$$
Those row inequalities on the actual $b$ remain open. The necessary
mixed bound here concerns the existing sufficient $0.00429$ test.
The actual full residual, all-complement coercivity and the original
arithmetic sign on every admitted real odd compact $C^2$ test remain
open. The arithmetic return retains the full gamma term, signed
prime powers, paid pair and genuine original Schur complements.

### Directed guards for the mixed low entry

These rational checks use the bounds on the actual domains proved
above and in the preceding source sections.

~~~python
from fractions import Fraction as F

pi_lo=F('3.14')
cut=F('4e8')
rho_lo=F('3.8e9')
spacing=F('.000014')
assert cut/pi_lo < 11287**2
assert (cut+16/spacing)/pi_lo < 11303**2
assert 2 < F('1.415')**2
sum_weight=211+F('2.554199113')
translated_low=(F('1.415')*F('.468')*11303+F('.702')*11287)/(rho_lo-cut)
low_w=sum_weight*translated_low
assert low_w < F('.000969')

def sine_tail_square(n,m,nu):
    return n*(nu/cut)**(4*m+2)/(pi_lo*(4*m+3)*cut*(1-(nu/cut)**2)**2)
assert sine_tail_square(23000000,1,F(22,7)*23000000/4) < F('4.73e-6')**2
# Use only first 10 vanishing moments of the exact X preimage.
assert sine_tail_square(38170000,10,F('3e7')) < F('1e-23')**2
tail_p=F('4.73e-6')
tail_u=F(10,9)*(F('1e-23')+F('1e-60'))
assert tail_u < F('1.12e-23')

wn=F('.7648')
physical_p=low_w+tail_p*wn
physical_u=low_w+tail_u*wn
other=F('1.861e-9')+F('1.70e-11')*wn
assert other < F('1.875e-9')
d=F('1.6e-8')
real_v_coeff=F('1.066')
p_e=F('.00046')/(1-d); p_v=F('.00046')*real_v_coeff
u_e=F('.00027')/(1-d); u_v=F('.00027')*real_v_coeff
assert p_e**2+p_v**2 < F('.000674')**2
assert u_e**2+u_v**2 < F('.000395')**2
assert (F('.0336')*40)**2*49900 > 300**2
assert F('.006013') > F(300,49900)

raw_p=F('7.5')*low_w+300*tail_p*wn
raw_u=F('1.344')*low_w+300*tail_u*wn
prow=raw_p+F('.1875')*physical_p+F('.0336')*physical_u+F('7.5')*other+F('.000674')*wn
urow=raw_u+F('.0336')*physical_p+F('.006013')*physical_u+F('1.344')*other+F('.000395')*wn
zrow=urow+F(3,8)*prow+F('741e-265')*F('.6688')
assert prow < F('.0091')
assert urow < F('.00165')
assert zrow < F('.00507')
inverse_square=10*prow**2+F(25,2)*zrow**2
neg_expense=inverse_square/(4*F('.31708'))
assert neg_expense < F('.000902')
assert F('-.00331')+F('.000902') < F('-.00240')
print('PASS exact low W tail, actual P/U/J projections, and adverse low inverse covariance below .000902')
assert prow < F('.0090741') and zrow < F('.0050442')
assert (10*F('.0090741')**2+F(25,2)*F('.0050442')**2)/(4*F('.31708')) < F('.000902')
old_head_cap = F('.001374')
assert physical_p**2+physical_u**2+other**2 < old_head_cap**2
from fractions import Fraction as F

pi_floor = F('3.14')
separation = F('.000014')
rho_floor = F('3.8e9')
Hsafe = F(10**8,3)-1
new_endpoint_l1 = 2*F('.351')
old_jump_norm = F('1.415')*F('.468')
full_jump_l1 = F('21')
assert 2 < F('1.415')**2
assert (full_jump_l1-new_endpoint_l1)**2 > 2*919*F('.468')**2

# The original separated subset retains the same interval frame bound.
assert Hsafe/pi_floor+16/(pi_floor*separation) < 3315**2
assert Hsafe/pi_floor < 3262**2
low_norm = 251*(old_jump_norm*3315+new_endpoint_l1*3262)/(rho_floor-Hsafe)
assert low_norm < F('.000300')

minimum_x = 33000000
assert minimum_x < Hsafe
log_sup = 5/(rho_floor-minimum_x)
log_squared = 8/(pi_floor*rho_floor)
log_frame = log_squared+32*log_sup**2/(pi_floor*separation)
assert log_frame < F('2.60e-5')**2
log_norm = (old_jump_norm+new_endpoint_l1)*F('2.60e-5')+F('1.4e-7')*6*F('.351')
assert log_norm < F('.000036')

paid = 251*full_jump_l1*F('2.53')/(rho_floor-F('1.86e9'))
assert paid < F('.0000069')
top_frequency = F('3.2e25')
assert F('.01')*top_frequency > F('4e9')
high_price = F('1.1e-9')
assert (251*full_jump_l1/F('.99'))**2 < high_price**2*pi_floor*top_frequency
translated = F('.000344')
assert low_norm+log_norm+paid+high_price < translated

s0 = F('2.554199113')
triangle_weights = 211+s0
g_action_signed = triangle_weights*translated
assert g_action_signed < F('.0735')

# The three old orthogonal components were priced in the low-row guard above.
assert old_head_cap == F('.001374')

# G_phys at the two true projected neighboring sines.
d = F('1.6e-8')
gamma_e = F('.000247')+251*2*d
gamma_v = F('1.066')*F('.000247')+251*11*d
gamma_pivot = F('.000404')
assert gamma_e**2+gamma_v**2 < gamma_pivot**2
gamma_p = F('.36536')*(F('.000174')+251*F('.006081'))
gamma_bar = g_action_signed+251*old_head_cap+gamma_pivot*F('.7648')+gamma_p
assert gamma_bar < F('.977')

shift_norm = F('57.7531')+s0
dual_norm = shift_norm*F('.685')+gamma_bar
assert dual_norm < F('42.29')
proxy_inhomogeneous = 300*F('.282')*d + F('.10901')*F('.000247')
proxy_pair_price = F('42.29')*proxy_inhomogeneous
assert proxy_pair_price < F('.001196')
assert -F('.00331')+proxy_pair_price < -F('.002114')
print('PASS translated gamma-mask action and actual projection prices')
print('PASS dual action norm <42.29 and uncorrected carrier-pair price <.001196')
from fractions import Fraction as F

native_count = 38_170_000
separation = F(".000014")
assert sum(F(1, j) for j in range(1, 919)) < 8
sample_frame = native_count + 64 / separation
assert sample_frame < 6540**2
native_head = F(6540) * F(".468") / (F("3.8e9") - F("3e7"))
assert native_head < F("8.12e-7")
preimage_error = F(10, 9) * F("1e-60")
low_head = F("8.13e-7")
assert native_head * (1 + preimage_error) + preimage_error * F(".1886") < low_head

other_head = F("1.221e-11")
assert F("9e-12") + F("1.70e-11") * F(".1886") < other_head
pivot_head = 26 * F("1.6e-8") * F(".1886")

low_row = F("7.62")
assert F("7.5")**2 + F("1.344")**2 < low_row**2
assert F("1.344")**2 * 49_900 > 300**2
assert F("2.864")**2 > F("8.2") and F("1.415")**2 > 2
pivot_row = F("2.864") + F("1.415") * F("1.1") * F(".055511")
assert pivot_row < 3
test_norm = F(".685")
head_action = low_row * low_head + 300 * other_head + 3 * pivot_head
assert head_action < F("6.44e-6")
pairing = test_norm * head_action
assert pairing < F("4.42e-6")
assert -F(".00331") + F("4.42e-6") < -F(".0033055")
print("PASS periodic discrete jump projection and absolute head covariance < 4.42e-6")
from fractions import Fraction as F

pi_floor = F('3.14')
M0, M, L = 5*10**12, 10**20, 10**25
d = F('1.6e-8')
budget = F('.124997987')
action_norm = F('42.29')
plane_input_norm = F('.7648')
def hilbert_schmidt_squared(m, n):
    return F(4*m)/(pi_floor**2*(n-m))

raw_sine_mid = F('1.13e-10')
assert F(4)/(pi_floor*M) < raw_sine_mid**2
grouped_norm = F('1.875e-9')
raw_w_mid = F('5.89e-7')
weights = F('24.4')*(211+F('2.554199113'))
assert (2*weights)**2 < raw_w_mid**2*pi_floor*M
native_mid = F('1.22e-19')
assert (6200*6*10**7)**2 < native_mid**2*3*pi_floor*M**3
u_plus_p_mid = (1+F(10,9))*native_mid+F(10,9)*F('1e-60')
e_mid = 2*d+raw_sine_mid
v_mid = 11*d+F('1.066')*raw_sine_mid
plane_mid = F('1.38e-7')
assert plane_input_norm**2*(e_mid**2+v_mid**2) < plane_mid**2
z_p_mid = raw_w_mid+plane_mid+grouped_norm+u_plus_p_mid*plane_input_norm
assert z_p_mid < F('7.29e-7')

ek_tail = F('1.23e-7')
raw_g_mid_hs = F('.0001425')
assert hilbert_schmidt_squared(M0,M) < raw_g_mid_hs**2
g_mid = 300*(F('.104')*raw_g_mid_hs+ek_tail)+budget*ek_tail+e_mid
assert g_mid < F('.00449')
p_factor = F('.36536')
z_bar_mid = z_p_mid+p_factor*g_mid
z_bar_high = F('3.736e-9')+p_factor*F('5.04e-5')
assert z_bar_mid < F('.001642')
hs_middle_high = F('.002015')
assert hilbert_schmidt_squared(M,L) < hs_middle_high**2
dual_raw_high = (24-budget)*z_bar_high+300*(F('.685')*hs_middle_high+z_bar_mid)
assert dual_raw_high < F('.907')
# The grouped high-space coefficient is bounded by its full overlap with
# the high tail and its 1.70e-11 low-angle norm on the complement.
u_plus_p_high = (1+F(10,9))*F('1.22e-26')+F(10,9)*F('1e-60')
pivot_high_factor = F('5.31e-13')
assert F('3.61e-13')**2+F('3.88e-13')**2 < pivot_high_factor**2
b_high = 2*dual_raw_high + action_norm*(F('1.70e-11')+u_plus_p_high+pivot_high_factor)
assert b_high < F('1.82')

raw_high = 300*(b_high+F('1.2e-11')*action_norm)
pr = F('7.5')*action_norm
j = F('3.705')*action_norm
l0_price = F('1e-515')
y_cross = F('2e-6')/(1-3*F('1e-272'))
jy_cross = F(11,8)*y_cross+741*F('1e-265')
y_b = raw_high+10*y_cross*pr+F(25,2)*jy_cross*j+l0_price
v_b = raw_high+10*F('2.3e-11')*pr+F(25,2)*F('7.2e-8')*j+4*F('.0017')*y_b+l0_price
assert y_b < 546 and v_b < 550
high_pair_price = F('.10901')*(4*y_b*F('3.2e-8')+v_b*F('5.2e-6')/12)
assert high_pair_price < F('.000034')
head_price = F('.00000442')
proxy_pair = F('.001196')
joint_upper = -F('.00331')+proxy_pair+head_price+high_pair_price+action_norm*F('.103')*l0_price
assert joint_upper < -F('.002075')
required = F('.001173')
assert F('.002075')-F('.000902') == required
max_low = F('.10901')*(10*F('.00046')+F(25,2)*F('.00045'))*F('1.05')
assert max_low < required
print("PASS true projected dual tail and high inverse transfer price < .000034")
print("PASS required P and Z transfer > .001173; both row norms <= 1.05 would falsify")
~~~

## The mixed inverse entry excludes the fixed residual test

2026-11-15, grwtsk contributors, AI-assisted. Written analytic proof
with exact rational guards. Lean elaboration, fresh kernel replay and
transitive axiom audit are NOT_RUN. Independent review is UNASSESSED.

Write $G=G_{\rm phys}$ and $u_d=D_{s_0}g_0$. Keep $z_p=\Pi_Hu_d$
and $\bar z=z_p+\kappa g_*$ on the actual complement $H$. Set $T=BI+R$,
$b=\Pi_H(24I-T)\bar z$ and $k=A^{-1}e$. For the original
$D_{\rm lo}=D_P+D_Z$, the strict $0.00429$ test would require
$$
 \operatorname{Re}\langle b,D_{\rm lo}k\rangle>0.001173.
$$
We prove on these same carriers
$$
 |\langle b,D_{\rm lo}k\rangle|<0.00073.
$$
This excludes the strict $0.00429$ sufficient test on this direction. The full original sign and the other routes to the required inverse pairing remain open.

### Smaller rows on the actual $k$

Use the cutoff $M_1=10^9$. The two bare normalized real sine inputs $u,y$ have respective carriers $\rho>3.8\cdot10^9$ and original normalization constants $C>1.997$. On any subinterval and with any sine phase, integrating the two exponentials gives
$$
 |\widehat{\mathbf1_I \sin(\rho x+\theta)/C}(\nu)|
 \le \frac1C\left(\frac1{\rho-|\nu|}+\frac1{\rho+|\nu|}\right),
 \qquad |\nu|\le M_1 .
$$
The sum increases with $|\nu|$ and decreases with $\rho$. The full low angular norm, in $d\nu/(2\pi)$ on both signs, is therefore below $5.06\cdot10^{-6}$, including for one compressed translated copy.

For a unit $P$ vector, the exact first signed trace cancellation gives
$$
 \|\mathbf1_{|\nu|>M_1}\widehat f\|_2^2
 \le \frac{(\pi/4)^6\sum_{j=1}^{23000000}j^6}
 {7\pi M_1^7(1-(\omega_{\max}/M_1)^2)^2}.
$$
This is the exact sixth-power sum from ResidualHead, with its factor $1/(7\pi M_1^7)$ accounting for both signs. The exact rational upper bound gives a tail norm below $7.3\cdot10^{-8}$. The earlier $U$ tail below $1.12\cdot10^{-23}$ at $4\cdot10^8$ also bounds the tail at $M_1$. The weighted low factors $7.5,1.344$ and the full high multiplier bound $300$ thus bound each raw $PR,\Pi_U R$ row on $u,y$. To pass to the actual $z=\Pi_{G_2}u,z_y=\Pi_{G_2}y$, add $7.5d,1.344d$, respectively, for $d=1.6\cdot10^{-8}$. The resulting bounds on each are
$$
 \|PRz_i\|<0.000060,\qquad
 \|\Pi_U Rz_i\|<0.00000683,\qquad
 \|Jz_i\|<0.0000294.
$$
The last uses the actual $3/8$ interaction and $741\cdot10^{-265}$ for the $W$ row via $\|z_i\|\le1$. The coefficient sum of $k$ on $z,z_y$ remains below $0.10901$, so the two original inverse column factors are $10(0.10901)(0.000060)$ and $(25/2)(0.10901)(0.0000294)$.

### The original $b$ rows

In the actual old decomposition put $S_b=W\oplus L_0\oplus Y_0\oplus\mathcal V$, $\mathcal E=P\mathcal H\oplus U\oplus S_b$, and retain the actual last plane $P_1\mathcal H=\operatorname{span}(e,v)$. Let $M_2=4\cdot10^8$. The following exact identity uses $24I-T=D_{s_0}-G$, $\Pi_Hu_d=z_p$, and $\Pi_H(\Pi_\mathcal E+P_1)=0$.
$$
 b=\Pi_H D_{s_0}u_d-\Pi_H G u_d
    +\Pi_H R(\Pi_\mathcal E+P_1)u_d
    +\kappa\Pi_H(u_d-Gg_0)
    +\kappa\Pi_H(24I-T)(g_*-g_0).
 \tag{1}
$$

For the first term put $f=D_{s_0}u_d=D_{s_0}^2g_0$. Each double translation with physical recompression, including a scalar row interpreted as translation by zero, is a translate of $g_0$ cut to the intersection of the original support and two translated intervals. This intersection is an interval or empty. Its old interior jumps form a subset of the same separated set, and only two endpoint values are added. Thus the bound that gave the $M_2$-low norm below $0.000969$ for $u_d$ can be used one more time, with absolute coefficient sum $211+|s_0|$.
$$
 L_{M_2}(f)<(211+|s_0|)(0.000969)<0.207.
$$
The actual signed operator norm is below $57.7531+|s_0|<60.3073$, giving $\|f\|<46.13$ from $\|u_d\|<0.7648$. Denote the exact upper expressions for these two bounds by $l,n$, respectively. Write $\tau_P=4.73\cdot10^{-6},\tau_U=1.12\cdot10^{-23}$ for the previous $M_2$ tails. The two ordinary projections of $f$ cost $l+\tau_Pn,l+\tau_Un$. Their prices under the residual row projections are the existing entries $0.1875,0.0336,0.006013$ of the weighted two-by-two block bound. On $S_b$, both residual row norms are below $0.000004$. Indeed $W,L_0$ have $K$ norm at most $10^{-265}$. On $Y_0$ both rows are bounded by $2\cdot10^{-6}/(1-3\cdot10^{-272})$. On $\mathcal V$ use $\|PR|_{\mathcal V}\|<2.3\cdot10^{-11}$ and $\|J|_{\mathcal V}\|<7.2\cdot10^{-8}$. The latter gives $\|\Pi_U R|_{\mathcal V}\|<7.2\cdot10^{-8}+(3/8)(2.3\cdot10^{-11})$ by the exact $U$ component of $J$. The sum is below the stated bound. On the actual last pivot plane the already verified bounds are $0.000674,0.000395$. Consequently the two rows on $\Pi_H f$ have prices
$$
 \begin{aligned}
 C_P={}&7.5l+300\tau_Pn+0.1875(l+\tau_Pn)+0.0336(l+\tau_Un)
                         +(0.000004+0.000674)n<1.696,\\
 C_U={}&1.344l+300\tau_Un+0.0336(l+\tau_Pn)+0.006013(l+\tau_Un)
                         +(0.000004+0.000395)n<0.305 .
 \end{aligned}
$$
For the second term in (1) use the previously proved $\|Gu_d\|<0.0735$. For $\Pi_H R\Pi_{\mathcal E}u_d$, use $\|(P+\Pi_U)u_d\|<0.001374$, the combined weighted bound $\|R|_{P\mathcal H\oplus U}\|<7.62$, and $300\|\Pi_{S_b}u_d\|<300(1.875\cdot10^{-9})$. The sum of these two norm estimates is then multiplied by $7.5,1.344$ for the $P,U$ rows on these terms.

To handle the $P_1u_d$ term, write $m=Fv$ and the true relation
$$
 \Pi_H T e=\frac{g_*+\eta_c m}{t}+\Pi_HD_5 e,\qquad
 \Pi_H T v=m+\Pi_HD_5v.
$$
Here $C_2=\Pi_{G_2}T|_{G_2}-D_5$, $F=\Pi_H C_2$ on the pivot plane, $g_*=tFe-\eta_cm$, $t>0.10245$ and $0<\eta_c<0.01$. Use the known rows $\|PRg_*\|<0.11$, $\|\Pi_U Rg_*\|<0.03$. For $m$, retain the source-local $\|m-f_0\|<0.05951$ with $f_0=-(I-P_0)T_Pv_0$ and $\|f_0\|<1.509$. Its representation by normalized bare sines and their compressed translations has coefficient sum bounded by
$$
 211(1.066)+1.462(57.7531)<311.
$$
Indeed $v_0$ has coefficient sum below $1.066$ on $u,y$. The true orthonormal plane $u,v_0$ gives the coefficient conversion factor $\sqrt{1+1.066^2}<1.462$ for the removed $P_0T_Pv_0$. The signed unmasked shift operator has norm below $57.7531$. Apply the $M_1$ bound for each compressed normalized sine, then the old tail pairing as for $k$, and charge the full $m-f_0$ error with the two global weighted row factors. The directed values give $\|PRm\|<0.46$ and $\|\Pi_U Rm\|<0.083$.

The estimates $\|D_5z_i\|<0.055511$ on the actual projected columns give $\|D_5e\|<0.055511/(1-d)$ and $\|D_5v\|<1.066(0.055511)$. Use the last two displayed pivot formulas to estimate the row on each of $e,v$, then add the two squared column costs and take their square root. The result is
$$
 \|PR\Pi_H T P_1\|<1.79,\qquad
 \|\Pi_U R\Pi_H T P_1\|<0.412.
$$
They apply to $\Pi_H R P_1u_d$ because $BI$ vanishes in this off-diagonal block. Multiply by at most $0.7648$.

For the fourth term of (1) use the existing $z_p$ mixed bounds $\|PRz_p\|<0.0090741$, $\|\Pi_U Rz_p\|<0.00165$, together with $\|Gg_0\|<0.000174$ and $0<\kappa<0.36536$. For the final term, the signed residual multiplier lies between $-213$ and $300$, including the original filter and its zero extension. Its physical compression preserves that operator interval. Since $B=0.124997987$, the self-adjoint norm satisfies $\|24I-T\|<276.125$. The last term of (1) therefore costs at most $0.36536(276.125)(0.006081)$ in norm using the actual direction transfer. Multiply once more by the two true row factors. The full directed sums before separate rounding give
$$
 \|PRb\|<8.4,\qquad
 \|\Pi_U Rb\|<1.6,\qquad
 \|Jb\|<4.75.
$$
The final $J$ estimate uses the unrounded first two row costs with the $3/8$ interaction and $741\cdot10^{-265}\|b\|$; the earlier $\|b\|<42.29$ supplies the latter norm.

### Return to the actual inverse pairing

The same $P,J$ rows on the same $b,k$ give, by the actual inverse norms $10,25/2$ on their physical carriers,
$$
 |\langle b,D_{\rm lo}k\rangle|
 \le 10\|PRb\|\|PRk\|+(25/2)\|Jb\|\|Jk\|
 <0.00073<0.001173.
$$
The rational guards below use the exact intermediate expressions. In particular, each of the two mixed terms acts through its original inverse on its original physical range. The original arithmetic return remains open.

### Quantitative gap and the exact residual budget

The tighter columns on $k$ also improve the physical direction
transfer. On $H$ use the exact identity from the preceding section,
$$
 \Pi_H(g_*-g_0)=\Pi_H[R(k-h)+G_{\rm phys}h-D_5 k].
$$
For $D_5 k$, apply the global outgoing column factors
$7.5,3.705,301,303$ to the corresponding local incoming $PR,J,J_Y,
J_{\mathcal V}$ columns on $k$, with the original inverse costs
$10,25/2,4,1/12$. The coefficient sum of $k$ is below $0.10901$
on $z,z_y$. The $L_0$ correction costs below $10^{-515}\|k\|$.
The local high input bounds stay $3.2\cdot10^{-8},5.2\cdot10^{-6}$
on each of $z,z_y$. On the other two terms use
$\|R(k-h)\|<300(0.282d)$ and
$\|G_{\rm phys}h\|<0.10901(0.000247)$.
The removed projection is exactly $-(I-\Pi_H)g_0$, whose norm
is bounded by $8.13\cdot10^{-7}+1.221\cdot10^{-11}+26d(0.1886)$
from the established native sine, old high group and true pivot
plane estimates. Orthogonality of the two projection components
gives
$$
             \|g_*-g_0\|<0.000686.
$$

With $g_{\rm lo}=0.1875-0.000686$ and
$g_{\rm hi}=0.1886+0.000686$, the earlier proxy norm enclosure now
gives $g_{\rm lo}<\|g_*\|<g_{\rm hi}$. Use the exact
$\kappa=(1/t-\sigma)\|g_*\|^2$, with
$0.10245<t<0.10247$ and $0.1229<\sigma<0.123$.
For the linear signed pairing use the prior
$\operatorname{Re}\langle g_0,D_{s_0}g_0\rangle>0.0164475$
and the exact annihilation of $P_0$ on $H$. Both $g_*,g_0$
are orthogonal to $P_0$, and the true error costs
$0.6688(0.000686)$ by the projected-action estimate before
the final $H$ projection. Thus the actual parallel contribution now
satisfies
$$
      2\operatorname{Re}\langle z_p,p\rangle+\|p\|^2>0.01467.
$$
Use the unrounded directed lower bound for $\kappa$ to complete
the positive $D_{\rm lo}$ square again. With the established rows
on $z_p$, its adverse price is below $0.00085$. In the exact expansion
of $\operatorname{Re}\langle\bar z,w_{\rm low}\rangle$, the absolute
prices for the raw carrier return, removed projection, high inverse
transfer and new low mixed entry are $0.001196$, $4.42\cdot10^{-6}$,
$0.000034$ and $0.00073$. The entire $L_0$ transfer remains bounded
by $42.29(0.103)10^{-515}$. Adding the direct $0.00085$ price
bounds this real part from below.

Return to the exact $W$. Pay $0.685(0.000174)$ for the proxy
gamma and mask term, $0.685(0.1947)(0.000024)$ for the collar
error and $0.685(0.1947)10^{-515}$ for the direct $L_0$ term.
Use the actual high inverse lower bound $-1.11\cdot10^{-7}$
and the positive neighboring contribution above $0.0000068$.
With the directed sums prior to rounding we obtain
$$
\begin{aligned}
 \operatorname{Re}\langle\bar z,W\rangle&>-0.00294,\\
 2\operatorname{Re}\langle z_p,\Xi\rangle+\|\Xi\|^2
 &=2\operatorname{Re}\langle z_p,p\rangle+\|p\|^2
          +2\operatorname{Re}\langle\bar z,W\rangle+\|W\|^2\\
 &>0.00879 .
\end{aligned}
$$
The inequality uses $\|W\|^2\ge0$. The exact target $\|z_p+\Xi\|<0.672$ therefore requires
$\|z_p\|<0.66543$. The earlier upper bound $0.6688$ leaves that
necessary constraint unresolved. The actual remaining budget is
$0.672^2-\|z_p\|^2$. Both this budget and the correlated correction
term require upper estimates to prove the original residual target.
All-complement coercivity remains a separate premise for the inverse
criterion. The arithmetic sign still requires the original gamma
and signed prime-power form on every admitted real odd compact $C^2$
test on the physical radius-four interval.

### Exact rational guards

The following guard uses the exact written source inequalities for
the original physical rows and the actual two corrected directions.

~~~python
from fractions import Fraction as F

pi_lo=F('3.14')
pi_hi=F(22,7)
n=23000000
cut=F('1e9')
rho=F('3.8e9')
c0=F('1.997')
norm_d=F('1.6e-8')
omega=pi_hi*n/4
s6=n*(n+1)*(2*n+1)*(3*n**4+6*n**3-3*n+1)//42
assert s6*42 == n*(n+1)*(2*n+1)*(3*n**4+6*n**3-3*n+1)
tail_p_sq=(pi_hi/4)**6*s6/(7*pi_lo*cut**7*(1-(omega/cut)**2)**2)
tail_p=F('7.3e-8')
assert tail_p_sq<tail_p**2
tail_u=F(10,9)*(F('1e-23')+F('1e-60'))
assert tail_u<F('1.12e-23')
raw_hat=(1/(rho-cut)+1/(rho+cut))/c0
lo_sine=F('5.06e-6')
assert raw_hat**2*cut/pi_lo<lo_sine**2
pr=F('7.5')*lo_sine+300*tail_p+F('7.5')*norm_d
ur=F('1.344')*lo_sine+300*tail_u+F('1.344')*norm_d
j=ur+F(3,8)*pr+F('741e-265')
assert pr<F('0.000060')
assert ur<F('0.00000683')
assert j<F('0.0000294')
print('PASS sixth moment and tightened k input columns')
from fractions import Fraction as F

p_factor=F('7.5')
u_factor=F('1.344')
d=F('1.6e-8')
wn=F('.7648')
p_j_z=F('.0090741')
u_z=F('.00165')
kappa=F('.36536')
absolute_weights=211+F('2.554199113')
low_ww=absolute_weights*F('.000969')
assert low_ww<F('.207')
dn=F('60.3073')*wn
assert dn<F('46.13')
tp=F('4.73e-6')
tu=F('1.12e-23')
p_w2=low_ww+tp*dn
u_w2=low_ww+tu*dn
p_raw=(p_factor*low_ww+300*tp*dn+F('.1875')*p_w2+F('.0336')*u_w2
       +(F('.000004')+F('.000674'))*dn)
u_raw=(u_factor*low_ww+300*tu*dn+F('.0336')*p_w2+F('.006013')*u_w2
       +(F('.000004')+F('.000395'))*dn)
assert p_raw<F('1.696')
assert u_raw<F('.305')
g_w=F('.0735')
assert F('7.62')**2>p_factor**2+u_factor**2
old_w=F('7.62')*F('.001374')+300*F('1.875e-9')
assert F('1.462')**2>1+F('1.066')**2
f0_coeff=211*F('1.066')+F('1.462')*F('57.7531')
assert f0_coeff<311
f0_low=f0_coeff*F('5.06e-6')
p_m=p_factor*(f0_low+F('.05951'))+300*F('7.3e-8')*F('1.509')
u_m=u_factor*(f0_low+F('.05951'))+300*tu*F('1.509')
assert p_m<F('.46')
assert u_m<F('.083')
t=F('.10245')
eta=F('.01')
d5_e=F('.055511')/(1-d)
d5_v=F('.055511')*F('1.066')
p_e=(F('.11')+eta*p_m)/t+p_factor*d5_e
u_e=(F('.03')+eta*u_m)/t+u_factor*d5_e
p_v=p_m+p_factor*d5_v
u_v=u_m+u_factor*d5_v
p_plane=F('1.79')
u_plane=F('.412')
assert p_e**2+p_v**2<p_plane**2
assert u_e**2+u_v**2<u_plane**2
gamma_g0=F('.000174')
g_diff=kappa*F('.006081')*F('276.125')
p_bound=(p_raw+p_factor*(g_w+old_w)+p_plane*wn
         +kappa*(p_j_z+p_factor*gamma_g0)+p_factor*g_diff)
u_bound=(u_raw+u_factor*(g_w+old_w)+u_plane*wn
         +kappa*(u_z+u_factor*gamma_g0)+u_factor*g_diff)
j_bound=u_bound+F(3,8)*p_bound+F('741e-265')*F('42.29')
assert p_bound<F('8.4')
assert u_bound<F('1.6')
assert j_bound<F('4.75')
p_k=F('.10901')*F('.000060')
j_k=F('.10901')*F('.0000294')
mixed=10*p_k*p_bound+F(25,2)*j_k*j_bound
assert mixed<F('.00073')
assert F('.00073')<F('.001173')
print('PASS original b P/U/J rows and mixed bound excludes the strict .00429 sufficient test')
from fractions import Fraction as F

coeff = F('.10901')
d = F('1.6e-8')
old_action = coeff*(F('7.5')*10*F('.000060')
                  +F('3.705')*F(25,2)*F('.0000294')
                  +301*4*F('3.2e-8')+F(303,12)*F('5.2e-6'))+F('1e-515')*F('.103')
g_error_in_H = old_action+coeff*F('.000247')+300*F('.282')*d
removed_head = F('8.13e-7')+F('1.221e-11')+26*d*F('.1886')
g_error = F('.000686')
assert g_error_in_H**2+removed_head**2 < g_error**2
g_lower = F('.1875')-g_error
g_upper = F('.1886')+g_error
assert F('.1868') < g_lower and g_upper < F('.1893')
kappa_lower = (1/F('.10247')-F('.123'))*g_lower**2
kappa_upper = (1/F('.10245')-F('.1229'))*g_upper**2
assert F('.3362') < kappa_lower and kappa_upper < F('.3454')
dot_lower = F('.0164475')-F('.6688')*g_error
assert dot_lower > F('.01598')
parallel_lower = 2*kappa_lower*dot_lower+(kappa_lower*g_lower)**2
assert parallel_lower > F('.01467')
# Use the independently established upper bounds for the other terms.
direct_low_neg = (10*F('.0090741')**2+F(25,2)*F('.0050442')**2)/(4*kappa_lower)
assert direct_low_neg < F('.00085')
mixed_cap = F('.00073')
low_cost = (F('.001196')+F('.00000442')+F('.000034')
            +F('42.29')*F('.103')*F('1e-515')+direct_low_neg+mixed_cap)
gamma_cost = F('.685')*F('.000174')
collar_cost = F('.685')*F('.1947')*F('.000024')
high_cost = F('1.11e-7')
l0_cost = F('.685')*F('.1947')*F('1e-515')
neighbor_credit = F('.0000068')
w_cost = low_cost+gamma_cost+collar_cost+high_cost+l0_cost-neighbor_credit
assert w_cost < F('.00294')
increment = parallel_lower-2*w_cost
assert increment > F('.00879') > F('.00429')
assert F('.672')**2-F('.00879') < F('.66543')**2
print("PASS new collar transfer and strict lower obstruction to the fixed residual test")
~~~

## The corrected radius-four residual on the actual collar direction

2026-11-15, grwtsk contributors, AI-assisted. Written analytic proof
with exact rational guards. Lean elaboration, fresh kernel replay and
transitive axiom audit are NOT_RUN. Independent review is UNASSESSED.

Keep $D=D_{s_0}=T_P+s_0I$, $w=Dg_0$, $z_p=\Pi_H w$,
$p=\kappa g_*$, $\bar z=z_p+p$, and the exact corrected
residual $24r=\bar z+W$ for $r=g_*-H_+g_*/24$. The original
radius-four gamma, filter, signed shifts, paid pair, collar and
Schur inverse domains are retained. The bounds below give
$$
 \|z_p\|<0.65056,\qquad \|\bar z\|<0.664,\qquad
 \operatorname{Re}\langle\bar z,W\rangle<0.00175,\qquad
 \|W\|<0.0175,\qquad \|r\|<0.0278 .
$$
This proves the directional norm supplier for the inverse criterion.
Coercivity of $H_+$ on the whole complement remains open.

### The midpoint carrier and the four parameter corners

Let $\alpha_m$ be the rational midpoint of the existing carrier bracket for the nonnative sine $u$. Use the same normalized real sine $y$ at its genuine native carrier $\omega=(j-1)\pi/4$, with physical norm exactly one after its dividing factor $2$. Let $u_m$ be the exact normalized sine at $\alpha_m$, $v_m=(y-\langle u_m,y\rangle u_m)/\|y-\langle u_m,y\rangle u_m\|$, and $P_m$ project orthogonally onto $\operatorname{span}(u_m,v_m)$. The operator $T_P$, including the same 916 signed compressed shifts, is independent of both carriers. Set
$$
 h_m=t u_m-\eta_c v_m,\qquad g_m=-(I-P_m)T_Ph_m.
$$
The existing inverse intervals $t\in(0.1024515162,0.1024672113)$ and $\eta_c\in(0.0069509890,0.0069592349)$ are enclosed by rational boxes. At fixed midpoint carrier, $g_m$ and $Dg_m$ are affine in $(t,\eta_c)$. Compute the four pairs of rational endpoints of this rectangle, keeping $\Lambda=t/\eta_c$ at each corner, and retain both true box bounds.

For each corner run the original full signed cell procedure with only the nonnative carrier replaced by the exact rational point $\alpha_m$. Recompute the directed signed prime mean $\langle u_m,T_Pu_m\rangle$, the normalized overlap, and all other Gram and prime entries at that point. Keep the exact native divisor $2$ and its directed $\pi$ bracket. The midpoint prime mean uses its own directed atom sum here. For all four corners the sweep retains 212182 cells, 215512 events, and 459 exact left-endpoint ties. Its directed integral includes the slow angular contribution and bounds the complete fast contribution as in the existing sweep. The four upper displays for $\|Dg_m\|$ are $0.7345939996752$, $0.7346105550610$, $0.7347043985993$, and $0.7347209532055$, in increasing $t$, then increasing $\eta_c$. Their exact upper maximum is below $0.734721$. The corresponding base-cell norm guards give maximum upper $\|g_m\|<0.188065512$ and lower norm at the lower-left corner greater than $0.1880357872$. The upper bounds extend to the entire rectangle by affine parameter dependence and convexity. The lower bound is used only at the one corner.

### Analytic transport back to the true first carrier

For two nonzero real physical sine inputs $f,\tilde f$ with norms $C,\tilde C$, the identity
$$
 \|f-\tilde f\|^2=(C-\tilde C)^2+
  C\tilde C\|f/C-\tilde f/\tilde C\|^2
$$
shows that normalization costs at most $(C\tilde C)^{-1/2}$ on the norm difference. The two raw sine norms exceed $1.997$, and the derivative bound in $L^2([-4,4])$ for the carrier variation is $\|x\|_2=\sqrt{128/3}$. Using $|\alpha-\alpha_m|\le3.95\cdot10^{-7}$, $\|u-u_m\|<1.3\cdot10^{-6}$. Both orthogonalization denominators exceed $0.998$ and $|\langle u_m,y\rangle|<0.063$. Applying the same normalization identity to $y-\langle u,y\rangle u$ and its midpoint counterpart gives
$$
 \|v_0-v_m\|<1.4\cdot10^{-6}.
$$
For the two orthogonal projections $P_0,P_m$, each of $\|(I-P_0)P_m\|,\|(I-P_m)P_0\|$ is bounded by the square root of the sum of squares of these two column differences. For example, represent a unit vector in $P_m$ on its orthonormal basis and compare with the vector with identical coefficients in $P_0$. The difference of the projections has norm at most the maximum of these two estimates, by writing $P_0-P_m=P_0(I-P_m)-(I-P_0)P_m$ with orthogonal input and output decompositions. Thus $\|P_0-P_m\|<1.92\cdot10^{-6}$.

Put $d_h=t_{\max}(1.3\cdot10^{-6})+\eta_{\max}(1.4\cdot10^{-6})$. With $\|h_m\|<0.103,\ \|T_P\|<57.7531,\ \|D\|<60.3073$, the true transport gives
$$
 \|g_0-g_m\|
 <57.7531(d_h+0.103(1.92\cdot10^{-6}))<0.00001968,\qquad
 \|D(g_0-g_m)\|<0.00119.
$$
Use the exact expression for the cost before rounding, giving $\|w\|<0.735908$. Since the corresponding actual unshifted projected $T_P$ columns on $u,v_0$ have norms below $2.45,1.509$, respectively, the midpoint columns have norms below $2.451,1.510$ by the same transport with unit coefficients. Starting at the directed lower-left corner, the linear parameter variation costs at most
$$
 2.451(t_{\max}-t_{\min})+1.510(\eta_{\max}-\eta_{\min}).
$$
Combining with the exact carrier transport and the upper corner bound gives $0.187965<\|g_0\|<0.188086$.

### Raw plane subtraction and the true transmitted direction

Write $a=\|g_0\|^2$ and $c=\langle f_0,g_0\rangle$, where $f_0=-(I-P_0)T_Pv_0$. The exact raw plane coordinates of $w$ on $u,v_0$ are $-(a+\eta_c c)/t,-c$. Indeed $g_0= -t(I-P_0)T_Pu-\eta_c f_0$, $g_0\perp P_0$, and $T_P$ is self-adjoint. Equivalently $\langle h,w\rangle=-a$. Cauchy--Schwarz restricted to the raw two-plane gives the correlated subtraction
$$
 \|z_p\|^2\le \|w\|^2-\|P_0w\|^2
 \le \|w\|^2-\frac{\|g_0\|^4}{t^2+\eta_c^2}.
$$
Here $\Pi_HP_0=0$ exactly, and there is no identification of the raw plane with the actual last pivot plane. Insert the directed pre-rounded enclosures above and $t_{\max}^2+\eta_{\max}^2$ to obtain $\|z_p\|<0.65056$.

Use the established $\|g_*-g_0\|<0.000686$ for this budget.
Thus $\|g_*\|<0.188772$ from the new proxy bound.

Since both $g_*,g_0$ are in $P_0^\perp$, the comparison across the scalar is
$$
 \operatorname{Re}\langle z_p,g_*\rangle
 =\operatorname{Re}\langle w,g_0\rangle+
       \operatorname{Re}\langle (I-P_0)w,g_*-g_0\rangle .
$$
The same bound $0.65056$ was just proved on $(I-P_0)w$ before its last compression. With $\operatorname{Re}\langle w,g_0\rangle<0.0187272$, the upper price is $0.0187272+0.65056(0.000686)$. Finally $\kappa=\|g_*\|^2/[t(1+\rho t)]$, equivalently $\kappa=(1/t-\sigma)\|g_*\|^2$. The verified $\sigma>0.1229$ and the new norm bound give $\kappa<0.344$. In the exact square
$$
 \|\bar z\|^2=\|z_p\|^2+
  2\kappa\operatorname{Re}\langle z_p,g_*\rangle+\kappa^2\|g_*\|^2
$$
insert all unrounded bounds. The rational upper bound is below $0.664^2$ and gives
$0.672^2-\|\bar z\|^2>0.0108$ using the unrounded estimates.

### Angular bounds on the two original low spaces

Keep the original signed multiplier $m_{\rm res}=\mathbf1_{\mathcal D}w(A-P_4)$, the original $P=P_{23}$, and the old $U=\Pi_F (Y_{38170000,11000}\cap Q_{23}\mathcal H)$. The actual source projections satisfy
$$
 \|RP\|<0.547,\quad \|R|_U\|<0.009,\quad
 \|\Pi_U RP\|<0.000224,\quad \|J\|<0.0102 .
$$
Use ordinary physical norms throughout.

Let $H_1=31075000$. On the portion of the original residual set with $|\nu|\le H_1$, its low-stop filter law gives $0\le w\le2\cdot10^{-5}$. Use the unchanged $|A-P_4|\le300$. Above $H_1$ use $w\le1$, extend the estimate over the entire angular tail, and retain the signed prime multiplier as one sum before squaring. For a unit vector in $P$, the trace-zero condition cancelling the first moment gives
$$
 |\widehat p(\nu)|^2\le C_P |\nu|^{-8},\qquad
 C_P=\frac{(\pi/4)^6\sum_{j\le23000000} j^6}
 {[1-(\omega_{\max}/H_1)^2]^2}.
$$
In particular the common square root of the exact two-sided integral of the envelope is at most $0.020612$. For $|\nu|\ge H_1$ the existing gamma law $-2\le A(\nu)\le \log|\nu|+1$ implies $|A(\nu)|\le \log|\nu|+1$. For the integral of its square against $|\nu|^{-8}$, substitute $|\nu|=H_1e^x$. Relative to the integral of $|\nu|^{-8}$, the resulting average is
$$
 (\log H_1+1+1/7)^2+1/49<18.397^2 .
$$

For the prime term write $P_4(\nu)=\sum_{\ell}a_\ell e^{i\nu\ell}$ over its 916 signed lag rows, where $a_{\pm\log(p^e)}=\log(p)\chi_3(p^e)/\sqrt{p^e}$. All these lags are distinct and their ordered gaps exceed $\Delta=1/2980$, by integrating $1/x$ between successive integers at most $2980$ and treating the gap between opposite signs separately. The exact rational inventory gives $\sum_\ell |a_\ell|^2<60$. Off diagonal, one integration by parts bounds the magnitude of the two-sided Gram integral in angular measure by $2/(\pi|\ell-\ell'|H_1^8)$. The diagonal integral is $1/(7\pi H_1^7)$. The off-diagonal row sum relative to the diagonal is at most $28\sum_{j=1}^{915}(1/j)/(H_1\Delta)$. Bounding the harmonic sum by $8$ gives a relative square root for the prime-weighted integral below $7.83$, using the exact signed sum rather than termwise absolute mass. The two tail estimates and the original below-$H_1$ bound give the following angular operator estimate before physical compression
$$
 \|m_{\rm res}\widehat P\|\le 300(2\cdot10^{-5})+0.020612(18.397+7.83)<0.547.
$$

Physical compression is a contraction, hence this estimate also bounds $\|RP\|$. [Original low-stop estimate](WeilConductorThreeRadiusFourWeightedSchurSource.lean#L102)

For the old $U$, use all 11000 endpoint moments at its original native cutoff $N=38170000$, including the exact signs. Before integrating the same finite geometric remainder in the original proof, use the full sum of the $44002$ powers of its $\omega_j$ in Cauchy--Schwarz. Because
$$
 \sum_{j=1}^N (j/N)^{44002}\le 1+N/44003 ,
$$
the old $\alpha_\star$ bound on the squared native tail at $H_{\rm cut}=30000000$ improves by the factor $1/N+1/44003$. The squared tail is below $(2.68\cdot10^{-5})^2$. The actual $U$ projection lifts to its original $X$ preimage with factor at most $10/9$ and relative error at most $10^{-60}$. Its true $K_w$ norm, as well as its unweighted residual restriction norm, is below $(10/9)(2.68\cdot10^{-5}+10^{-60})$. The multiplier bound $300$ also bounds the angular operator $f\mapsto m_{\rm res}\widehat f$ on $U$ by $0.009$ before physical compression. Use $\|K_wP\|<1/40$ and the exact weighted representation for the mixed row $\Pi_U RP$. Finally the true $U$ component of $J$ is $\Pi_U R-\Pi_U RP A_{23}^{-1}PR$. Its $W$ component remains below $741\cdot10^{-265}$, with the actual inverse bound $10$ retained. These give all four displayed claims via the exact rational guards.

### The actual high rows and the old minimizing lift

Use $L=10^{25}$ and the low cutoff $M=2\cdot10^9$. Let
$z_i=z,z_y$ denote the original projections of $u,y$ onto $G_2$.
The bare sine low angular norm at $M$ is below $9.24\cdot10^{-6}$
by the earlier two-exponential bound. The true $P$ tail above $M$
is below $6.46\cdot10^{-9}$. Its squared estimate at $10^9$ scales
by at most $2^{-7}$ from the signed moment formula. The $U$ tail
remains below $1.12\cdot10^{-23}$.
On the low angular pairing with $P,U$ use the preceding bounds
on angular multiplication before physical compression. On the
high part use $300$ times the unit native tail bounds. For the
projection error of each original sine use $d=1.6\cdot10^{-8}$
times the actual outgoing row factors. The original $J$ formula
adds its bounded $W$ row and the $U,P$ interaction through
$A_{23}^{-1}$. The directed costs give on each $z_i$
$$
 \|PRz_i\|<7.1\cdot10^{-6},\qquad \|Jz_i\|<10^{-7}.
$$

For a unit vector in either $Y_0$ or $\mathcal V$, use the exact
$1.2\cdot10^{-11}$ low angular norm below $L$ established above.
Both old unit $P,U$ high tails at $L$ are below $1.4\cdot10^{-26}$
after the true $U$ preimage. Splitting the actual masked $R$
pairing at $L$ bounds its $P,U$ rows on either high space by
$300(1.2\cdot10^{-11}+1.4\cdot10^{-26})<3.61\cdot10^{-9}$.
The actual $J$ row on $Y_0$ has the extra interaction
$10\|\Pi_U RP\|\|PR|_{Y_0}\|$ and the old $W$ row. This gives
$\|J|_{Y_0}\|<3.62\cdot10^{-9}$. Retain the earlier actual
$PR,J,J_Y$ cross bounds on $\mathcal V$ of
$2.3\cdot10^{-11},7.2\cdot10^{-8},0.0017$.

Use the raw high sine pairings with their exact normalized
native preimages. For $Y_0$, use its $6\cdot10^{-24}$ amplitude
below $L$, the original bare sine angular $L^1$ bound $42$ on
the residual set, the bare sine tail $3.6\cdot10^{-13}$ above
$L$ and the relative $3\cdot10^{-272}$ preimage error. For
$\mathcal V$ use the actual $4\cdot10^{-48}$ native packet
envelope below $L$. Above $L$ use the bare sine pointwise
bound $2/L$ and the native packet $L^1$ bound $16/3$.
After the individual projection error $4\cdot10^{-272}$,
use the verified full Gram factor $5.52\cdot10^9$. For the
difference from either bare sine to its actual $G_2$ projection,
the $P,U$ components cost at most $d$ in each space and the
small high crossover uses the individual row bounds just proved.
The two high projection differences use the existing evaluation
bounds $7\cdot10^{-24}$ and $3\cdot10^{-38}$. On the old $W,L_0$
projection of the bare sine, use $10^{-281}$ each. Add the
actual preceding inverse contributions in $J_Y,J_{\mathcal V}$.
The rational guards give
$$
 \|J_Yz_i\|<1.084\cdot10^{-10},\qquad
 \|J_{\mathcal V}z_i\|<3\cdot10^{-12}.
$$
These are the original mixed maps with the original inverse
domains. No high correction is removed from $C_2$.

For $k=A^{-1}e$, the coefficient sum on $z,z_y$ is below $0.10901$.
Use the exact earlier reverse normal equations for
$Ek=k+v_s+y_h+\ell+a+p_{\rm old}$. The terms lie in
$\mathcal V,Y_0,L_0,Z,P\mathcal H$, respectively. Apply the
actual inverse norms $1/12,4,9,25/2,10$ in that order, the new
local columns and the actual intervening cross terms. The
guards give $\|v_s\|<3\cdot10^{-14}$,
$\|y_h\|<4.74\cdot10^{-11}$, $\|\ell\|<10^{-258}$,
$\|a\|<1.37\cdot10^{-7}$ and $\|p_{\rm old}\|<7.74\cdot10^{-6}$.
The earlier exact $W$ normal equation still bounds its part
of $a$ by $10^{-261}$.

### High angular return on the given collar direction

Let $h'$ be the combination of the two original bare sines
with the same coefficients as $k$ on $z,z_y$, so $k=\Pi_{G_2}h'$.
Use the expansion of $Ek$ as $h'$ plus the individual old
projection and lift differences. The $P,U$ components have
norm upper bounds $\|p_{\rm old}\|+0.10901d$ and
$\|a\|+0.10901d$. The old high components have the much smaller
bare-sine projection bounds given above.

For a unit vector in the full old native sine span, its
angular $L^1$ norm below $M$ is at most $\sqrt{M/\pi}<25240$.
Above $M$ the exact native bound
$6200(6\cdot10^7)/|\nu|^2$ integrates on both signs to an $L^1$
bound $6200(6\cdot10^7)/(\pi M)$. Apply these to the $P$ piece
and the true $U$ preimage with factor $10/9$. Pay the relative
$10^{-60}$ error on the finite low band by Cauchy--Schwarz.
Use the original $42$ bare-sine $L^1$ bound on the residual
set for $h'$. For the high old differences below $L/2$ use
their low angular norm $1.2\cdot10^{-11}$ and for the
$W,L_0$ differences the residual restriction $10^{-265}$.
Converting these last bounds to $L^1$ costs at most
$\sqrt{L/(2\pi)}<1.27\cdot10^{12}$. The multiplier costs at
most $300$. The directed result is
$$
 \|\mathbf1_{|\eta|\le L/2}m_{\rm res}\widehat{Ek}\|_1<1440 .
$$
Above $L/2$, the bare sine tail is bounded by
$2/\sqrt{\pi L/2}$, the old $P,U$ native tails use the
full reciprocal-square amplitude and original preimage,
and the other old differences cost their entire norms.
The guards give $\tau_{L/2}(Ek)<4.75\cdot10^{-11}$, where
$\tau_N$ denotes the full angular $L^2$ tail.

The Fourier physical support projection has kernel
$2\sin(4(\nu-\eta))/(\nu-\eta)$ in $d\eta/(2\pi)$.
For $|\nu|\ge L$, $|\eta|\le L/2$ it is bounded by
$4/|\nu|$. Thus the low input contributes less than
$4(1440)/\sqrt{\pi L}$ to $\tau_L(REk)$. For the high
input use contraction and the $300$ multiplier cap.
Using the exact normal equation $g_*=REk+BEk-e$, the verified
$\tau_L(e)<3.61\cdot10^{-13}$ and the unrounded guards gives
$\tau_L(g_*)<1.53\cdot10^{-8}$.

### The correlated remainder

The new global outgoing and local incoming rows for $D_5k$
give $\|D_5k\|<4.2\cdot10^{-6}$, including the $L_0$ bound.
Use the same exact direction transfer and the previously
proved sampled removed-head estimate. Its other terms are
$0.10901(0.000247)$ and $300(0.282d)$. The eliminated old
and two-plane components use $8.14\cdot10^{-7}$ and
$26d\|g_0\|$, respectively, and the three output spaces are
orthogonal. This proves $\|g_*-g_0\|<0.000033$.

Apply the separated jump estimate to $g_0$ below $M$ with
its original endpoints included. This uses the joint jump
norm below $0.468$, separation $0.000014$ and the full low
interval frame square root below $25250$. The $P,U$ pairs
with $g_0$ use their new angular operator bounds below $M$
and the true native tails above $M$. For $g_*-g_0$ use the
new global outgoing rows. Retain the bounded $W$ component
of $J$ and the original $U,P$ interaction. This gives
$$
 \|PRg_*\|<2.4\cdot10^{-5},\qquad \|Jg_*\|<4.5\cdot10^{-7}.
$$
For the raw high rows on $g_*$, use
$300[\tau_L(g_*)+(1.2\cdot10^{-11})\|g_*\|]$ and add the
same actual early inverse prices. The exact row bounds are
$\|J_Yg_*\|<4.6\cdot10^{-6}$ and
$\|J_{\mathcal V}g_*\|<4.7\cdot10^{-6}$.
The outgoing factors $0.547,0.0102,301,303$ and the actual
four inverse bounds, together with the entire $L_0$ correction,
give $\|D_5g_*\|<0.00575$.

Use the original $\|24I-T\|<276.125$ and the exact signed
remainder
$$
 W=\Pi_H[(24I-T)(g_*-g_0)+D_5g_*-G_{\rm phys}g_0]
       +\frac{m\otimes m}{d_v}g_*+P_{\rm col}g_* .
$$
Here $m=Fv$ is the actual neighboring column and $d_v>23.535$.
The old $\|m-f_0\|<0.05951$, $\|f_0\|<1.509$ give the
outgoing norm. For $\langle m,g_*\rangle$ the proxy scalar
costs at most $0.031764$, the actual signed inverse transfer
costs $0.000635$, and the new input difference costs
$1.509(0.000033)$. The full gamma and mask action on $g_0$
is below $0.000174$, and the collar remainder operator has
norm at most $0.000024$. The resulting directed sum is
$\|W\|<0.0175$.

For its scalar pairing use $b=\Pi_H(24I-T)\bar z$ and the
exact direction transfer before estimating any inverse term.
The previously checked carrier and removed-head pairings
cost $0.001196$ and $4.42\cdot10^{-6}$. The full paired
transfer through $D_5k$ is bounded by $42.29\|D_5k\|$.
For $\langle\bar z,D_5g_*\rangle$, use $\bar z=z_p+\kappa g_*$,
$\kappa<0.348$, and pair through each genuine inverse using
the established rows on $z_p$ and the new rows on $g_*$.
The $P,Z,Y_0,\mathcal V$ rows on $z_p$ are bounded by
$0.0090741,0.0050442,0.000187,0.0000047$.
The remaining $L_0$ action is bounded by $10^{-515}$ in
operator norm. This gives a scalar price below $0.00000222$.

For the neighboring scalar use the actual pairing with $z_p$.
The raw $\langle D_{s_0}g_0,f_0\rangle$ has modulus below
$0.130025$ and its exact transfer costs at most
$0.65056(0.05951)$ by the bound on the raw projected action.
Adding $\kappa|\langle m,g_*\rangle|$ bounds its pairing
with $\bar z$. Multiply by $|\langle m,g_*\rangle|/d_v$ as
required by the exact rank-one formula. This gives scalar
price below $0.000249$. The gamma and collar pairings cost at
most $0.664[0.000174+0.000024(0.18878)]$.
The directed sum gives
$\operatorname{Re}\langle\bar z,W\rangle<0.00175$. Finally,
$$
 24^2\|r\|^2
 =\|\bar z\|^2+2\operatorname{Re}\langle\bar z,W\rangle+\|W\|^2
 <0.664^2+2(0.00175)+0.0175^2<(24\cdot0.0278)^2 .
$$

### Conditional return to the corrected Schur sign

The previously targeted floor $H_+\ge10^{-4}I_H$ is sufficient.
The proved directional norm also permits the weaker floor
$H_+\ge0.0000951 I_H$, equivalently
$C_{4,+}\ge0.0001071 I_H$ with the full $0.000012$ collar error.
Under this premise, the exact residual with the trial vector
$g_*/24$ gives
$$
 \langle g_*,H_+^{-1}g_*\rangle
 =\frac{\|g_*\|^2+\operatorname{Re}\langle g_*,r\rangle}{24}
      +\langle r,H_+^{-1}r\rangle .
$$
This follows by substituting $g_*=H_+g_*/24+r$ and using
self-adjointness. Multiply by $\sigma$ and use positive
coercivity to obtain the strict upper bound
$$
 0.123\left[
   \frac{(0.18878)^2+(0.18878)(0.0278)}{24}
   +\frac{(0.0278)^2}{0.0000951}
 \right]<0.9998<1 .
$$
The original rank-one comparison would then give $C_4\ge0$
on $H$, with the already bounded collar transport error.
The arithmetic return retains every original admitted real odd
compact $C^2$ test, its gamma term and the signed prime powers.
The unconditional all-complement bound and original stage
sign remain open.

### Exact rational replay

Run the following Python block with the complete source file
path as its argument. It reads the established directed formula
fragments from this same file. The calculation uses only the
standard library and retains the historical guards in the
original carrier calculation. The separately compiled midpoint
fragments change the first carrier, its directed atom sum and
its mean. The four corner checks and the physical return
inequalities are checked explicitly.

~~~python
from contextlib import redirect_stdout
from fractions import Fraction as F
from io import StringIO
from pathlib import Path
import re
import sys

source = Path(sys.argv[1]).read_text()
fence = chr(96)*3
blocks = re.findall(r"^"+fence+r"python\n(.*?)^"+fence+r"$", source, re.M | re.S)

def fragment(needle):
    hits = [block for block in blocks if needle in block]
    assert len(hits) == 1, needle
    return hits[0]

prefix = fragment("source_grid = 10**22").split("alpha_lower, alpha_upper")[0]
prefix = prefix.replace("j = 4800000000\n", "")
markers = [
    "PASS original projected centroid sine and five inverse prices",
    "PASS 458 signed rows, 459 cells, mixed norm",
    "PASS projected neighboring sine",
    "PASS actual seventh mixed norm",
    "PASS collar proxy error",
    "PASS projected signed dispersion <.6688",
]
core = prefix + "".join(fragment(marker) for marker in markers)
assert core.count("eta_mid=sum(proxy_eta)/2") == 1
core = core.split("eta_mid=sum(proxy_eta)/2")[0]

def replace_once(code, before, after):
    assert code.count(before) == 1, before
    return code.replace(before, after)

core = replace_once(core, "def phase_trig(angles):\n",
                    "def phase_trig(angles):\n    assert 0 <= angles[0] <= angles[1]\n")

def replay(code, label):
    state = {}
    with redirect_stdout(StringIO()):
        exec(compile(code, label, "exec"), state)
    return state

original = replay(core, "original carrier guards")
t = (F(".1024515162"), F(".1024672113"))
eta = (F(".0069509890"), F(".0069592349"))
assert t[0] < original["proxy_t"][0] <= original["proxy_t"][1] < t[1]
assert eta[0] < original["proxy_eta"][0] <= original["proxy_eta"][1] < eta[1]
carrier = original["carrier"]
assert (carrier[1]-carrier[0])/2 == F("3.95e-7")
assert original["s_norm"][0] > F("1.997")
assert original["norm_orth"][0] > F(".998")
assert max(map(abs, original["gram_overlap"])) < F(".063")
print("PASS true original carrier and coefficient intervals")

midpoint_core = replace_once(
    core, "carrier = center-F(1168, 10**8), center-F(1089, 10**8)",
    "carrier = (sum((center-F(1168, 10**8), center-F(1089, 10**8)))/2,)*2",
)
midpoint_core = replace_once(
    midpoint_core, "assert tuple(v*atom_grid for v in prime_sum) == (463039688333, 463053943540)\n",
    "# The exact midpoint gets its own recomputed directed atom sum.\n",
)
midpoint_core = replace_once(midpoint_core, "mean = prime_lower, prime_upper", "mean = prime")
mid = replay(midpoint_core, "midpoint carrier guards")
assert mid["neighbor"] == original["neighbor"]
assert mid["s_norm"][0] > F("1.997")
assert mid["norm_orth"][0] > F(".998")
assert max(map(abs, mid["gram_overlap"])) < F(".063")

raw_corner = F(0)
min_corner = F(1)
max_corner = F(0)
for t_corner in t:
    for eta_corner in eta:
        lam = t_corner/eta_corner
        interval,error,cells,events,ties,fast = mid["energy_of_model"](lam,eta_corner)
        assert (cells,events,ties) == (212182,215512,459)
        assert interval[0] > 0
        raw_corner = max(raw_corner, mid["sqrt_interval"](interval)[1]+error)
        leading, slow, fast = mid["centered_cells"]((lam,lam))
        squared = mid["scale"](eta_corner**2, mid["add"](
            mid["add"](leading, slow), (-fast,fast)))
        low,high = mid["sqrt_interval"](squared)
        min_corner = min(min_corner, low)
        max_corner = max(max_corner, high)
assert raw_corner < F(".734721")
assert F(".1880357872") < min_corner <= max_corner < F(".188065512")
print("PASS four midpoint corners retain exact events and both carriers")

assert (F('3.272')*F('1.997'))**2>F(128,3)
dx=F('3.95e-7')
du=F('1.3e-6')
dv=F('1.4e-6')
dp=F('1.92e-6')
assert F('3.272')*dx<du
assert F('1.063')*du/F('.998')<dv
assert du**2+dv**2<dp**2
dh=t[1]*du+eta[1]*dv
h2=t[1]**2+eta[1]**2
assert h2<F('.103')**2
dg=F('57.7531')*(dh+F('.103')*dp)
dw=F('60.3073')*dg
assert dg<F('.00001968')
assert dw<F('.00119')
raw=F('.734721')+dw
assert raw<F('.735908')

# Lipschitz norm variation in each of the two midpoint physical columns.
dg0_u=F('57.7531')*(du+dp)
dg0_v=F('57.7531')*(dv+dp)
assert F('2.45')+dg0_u<F('2.451')
assert F('1.509')+dg0_v<F('1.510')
mid_proxy_radius=F('2.451')*(t[1]-t[0])+F('1.510')*(eta[1]-eta[0])
g_min=F('.1880357872')-mid_proxy_radius-dg
g_max=F('.188065512')+dg
assert F('.187965')<g_min<g_max<F('.188086')
proj2=raw**2-g_min**4/h2
assert proj2<F('.65056')**2

g_delta = F('.000686')
g_star_max = g_max+g_delta
assert g_star_max < F('.188772')
kappa = (1/t[0]-F('.1229'))*g_star_max**2
assert kappa < F('.344')
g_z = F('.0187272')+F('.65056')*g_delta
bar2 = proj2+2*kappa*g_z+(kappa*g_star_max)**2
assert bar2 < F('.664')**2
remaining_budget = F('.672')**2-bar2
assert remaining_budget > F('.0108')
print("PASS true alpha transport, projected action <.65056, and exact budget >.0108")

from fractions import Fraction as F

from fractions import Fraction as F
from math import isqrt

def log_atanh(y):
    lower=2*sum(y**(2*j+1)/(2*j+1) for j in range(26))
    return lower, lower+2*y**53/(53*(1-y*y))

l2=log_atanh(F(1,3))
def log_hi(n):
    k=n.bit_length()-1
    q=2**k
    return k*l2[1]+log_atanh(F(n-q,n+q))[1]

# Squared coefficients of all signed prime powers, with +/- lag rows.
S=F(0)
ntotal=0
for p in range(2,2981):
    if p==3 or any(p % j==0 for j in range(2,isqrt(p)+1)):
        continue
    ph=log_hi(p)
    p_power=p
    while p_power<=2980:
        S+=2*ph**2/p_power
        ntotal+=2
        p_power*=p
assert ntotal==916
assert S<60
assert sum(F(1,j) for j in range(1,916))<8

# The two-sided nu^-8 frame row correction after exponential integration by parts.
H=F('31075000')
pi=F('3.14')
near=F('1e9')
gap=F(1,2980)
frame=1+28*8/(H*gap)
sp=F('7.83')
assert frame*S<sp**2
# Weighted gamma integral over the entire two-sided tail.
logH=log_hi(int(H))
assert logH<F('17.253')
gamma=F('18.397')
assert (logH+1+F(1,7))**2+F(1,49)<gamma**2
n=23000000
s6=F(n*(n+1)*(2*n+1)*(3*n**4+6*n**3-3*n+1),42)
pi_upper=F(22,7)
omega=pi_upper*n/4
near_tail_sq=(pi_upper/4)**6*s6/(7*pi*H**7*(1-(omega/H)**2)**2)
near_tail=F('.020612')
assert near_tail_sq<near_tail**2
rp=near_tail*(gamma+sp)+300*F('2e-5')
assert rp<F('.547')

# Retain the true existing U_OLD preimage N=38170000 and all 11000
# endpoint cancellations. Save sum_j j^44002 via an integral of t^44002.
N=38170000
power=44002
alpha_star=F(1649631060000,52455753317481683)
tail_u_sq=alpha_star*(F(1,N)+F(1,power+1))
assert tail_u_sq<F('2.68e-5')**2
tau_u=F(10,9)*(F('2.68e-5')+F('1e-60'))
ur=300*tau_u
assert ur<F('.009')
pu=300*F(1,40)*tau_u
assert pu<F('.000224')
j=ur+10*pu*rp+F('741e-265')
assert j<F('.0102')
print('PASS true original low weighted rows')

from fractions import Fraction as F

P=F('.547')
U=F('.009')
J=F('.0102')
UP=F('.000224')
w_row=F('741e-265')
d=F('1.6e-8')
delta=F('1e-272')
c=F('.10901')
l=F('1e25')
M=F('2e9')
pi_lo=F('3.14')
rho=F('3.8e9')
sine_bound=F('9.24e-6')
assert ((1/(rho-M)+1/(rho+M))/F('1.997'))**2*M/pi_lo<sine_bound**2
# The full P moment tail from M'=1e9 scales by (M'/M)^(7/2) or faster.
p_tail=F('6.46e-9')
u_tail=F('1.12e-23')
assert F('7.3e-8')**2/2**7<p_tail**2
pz=P*(sine_bound+d)+300*p_tail
uz=U*(sine_bound+d)+300*u_tail
jz=uz+10*UP*pz+w_row
assert pz<F('7.1e-6') and jz<F('1e-7')

# The low-frequency angular norm on actual Y0 or V is the same published 1.2e-11.
# The old unweighted-native tails at L (with all preimages) are bounded by 1.4e-26.
hi_low_ang=F('1.2e-11')
old_high_ang=F('1.4e-26')
hy=300*(hi_low_ang+old_high_ang)
hj=hy*(1+10*UP)+w_row
assert hy<F('3.61e-9') and hj<F('3.62e-9')
vp=F('2.3e-11')
vj=F('7.2e-8')
vy=F('.0017')
yproj=F('7e-24')
vproj=F('3e-38')
wproj=F('1e-281')
bare_lt=F('3.6e-13')
raw_y=300*(42*F('6e-24')+bare_lt+3*delta)/(1-3*delta)
raw_v=F('5.52e9')*300*(42*F('4e-48')+2/l*F(16,3)+4*delta)
# Each old P,U projection of either bore sine costs d. The W,L0,Y0,V projections
# carry their individually known much smaller physical norms.
raw_z_y=raw_y+2*d*hy+300*(yproj+vproj+2*wproj)
raw_z_v=raw_v+d*(vp+hy)+300*(yproj+vproj+2*wproj)
jy_z=raw_z_y+10*hy*pz+F('12.5')*hj*jz+F('1e-515')
jv_z=raw_z_v+10*vp*pz+F('12.5')*vj*jz+4*vy*jy_z+F('1e-515')
assert jy_z<F('1.084e-10') and jv_z<F('3e-12')

pk=c*pz
jk=c*jz
jyk=c*jy_z
jvk=c*jv_z

# Actual old minimizing lift. Keep all five inverse effects in their original order.
vs=jvk/12
ys=4*(jyk+vy*vs)
ell=F('1e-258')
a=F('12.5')*(jk+vj*vs+hj*ys+w_row*ell)
p=10*(pk+vp*vs+hy*ys+300*F('1e-265')*ell+(UP+300*F('1e-265'))*a)
assert vs<F('3e-14') and ys<F('4.74e-11')
assert a<F('1.37e-7') and p<F('7.74e-6')

# Ek = h' + all the independently localized actual projection/lift differences.
# Use the unweighted native evaluation and true relative U-preimage error.
assert M/pi_lo<25240**2
native_l1=F(25240)+6200*F('6e7')/(pi_lo*M)
a_w=F('1e-261')
w_piece=ell+a_w+2*c*wproj
y_piece=ys+vs+c*(yproj+vproj)
assert l/(2*pi_lo)<F('1.27e12')**2
other_l1=F('1.27e12')*(hi_low_ang*y_piece+F('1e-265')*w_piece)
old_l1=native_l1*((p+c*d)+F(10,9)*(a+c*d))
old_l1+=F('1.27e12')*(F(10,9)*F('1e-60')*(a+c*d))
weighted_input_l1=300*(42*c+old_l1+other_l1)
assert weighted_input_l1<1440
bare_split_tail=F('5.06e-13')
assert 4/(pi_lo*(l/2))<bare_split_tail**2
old_split_tail=F('1.09e-26')
assert (6200*F('6e7'))**2/(3*pi_lo*(l/2)**3)<old_split_tail**2
old_tail=old_split_tail*((p+c*d)+F(10,9)*(a+c*d))
old_tail+=F(10,9)*F('1e-60')*(a+c*d)
lift_tail=bare_split_tail*c+y_piece+w_piece+old_tail
assert lift_tail<F('4.75e-11')
assert pi_lo*l>F('5.60e12')**2
r_tail=4*weighted_input_l1/F('5.60e12')+300*lift_tail
g_tail=r_tail+F('.124997987')*lift_tail+F('3.61e-13')
assert g_tail<F('1.53e-8')

# D5 k now has local and global rows from the same actual operator.
d5_k=P*10*pk+J*F('12.5')*jk+F('1e-515') +301*4*jyk+F(303,12)*jvk
transfer_h=d5_k+c*F('.000247')+300*F('.282')*d
transfer_g=F('.000033')
assert transfer_h**2+F('8.14e-7')**2+(26*d*F('.188086'))**2<transfer_g**2

# Original proxy low band, followed by the true g*-g0 transfer.
assert F('1.415')**2>2
assert (M+16/F('.000014'))/pi_lo<25250**2
g0_low=F('1.415')*F('.468')*25250/(rho-M)
pg=P*(g0_low+transfer_g)+300*p_tail*F('.188086')
ug=U*(g0_low+transfer_g)+300*u_tail*F('.188086')
jg=ug+10*UP*pg+w_row*F('.18878')
assert pg<F('2.4e-5') and jg<F('4.5e-7')
raw_g_high=300*(g_tail+hi_low_ang*F('.18878'))
jy_g=raw_g_high+10*hy*pg+F('12.5')*hj*jg+F('1e-515')
jv_g=raw_g_high+10*vp*pg+F('12.5')*vj*jg+4*vy*jy_g+F('1e-515')
assert jy_g<F('4.6e-6') and jv_g<F('4.7e-6')

d5_g=P*10*pg+J*F('12.5')*jg+F('1e-515')+301*4*jy_g+F(303,12)*jv_g
neighbor_pair=F('.031764')+F('.000635')+F('1.509')*transfer_g
neighbor=neighbor_pair*(F('1.509')+F('.05951'))/F('23.535')
W=F('276.125')*transfer_g+d5_g+F('.000174')+neighbor+F('.000024')*F('.18878')
assert d5_k<F('4.2e-6') and d5_g<F('.00575')
assert W<F('.0175')
print('PASS full W norm on the original carrier')

# The exact signed direction identity applies with all five D5 terms at once.
bar=F('.664')
kap=F('.348')
n_b=F('42.29')
delta_cross=10*(F('.0090741')+kap*pg)*pg
delta_cross+=F('12.5')*(F('.0050442')+kap*jg)*jg
delta_cross+=4*(F('.000187')+kap*jy_g)*jy_g
delta_cross+=(F('.0000047')+kap*jv_g)*jv_g/12
delta_cross+=bar*F('1e-515')*F('.18878')
assert delta_cross<F('.00000222')
neighbor_cov=neighbor_pair*(F('.130025')+F('.65056')*F('.05951')+kap*neighbor_pair)/F('23.535')
assert neighbor_cov<F('.000249')
cov=F('.001196')+F('.00000442')+n_b*d5_k+delta_cross+neighbor_cov
cov+=bar*(F('.000174')+F('.000024')*F('.18878'))
assert cov<F('.00175')
assert bar**2+2*cov+W**2<(24*F('.0278'))**2
print('PASS full corrected residual below .0278 on the exact prescribed direction')

assert F('.664')**2+2*F('.00175')+F('.0175')**2 < (24*F('.0278'))**2
assert F('.123')*((F('.18878')**2+F('.18878')*F('.0278'))/24
                 +F('.0278')**2/F('.0000951')) < F('.9998')
print("PASS conditional inverse bound with the separate all-complement premise")
~~~

## A separated retained negative window and its seven-pivot correction

2026-11-15, grwtsk contributors, AI-assisted. Written analytic
proof with exact rational guards. Lean elaboration, fresh kernel
replay and transitive axiom audit are NOT_RUN. Independent review
is UNASSESSED.

Let $c=9965368292983/100000$, $a=1/50$ and let $J$ be the
union of the two closed angular intervals of radius $a$ about
$\pm c$. This lies wholly in the original residual set and is
disjoint from the original deleted collar $J_*=J_{1/160}$ and
the paid pair. With the original filter and arithmetic terms,
the exact multiplier on $J$ satisfies
$$
                         16.48<-m(\nu)<17.57 .
$$
For the actual physical complement $H$, take
$j=126883010$, $\omega_j=j\pi/4$ and
$h=\Pi_H\psi_j$, where $\psi_j(t)=\sin(\omega_jt)/2$ on
$[-4,4]$ and is zero extended. The local negative debit on this
physical vector is greater than $0.785$.

Write $C_{4,+,J}$ for the result of deleting this additional
window and eliminating the same seven original subspaces, and
put $\Delta_J=C_{4,+,J}-C_{4,+}$. The actual localized correction
after the joint minimization satisfies
$$
             0\le\Delta_J<0.903 I_H,\qquad
             \langle h,\Delta_Jh\rangle>0.779 .
$$
These statements isolate the window's expense. The coercivity
test below keeps the positive part of the original operator.

### Signed multiplier bounds on the full disjoint window

For the 458 active prime powers write
$a_n=2\log(p)\chi_3(n)/\sqrt n$ and $s_n=\log n$. Range-reduce
the positive phases $cs_n$ using the original directed log and
Machin bounds. The cosine and sine remainders through degrees 24
and 25 and outward rounding of each signed term give
$$
\begin{split}
 34.70350<P_4(c)<34.70352,\quad
 9.524<P_4'(c)<9.525,\quad
 -1309<P_4''(c)<-1308 .
\end{split}
$$
The sum of the absolute third-derivative coefficients is below
$59746$. Taylor's theorem gives a whole-window variation price
$9.525a+(1309/2)a^2+(59746/6)a^3$.
For the original parity-one gamma term, the integer log arguments
$47500000$ and $47770701$ bound $3|\nu|/(2\pi)$ on $J$.
The Binet correction is bounded by
$5/(9b)+9/(32b^2)$ for $b=(c-a)/2$.
The directed result is $17.67<A(\nu)<17.69$. The original
high and low filter bounds give $1-3\cdot10^{-10}\le w\le1$
because the whole window lies above $10^8/3-1$ and below $10^8$.
Together with evenness this proves the two bounds on $-m$
across the full window. The calculation includes $\log(p)$,
rather than $\log(n)$, in the signed prime-power amplitudes.

### Local debit on a vector in the actual complement

The exact native carrier satisfies $0<\omega_j-c<0.090511$.
For the positive interval, $|\nu-\omega_j|\le0.110511$.
The odd sine formula and the Taylor bound for the main sine
give
$$
 |\widehat{\psi_j}(\nu)|
 \ge \tfrac12\left[4-\frac{64}{6}(0.110511)^2
                          -\frac1{2c-a}\right]>1.9348.
$$
The value at zero detuning is interpreted by continuity.
Oddness gives the same magnitude on the negative interval.
The pair has angular measure $2a/\pi$, so the unweighted
angular norm on $J$ is greater than $0.21827$.

The native probe is exactly orthogonal to the original $P$
space and the full old native span with indices at most
$38170000$. Its projection into $U$ costs at most
$(10/9)10^{-60}$ by the genuine preimage error. The two old
$W,L_0$ probes each cost at most $10^{-281}$ by the
pointwise Chebyshev estimate. The original high angular
probes on $Y_0$ and $\mathcal V$ cost below $7\cdot10^{-24}$
and $3\cdot10^{-38}$ at this carrier, by their exact preimages
and Gram factor. On the actual last plane, $\psi_j$ is
orthogonal to the true native $y$. Its raw $u$ pairing is
below $1.4\cdot10^{-10}$ by the normalized two-exponential
Fourier bound evaluated at $\omega_j$ and the factor $1/2$
for a normalized native probe. Use the known coefficient sum
$1.066$ for $v_0$ on $u,y$ and the exact projected plane defects
$\|e-u\|<2d,\ \|v-v_0\|<11d$, where $d=1.6\cdot10^{-8}$.
Adding the original eliminated projections gives
$\|\psi_j-h\|<2.2\cdot10^{-7}$ and $\|h\|\le1$.

Let $\mathcal W_J$ be the Fourier restriction to $J$ multiplied
by $\sqrt{-m}$. Fourier restriction is contractive in the
specified angular normalization. Thus
$$
       \|\mathcal W_J h\|^2>16.48(0.21827-2.2\cdot10^{-7})^2>0.785 .
$$
In particular the negative-only comparator, obtained from the
collar-deleted physical operator by discarding its surviving
positive angular part, has quadratic value less than $-0.66$
on $h$. This falsifies its required nonnegativity even on $H$.
The vector is on the bounded physical carrier. The original
admitted arithmetic test space remains the real odd compact
$C^2$ space with its gamma-density condition.

### The actual seven-pivot deletion comparison

Use $T_+=T+W_*^*W_*$ from the first deletion. Its old five
leading spaces are $\mathcal E$, and the final two form
$\mathcal P=\operatorname{span}(e,v)$. Denote the old minimizing
lift for $T_+$ by $E_+$ from $G_2$ and the last minimizing
lift by $L_+$ from $H$ to $G_2$. They are the original
successive completions for $T_+$ with the exact $T_+$
blocks. Let $\mathcal L_+=E_+L_+$ and
$\mathcal S=\mathcal E\oplus\mathcal P$.

The true leading compression $A_{\mathcal S,+}$ is positive
and invertible. In the coordinates $(x,p)\mapsto x+E_+p$,
its quadratic form is the direct sum of the actual five-space
block $A_{\mathcal E,+}\ge(1/50)I$ and the actual last
two-dimensional block $A_+>9.6I$. This map is invertible
because $E_+p-p\in\mathcal E$. For $f\in H$, all vectors
in its fiber are $\mathcal L_+f+s$ with $s\in\mathcal S$.
Their $T_+$ value is $\langle f,C_{4,+}f\rangle+
\langle s,A_{\mathcal S,+}s\rangle$. On adding
$\mathcal W_J^*\mathcal W_J$ complete the square in $s$.
With $X=\mathcal W_J|_{\mathcal S}$,
$Y=\mathcal W_J\mathcal L_+$, the exact update is
$$
 \Delta_J=Y^*(I+X A_{\mathcal S,+}^{-1}X^*)^{-1}Y .
$$
The same triangular coordinates give the exact localized
inverse identity
$$
 \begin{split}
 X A_{\mathcal S,+}^{-1}X^*
  ={}&(\mathcal W_J|_{\mathcal E})A_{\mathcal E,+}^{-1}
                   (\mathcal W_J|_{\mathcal E})^*\\
     &+(\mathcal W_J E_+|_{\mathcal P})A_+^{-1}
                   (\mathcal W_J E_+|_{\mathcal P})^* .
 \end{split}
$$
Both equalities retain the full positive contribution to
$T_+$. They do not substitute pivots from a negative-only
compression.

To bound the localized rows, angular evaluation on odd unit
physical inputs in $J$ is below $2.001$ in modulus. On the
native old sine space the pointwise bound from the exact
transform and $|\nu|>c-a$ is
$$
 \frac{6200(3\cdot10^7)}{(c-a)^2-(3\cdot10^7)^2}<2.1\cdot10^{-5}.
$$
Use its true $U$ preimage and the $W$ leakage to bound the
$Z$ evaluation by $2.34\cdot10^{-5}$. The actual $L_0,Y_0,
\mathcal V$ evaluations are below $10^{-281},7\cdot10^{-24},
3\cdot10^{-38}$ as in the previous full-angular estimates.
Orthogonality gives a row bound $3.15\cdot10^{-5}$ on
$\mathcal E$. On the actual two-plane use the normalized
bare sine estimate below $2.68\cdot10^{-10}$ for each of
$u,y$. Its detuning is at least $3.8\cdot10^9-10^8$.
Use the $v_0$ coefficient sum and the stated $2d,11d$
defects before the squared sum. The evaluation row on
$\mathcal P$ is below $3.6\cdot10^{-7}$.

For the change from the old lift $E$ of $T$ to $E_+$, the
normal equations at the original deleted collar give
$$
   E_+-E=-A_{\mathcal E,+}^{-1}(W_*|_{\mathcal E})^*W_*E .
$$
The original collar restriction bounds on the five spaces,
$\|W_*E\|^2<0.124512$ and the genuine inverse bound $50$
give $\|E_+-E\|<8\cdot10^{-8}$. The previous old lift
components on unit $G_2$ inputs are bounded by
$130,142,10^{-253},1205,26$ for $P,Z,L_0,Y_0,\mathcal V$.
Pair with the pointwise rows at the newly selected window
and add $2.001(8\cdot10^{-8})$. This gives a pointwise
bound $0.006054$ for $(E_+-I)$ on unit $G_2$ inputs.

For $L_+$ the actual off-diagonal norm is at most
$(\sqrt{8.2}+0.0000109)/9.6<0.299$. This uses the earlier
collar comparison $\|\Delta-\rho e\otimes e\|<0.0000109$
on $G_2$, since the rank-one term vanishes in the mixed
block from $\mathcal P$ into $H$. Orthogonality then gives
$\|L_+\|<1.045$. Combining with the actual plane row shows
that angular evaluation of $\mathcal L_+f-f$ on $J$ is
below $0.006327\|f\|$ for every $f\in H$.

The angular measure times the density cap is at most
$17.57(2a/\pi)$. Use the two localized rows in the exact
inverse identity to bound $\|XA_{\mathcal S,+}^{-1}X^*\|$
by
$$
 17.57(2a/\pi)\left[
  50(3.15\cdot10^{-5})^2+
       (0.006054+3.6\cdot10^{-7})^2/9.6
 \right]<9\cdot10^{-7}.
$$
Use the joint-lift row upper $2.001+0.006327$ in the
upper quadratic comparison. For the lower on $h$, angular
evaluation of $\mathcal L_+ h$ has modulus above
$1.9348-2.001(2.2\cdot10^{-7})-0.006327>1.9284$ on
both signs. Use the lower density $16.48$ and keep the
middle inverse in the exact formula bounded below by
$(1+9\cdot10^{-7})^{-1}I$. The unrounded guards give
the stated strict $0.903$ upper and $0.779$ lower.

### Positive-inclusive criterion for the all-complement floor

For $\lambda=0.0001071$, the original seven positive leading
pivots give the exact equivalence
$$
  C_{4,+}\ge\lambda I_H
  \quad\Longleftrightarrow\quad
  T_+-\lambda\Pi_H\ge0 .
$$
This follows by comparing the minimum on each fiber with
$\lambda\|\Pi_Hf\|^2$. Let $m_+,m_-$ denote the nonnegative
positive and negative parts of the actual collar-deleted
multiplier. Use the original physical angular Fourier restriction
$K$ and define
$$
 S_\lambda=B I-\lambda\Pi_H+K^*m_+K,\qquad
 N=\sqrt{m_-}\,K .
$$
Because $B>\lambda$, the first operator is uniformly
positive. Substitution gives the equivalent exact test
$\|NS_\lambda^{-1}N^*\|\le1$. Indeed
$T_+-\lambda\Pi_H=S_\lambda-N^*N$ and conjugation by
$S_\lambda^{-1/2}$ reduces positivity to the contraction
bound on $NS_\lambda^{-1/2}$.
The local test $\|\mathcal W_J S_\lambda^{-1}\mathcal W_J^*\|
\le1$ is necessary, by restriction to this negative window.

If the positive angular part were discarded, the same local
norm with $S_\lambda=B I-\lambda\Pi_H$ would exceed $6.28$.
To see this, use $h$ as a trial vector for the squared norm
of $\mathcal W_J S_\lambda^{-1/2}$ and the exact fact
$\langle h,S_\lambda h\rangle=(B-\lambda)\|h\|^2$ for that comparator. In particular the true
floor would require $\langle h,K^*m_+Kh\rangle>0.6601$,
since it must cover the local negative debit above $0.785$
after the scalar contribution $(B-\lambda)\|h\|^2$.
The current open calculation on $J$ is the local
comparison with the true positive angular part retained.
The whole-complement floor, original arithmetic stage,
and family return remain open.

### Exact rational guards

The guard uses all the literal signed prime-power rows,
both angular signs, the exact native probe and the original
leading-domain estimates above.

~~~python
from fractions import Fraction as F
from functools import cache
from math import factorial, isqrt

source_grid = 10**22
atom_grid = 10**10

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

def add(x, y):
    return x[0]+y[0], x[1]+y[1]

def scale(factor, interval):
    lower, upper = interval
    if factor < 0:
        return factor*upper, factor*lower
    return factor*lower, factor*upper

def multiply(x, y):
    products = [a*b for a in x for b in y]
    return min(products), max(products)

def phase_trig(angles):
    assert 0 <= angles[0] <= angles[1]
    lower, upper = angles[0]/pi_upper, angles[1]/pi_lower
    period = (lower+1)//2
    residue = lower-2*period
    assert -1 <= residue < 1
    angle = pi_lower*residue
    uncertainty = pi_upper*(upper-lower)+pi_upper-pi_lower
    cosine = sum((-1)**l*angle**(2*l)/factorial(2*l) for l in range(13))
    sine = sum((-1)**l*angle**(2*l+1)/factorial(2*l+1) for l in range(13))
    cos_error = uncertainty+F(22, 7)**26/factorial(26)
    sin_error = uncertainty+F(22, 7)**27/factorial(27)
    return ((max(-1, cosine-cos_error), min(1, cosine+cos_error)),
            (max(-1, sine-sin_error), min(1, sine+sin_error)))

centre = F("99653682.92983")
radius = F(1,50)
vals = [(F(0),F(0)) for _ in range(3)]
abs3 = F(0)
count=0
for p in range(2,2981):
    if p==3 or any(p%j==0 for j in range(2,isqrt(p)+1)):
        continue
    n=p
    while n<=2980:
        lag=log_bounds(n)
        prime_log=log_bounds(p)
        root=isqrt(n*source_grid**2)
        coef=scale(2*(1 if n%3==1 else -1),
                   (prime_log[0]*source_grid/(root+1),prime_log[1]*source_grid/root))
        cosine,sine=phase_trig(scale(centre,lag))
        trig_terms=(cosine,scale(-1,multiply(lag,sine)),
                    scale(-1,multiply(multiply(lag,lag),cosine)))
        for j,term in enumerate(trig_terms):
            vals[j]=add(vals[j],round_out(*multiply(coef,term),atom_grid))
        abs3+=max(map(abs,coef))*lag[1]**3
        count+=1
        n*=p
assert count==458
assert F('34.70350')<vals[0][0]<=vals[0][1]<F('34.70352')
assert F('9.524')<vals[1][0]<=vals[1][1]<F('9.525')
assert -1309<vals[2][0]<=vals[2][1]<-1308
assert abs3<59746

# Original parity-one gamma; the Binet error covers the whole band.
assert 10**8/F(3)-1<centre-radius<centre+radius<10**8
assert 3*(centre+radius)/(2*pi_lower)<47770701
b_min=(centre-radius)/2
binet=F(5,9)/b_min+F(9,32)/b_min**2
assert F(47500000)<3*(centre-radius)/(2*pi_upper)
assert log_bounds(47500000)[0]-binet>F('17.67')
assert log_bounds(47770701)[1]+binet<F('17.69')
assert F(18524227541662946,10**7)-10>centre+radius
assert F('3806849122.861433')-F(1,160)>centre+radius
assert F(3*10**7)<centre-radius<centre+radius<32*10**24
variation=F('9.525')*radius+F(1309,2)*radius**2+F(59746,6)*radius**3
upper_s4=F('17.69')-vals[0][0]+variation
weight_floor=1-F('3e-10')
assert upper_s4<0 and weight_floor*upper_s4<-F('16.48')
assert vals[0][1]+variation-F('17.67')<F('17.57')

# Actual positive-sine witness for the physical insertion, not for C4,+.
j=126883010
native_freq=F(j,4)*pi_lower,F(j,4)*pi_upper
assert 0<native_freq[0]-centre<=native_freq[1]-centre<F('.090511')
assert 4*centre/pi_lower>j-1 and 4*centre/pi_upper<j+1
max_offset=F('.090511')+radius
assert max_offset<1
amplitude=(4-F(64,6)*max_offset**2-1/(2*centre-radius))/2
assert amplitude>F('1.9348')
old_modes=38170000
assert j>old_modes
assert j!=4847030844-1
# P is exactly orthogonal; U has only its physical lift defect.
e_error=2*F('1.6e-8')
v_error=11*F('1.6e-8')
raw_cross=(1/(F('3.8e9')-native_freq[1])+1/F('3.8e9'))/(2*F('1.997'))
assert raw_cross<F('1.4e-10')
pvt_errors=e_error+v_error+(1+F('1.066'))*raw_cross
off_carrier=pvt_errors+F(10,9)*F('1e-60')+2*F('1e-281')+F('7e-24')+F('3e-38')
err=F('2.2e-7')
assert off_carrier<err
actual_lower_frame=F('1.9348')
raw_low_norm=F('.21827')
assert actual_lower_frame**2*2*radius/pi_upper>raw_low_norm**2
true_debit=F('16.48')*(raw_low_norm-err)**2
assert true_debit>F('.785')
assert true_debit>F('.124997987')
print('PASS exact original separated outside-collar signed frequency band')

# Fourier evaluation of the actual old and newer physical domains at this window.
v_norm = F('2.001')
assert 4+1/(2*(centre-radius)) < v_norm**2
p_eval = F('2.1e-5')
z_eval = F('2.34e-5')
native_amplitude = F(6200)*3*10**7/((centre-radius)**2-(3*10**7)**2)
assert native_amplitude < p_eval
assert F(10,9)*(native_amplitude+v_norm*F('1e-60'))+F('1e-281') < z_eval
l0_eval, y_eval, v_eval = F('1e-281'),F('7e-24'),F('3e-38')
old_e_eval = F('3.15e-5')
assert sum(x*x for x in (p_eval,z_eval,l0_eval,y_eval,v_eval)) < old_e_eval**2

d = F('1.6e-8')
bare_eval = F('2.68e-10')
assert (1/(F('3.8e9')-F('1e8'))+1/F('3.8e9'))/F('1.997') < bare_eval
plane_eval = F('3.6e-7')
assert ((bare_eval+2*d*v_norm)**2+
        (F('1.066')*bare_eval+11*d*v_norm)**2) < plane_eval**2

# Change of the actual old lift after deleting the original paid collar.
old_lift_change = F('8e-8')
old_col_restrictions = [F('1e-9'), F('1.1e-9'), F('1e-265'),
                        F('1e-24'), F('2e-39')]
assert 50**2*F('7.90')*sum(x*x for x in old_col_restrictions)*F('.124512') < old_lift_change**2
old_lift_eval = (130*p_eval+142*z_eval+F('1e-253')*l0_eval
                 +1205*y_eval+26*v_eval+old_lift_change*v_norm)
assert old_lift_eval < F('.006054')

assert (F('.299')*F('9.6')-F('.0000109'))**2 > F('8.2')
assert 1+F('.299')**2 < F('1.045')**2
seven_eval_change = F('.299')*plane_eval+F('1.045')*old_lift_eval
assert seven_eval_change < F('.006327')

# Use unweighted evaluations on both signs, then the exact local density caps.
weighted_measure = F('17.57')*2*radius/pi_lower
joint_padding = weighted_measure*(50*old_e_eval**2+
                (plane_eval+old_lift_eval)**2/F('9.6'))
assert joint_padding < F('9e-7')
actual_lift_floor = F('1.9348')-v_norm*err-seven_eval_change
assert actual_lift_floor > F('1.9284')
transport_lower = F('16.48')*2*radius*actual_lift_floor**2/(pi_upper*(1+joint_padding))
transport_upper = weighted_measure*(v_norm+seven_eval_change)**2
assert transport_lower > F('.779')
assert transport_upper < F('.903')
assert true_debit-F('.124997987') > F('.66')
assert true_debit/(F('.124997987')-F('.0001071')) > F('6.28')
assert F('.785')-(F('.124997987')-F('.0001071')) > F('.6601')
print('PASS actual seven-inverse localized correction and physical negative-only obstruction')
~~~

## The actual positive flanks pay for this negative window

Keep the full physical odd carrier with zero extension, the original
frequency restriction $K$ and the actual $S_\lambda$ above. The test here
holds on the complex physical carrier, and hence also for real odd tests
and on the actual Schur complement's physical subspace $H$. With
$\lambda=0.0001071$ and the same retained $J$, one has
$$
      \|\mathcal W_J S_\lambda^{-1}\mathcal W_J^*\|<0.80.
$$
In particular the original positive part on
$h=\Pi_H\psi_{126883010}$ satisfies
$\langle h,K^*m_+Kh\rangle>0.8563$.
This pays the local debit using actual positive angular mass. The
counterexample with norm greater than $6.28$ still applies when the
positive part is discarded.

Let $c=99653682.92983$, $a=0.24$, $b=0.35$ and $d=b-a$.
The two intervals $c+[a,b]$ and $c-[a,b]$ and their reflections
lie in the original filter domain, disjoint from the paid pair and
both collars in the preceding calculation. On all four intervals,
the original collar-deleted multiplier satisfies $m>11.5$. Indeed,
the previous Binet estimate has error at most
$5/(9y)+9/(32y^2)$ at $y=|\nu|/2$. On the four intervals,
$3|\nu|/(2\pi)>47500000$, and the directed lower bound for its
logarithm less the full Binet error yields $A>17.67$. The original
filter bounds give $w\ge 1-3\cdot10^{-10}$. For the signed sum
$P_4=\sum a_n\cos(\nu\log n)$ with all 458 original rows, the
directed upper bound for $\sum |a_n|\log^2 n$ is $13504$.
On each flank the guard evaluates the outward radial derivative of
$P_4$ at the twelve nodes of spacing $0.01$. Each upper endpoint
plus $13504(0.01/2)$ is negative, so the nearest node and the
mean value theorem prove the outward decrease throughout both
intervals. At either inner endpoint the lower enclosure
$(1-3\cdot10^{-10})(17.67-P_4)$ exceeds $11.5$. Evenness gives
the reflected intervals. In particular the estimate uses the signs
$\chi_3(n)$ and the prime weights $2\log(p)/\sqrt n$; the
absolute second derivative bound serves only to cover the gaps
between nodes.

For $t\in[-4,4]$ write $v_\nu(t)=\sin(\nu t)$ and
$$
 u(t)=\frac1{2d}\int_a^b(v_{c+s}(t)+v_{c-s}(t))\,ds
      =\sin(ct)q(t),\qquad q(t)=\frac1d\int_a^b\cos(st)\,ds .
$$
For odd physical $f$, $|\widehat f(\nu)|=|\langle v_\nu,f\rangle|$
and the two signs have equal modulus. Thus, with
$Q_+[f]=\langle f,K^*m_+Kf\rangle$ and $\mu=11.5$,
Jensen's inequality on the two positive flanks gives
$$
 |\langle u,f\rangle|^2
 \le \frac{\pi}{2d\mu}Q_+[f].
$$
The reflected flanks give the factor $1/\pi$ multiplying the
integral on the two positive flanks under the original
$d\nu/(2\pi)$ angular measure.

Put $\alpha=1.14$ and $\beta=B-\lambda=0.124890887$.
For $|\epsilon|\le0.02$,
$e_\epsilon=v_{c+\epsilon}-\alpha u
=A_\epsilon\sin(ct)+B_\epsilon\cos(ct)$, where
$A_\epsilon=\cos(\epsilon t)-\alpha q(t)$ and
$B_\epsilon=\sin(\epsilon t)$. Its squared norm is the sum of
the nonoscillatory integral
$$
 \int_0^4 (1+\alpha^2q^2-2\alpha q\cos(\epsilon t))\,dt
$$
and the integrals over $[-4,4]$ of
$(B_\epsilon^2-A_\epsilon^2)\cos(2ct)/2$ and
$A_\epsilon B_\epsilon\sin(2ct)$.
Let $q_L,q_U$ be the cosine polynomials averaged over $[a,b]$
through degrees six and eight. Alternating remainders at
$|st|\le1.4$ give $0<q_L\le q\le q_U$. Positivity of $q_L$
follows from the bound obtained by dropping its positive
degree-four term and evaluating the other nonconstant terms at
$t=4$. Also $\cos(\epsilon t)\ge 1-0.02^2t^2/2>0$.
The exact integral of
$1+\alpha^2 q_U^2-2\alpha q_L(1-0.02^2 t^2/2)$ is below
$0.241$. For either oscillatory term with coefficient $F(t)$,
one integration by parts bounds the absolute integral by
$(2\|F\|_\infty+8\|F'\|_\infty)/(2c)$. The bounds
$|A_\epsilon|\le2.14$, $|B_\epsilon|\le0.08$,
$|A'_\epsilon|\le0.419$, $|B'_\epsilon|\le0.02$ give a total
oscillatory error below $10^{-7}$. This proves
$\|e_\epsilon\|^2<0.2411$ on the full original carrier.

Since $\langle f,S_\lambda f\rangle\ge\beta\|f\|^2+Q_+[f]$,
two-term Cauchy–Schwarz applied to
$\langle v_{c+\epsilon},f\rangle
=\alpha\langle u,f\rangle+\langle e_\epsilon,f\rangle$
gives
$$
 |\langle v_{c+\epsilon},f\rangle|^2
 \le\left(\frac{\alpha^2\pi}{2d\mu}
       +\frac{\|e_\epsilon\|^2}{\beta}\right)
       \langle f,S_\lambda f\rangle .
$$
Use the same estimate at the reflected frequency, then integrate
$-m<17.57$ on $J$. The guard bounds the product of the
evaluation constant and $17.57(2\cdot0.02)/\pi$ by $0.80$.
Substitute $f=S_\lambda^{-1/2}g$ to get the asserted operator
bound. For the specific $h\in H$, $\|h\|\le1$ and
$\|\mathcal W_Jh\|^2>0.785$. Its exact $S_\lambda$ form is
$\beta\|h\|^2+Q_+[h]$, so $Q_+[h]>0.785/0.80-\beta>0.8563$.

The remaining test retains the other negative windows and their
coupling to $J$. Write $N'$ for $N$ restricted to the complement
of $J$ in the negative angular support and set
$$
 A_J=\mathcal W_JS_\lambda^{-1}\mathcal W_J^*,\quad
 D=N'S_\lambda^{-1}(N')^*,\quad
 C=\mathcal W_JS_\lambda^{-1}(N')^* .
$$
Since $I-A_J>0.20I$, completing the square on the direct sum of
the two angular $L^2$ spaces gives the exact remaining criterion
$$
            D+C^*(I-A_J)^{-1}C\le I.
$$
Equivalently the comparator for $N'$ is
$S_\lambda-\mathcal W_J^*\mathcal W_J\ge0.20 S_\lambda$ on
the original physical space. The coupling term is positive and
bounded above by $5C^*C$. Separate local norm estimates do not
bound this term. The all-complement floor and the signed return
to the original radius-four arithmetic stage remain open, with
no change to the family or conductor-one pole obligations.

The written argument is supported by the following exact rational
guard against the original signed source. The guard reuses the
earlier directed arithmetic definitions in this document and
takes this document as its sole command-line input. Lean checks
of this advance are NOT_RUN; this is no claim of external review.

~~~python
from pathlib import Path
import re
import sys

source = Path(sys.argv[1]).read_text()
guards = re.findall(r"^~~~python\n(.*?)^~~~$", source, re.M | re.S)
prior = [g for g in guards if g.startswith("from fractions import Fraction") and "PASS actual seven-inverse localized correction" in g]
assert len(prior)==1
pivot = 'centre = F("99653682.92983")'
assert prior[0].count(pivot)==1
exec(compile(prior[0].split(pivot)[0], "previous directed arithmetic", "exec"))

centre = F("99653682.92983")
a,b = F(".24"),F(".35")
step = F(".01")
flank_height = F("11.5")
negative_radius = F(".02")
weight_floor = 1-F("3e-10")
assert F(10**8,3)-1 < centre-b < centre+b < 10**8
assert centre+b < F("1852422754.1662946")-10
assert centre+b < F("3806849122.861433")-F(1,160)
gamma_arg_lower = 3*(centre-b)/(2*pi_upper)
binet_base = (centre-b)/2
binet_error = F(5,9)/binet_base+F(9,32)/binet_base**2
assert gamma_arg_lower > 47500000
gamma_lower = F("17.67")
assert log_bounds(47500000)[0]-binet_error > gamma_lower

# Directed signed atom list. T_P still uses the original 458 prime powers.
atoms=[]
absolute_second=F(0)
for p in range(2,2981):
    if p==3 or any(p%d==0 for d in range(2,isqrt(p)+1)):
        continue
    log_p=log_bounds(p)
    n=p
    while n<=2980:
        lag=log_bounds(n)
        assert 0<lag[0]<=lag[1]<8
        root=isqrt(n*source_grid**2)
        coef=scale(2*(1 if n%3==1 else -1),
                   (log_p[0]*source_grid/(root+1),log_p[1]*source_grid/root))
        atoms.append((coef,lag))
        absolute_second+=max(map(abs,coef))*lag[1]**2
        n*=p
assert len(atoms)==458 and absolute_second < 13504

def signed_value_and_slope(x):
    val,slope=(F(0),F(0)),(F(0),F(0))
    for coef,lag in atoms:
        phase=scale(x,lag)
        assert 0<=phase[0]<=phase[1]
        co,si=phase_trig(phase)
        val=add(val,round_out(*multiply(coef,co),atom_grid))
        slope_piece=multiply(coef,scale(-1,multiply(lag,si)))
        slope=add(slope,round_out(*slope_piece,atom_grid))
    return val,slope

assert (b-a)/step==11
for sign in (-1,1):
    for idx in range(12):
        off=a+idx*step
        value,slope=signed_value_and_slope(centre+sign*off)
        # Outward radial derivative of P4 must stay negative on each flank.
        assert scale(sign,slope)[1]+absolute_second*step/2 < 0
        if idx==0:
            assert weight_floor*(gamma_lower-value[1])>flank_height
print("PASS literal filtered positive flanks, including continuum between mesh samples")

# q(t) is the uniform average of cos(st) for s in [a,b].
# Polynomials are in t^2. The odd truncation is a lower bound.
def pol_add(a_coeff,b_coeff):
    result=[F(0)]*max(len(a_coeff),len(b_coeff))
    for coeffs in (a_coeff,b_coeff):
        for k,coeff in enumerate(coeffs):
            result[k]+=coeff
    return result

def pol_mul(a_coeff,b_coeff):
    result=[F(0)]*(len(a_coeff)+len(b_coeff)-1)
    for i,c_i in enumerate(a_coeff):
        for j,c_j in enumerate(b_coeff):
            result[i+j]+=c_i*c_j
    return result

def pol_scale(x,coeffs):
    return [x*c for c in coeffs]

def half_integral(coeffs):
    return sum(c*F(4**(2*k+1),2*k+1) for k,c in enumerate(coeffs))

moments=[(b**(2*k+1)-a**(2*k+1))/((2*k+1)*(b-a)) for k in range(5)]
assert 4*b < F("1.5")
q_up=[(-1)**k*moment/factorial(2*k) for k,moment in enumerate(moments)]
q_low=q_up[:-1]
assert 1-moments[1]*4**2/2-moments[3]*4**6/factorial(6)>0
cos_low=[F(1),-negative_radius**2/2]
assert 1-negative_radius**2*4**2/2>0

amplitude=F("1.14")
nonosc_poly=pol_add([F(1)],pol_scale(amplitude**2,pol_mul(q_up,q_up)))
nonosc_poly=pol_add(nonosc_poly,pol_scale(-2*amplitude,pol_mul(q_low,cos_low)))
nonosc_norm=half_integral(nonosc_poly)
assert nonosc_norm < F(".241")

# Integration by parts on the genuine carrier, with both oscillatory terms.
A=1+amplitude
B=4*negative_radius
dA=negative_radius+amplitude*b
dB=negative_radius
osc_sup=(A*A+B*B)/2+A*B
deriv_sup=A*dA+B*dB+dA*B+A*dB
osc_norm=(2*osc_sup+8*deriv_sup)/(2*centre)
assert osc_norm < F("1e-7")
error_norm_sq=nonosc_norm+osc_norm
assert error_norm_sq < F(".2411")

floor=F(".0001071")
scalar=F(".124997987")-floor
positive_cost=amplitude**2*pi_upper/(2*(b-a)*flank_height)
evaluation_cost=positive_cost+error_norm_sq/scalar
negative_amount=F("17.57")*2*negative_radius/pi_lower
ratio=negative_amount*evaluation_cost
assert ratio < F(".80")
assert F(".785")/F(".80")-scalar > F(".8563")
print("PASS every actual negative-window evaluation, local inverse norm <.80, and probe positive part >.8563")
~~~

## Two actual negative windows with disjoint positive payments

2026-11-15, grwtsk contributors, AI-assisted. Written analytic
proof with exact rational guards. Lean elaboration, kernel replay
and transitive axiom audit are NOT_RUN. External independent review
is UNASSESSED.

Keep the preceding $S_\lambda$ on the original complex odd
$L^2([-4,4])$ carrier, $\lambda=0.0001071$, and let
$c_1=99653682.92983$, $c_2=5085348195\pi/4$. Let $J_i$ be the
union of the two intervals of radius $r=0.02$ about $\pm c_i$.
Here $J_1=J$ is the preceding window. For the same actual
$\mathcal W_{J_i}=\sqrt{-m}\,1_{J_i}K$ define the column
$\mathcal W_{12}=(\mathcal W_{J_1},\mathcal W_{J_2})^{\mathsf T}$.
Then
$$
                 \|\mathcal W_{12}S_\lambda^{-1}\mathcal W_{12}^*\|
                 <0.795 .
$$
This is a coupled bound. In particular the second diagonal plus its
exact cross expense after eliminating the first window is below
$0.795I$ on the second angular space.

### The literal second window and its two flank heights

For each $i$ take the two positive-frequency flanks $c_i\pm[a,b]$
with $a=0.24$, $b=0.35$, and reflect them about zero. The two sets of four flanks are disjoint.
For the second center their absolute frequencies, and those of
$J_2$, lie between $3.5\cdot10^9$ and $4\cdot10^9$ and outside
the paid pair and the actual deleted collar. The original high
and all-lobe low filter bounds give $w\ge1-3\cdot10^{-10}$.
The bounds below retain the signed $P_4$ with all 458 terms.

The corresponding value of $3|\nu|/(2\pi)$ is bounded using
$3(5085348195)/8$ and the detuning $3b/(2\pi)$, then enclosed
between integers. The directed logarithm less or plus the
original Binet error $5/(9y)+9/(32y^2)$, $y=|\nu|/2$,
gives $21.3687<A<21.3689$ on the whole band.
Enclose each value of $P_4$ using the Machin interval for
$c_2$ and the directed log and trigonometric bounds for every
original signed atom. The same absolute differentiated sum
gives $|P_4''|<13504$. On any adjacent grid interval of length
$h_s$, $P_4$ differs from its linear interpolant by at most
$13504h_s^2/8$. Indeed the functions obtained by subtracting
the interpolant and adding or subtracting
$13504(x-x_0)(x_1-x)/2$ have opposite convexities and vanish
at both endpoints. Enclose the interpolant using its exact
node intervals. Using $h_s=0.005$ on $J_2^+$ and $0.01$ on
each flank proves
$$
  13.4<-m<15\ \text{on }J_2,\qquad
  m>8.3\ \text{on }c_2-[a,b],\qquad
  m>18.38\ \text{on }c_2+[a,b] .
$$
Evenness gives the reflected flank heights. On the first flanks
the already proved lower heights on both sides are $11.5$.

### Coupled physical evaluation and angular isometries

For each window write $J_i^+=[c_i-r,c_i+r]$, and on it put
$d\mu_i=(-m(\nu))\,d\nu/\pi$, $\mathcal G_i=L^2(J_i^+,d\mu_i)$
and $M_i=\mu_i(J_i^+)$. For $v_\nu(t)=\sin(\nu t)$, the folded
operator $V_i:\mathcal H\to\mathcal G_i$ is
$V_i f(\nu)=\langle v_\nu,f\rangle$. With the original Fourier
sign and inner product convention,
$(U_i g)(\pm\nu)=\pm i\sqrt{-m(\nu)}\,g(\nu)$ is an isometry
into the original angular space on $J_i$, and
$\mathcal W_{J_i}=U_i V_i$. Thus folding preserves the exact
positive-operator norm, including its mixed blocks; the
orthogonal complement of the folded range contributes zero.

Let $u_i=(2d)^{-1}\int_a^b(v_{c_i+s}+v_{c_i-s})ds$, $d=b-a$,
and $Q_i[f]$ be the contribution to $Q_+[f]$ on the four flanks
of window $i$. Write $\mu_i^\pm$ for their right and left lower
heights. Weighted Cauchy–Schwarz and the original reflected
angular measure give
$$
 q_i^2=\frac{\pi}{4d}\big((\mu_i^+)^{-1}+(\mu_i^-)^{-1}\big),
 \qquad |\langle u_i,f\rangle|^2\le q_i^2 Q_i[f],\qquad
 Q_1[f]+Q_2[f]\le Q_+[f].
$$
The last inequality is an actual budget on disjoint angular
sets. It does not count either positive flank twice.

For $\alpha=1.14$, put $e_{i,\nu}=v_\nu-\alpha u_i$ and
$E_i f(\nu)=\langle e_{i,\nu},f\rangle$. The preceding cosine
polynomial error argument applies at both centers with the
same envelope and squared error $<0.2411$; its oscillatory
bound uses $c_i$ in the denominator. Let $\beta=B-\lambda$.
On the direct sum $\mathcal H\oplus\mathbb C^2$ define
$$
 \mathsf M(x,z)_i=\beta^{-1/2}E_i x+\alpha q_i z_i\,1_{J_i^+},\qquad
 Lf=\big(\sqrt\beta f,(\langle u_i,f\rangle/q_i)_i\big).
$$
Then $V=(V_1,V_2)^{\mathsf T}=\mathsf M L$ and
$\|Lf\|^2\le\langle f,S_\lambda f\rangle$. All evaluation
maps are bounded on the physical carrier. In particular,
$E_i^*g=\int_{J_i^+}e_{i,\nu}g(\nu)\,d\mu_i(\nu)$, an
integral in that carrier; each $\mu_i$ has finite mass and the
kernels are uniformly bounded.

The two diagonal blocks of $\mathsf M\mathsf M^*$ have norms
at most
$$
 M_i\big(\alpha^2q_i^2+0.2411/\beta\big),
$$
which are below $0.794$ and $0.68$, respectively. The mixed block
is $\beta^{-1}E_1E_2^*$, since the positive columns occupy
different coordinates. To bound it on the original physical
carrier, use the exact sine Gram identity
$$
 \langle v_x,v_y\rangle
 =\frac{\sin(4(x-y))}{x-y}-\frac{\sin(4(x+y))}{x+y}.
$$
Each error is a signed average of sines at frequencies in
$[c_i-b,c_i+b]$ with coefficient mass at most $1+\alpha$.
Therefore the norm of the mixed block is at most
$$
 \frac{\sqrt{M_1M_2}}{\beta}(1+\alpha)^2
 \left[\frac{1}{c_2-c_1-2b}+\frac{1}{c_2+c_1-2b}\right]
 <2\cdot10^{-8}.
$$
Here a uniform absolute kernel bound on a product of the two
finite measure spaces gives the claimed norm estimate.
The bound is on the mixed block of a joint majorant; it
does not presume frequency decay of $S_\lambda^{-1}$.
The norm of the self-adjoint off-diagonal block matrix is
the norm of its mixed block. Thus
$\|\mathsf M\mathsf M^*\|<0.795$, and $\|LS_\lambda^{-1/2}\|\le1$
and the angular isometries prove the joint bound.

### Exact return after the two angular windows

Write $A_1=\mathcal W_{J_1}S_\lambda^{-1}\mathcal W_{J_1}^*$,
$D_2=\mathcal W_{J_2}S_\lambda^{-1}\mathcal W_{J_2}^*$ and
$C_{12}=\mathcal W_{J_1}S_\lambda^{-1}\mathcal W_{J_2}^*$.
Choose $\rho<0.795$ strictly above the joint norm. Taking the
Schur complement of $\rho I-\mathcal W_{12}
S_\lambda^{-1}\mathcal W_{12}^*$ gives
$$
 D_2+C_{12}^*(\rho I-A_1)^{-1}C_{12}\le \rho I.
$$
Order reversal under inversion bounds the same expression with
$(I-A_1)^{-1}$ by $\rho I$. This includes the actual second
window's exact coupling to the first. The joint bound also gives a positive physical comparator after
these two debits:
$$
 S_\lambda''=S_\lambda-\mathcal W_{12}^*\mathcal W_{12}
                         \ge0.205S_\lambda .
$$
More precisely the remaining global test for $C_{4,+}\ge\lambda I_H$
is $\|N''(S_\lambda'')^{-1}(N'')^*\|\le1$, where $N''$ is the
restriction of the actual negative map to the rest of the
negative support. The original seven leading pivots are unchanged.
No test on the whole remaining negative support follows from this
two-window bound; the corrected arithmetic stage, all stages,
and the RH and primitive Dirichlet GRH returns remain open.

The exact guard uses this complete document as input and reuses
only the previous source's directed-arithmetic definitions and
cosine-polynomial error calculation.

~~~python
from pathlib import Path
import re
import sys

document = Path(sys.argv[1]).read_text()
blocks = re.findall(r"^~~~python\n(.*?)^~~~$", document, re.M | re.S)
previous = [g for g in blocks if g.startswith("from fractions import Fraction")
            and "PASS actual seven-inverse localized correction" in g]
assert len(previous) == 1
pivot = 'centre = F("99653682.92983")'
assert previous[0].count(pivot) == 1
exec(compile(previous[0].split(pivot)[0], "source directed arithmetic", "exec"))

c1 = F("99653682.92983")
k2 = 5085348195
c2 = scale(F(k2,4), (pi_lower,pi_upper))
a,b,r = F(".24"),F(".35"),F(".02")
assert 3500000000<c2[0]-b<c2[1]+b<4000000000
assert c2[0]-b > F("3806849122.861433")+F(1,160)
assert c2[0]-b > F("1852422754.1662946")+10
assert c2[0]-b > 30000000 and c2[1]+b < 35*10**24
assert c2[0]-b > c1+b

# Binet's full error, and the exact centre 5085348195*pi/4.
lower_arg,upper_arg = (3*k2//8-1,3*k2//8+2)
assert lower_arg<F(3*k2,8)-3*b/(2*pi_lower)
assert F(3*k2,8)+3*b/(2*pi_lower)<upper_arg
y = (c2[0]-b)/2
gerror = F(5,9)/y+F(9,32)/y**2
gamma=(F("21.3687"),F("21.3689"))
assert gamma[0]<log_bounds(lower_arg)[0]-gerror
assert log_bounds(upper_arg)[1]+gerror<gamma[1]

atoms=[]
abs_second=F(0)
for p in range(2,2981):
    if p==3 or any(p%d==0 for d in range(2,isqrt(p)+1)):
        continue
    log_p=log_bounds(p)
    n=p
    while n<=2980:
        lag=log_bounds(n)
        root=isqrt(n*source_grid**2)
        amplitude=scale(2*(1 if n%3==1 else -1),
                        (log_p[0]*source_grid/(root+1),log_p[1]*source_grid/root))
        atoms.append((amplitude,lag))
        abs_second+=max(map(abs,amplitude))*lag[1]**2
        n*=p
assert len(atoms)==458 and abs_second<13504

def node_value(s):
    x=add(c2,(s,s))
    val=(F(0),F(0))
    for amplitude,lag in atoms:
        co,_=phase_trig(multiply(x,lag))
        val=add(val,round_out(*multiply(amplitude,co),atom_grid))
    return val

def value_over_segment(s,t,h):
    steps=(t-s)/h
    assert steps.denominator==1
    nodes=[node_value(s+i*h) for i in range(int(steps)+1)]
    error=abs_second*h*h/8
    return min(y[0] for y in nodes)-error,max(y[1] for y in nodes)+error

wmin=1-F("3e-10")
pval=value_over_segment(-r,r,F(".005"))
assert wmin*(pval[0]-gamma[1])>F("13.4")
assert pval[1]-gamma[0]<15
for s,t,mu in [(-b,-a,F("8.3")),(a,b,F("18.38"))]:
    pval=value_over_segment(s,t,F(".01"))
    assert wmin*(gamma[0]-pval[1])>mu
print("PASS second actual signed negative window and unequal positive flank floors")

# Same sine envelope as the preceding window. Reuse the previously
# checked integrated cosine polynomial, then compare oscillatory errors.
symmetric = [g for g in blocks if g.startswith("from pathlib import Path")
             and 'print("PASS every actual negative-window evaluation,' in g
             and not 'published two-window guard' in g]
assert len(symmetric)==1
start="# q(t) is the uniform average"
stop="floor=F("
assert symmetric[0].count(start)==symmetric[0].count(stop)==1
polycode=start+symmetric[0].split(start)[1].split(stop)[0]
for checked_centre in (c1,c2[0]):
    scope=dict(F=F,factorial=factorial,centre=checked_centre,a=a,b=b,negative_radius=r)
    exec(compile(polycode,"source cosine error bound","exec"),scope)
    assert scope["error_norm_sq"]<F(".2411")

# The off-diagonal compare is for the joint majorant, not S_lambda^-1 itself.
alpha=F("1.14")
beta=F(".124890887")
assert beta==F(".124997987")-F(".0001071")
mu1p=mu1m=F("11.5")
mu2p,mu2m=F("18.38"),F("8.3")
mass1=F("17.57")*2*r/pi_lower
mass2=15*2*r/pi_lower
assert max(mass1,mass2)<1
d=b-a
q1sq=pi_upper/(4*d)*(1/mu1p+1/mu1m)
q2sq=pi_upper/(4*d)*(1/mu2p+1/mu2m)
cost1=mass1*(alpha**2*q1sq+F(".2411")/beta)
cost2=mass2*(alpha**2*q2sq+F(".2411")/beta)
gap=c2[0]-c1-2*b
frequency_sum=c1+c2[0]-2*b
off=(1+alpha)**2/beta*(1/gap+1/frequency_sum)
assert cost1<F(".794") and cost2<F(".68")
assert off<F("2e-8")
assert max(cost1,cost2)+off<F(".795")
print("PASS published two-window guard: actual joint contraction <.795")
~~~

## Three retained windows, including a nearby mixed block

2026-11-15, grwtsk contributors, AI-assisted. Written analytic
proof with exact rational guards. Lean elaboration, kernel replay
and transitive axiom audit are NOT_RUN. External independent
review is UNASSESSED.

Keep the preceding source, spaces, multiplier, $J_1,J_2$ and
$S_\lambda$. Set $c_3=c_2-5.55$, exactly, and let $J_3$ contain
the two intervals of radius $r=0.02$ about $\pm c_3$. Define
$\mathcal W_{123}=(\mathcal W_{J_1},\mathcal W_{J_2},
\mathcal W_{J_3})^{\mathsf T}$ using the actual reflected
negative rows. On the original odd physical carrier,
$$
        \|\mathcal W_{123}S_\lambda^{-1}\mathcal W_{123}^*\|
                   <0.795 .
$$
Thus the previously proved reserve $0.205 S_\lambda$ survives
all three debits. The smaller separation $c_2-c_3=5.55$
requires an estimate for the actual physical error kernels.

### Signed third window and flanks

The whole third band $[c_3-0.35,c_3+0.35]$ is inside
$(3.5\cdot10^9,4\cdot10^9)$, beyond the original paid pair
and deleted collar. Its two positive-frequency flanks
$c_3\pm[0.24,0.35]$ and their reflections are disjoint from
the previous allocations. Thus the original filter gives
$1-3\cdot10^{-10}\le w\le1$ there. Enclose the logarithm at
integer arguments bracketing $3|\nu|/(2\pi)$, now with exact
detuning $c_3-c_2=-5.55$. The directed full Binet error gives
$21.3687<A<21.3689$. Use the literal signed 458 terms to
enclose $P_4$ at the mesh nodes, and $|P_4''|<13504$ to pay
the interpolation error $13504h_s^2/8$ on every cell.
As above the spacing is $0.005$ in the negative window and
$0.01$ on the flanks. The resulting strict bounds are
$$
  5.39<-m<5.72\ \text{on }J_3,\qquad
  m>14.12\ \text{on }c_3-[0.24,0.35],\qquad
  m>15.39\ \text{on }c_3+[0.24,0.35].
$$
Evenness gives the corresponding reflected bounds. The
larger proposed uniform lower depth $5.5$ fails:
at $c_3-0.02$, the directed upper bound for $P_4-A$ is
below $5.5$, hence $-m<5.5$ at this actual endpoint.

### The nearby physical error pair

Use the previous exact angular folding and extend the same
factorization to $\mathcal H\oplus\mathbb C^3$. The three
positive resource coordinates use disjoint angular sets.
The error operator is still formed from
$e_{i,\nu}=v_\nu-\alpha u_i$, $\alpha=1.14$. All three diagonal
caps use $\|e_{i,\nu}\|^2<0.2411$, by the same cosine polynomials
and the oscillation estimate at each $2c_i$. They are
$0.794,0.68,0.24$ for the three diagonal blocks of the joint
majorant $\mathsf M\mathsf M^*$.

For both $i=2,3$ write
$$
 e_{i,c_i+\epsilon}=A_\epsilon\sin(c_i t)+B_\epsilon\cos(c_i t),
 \quad A_\epsilon=\cos(\epsilon t)-\alpha q(t),\quad
 B_\epsilon=\sin(\epsilon t),\qquad
 q(t)=\frac{1}{b-a}\int_a^b\cos(st)\,ds.
$$
All following variations are on $[0,4]$. Put
$H_0=1-\alpha q$. The alternating polynomial gives
$1-\alpha q_L(4)<0.57$. The functions $A_\epsilon,H_0$ are
increasing: for $0\le t\le4$ the derivative of $A_\epsilon$
is at least
$t(\alpha a^2(1-(4b)^2/6)-r^2)\ge0$, from the sine Taylor
lower bound and $|\sin(\epsilon t)|\le|\epsilon|t$.
They start at $-0.14$ and are at most $0.57$. Their absolute
bounds and variations are therefore $0.57$ and $0.71$.
The difference $A_\epsilon-H_0=\cos(\epsilon t)-1$ has
supremum in modulus and variation both at most $0.0032$.
For $B_\epsilon$ both bounds are $0.08$. The latter two
variation bounds use monotonicity on $[0,4]$.

Write $A,A',B,B'$ here for envelopes at the two detunings,
with the primes denoting the second detuning, not derivatives.
Since $\operatorname{Var}(H_0^2)\le0.14^2+0.57^2$,
expand $AA'-H_0^2=(A-H_0)A'+H_0(A'-H_0)$. The product
variation inequality gives the following exact upper bounds:
$$
 \operatorname{Var}(AA')\le0.352692,\quad
 \operatorname{Var}(BB')\le0.0128,\quad
 \operatorname{Var}(AB'),\operatorname{Var}(BA')\le0.1024 .
$$
For example, the correction to
$\operatorname{Var}(H_0^2)$ in the first bound is at most
$2(0.0032\cdot0.71+0.57\cdot0.0032)$.

The product of the two odd errors is even, so integrate on
$[0,4]$ and use product-to-sum. With $\delta=c_2-c_3=5.55$
and $s=c_2+c_3$, the cosine coefficients at $\delta,s$ are
$AA'+BB'$ and $-AA'+BB'$, and the sine coefficients are
$AB'-BA'$ and $AB'+BA'$, respectively. One integration
by parts for each coefficient costs its variation divided by
the corresponding frequency. The sum of the four product
variations is $0.570292$ at either frequency. At zero the
additional boundary terms vanish: cosine integration uses a
sine primitive and the sine coefficients contain a $B$ at zero.
At four the cosine primitive at the difference frequency has
$|\sin(4\delta)|\le|4\delta-7\pi|<0.21$. The sine primitive
there has numerator at most one. Hence uniformly in both
detunings the actual Gram kernel satisfies
$$
 |\langle e_{2,c_2+\epsilon},e_{3,c_3+\eta}\rangle|
 \le \frac{0.570292+0.21(0.57^2+0.08^2)+2(0.57)(0.08)}
            {5.55}
     +\frac{0.570292+(0.57+0.08)^2}{c_2+c_3}
 < \frac{0.731065}{5.55}+\frac{1}{c_2+c_3}.
$$
Consequently the $2,3$ block of the joint majorant is bounded
in norm by this kernel cap times $\sqrt{M_2M_3}/\beta$.
Using the actual density upper bounds and $\beta=B-\lambda$,
the resulting operator norm is below $0.125$. For the two
blocks connecting $J_1$ to $J_2,J_3$, the preceding separated
sine Gram estimate still gives $2\cdot10^{-8}$ each.

### Combining the cluster and returning to the actual comparison

The majorant on the two nearby rows is strictly below
$0.72 I$ by the scalar two-by-two test:
$(0.72-0.68)(0.72-0.24)>0.125^2$. Indeed on a vector
$(x,y)$ its quadratic form is at most
$0.68\|x\|^2+2(0.125)\|x\|\|y\|+0.24\|y\|^2$.
The diagonal norm for the distant first row is below $0.794$,
and its coupling to the two-row cluster is below $4\cdot10^{-8}$.
The bound for the full Gram operator is therefore below $0.795$.
The factorization and the angular isometries return it to the
actual $\mathcal W_{123}S_\lambda^{-1}\mathcal W_{123}^*$.

The first two rows now serve as the leading block in the exact
angular Schur comparison. Completing the square in
$\rho I-\mathcal W_{123}S_\lambda^{-1}\mathcal W_{123}^*$
for a $\rho<0.795$ above its norm, then comparing
$(I-A_{12})^{-1}\le(\rho I-A_{12})^{-1}$, bounds the third
diagonal plus its exact coupling expense to the two old windows
by $\rho I$. Here $A_{12}=\mathcal W_{12}S_\lambda^{-1}
\mathcal W_{12}^*$ is the actual two-window operator, unlike
the Gram majorant. The remaining physical comparator is
$$
 S_\lambda^{(3)}=S_\lambda-\mathcal W_{123}^*\mathcal W_{123}
                   \ge0.205 S_\lambda.
$$
Let $N^{(3)}$ restrict the original negative map to all negative
support outside the three windows. The exact remaining
criterion for the same $C_{4,+}\ge\lambda I_H$ is
$\|N^{(3)}(S_\lambda^{(3)})^{-1}(N^{(3)})^*\|\le1$.
The negative frequencies adjacent to these windows are still
in this criterion. The full arithmetic stage and all family
returns remain open.

The following exact guard takes the complete document as input
and reuses the directed arithmetic definitions and original
cosine-polynomial comparison.

~~~python
from pathlib import Path
import re
import sys

document = Path(sys.argv[1]).read_text()
blocks = re.findall(r"^~~~python\n(.*?)^~~~$", document, re.M | re.S)
previous = [g for g in blocks if g.startswith("from fractions import Fraction")
            and "PASS actual seven-inverse localized correction" in g]
assert len(previous) == 1
pivot = 'centre = F("99653682.92983")'
assert previous[0].count(pivot) == 1
exec(compile(previous[0].split(pivot)[0], "source directed arithmetic", "exec"))

c1 = F("99653682.92983")
k2 = 5085348195
c2 = scale(F(k2,4), (pi_lower,pi_upper))
a,b,r = F(".24"),F(".35"),F(".02")
off = F("5.55")
c3 = add(c2,(-off,-off))
assert c3[1]+b < c2[0]-b
assert 3500000000<c3[0]-b<c3[1]+b<4000000000
assert c3[0]-b > F("3806849122.861433")+F(1,160)
assert c3[0]-b > F("1852422754.1662946")+10
assert c3[0]-b > 30000000 and c3[1]+b < 35*10**24
assert c3[0]-b > c1+b

# Binet's full error, and the exact centre 5085348195*pi/4.
lower_arg,upper_arg = (3*k2//8-4,3*k2//8+2)
assert lower_arg<F(3*k2,8)-3*(off+b)/(2*pi_lower)
assert F(3*k2,8)-3*(off-b)/(2*pi_upper)<upper_arg
y = (c3[0]-b)/2
gerror = F(5,9)/y+F(9,32)/y**2
gamma=(F("21.3687"),F("21.3689"))
assert gamma[0]<log_bounds(lower_arg)[0]-gerror
assert log_bounds(upper_arg)[1]+gerror<gamma[1]

atoms=[]
abs_second=F(0)
for p in range(2,2981):
    if p==3 or any(p%d==0 for d in range(2,isqrt(p)+1)):
        continue
    log_p=log_bounds(p)
    n=p
    while n<=2980:
        lag=log_bounds(n)
        root=isqrt(n*source_grid**2)
        amplitude=scale(2*(1 if n%3==1 else -1),
                        (log_p[0]*source_grid/(root+1),log_p[1]*source_grid/root))
        atoms.append((amplitude,lag))
        abs_second+=max(map(abs,amplitude))*lag[1]**2
        n*=p
assert len(atoms)==458 and abs_second<13504

def node_value(s):
    x=add(c3,(s,s))
    val=(F(0),F(0))
    for amplitude,lag in atoms:
        co,_=phase_trig(multiply(x,lag))
        val=add(val,round_out(*multiply(amplitude,co),atom_grid))
    return val

def value_over_segment(s,t,h):
    steps=(t-s)/h
    assert steps.denominator==1
    nodes=[node_value(s+i*h) for i in range(int(steps)+1)]
    error=abs_second*h*h/8
    return min(y[0] for y in nodes)-error,max(y[1] for y in nodes)+error

wmin=1-F("3e-10")
for label,lo,hi,h in [('window',-r,r,F('.005')),('left',-b,-a,F('.01')),('right',a,b,F('.01'))]:
    pll,phh=value_over_segment(lo,hi,h)
    if label=='window':
        assert wmin*(pll-gamma[1])>F('5.39')
        assert phh-gamma[0]<F('5.72')
    else:
        assert wmin*(gamma[0]-phh)>F('14.12' if label=='left' else '15.39')
assert node_value(-r)[1]-gamma[0]<F("5.5")
print("PASS 5.39 < -m < 5.72, flanks m > 14.12 and 15.39, left-endpoint -m < 5.5")

# Pair source and this guard also quote the old marker, so exclude them.
oldenv=[g for g in blocks if g.startswith("from pathlib import Path")
        and 'print("PASS every actual negative-window evaluation,' in g
        and 'published two-window guard' not in g
        and 'third-window mixed Gram guard' not in g]
assert len(oldenv)==1
start,stop="# q(t) is the uniform average","floor=F("
assert oldenv[0].count(start)==oldenv[0].count(stop)==1
polycode=start+oldenv[0].split(start)[1].split(stop)[0]
scope=dict(F=F,factorial=factorial,centre=c3[0],a=a,b=b,negative_radius=r)
exec(compile(polycode,"original cosine envelope bound","exec"),scope)
assert scope["error_norm_sq"]<F(".2411")
alpha=F("1.14")
q4_lower=sum(coef*4**(2*k) for k,coef in enumerate(scope["q_low"]))
A,B=F(".57"),4*r
assert 1-alpha*q4_lower<A
assert alpha*a*a*(1-(4*b)**2/6)>r*r
varA=A+alpha-1
D=(4*r)**2/2
varAA=(alpha-1)**2+A*A+2*(D*varA+A*D)
varBB=2*B*B
varAB=A*B+B*varA
tv=varAA+varBB+2*varAB
assert tv==F(".570292")
assert max(abs(4*off-7*pi_lower),abs(4*off-7*pi_upper))<F(".21")
near=tv+F(".21")*(A*A+B*B)+2*A*B
far=tv+(A+B)**2
assert near==F(".731065") and far<1
kernel=near/off+1/(c2[0]+c3[0])

beta=F(".124890887")
assert beta==F(".124997987")-F(".0001071")
m1,m2,m3=[x*2*r/pi_lower for x in (F("17.57"),F(15),F("5.72"))]
assert max(m1,m2,m3)<1
d=b-a
def diag(mass,mu_left,mu_right):
    qsq=pi_upper/(4*d)*(1/F(mu_left)+1/F(mu_right))
    return mass*(alpha**2*qsq+F(".2411")/beta)
assert diag(m1,"11.5","11.5")<F(".794")
assert diag(m2,"8.3","18.38")<F(".68")
assert diag(m3,"14.12","15.39")<F(".24")
cross23=F(".125")
assert m2*m3*(kernel/beta)**2<cross23**2
for bound in (c2[0],c3[0]):
    off_far=(1+alpha)**2/beta*(1/(bound-c1-2*b)+1/(bound+c1-2*b))
    assert off_far<F("2e-8")
near_cap=F(".72")
assert (near_cap-F(".68"))*(near_cap-F(".24"))>cross23**2
assert max(F(".794"),near_cap)+F("4e-8")<F(".795")
print("PASS third-window mixed Gram guard and joint contraction <.795")
~~~

## The full connected third negative lobe

2026-11-15, grwtsk contributors, AI-assisted. Written analytic
proof with exact rational guards. Lean elaboration, kernel replay
and transitive axiom audit are NOT_RUN. External independent
review is UNASSESSED.

Keep the preceding $S_\lambda$, physical carrier, and actual
windows $J_1,J_2$. Put $R_3=0.13$ and replace the old radius-$0.02$
third pair by $\widetilde J_3=[c_3-R_3,c_3+R_3]$ and its
reflection, retaining the original clipped density $m_-$.
With $\widetilde{\mathcal W}_3=\sqrt{m_-}\,1_{\widetilde J_3}K$
and $\widetilde{\mathcal W}=(\mathcal W_{J_1},\mathcal W_{J_2},
\widetilde{\mathcal W}_3)^{\mathsf T}$, one has
$$
       \|\widetilde{\mathcal W}S_\lambda^{-1}
                 \widetilde{\mathcal W}^*\|<0.94 .
$$
This comparison includes the whole connected component of
$\{m<0\}$ containing $c_3$ and its reflection.

### Endpoint signs and integrated negative density

The enlarged interval stays inside the original filter region
and outside the paid pair and the actual deleted collar.
The signed prime-power value at both endpoints is below the
lower gamma bound $21.3687$. At the center it is above the
upper gamma bound $21.3689$. The original filter is strictly
positive throughout, so $m>0$ at both endpoints and $m<0$ at
the center. Continuity confines the connected negative component
to the enlarged interval. All negative density there is charged,
even if other components occur in that interval.

Use $\eta=\nu-c_3$ on the positive-frequency interval and
$d\mu_3=m_-(c_3+\eta)d\eta/\pi$, with both angular signs
included. The directed mesh has spacing $h=0.005$.
On each mesh cell, $m_-$ is at most
$\max(0,L(\eta)+13504h^2/8-21.3687)$, where $L$ linearly
interpolates upper endpoint values of the actual signed $P_4$.
The bound uses $w\le1$ after taking the positive part.
The exact guard uses the slightly sharper directed bound for
$|P_4''|$. The chord of the positive-part upper envelope
bounds it from above, since the positive part is convex.
Integrate the chord to bound each cell mass; multiply that
cell bound by the maximum of $\eta^2$ there for the second
moment. The full Binet error, both signs, and all 458 signed
rows yield
$$
       M_0=\int d\mu_3<0.28042,\qquad
       M_2=\int \eta^2\,d\mu_3<0.000824.
$$

### Two moments of one positive allocation

The previous positive flank heights at $c_3\pm[a,b]$ and
their reflections allow uniform height $14$ on those flanks.
Retain $a=0.24$, $b=0.35$, $d=b-a$ and $\alpha=1.14$.
For $v_\nu(t)=\sin(\nu t)$ use the two average vectors
$$
 u_0=\frac1{2d}\int_a^b(v_{c_3+s}+v_{c_3-s})\,ds,\qquad
 u_1=\frac1{2d}\int_a^b(v_{c_3+s}-v_{c_3-s})\,ds .
$$
The coefficient vectors $(1,1)/(2d)$ and $(1,-1)/(2d)$
are orthogonal in the unweighted offset space
$L^2([a,b])\oplus L^2([a,b])$, with squared norm $1/(2d)$
each. Thus Bessel's inequality and the reflected angular
measure give
$$
 \frac{|\langle u_0,f\rangle|^2+|\langle u_1,f\rangle|^2}{q_*^2}
       \le Q_3[f],\qquad q_*^2=\frac{\pi}{2d\cdot14}.
$$
Here $Q_3[f]$ is the actual positive energy on the four
third flanks. This consumes a single allocation on those
flanks, disjoint from the first two allocations.
Approximate $v_{c_3+\eta}$ by $\alpha u_0+4\eta u_1$.
On the physical carrier its error is
$$
 e_{3,\eta}=A_3(t)\sin(c_3t)+D_3(t)\cos(c_3t),\qquad
 A_3=\cos(\eta t)-\alpha q(t),\quad D_3=\sin(\eta t)-4\eta p(t),
$$
where $q(t)$ and $p(t)$ average $\cos(st)$ and $\sin(st)$
over $[a,b]$. Write the second row error as
$e_{2,\epsilon}=A_2(t)\sin(c_2t)+B_2(t)\cos(c_2t)$ with
the preceding $A_2=\cos(\epsilon t)-\alpha q(t)$ and
$B_2=\sin(\epsilon t)$. The exact estimates are
$$
 \sup_{|\eta|\le R_3}\|e_{3,\eta}\|^2<0.233,\qquad
 \sup_{|\epsilon|\le0.02,\,|\eta|\le R_3}
       |\langle e_{2,\epsilon},e_{3,\eta}\rangle|<0.045 .
$$

### Directed bounds for both physical kernels

The guard uses $u=t/4$ on $[0,4]$, and normalized detunings
$x=\epsilon/0.02$, $y=\eta/R_3$ on $[-1,1]$.
It expands cosines through degree eight and sines through
degree nine, with exact flank moments
$(b^{k+1}-a^{k+1})/((k+1)d)$ for every monomial $s^k$.
The Taylor errors are bounded by $|z|^{10}/10!$ and
$|z|^{11}/11!$, using the next zero coefficient in each Taylor
polynomial. This applies both to the detuned sine and
cosine and to the averaged flank terms. Products are
enclosed by adding $M_f\delta_g+M_g\delta_f+\delta_f\delta_g$
when the exact factors have suprema $M_f,M_g$ and their
polynomial errors are bounded by $\delta_f,\delta_g$.

For the squared norm on the physical carrier the nonoscillatory
part is $\int_0^4(A_3^2+D_3^2)\,dt$. Integrate the polynomial
products term by term. All powers of $y$ are even, the coefficient
of $y^2$ is negative, and that coefficient plus the sum of the
positive higher coefficients remains negative. Since $|y|\le1$,
the constant coefficient bounds the polynomial integral from
above. Add the product approximation errors and the
integration-by-parts cost of the two remaining oscillatory
terms at $2c_3$. For this cost one may use
$|A_3|\le0.57$, $|D_3|\le 8R_3$,
$|A_3'|\le R_3+\alpha b$ and $|D_3'|\le R_3+4 R_3 b$.
The bound on $A_3$ follows from the same monotonicity
calculation on $[0,4]$, with $r^2$ replaced by $R_3^2$.
Cosine primitives vanish at zero and the sine coefficient
vanishes there. This leaves the strict $0.233$ upper bound.

For the physical mixed kernel, oddness and product-to-sum
reduce the low frequency term to the integral over $[0,4]$
of $(A_2A_3+B_2D_3)\cos(5.55t)+(A_2D_3-B_2A_3)\sin(5.55t)$.
The sum frequency $c_2+c_3>7.9\cdot10^9$ is handled by one
integration by parts, with $|A_2|\le0.57$, $|B_2|\le0.08$,
$|A_2'|\le 0.02+\alpha b$ and $|B_2'|\le 0.02$.
For the difference term let
$C_n=\int_0^1 u^n\cos(22.2u)\,du$ and
$S_n=\int_0^1 u^n\sin(22.2u)\,du$. For $n\ge1$ the
recurrences are $C_n=(\sin(22.2)-nS_{n-1})/22.2$ and
$S_n=(-\cos(22.2)+nC_{n-1})/22.2$, with
$C_0=\sin(22.2)/22.2$ and $S_0=(1-\cos(22.2))/22.2$.
Directed Taylor endpoints supply these moments up to the
maximal polynomial degree. Sum each signed coefficient of
$x^i y^j$ before taking its absolute upper bound.
Adding the polynomial product errors and the sum-frequency
bound gives the strict $0.045$ mixed kernel bound.

### Exact coupled return with the expanded row

Use the previous folding, now with the clipped measure on the
expanded positive third interval. The angular isometry acts
on the support of this measure by multiplication with
$\pm i\sqrt{m_-}$ and is zero where the density vanishes.
The physical comparison factors through $\mathcal H\oplus
\mathbb C^4$. The last two scalar coordinates are assigned
to $u_0,u_1$, and their squared input norm costs at most
$Q_3[f]$. The full input bound is still
$\|Lf\|^2\le \langle f,S_\lambda f\rangle$ by the disjoint
flank allocation. In the third output, the two moment
columns are $q_*\alpha$ and $4q_*\eta$. Their squared
Hilbert–Schmidt norms plus the physical error contribution
bound the third diagonal of the Gram majorant by
$$
      M_0(\alpha^2q_*^2+0.233/\beta)+16q_*^2 M_2<0.909 .
$$
The positive coordinates for the second and third outputs are
disjoint. Thus their mixed norm is bounded by
$0.045\sqrt{M_0M_{\!J_2}}/\beta<0.084$, where
$M_{\!J_2}\le 15(0.04)/\pi$ is the folded second-window mass.
For the first-to-expanded-third block use the separated sine
Gram as before, but with coefficient mass at most
$1+\alpha+4R_3=2.66$ for the third error. Both first and
expanded third masses are below $1/2$, so the mixed norm is
again below $2\cdot10^{-8}$.

The second and expanded third block is bounded by $0.939I$,
since $(0.939-0.68)(0.939-0.909)>0.084^2$. The first
diagonal is below $0.794$ and the two remote mixed blocks
sum to less than $4\cdot10^{-8}$. The factorization now
proves the asserted actual norm below $0.94$. For any
$\rho$ strictly above this norm and below $0.94$, complete the
square for $\rho I-\widetilde{\mathcal W}S_\lambda^{-1}
\widetilde{\mathcal W}^*$ in the first two angular rows.
Inverse order comparison bounds the actual expanded third
diagonal plus its coupling with $(I-A_{12})^{-1}$ by $\rho I$.
The remaining physical comparator is
$$
 \widetilde S_\lambda
      =S_\lambda-\widetilde{\mathcal W}^*\widetilde{\mathcal W}
      \ge 0.06 S_\lambda .
$$
With $\widetilde N$ the original negative map restricted
to all other frequencies, the exact remaining condition for
the same $C_{4,+}\ge\lambda I_H$ is
$\|\widetilde N\widetilde S_\lambda^{-1}\widetilde N^*\|\le1$.
The genuine seven leading pivots and the directional return
remain the same.

The exact guard below takes the complete document as input
and reuses the earlier directed signed arithmetic.

~~~python
from pathlib import Path
import sys
import re

document = Path(sys.argv[1]).read_text()
blocks = re.findall(r"^~~~python\n(.*?)^~~~$", document, re.M | re.S)
previous = [g for g in blocks if g.startswith("from fractions import Fraction")
            and "PASS actual seven-inverse localized correction" in g]
assert len(previous) == 1
pivot = 'centre = F("99653682.92983")'
assert previous[0].count(pivot) == 1
exec(compile(previous[0].split(pivot)[0], "source directed arithmetic", "exec"))

k=5085348195
c2=scale(F(k,4),(pi_lower,pi_upper))
c3=add(c2,(F("-5.55"),F("-5.55")))
R=F(".13")
c3lo,c3hi=c3
assert F("3.5e9")<c3lo-F(".35")<c3hi+F(".35")<F("4e9")
assert c3lo-F(".35")>F("3806849122.861433")+F(1,160)
assert c3lo-F(".35")>F("1852422754.1662946")+10
assert c3lo-F(".35")>30000000 and c3hi+F(".35")<35*10**24
c1=F("99653682.92983")
assert c1+F(".35") < c3lo-F(".35") < c3hi+F(".35") < c2[0]-F(".35")
# Exact gamma lower and upper over the entire radius .35.
dl,dh=F("5.9"),F("5.20")
xlo=F(3*k,8)-3*dl/(2*pi_lower)
xhi=F(3*k,8)-3*dh/(2*pi_upper)
lo=xlo//1
hi=xhi//1+1
y=(c3lo-F(".35"))/2
err=F(5,9)/y+F(9,32)/y**2
Alo,Ahi=F("21.3687"),F("21.3689")
assert log_bounds(lo)[0]-err>Alo
assert log_bounds(hi)[1]+err<Ahi
atoms=[]
absolute_second=F(0)
for p in range(2,2981):
    if p==3 or any(p%d==0 for d in range(2,isqrt(p)+1)):
        continue
    log_p=log_bounds(p)
    n=p
    while n<=2980:
        lag=log_bounds(n)
        root=isqrt(n*source_grid**2)
        amplitude=scale(2*(1 if n%3==1 else -1),
                        (log_p[0]*source_grid/(root+1),log_p[1]*source_grid/root))
        atoms.append((amplitude,lag))
        absolute_second+=max(map(abs,amplitude))*lag[1]**2
        n*=p
assert len(atoms)==458 and absolute_second<13504

def node_value(s):
    x=add(c3,(s,s))
    val=(F(0),F(0))
    for amplitude,lag in atoms:
        co,_=phase_trig(multiply(x,lag))
        val=add(val,round_out(*multiply(amplitude,co),atom_grid))
    return val

assert node_value(-R)[1]<Alo
assert node_value(R)[1]<Alo
assert node_value(F(0))[0]>Ahi
count=52
step=2*R/count
assert step==F(".005")
cost=absolute_second*step**2/8
nodes=[node_value(-R+i*step)[1]+cost-Alo for i in range(count+1)]
# w≤1. Convexity of x↦max(x,0) gives a trapezoid upper bound
# on the negative part of the affine interval majorant.
M0=M2=F(0)
for i in range(count):
    interval_mass=step*(max(0,nodes[i])+max(0,nodes[i+1]))/(2*pi_lower)
    emax=max(abs(-R+i*step),abs(-R+(i+1)*step))
    M0+=interval_mass
    M2+=interval_mass*emax**2
assert M0<F(".28042") and M2<F(".000824")
print("PASS sign at both endpoints and centre, full-lobe density moments")

# Envelopes and oscillatory monomial integration.
a,b=F(".24"),F(".35")
r2,r3=F(".02"),F(".13")
alpha, kappa=F("1.14"),F(4)

# Variables x,y,u are the two normalized detunings and t/4.
def plus(*terms):
    coeffs={}
    for p in terms:
        for k,v in p.items():
            coeffs[k]=coeffs.get(k,0)+v
    return {k:v for k,v in coeffs.items() if v}
def times(a,b):
    coeffs={}
    for k,c in a.items():
        for l,d in b.items():
            key=tuple(x+y for x,y in zip(k,l))
            coeffs[key]=coeffs.get(key,0)+c*d
    return {k:v for k,v in coeffs.items() if v}
def scale(p,s): return {k:s*c for k,c in p.items()}
def moment(p): return (b**(p+1)-a**(p+1))/((p+1)*(b-a))

q={(0,0,2*i):(-1)**i*4**(2*i)*moment(2*i)/factorial(2*i) for i in range(5)}
p={(0,0,2*i+1):(-1)**i*4**(2*i+1)*moment(2*i+1)/factorial(2*i+1) for i in range(5)}
def trig_poly(axis,r,sine):
    orders=list(range(1 if sine else 0,10,2))
    values={}
    for i,n in enumerate(orders):
        key=(n,0,n) if axis==0 else (0,n,n)
        values[key]=(-1)**i*(4*r)**n/factorial(n)
    return values
A2=plus(trig_poly(0,r2,False),scale(q,-alpha))
B2=trig_poly(0,r2,True)
A3=plus(trig_poly(1,r3,False),scale(q,-alpha))
D3=plus(trig_poly(1,r3,True),times({(0,1,0):-kappa*r3},p))

# Uniform polynomial remainder bounds.
A2err=(4*r2)**10/factorial(10)+alpha*(4*b)**10/factorial(10)
A3err=(4*r3)**10/factorial(10)+alpha*(4*b)**10/factorial(10)
B2err=(4*r2)**11/factorial(11)
D3err=(4*r3)**11/factorial(11)+kappa*r3*(4*b)**11/factorial(11)

# Addition and scaling of rational half-interval integrations.
def elementary_moments(theta):
    # Use directed Taylor bounds for sin and cos at 22.2.
    # There is strong cancellation, but arithmetic remains rational.
    sin0=sum((-1)**j*theta**(2*j+1)/factorial(2*j+1) for j in range(71))
    cos0=sum((-1)**j*theta**(2*j)/factorial(2*j) for j in range(71))
    sinerr=theta**143/factorial(143)
    coserr=theta**142/factorial(142)
    # Integral Taylor remainder is available for the first omitted term
    # by expanding through the intervening zero Taylor coefficient.
    add=lambda p,q:(p[0]+q[0],p[1]+q[1])
    mul=lambda p,c:(p[0]*c,p[1]*abs(c))
    ss=(sin0,sinerr)
    cc=(cos0,coserr)
    c,s=[mul(ss,1/theta)],[mul(add((F(1),F(0)),mul(cc,-1)),1/theta)]
    for n in range(1,21):
        c.append(mul(add(ss,mul(s[-1],-n)),1/theta))
        s.append(mul(add(mul(cc,-1),mul(c[-2],n)),1/theta))
    return c,s

# Account for residuals in product expansions using uniform magnitudes.
# Exact envelopes on the whole physical interval satisfy these loose bounds.
A2max=A3max=F(".57")
B2max=F(".08")
D3max=8*r3
def product_error(a,b,ea,eb):
    return a*eb+b*ea+ea*eb

# Sum first, then bound each parameter monomial by 1 on the square.
def integrate_group(p,moments,ret):
    for (i,j,n), coef in p.items():
        value,err=moments[n]
        lower,rad=ret.get((i,j),(F(0),F(0)))
        ret[(i,j)]=(lower+coef*value,rad+abs(coef)*err)
cosmom,sinmom=elementary_moments(F("22.2"))
near_cos=plus(times(A2,A3),times(B2,D3))
near_sin=plus(times(A2,D3),scale(times(B2,A3),-1))
near={}
integrate_group(near_cos,cosmom,near)
integrate_group(near_sin,sinmom,near)
near_poly=4*sum(abs(v)+e for v,e in near.values())
near_remainder=4*(product_error(A2max,A3max,A2err,A3err)
                +product_error(B2max,D3max,B2err,D3err)
                +product_error(A2max,D3max,A2err,D3err)
                +product_error(B2max,A3max,B2err,A3err))

# Oscillatory errors on t∈[0,4], with frequency in physical t units.
assert alpha*a*a*(1-(4*b)**2/6)>r3*r3
assert 1-alpha*sum((-1)**i*4**(2*i)*moment(2*i)/factorial(2*i) for i in range(4))<A3max
dA2=r2+alpha*b
dA3=r3+alpha*b
dB2=r2
dD3=r3+kappa*r3*b
near_sum_sup=(A2max+B2max)*(A3max+D3max)
near_sum_deriv=(dA2+dB2)*(A3max+D3max)+(A2max+B2max)*(dA3+dD3)
# Each sine coefficient vanishes at t=0 and each cosine primitive vanishes there.
near_sum_error=(near_sum_sup+4*near_sum_deriv)/F("7900000000")
assert near_sum_error<F("2e-9")
near_all=near_poly+near_remainder+near_sum_error
assert near_all<F(".045")

# Nonoscillatory squared error. All powers of y are even.
e3={}
integrate_group(plus(times(A3,A3),times(D3,D3)),[(F(1,n+1),F(0)) for n in range(21)],e3)
assert all(i==0 and j%2==0 and e==0 for (i,j),(v,e) in e3.items())
assert e3[(0,2)][0]<0
higher_positive=sum(max(0,v) for (i,j),(v,_) in e3.items() if j>=4)
assert e3[(0,2)][0]+higher_positive<0

osc3sup=(A3max+D3max)**2
osc3deriv=2*(A3max+D3max)*(dA3+dD3)
osc3error=(osc3sup+4*osc3deriv)/F("7900000000")
assert osc3error<F("2e-8")
e3_upper=4*(e3[(0,0)][0]+product_error(A3max,A3max,A3err,A3err)+product_error(D3max,D3max,D3err,D3err))+osc3error
assert e3_upper<F(".233")

# Operator budgets use the actual clipped negative density.
beta=F(".124890887")
assert beta==F(".124997987")-F(".0001071")
q_sq=pi_upper/(2*(b-a)*14)
diag3=M0*(alpha**2*q_sq+F(".233")/beta)+16*q_sq*M2
mass1=F("17.57")*F(".04")/pi_lower
mass2=15*F(".04")/pi_lower
assert mass1<F(".5") and M0<F(".5")
cross_squared=mass2*M0*(F(".045")/beta)**2
assert diag3<F(".909")
assert cross_squared<F(".084")**2

# J1 and J2 used 1+alpha, whereas the third error row now
# includes the odd flank moment and can have coefficient mass 2.66.
pos_gap=c3[0]-c1-2*b
pos_sum=c3[0]+c1-2*b
far13=(1+alpha)*(1+alpha+4*R)/(2*beta)*(1/pos_gap+1/pos_sum)
assert far13<F("2e-8")
near_cap=F(".939")
assert (near_cap-F(".68"))*(near_cap-F(".909"))>F(".084")**2
assert max(F(".794"),near_cap)+F("4e-8")<F(".94")
print("PASS full-lobe envelope, mixed Gram and joint contraction strictly below .94")
~~~

## The full connected second negative lobe and its wider allocation

2026-11-15, grwtsk contributors, AI-assisted. Written analytic proof
with exact rational guards. Lean elaboration, kernel replay and
transitive axiom audit are NOT_RUN. External independent review is
UNASSESSED.

Keep the original physical carrier, $S_\lambda$ and the first and
expanded third debits. Put $c=c_2=5085348195\pi/4$. The two endpoints
of $c+[-0.20,0.15]$ are positive for the actual retained multiplier
$m$, and the entire $c+[-0.17,0.12]$ interval is negative. Thus the
enclosure contains the connected negative component of $c$.
Define $\widetilde J_2$ to be the enclosure and its reflection and
charge all actual $m_-$ there. With the old second row replaced by
this wider debit, the actual three-row comparator has norm
strictly below $0.954$.

### A witness against keeping only the old second flanks

Let $F$ be the four old second flanks, $c\pm[0.24,0.35]$ and their
reflections. Set
$S_\lambda^F=B I-\lambda\Pi_H+K^*(1_Fm_+)K\ge\beta I$.
Even the actual positive energy on all of $F$ is insufficient
for the full second component. Take the real odd physical test
$f(t)=p(t)\sin(ct)$ on $[-4,4]$, extended by zero, where
$p(t)=5(t/4)^2-1$. For
$H(s)=\int_0^4 p(t)\cos(st)\,dt$, its exact folded evaluation is
$H(s)-H(2c+s)$. Integration by parts gives
$|H(2c+s)|\le9/(2c-|s|)<2\cdot10^{-9}$ for $|s|\le0.35$.
Here $p(4)=4$, the sine primitive vanishes at zero, and the
variation of $p$ on $[0,4]$ is $5$. Likewise
$\|f\|^2=\int_0^4 p^2(1-\cos(2ct))\,dt<32/3+10^{-8}$,
since $p(4)^2=16$ and $p^2$ has variation $17$.

Use the original directed signed arithmetic and the bound
$|P_4''|<13504$ on cells of length $0.01$. The full Binet
bracket $21.3687<A<21.3689$ and original filter bounds give
continuum upper and lower density bounds. At each midpoint $s_0$
the guard integrates the rational Taylor polynomial for $H$,
using cosine terms through degree 16 and remainder at most
$16|4s_0|^{18}/18!$. For the shift use $|H'(s)|\le48|s|$ by
$|\sin(st)|\le |s|t$ and
$|p|\le p+2\,1_{[0,2]}$, which give
$\int_0^4t^2|p(t)|\,dt\le128/3+16/3=48$.
Each cell costs $48\max_{\rm cell}|s|(0.01)/2$ for the shift,
plus the separate high frequency error.
Including both reflected signs gives
$$
  \int_{c+[-0.17,0.12]\ {\rm and\ reflection}} m_-|\widehat f|^2
          \frac{d\nu}{2\pi}>6.12,\qquad
  \int_F m_+|\widehat f|^2\frac{d\nu}{2\pi}<1.725,\qquad B\|f\|^2<1.334.
$$
The inner interval lies in the connected negative component
because the guard proves strict negativity on the entire interval
and it contains $c$. Its debit divided by the restricted positive
and scalar budget exceeds $6.12/(1.725+1.334)>2$. Substitution of
$(S_\lambda^F)^{1/2}f$ into the norm of
$\mathcal W_{\widetilde J_2}(S_\lambda^F)^{-1/2}$ proves that
the squared norm exceeds $2$. This comparison uses the
bounded odd carrier of the angular criterion. Odd real smooth
tests with interior support approximate this witness in $L^2$,
and their Schwartz Fourier decay meets the original gamma-density
admission. The bounded quadratic forms preserve the strict inequality
under sufficiently close approximation.

### Signed measures for the wider allocation

In all second-band coordinates write $s=\nu-c$. For the actual
folded negative measure on $[-0.20,0.15]$ use a piecewise constant
upper measure $d\bar\mu_-$ from the positive part of the upper
$P_4-A$ estimate and division by a lower $\pi$ bound.
Its cells have width $0.005$. For positive payment use $d\mu_+$
on $[-2,2]$, the lower allocated density on cells of width $0.02$.
It uses the positive part of the lower $A-P_4$ bound, the filter
lower bound $1-3\cdot10^{-10}$, and division by an upper $\pi$
bound. Interpolation costs at most $13504h^2/8$ for a cell of
width $h$. The complete band lies in the source filter region
and outside both original masks. The reflected allocation is
disjoint from the first and expanded third flank sets.
The same signed source enclosures check
$\bar\mu_-([-0.20,0.15])<1.1$ and $\mu_+([-2,2])<100$.
The guard rounds the lower and upper densities outwards before
forming any moment matrix.

### Bounded physical and positive costs for all second rows

For $0\le k\le32$, put $b_k(t)=P_k(t/4)\sin(ct)$ if $k$ is
even and $b_k(t)=P_k(t/4)\cos(ct)$ if $k$ is odd, where $P_k$ is
the Legendre polynomial of degree $k$. All $b_k$ are odd.
Let $\mathsf B$ synthesize a physical vector from these coefficient
rows and let $D_{kk}=4/(2k+1)$. Product-to-sum and the Legendre
norm give the diagonal $D$ in $\mathsf B^*\mathsf B$.
The remaining entry in position $(i,j)$ is at most
$(1+i^2+j^2)/(2c)$ in modulus by integration by parts in the
carrier oscillation. For this bound $\sup_{[-1,1]}|P_k|\le1$
and $\sup|P'_k|\le k^2$ suffice. The first follows from the
integral representation of $P_k(\cos\theta)$ as the average of
$(\cos\theta+i\sin\theta\cos\phi)^k$ for $0\le\phi\le\pi$.
The derivative identity $P'_{k+1}-P'_{k-1}=(2k+1)P_k$ and the
initial degrees give the stronger bound $k(k+1)/2$ for $k\ge1$.
Multiplying the entry bound by 33 and comparing to $\min D_{kk}$
gives $\mathsf B^*\mathsf B\preceq1.0002D$.

Write $v_s(t)=\sin((c+s)t)=\mathsf B a(s)+r_s$. The vector $a(s)$
contains the Legendre coefficients of the imaginary part of
$e^{ict}$ times the Taylor polynomial for $e^{ist}$ through
degree 32. The imaginary-axis integral remainder gives
$\|r_s\|\le\sqrt8\,8^{33}/33!<2.1\cdot10^{-7}$ for $|s|\le2$.
For $p\ge k$ of matching parity the coefficient of $s^p$ in
$a_k(s)$ is
$$
 (-1)^{\lfloor p/2\rfloor}(2k+1)4^p
   \frac{2^k((p+k)/2)!}{((p-k)/2)!(p+k+1)!}.
$$
It follows by multiplying the Taylor coefficient by the Legendre
projection of $(t/4)^p$. Rodrigues' formula followed by integration
by parts gives
$\int_0^1 u^pP_k(u)\,du=p!/((p-k)!!(p+k+1)!!)$ in matching parity.
The boundary terms vanish because $p\ge k$ at zero and
$(1-u^2)^k$ has an order-$k$ zero at one. The other parities and
lower powers have zero Legendre coefficient.

Set $P=\int a(s)a(s)^{\mathsf T}d\mu_+$ and
$M=\int a(\epsilon)a(\epsilon)^{\mathsf T}d\bar\mu_-$.
For a fixed rational matrix $Z$ put
$q_\epsilon(s)=a(s)^{\mathsf T}Za(\epsilon)$ and
$E_\epsilon=v_\epsilon-\int q_\epsilon(s)v_s\,d\mu_+$.
Then the second folded evaluation factors through the
physical and positive input $(\sqrt\beta f,\langle v_s,f\rangle)$
with output row $(\beta^{-1/2}E_\epsilon,q_\epsilon)$.
Its input squared norm, together with the other two disjoint
positive allocations, is at most the original $S_\lambda$ form.

The integrated squared positive cost is bounded by
$R=\operatorname{tr}(Z^{\mathsf T}PZM)$. With $V=I-PZ$, the
nominal physical residual is $\mathsf B V a(\epsilon)$.
Its integrated squared norm is bounded by
$1.0002\operatorname{tr}(V^{\mathsf T}DVM)$, using the negative
upper measure on nonnegative squares. The remaining residual
$r_\epsilon-\int q_\epsilon(s)r_s\,d\mu_+$ has norm in the row
$L^2$ at most
$$
 (2.1\cdot10^{-7})\big(\sqrt{1.1}+\sqrt{\mu_+([-2,2])R}\big).
$$
This is the triangle inequality in the row space followed by
Cauchy–Schwarz in the positive allocation. The guard forms all
moments directly from checked cells and proposes $Z$ by rounding
a decimal Cholesky solution for $P+\beta D^{-1}$. The trace and
remainder tests are exact for the resulting rational matrix.
They give second total cost below $0.52$ and physical cost below
$0.036$ after division by $\beta$.

### Coupled comparison and return

The third physical cost is below $0.28042\cdot0.233/\beta<0.527$.
The second and third positive coordinates are disjoint.
Cauchy–Schwarz on the physical parts of their row majorants
gives mixed block norm below $\sqrt{0.036\cdot0.527}<0.138$.
The third total diagonal is below $0.909$, so
$(0.953-0.52)(0.953-0.909)>0.138^2$ bounds the nearby pair
by $0.953 I$.

For either far block incident on the first row use the separated
physical sine Gram. Both its difference and sum denominators
are above $3.8\cdot10^9$ for every frequency used in the residual
coefficient measures. The first coefficient measure has total
variation at most $2.14$ and folded mass less than one.
The second row's coefficient total variation in its folded
negative $L^2$ is at most $\sqrt{1.1}+\sqrt{100R}<9$.
For the third it is at most $2.66$, with folded mass less than
one. Multiplying these bounds and the physical Gram bound,
then dividing by $\beta>0.12$, gives a sum of far block norms
below $2\cdot10^{-7}$. The first diagonal is below $0.794$.
The exact angular folding and the joint factorization therefore
give a norm below $0.954$ for the first narrow row and the two
expanded rows together.

Write $\mathcal W_{\rm exp}$ for that actual column and
$S_{\rm exp}=S_\lambda-\mathcal W_{\rm exp}^*\mathcal W_{\rm exp}$.
The comparison gives $S_{\rm exp}\ge0.046S_\lambda$. The old narrow
second and third rows are included once in the expanded debits.
The exact criterion for the same $C_{4,+}\ge\lambda I_H$ is
$\|N_{\rm rest} S_{\rm exp}^{-1}N_{\rm rest}^*\|\le1$ with the
actual negative restriction outside all three charged sets.
The original seven physical inverse domains and directional
residual remain part of the original arithmetic return.

The following guard takes this complete document as input.

~~~python
from decimal import Decimal, localcontext
from pathlib import Path
import re
import sys

source = Path(sys.argv[1]).read_text()
blocks = re.findall(r"^~~~python\n(.*?)^~~~$",source,re.M|re.S)
prior = [g for g in blocks if g.startswith("from fractions import Fraction")
         and "PASS actual seven-inverse localized correction" in g]
marker='centre = F("99653682.92983")'
assert len(prior)==1 and prior[0].count(marker)==1
exec(compile(prior[0].split(marker)[0],"source directed arithmetic","exec"))

k=5085348195
c2=scale(F(k,4),(pi_lower,pi_upper))
assert F("3.5e9")<c2[0]-2<c2[1]+2<F("4e9")
assert c2[0]>F("3.99e9")
assert c2[0]-2>F("3806849122.861433")+F(1,160)
assert c2[0]-2>F("1852422754.1662946")+10
assert c2[0]-2>30000000 and c2[1]+2<35*10**24
c1=F("99653682.92983")
c3=add(c2,(F("-5.55"),F("-5.55")))
assert c1+F(".35")<c2[0]-2 and c3[1]+F(".35")<c2[0]-2
for centre,band_radius in ((c2,F(2)),(c3,F(".35"))):
    assert centre[0]-band_radius-(c1+F(".35"))>F("3.8e9")
    assert centre[0]-band_radius+(c1-F(".35"))>F("3.8e9")
Alo,Ahi=F("21.3687"),F("21.3689")
lowarg,higharg=3*k//8-3,3*k//8+3
y=(c2[0]-2)/2
binet=F(5,9)/y+F(9,32)/y**2
assert lowarg<F(3*k,8)-F(3)/pi_lower
assert F(3*k,8)+F(3)/pi_lower<higharg
assert Alo<log_bounds(lowarg)[0]-binet
assert log_bounds(higharg)[1]+binet<Ahi
atoms=[]
second=F(0)
for p in range(2,2981):
    if p==3 or any(p%j==0 for j in range(2,isqrt(p)+1)):
        continue
    logp=log_bounds(p)
    n=p
    while n<=2980:
        lag=log_bounds(n)
        root=isqrt(n*source_grid**2)
        weight=scale(2*(1 if n%3==1 else -1),
                     (logp[0]*source_grid/(root+1),logp[1]*source_grid/root))
        atoms.append((weight,lag))
        second+=max(map(abs,weight))*lag[1]**2
        n*=p
assert len(atoms)==458 and second<13504

@cache
def node(x):
    ans=(F(0),F(0))
    for weight,lag in atoms:
        co,_=phase_trig(multiply(add(c2,(x,x)),lag))
        ans=add(ans,round_out(*multiply(weight,co),atom_grid))
    return ans


def estimate(x,h):
    u,v=node(x),node(x+h)
    err=second*h*h/8
    return min(u[0],v[0])-err,max(u[1],v[1])+err

wmin=1-F("3e-10")
positive,negative=[],[]
h=F(".02")
for i in range(-100,100):
    x=i*h
    lo,hi=estimate(x,h)
    density=(max(F(0),wmin*(Alo-hi)/pi_upper)*10**7//1)/F(10**7)
    if density>0:positive.append((x,x+h,density))
h=F(".005")
for i in range(-40,30):
    x=i*h
    lo,hi=estimate(x,h)
    density=-((-max(F(0),(hi-Alo)/pi_lower)*10**7)//1)/F(10**7)
    if density>0:negative.append((x,x+h,density))
assert node(F("-.2"))[1]<Alo and node(F(".15"))[1]<Alo
assert node(F(0))[0]>Ahi
assert sum((v-u)*w for u,v,w in positive)<100
assert sum((v-u)*w for u,v,w in negative)<F("1.1")

# Hostile check on the full-component old-flank comparator.
h=F(".01")
error=second*h*h/8
wmin=1-F("3e-10")
def cell_p4(x):
    u,v=node(x),node(x+h)
    return min(u[0],v[0])-error,max(u[1],v[1])+error

# p(t)=5(t/4)^2-1. H(s)=int_0^4 p(t)cos(st)dt.
def H_cell(x):
    z=4*(x+h/2)
    mid=4*sum((-1)**j*z**(2*j)*
        (F(5,2*j+3)-F(1,2*j+1))/factorial(2*j) for j in range(9))
    # Use |H'(s)| <= 48|s| and the uniform high-frequency bound.
    shift_price=48*max(abs(x),abs(x+h))*h/2
    delta=16*abs(z)**18/factorial(18)+shift_price+F("2e-9")
    assert 9/(2*c2[0]-F(".35"))<F("2e-9")
    return mid-delta,mid+delta

# All these intervals are in the actual negative component of c2.
debit=F(0)
for i in range(-17,12):
    x=i*h
    plo,phi=cell_p4(x)
    assert plo>Ahi
    hlo,hhi=H_cell(x)
    assert hlo>0
    debit+=h*wmin*(plo-Ahi)*hlo**2/pi_upper

flank_energy=F(0)
for i in [*range(-35,-24),*range(24,35)]:
    x=i*h
    plo,phi=cell_p4(x)
    hlo,hhi=H_cell(x)
    flank_energy+=h*max(0,Ahi-plo)*max(abs(hlo),abs(hhi))**2/pi_lower

assert 33/(2*c2[0])<F("1e-8")
phys=F(".124997987")*(F(32,3)+F("1e-8"))
assert node(F("-.2"))[1]<Alo and node(F(".15"))[1]<Alo
assert debit>F("6.12")
assert flank_energy<F("1.725") and phys<F("1.334")
assert debit>2*(phys+flank_energy)
print('PASS old-flank-only actual comparator obstruction on central full second lobe')

# Exact polynomial budget for the wider positive allocation.
n=33
beta=F(".124890887")
D=[F(4,2*k+1) for k in range(n)]

# Raw Legendre coefficient of the Taylor carrier, from its monomial moment.
def ckp(k,p):
    if p<k or (p-k)%2: return F(0)
    # Integral_0^1 u^p P_k(u) du by Rodrigues and the beta integral.
    return ((-1)**(p//2)*F((2*k+1)*4**p*2**k*factorial((p+k)//2),
             factorial((p-k)//2)*factorial(p+k+1)))

coeff=[{p:ckp(k,p) for p in range(k,n,2)} for k in range(n)]

def moment_matrix(kt):
    mu=[sum(w*(v**(e+1)-u**(e+1))/(e+1) for u,v,w in kt) for e in range(2*n)]
    result=[[F(0) for j in range(n)] for i in range(n)]
    for i in range(n):
        for j in range(i+1):
            val=sum(a*b*mu[p+q] for p,a in coeff[i].items() for q,b in coeff[j].items())
            result[i][j]=result[j][i]=val
    return result
cells=(positive,negative)
P,M=map(moment_matrix,cells)
# Decimal Cholesky proposes a rational matrix. The proposal's
# quality is established only by the exact fraction tests below.
with localcontext() as ctx:
    ctx.prec=45
    def dec(x):
        return Decimal(x.numerator)/Decimal(x.denominator)
    G=[[dec(P[i][j]+(beta/D[i] if i==j else 0)) for j in range(n)]
       for i in range(n)]
    L=[[Decimal(0) for _ in range(n)] for _ in range(n)]
    for i in range(n):
        for j in range(i+1):
            value=G[i][j]-sum(L[i][k]*L[j][k] for k in range(j))
            L[i][j]=value.sqrt() if i==j else value/L[j][j]
    def proposed_column(k):
        y=[Decimal(0)]*n
        for i in range(n):
            y[i]=(int(i==k)-sum(L[i][j]*y[j] for j in range(i)))/L[i][i]
        x=[Decimal(0)]*n
        for i in reversed(range(n)):
            x[i]=(y[i]-sum(L[j][i]*x[j] for j in range(i+1,n)))/L[i][i]
        return [F(round(F(value)*10**8),10**8) for value in x]
    columns=[proposed_column(k) for k in range(n)]
Z=[[columns[j][i] for j in range(n)] for i in range(n)]

def transpose(A):return list(zip(*A))
def dot(a,b):return sum(x*y for x,y in zip(a,b))
def matmul(A,B):
    BT=transpose(B)
    return [[dot(row,col) for col in BT] for row in A]
PZ=matmul(P,Z)
V=[[F(i==j)-PZ[i][j] for j in range(n)] for i in range(n)]
ZPZ=matmul(transpose(Z),PZ)
R=sum(ZPZ[i][j]*M[i][j] for i in range(n) for j in range(n))
VdV=matmul(transpose(V),[[D[i]*v for v in row] for i,row in enumerate(V)])
S=sum(VdV[i][j]*M[i][j] for i in range(n) for j in range(n))
assert (F(33)*(1+2*32**2)/(2*F("3.99e9")))<F(".0002")*min(D)
E2=8*(F(8)**33/factorial(33))**2
assert E2<F("2.1e-7")**2
# Taylor error from the negative vector plus its positive reconstruction.
# By triangle in L²(μ₋; H), cost ≤ (sqrt(S(1+.0002)/β) +
#   E/sqrt(β)*(sqrt(M₀)+sqrt(μ₊(W) R)))². Bound square roots separately.
assert sum((v-u)*w for u,v,w in cells[0])<100
assert sum((v-u)*w for u,v,w in cells[1])<F("1.1")
assert 0<=R<F(".55") and S>=0
contrib=F("2.1e-7")*(F("1.05")+F("7.42"))/F(".35")
assert F("1.05")**2>F("1.1") and F("7.42")**2>100*F(".55") and F(".35")**2<beta
assert 0<contrib<F(".189")
assert (F(".189")-contrib)**2>S*F("1.0002")/beta
actual_phys=F(".189")**2
assert R+actual_phys<F(".52")
assert actual_phys<F(".036")
assert F(".28042")*F(".233")/beta<F(".527")
assert F(".036")*F(".527")<F(".138")**2
assert (F(".953")-F(".52"))*(F(".953")-F(".909"))>F(".138")**2
assert F("1.1")<F("1.05")**2
assert F("1.05")+F("7.42")<9
far=F("2.14")*(9+F("2.66"))*2/(F("3.8e9")*F(".12"))
assert far<F("2e-7")
assert max(F(".794"),F(".953"))+far<F(".954")
print('PASS exact majorant costs: J2 total <.52, physical <.036, near pair <.953, three-row <.954')
~~~

## All three selected negative components

2026-11-15, grwtsk contributors, AI-assisted. Written analytic proof
with exact rational guards. Lean elaboration, kernel replay and
transitive axiom audit are NOT_RUN. External independent review is
UNASSESSED.

Keep the entire second and third enclosures and their positive
allocations. Replace the radius-$0.02$ first window by the enclosure
$c_1+[-0.18,0.20]$ and its reflection, where
$c_1=99653682.92983$. Charge the actual clipped negative density
$m_-$ throughout the enlarged pair. The comparison for the three
expanded rows has norm strictly below $0.954$ with respect to the
original $S_\lambda$.

### The first signed enclosure and positive allocation

The first band's positive allocation uses $|\nu-c_1|\le2$
and its reflection. These intervals are inside the original
residual set, clear of the paid pair and the old deleted collar.
Throughout the allocation $10^8/3-1<|\nu|<10^8$, so the original
high and low filter estimates give $1-3\cdot10^{-10}\le w\le1$.
The exact logarithm arguments for $3|\nu|/(2\pi)$ lie between
$47581127$ and $47581130$. The full Binet error
$5/(9y)+9/(32y^2)$ with $y=|\nu|/2$ then gives
$17.6779<A<17.6780$ there. All signed prime-power weights, phases
and the original character are retained. This is the same
primitive nonprincipal parity-one sector, with no principal pole.

Directed endpoint values of the signed $P_4$ lie below the gamma
lower bound at detunings $-0.18$ and $0.20$. The center value is
above the gamma upper bound. With the original positive filter
these inequalities give positive endpoints and a negative
center for $m$. Continuity places its entire connected negative
component in the enclosure, and the reflected inclusion follows
by evenness.

Use the same piecewise constant lower positive and upper
negative densities as for the second component, now around
$c_1$. The meshes have widths $0.02$ and $0.005$, respectively.
Directed endpoint interpolation with the checked
$|P_4''|<13504$, followed by the appropriate positive part,
filter and directed $\pi$ bound, gives first allocated positive
mass less than $100$ and first negative upper mass less than
$1.3$. These are folded masses, including both signs through
$d\nu/\pi$. The three positive allocation sets are disjoint.
The enlarged first negative pair includes the previously checked
narrow pair, with one debit for their shared frequencies.

### The first row bound

Apply the preceding degree-$32$ Legendre representation to
$\sin((c_1+s)t)$ on the original odd physical carrier. The
coefficients in the sine and cosine Taylor envelopes depend
only on $s$, so the same exact coefficient formula and uniform
physical remainder $e=2.1\cdot10^{-7}$ apply. At $c_1$ the
physical Gram bound becomes $\mathsf B^*\mathsf B\preceq1.006 D$,
where $D_{kk}=4/(2k+1)$. Indeed
$$
 \frac{33(1+2\cdot32^2)}{2c_1}<0.006\min_k D_{kk}.
$$
The argument uses the same entrywise integration by parts
bound at the changed carrier.

Form the first moment matrices $P,M$ from the checked lower
positive and upper negative cells. The decimal Cholesky
proposal yields a rational $Z$ for the same reconstruction
$q_\epsilon(s)=a(s)^{\mathsf T}Za(\epsilon)$. The row
factorization is exact for that rational choice. With
$V=I-PZ$, put $R=\operatorname{tr}(Z^{\mathsf T}PZM)$ and
$T=\operatorname{tr}(V^{\mathsf T}DVM)$. The integrated positive
cost is at most $R$, and the squared physical cost after division
by $\beta=B-\lambda$ is at most
$$
 \left(\sqrt{1.006 T/\beta}+
       \frac{e}{\sqrt\beta}\big(\sqrt{1.3}+\sqrt{100R}\big)\right)^2.
$$
This follows from the previous residual estimate and the new
Gram bound. The exact check gives $R<0.75$ and $1.006 T/\beta<1$.
The second term in parentheses is at most
$e(1.15+9)/0.35<10^{-5}$. It therefore increases the squared
physical cost by less than $0.00003$. The exact signed-cell
and trace calculation gives
$R+1.006 T/\beta+0.00003<0.65$ for the first total diagonal.
The decimal step chooses the rational coefficients, and the
spent inequalities are checked in exact rational arithmetic.

### Coupling to both other expanded rows

The original separated sine Gram applies to the two far blocks
between the expanded first row and the other rows. Both sum and
difference denominators exceed $3.8\cdot10^9$ throughout all the
selected positive and negative frequency supports of these
blocks. The $L^2$ norm, over the first negative measure, of the
total variation of its residual coefficient measure is at most
$\sqrt{1.3}+\sqrt{100R}<11$. This follows by writing the
residual as the original sine evaluation minus the positive
reconstruction integral, then using Cauchy–Schwarz. The
corresponding bounds for rows two and three are $9$ and $2.66$
from the preceding estimates. The positive resource coordinates
occupy disjoint sets. Thus the sum of the norms of the two far
blocks is below
$$
 \frac{2\cdot11(9+2.66)}{3.8\cdot10^9\cdot0.12}<6\cdot10^{-7},
$$
using $\beta>0.12$. The near pair still has bound $0.953I$.
The three-row majorant has norm at most
$\max(0.65,0.953)+6\cdot10^{-7}<0.954$.
The same angular isometries and factorization transport this to
the actual $\mathcal W_{\rm all3}S_\lambda^{-1}\mathcal W_{\rm all3}^*$,
where $\mathcal W_{\rm all3}$ is the column of the three expanded
debits.

Set $S_{\rm all3}=S_\lambda-
\mathcal W_{\rm all3}^*\mathcal W_{\rm all3}$. Then
$S_{\rm all3}\ge0.046S_\lambda$. With $N_{\rm rest}$ denoting
the actual negative restriction outside the three charged
enclosures, the exact remaining criterion is
$\|N_{\rm rest}S_{\rm all3}^{-1}N_{\rm rest}^*\|\le1$.
This criterion is for the same $C_{4,+}\ge\lambda I_H$ and the
same seven physical leading inverse domains. The three connected
components are covered in full. The other negative support
and its coupling remain in the exact criterion.

The following guard takes the complete source as input. It
reuses the exact arithmetic and moment matrix representations
above and checks the changed first-band signs and all bounds.

~~~python
from pathlib import Path
import re
import sys

source = Path(sys.argv[1]).read_text()
blocks = re.findall(r"^~~~python\n(.*?)^~~~$",source,re.M|re.S)
prior = [g for g in blocks if g.startswith("from fractions import Fraction")
         and "PASS actual seven-inverse localized correction" in g]
marker='centre = F("99653682.92983")'
assert len(prior)==1 and prior[0].count(marker)==1
exec(compile(prior[0].split(marker)[0],"source directed arithmetic","exec"))

from decimal import Decimal, localcontext

c1=F("99653682.92983")
assert F(10**8,3)-1<c1-2<c1+2<10**8
assert c1-2>30000000 and c1+2<35*10**24
assert c1+2<F("1852422754.1662946")-10
assert c1+2<F("3806849122.861433")-F(1,160)
c2=scale(F(5085348195,4),(pi_lower,pi_upper))
c3=add(c2,(F("-5.55"),F("-5.55")))
for other,radius in ((c2,F(2)),(c3,F(".35"))):
    assert other[0]-radius-(c1+2)>F("3.8e9")
    assert other[0]-radius+(c1-2)>F("3.8e9")
assert c3[1]+F(".35")<c2[0]-2

Alo,Ahi=F("17.6779"),F("17.6780")
lowarg,higharg=47581127,47581130
assert lowarg<3*(c1-2)/(2*pi_upper)
assert 3*(c1+2)/(2*pi_lower)<higharg
y0=(c1-2)/2
binet=F(5,9)/y0+F(9,32)/y0**2
assert Alo<log_bounds(lowarg)[0]-binet
assert log_bounds(higharg)[1]+binet<Ahi
atoms=[]
second=F(0)
for p in range(2,2981):
    if p==3 or any(p%j==0 for j in range(2,isqrt(p)+1)):
        continue
    logp=log_bounds(p)
    n=p
    while n<=2980:
        lag=log_bounds(n)
        root=isqrt(n*source_grid**2)
        weight=scale(2*(1 if n%3==1 else -1),
                     (logp[0]*source_grid/(root+1),logp[1]*source_grid/root))
        atoms.append((weight,lag))
        second+=max(map(abs,weight))*lag[1]**2
        n*=p
assert len(atoms)==458 and second<13504

@cache
def node(x):
    ans=(F(0),F(0))
    for weight,lag in atoms:
        co,_=phase_trig(multiply((c1+x,c1+x),lag))
        ans=add(ans,round_out(*multiply(weight,co),atom_grid))
    return ans


def estimate(x,h):
    u,v=node(x),node(x+h)
    err=second*h*h/8
    return min(u[0],v[0])-err,max(u[1],v[1])+err

wmin=1-F("3e-10")
positive,negative=[],[]
h=F(".02")
for i in range(-100,100):
    x=i*h
    lo,hi=estimate(x,h)
    density=(max(F(0),wmin*(Alo-hi)/pi_upper)*10**7//1)/F(10**7)
    if density>0:positive.append((x,x+h,density))
h=F(".005")
for i in range(-36,40):
    x=i*h
    lo,hi=estimate(x,h)
    density=-((-max(F(0),(hi-Alo)/pi_lower)*10**7)//1)/F(10**7)
    if density>0:negative.append((x,x+h,density))
assert node(F("-.18"))[1]<Alo and node(F(".20"))[1]<Alo
assert node(F(0))[0]>Ahi
assert sum((v-u)*w for u,v,w in positive)<100
assert sum((v-u)*w for u,v,w in negative)<F("1.3")

print("PASS original low filter, first component endpoint signs and signed cells")

# Reuse the preceding coefficient, solver proposal and exact trace routines.
matrix_source=[g for g in blocks if g.startswith("from decimal import Decimal")
               and "PASS exact majorant costs: J2 total <.52" in g]
assert len(matrix_source)==1
start="# Exact polynomial budget for the wider positive allocation."
stop='assert (F(33)*(1+2*32**2)'
code=matrix_source[0]
assert code.count(start)==code.count(stop)==1
exec(compile(code.split(start)[1].split(stop)[0].lstrip(), "source coefficient and moment matrix", "exec"))

assert beta==F(".124997987")-F(".0001071")
gram_factor=F("1.006")
assert 33*(1+2*32**2)/(2*c1)<(gram_factor-1)*min(D)
err=F("2.1e-7")
assert 8*(F(8)**33/factorial(33))**2<err**2
assert 0<=R<F(".75") and S>=0
nominal=gram_factor*S/beta
assert nominal<1
assert F("1.15")**2>F("1.3") and 9**2>100*F(".75")
assert F(".35")**2<beta
err_scaled=err*(F("1.15")+9)/F(".35")
assert err_scaled<F("1e-5") and 2*err_scaled+err_scaled**2<F(".00003")
assert R+nominal+F(".00003")<F(".65")

# The far comparison is for the real physical error functions. The
# allocation coordinates for all three outputs are orthogonal.
assert F("1.15")+9<11
far=2*F(11)*(9+F("2.66"))/(F("3.8e9")*F(".12"))
assert beta>F(".12") and far<F("6e-7")
assert max(F(".65"),F(".953"))+far<F(".954")
print("PASS full first component diagonal below .65 and three expanded rows below .954")
~~~
