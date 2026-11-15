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
