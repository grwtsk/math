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
