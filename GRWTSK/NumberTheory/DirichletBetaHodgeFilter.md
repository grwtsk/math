# Dirichlet beta Hodge–Mellin filter: corrected analytic specification

Local attribution: grwtsk contributors.

## 0. Scope, provenance, and evidence

This is the source-local mathematical companion of
`GRWTSK/NumberTheory/DirichletBetaHodgeFilter.lean` and its regression examples in
`DirichletBetaHodgeFilterTests.lean`. Its consumer is the rigorous separation of
zero-divisor tracking, finite Hodge reduction, and the arithmetic hypothesis in
a phase-modulated Dirichlet-beta zero-free criterion. It is not an instruction to
change an agent's system prompt, schedule work, dispatch a proof worker, or alter
runtime behavior.

The primary local inputs are the conversation's proposed unified Hodge-filter
specification and the supplied note *Phase-Modulated Dyadic Mellin Filters for
the Dirichlet Beta Function*. The latter's exact supplied UTF-8 bytes have SHA-256
`7598fc517ab7745db04819c01f8f0279c4e50e7d59ec3971e3d47fe0f5d9d900`.
This document corrects the proposal rather than accepting all of its assertions.
The new all-z renormalization in Section 2 is explicitly a different family.

Repository sources inspected for placement: `grwtsk/math` at
`6eb0bc671f292e847617b9e9f1b4a1cc40c9a7dc`, and Noe's mathematical ownership
README at `grwtsk/noeaaeue` revision
`0126ba445446dea25047a89884df1adf6b10251a`. The pinned mathematical environment
is Lean `v4.34.1`, mathlib
`d13f23b723b8a846827a245b89c10fc7d3f11612`. No dependency pin or root import is
changed by this contribution.

**Evidence boundary.** Sections 1–10 give ordinary analytic and finite-algebra
arguments. The Lean file covers the explicitly enumerated algebraic core in
Section 11, not all these analytic arguments. Elaboration, compilation, fresh
kernel checking, and transitive axiom auditing are **NOT_RUN**: no Lean/Lake
executable is available in the authoring environment. Numerical checks are
finite diagnostics, not certified enclosures or proofs of asymptotic claims.
Independent mathematical review is **NOT_RUN**. No prior-art novelty is claimed.
The terminal arithmetic estimate and a global Hodge/Fredholm identification
remain unproved here.

## 1. Coordinates and the completed arithmetic function

Use four distinct coordinates

\[
(s,z,\lambda,a)\in\mathbb C\times\mathbb C\times(0,\infty)\times\mathbb R.
\]

Here s is spectral, z controls an envelope, lambda scales its local argument,
and a is a real logarithmic modulation. Lambda is **not** the dilation ratio:
that ratio is fixed at 2. Put h = log 2. For positive x, define
x^s = exp(s log x) with the real logarithm.

Let chi_4(n) be 0 on even n, 1 on n = 1 mod 4, and -1 on n = 3 mod 4.
Initially for Re s > 1,

\[
\beta(s)=\sum_{n\ge1}\chi_4(n)n^{-s},\qquad
B(s)=\left(\frac4\pi\right)^{(s+1)/2}
\Gamma\left(\frac{s+1}{2}\right)\beta(s).
\]

The standard primitive-character continuation and functional equation [S1]
make B entire, with

\[
B(s)=B(1-s),\qquad B(\bar s)=\overline{B(s)}. \tag{1.1}
\]

The Gauss sum is 2i and the root number is 1. In 0 < Re s < 1 the gamma
factor is holomorphic and nonzero, so B and beta have the same zero divisor.
RH_4 means only that these nontrivial beta zeros have real part 1/2.
It is not the Riemann hypothesis for zeta or GRH for all characters.

## 2. Product envelopes: convergence is not nonvanishing

Set sinc(w) = sin(w)/w, with sinc(0) = 1, and

\[
g_z(w)=\operatorname{sinc}(w)e^{z(\cos w-1)},\qquad
w_p(s,\lambda)=\pi\chi_4(p)\lambda e^{-s\log p}.
\]

The character is evaluated at **p**, not at an unrelated n. The p = 2 factor
is 1, so write products over odd primes. The sine product [S2] or Taylor
expansion at zero gives

\[
\log g_z(w)=-\left(\frac16+\frac z2\right)w^2
 +\left(-\frac1{180}+\frac z{24}\right)w^4+O_z(w^6). \tag{2.1}
\]

### Proposition 2.1. Raw convergence domains

The product R_z(s,lambda) = product_p g_z(w_p(s,lambda)) converges locally
uniformly for Re s > 1/2, uniformly on compact z and positive-lambda sets.
For z = -1/3 it converges locally uniformly for Re s > 1/4, because

\[
\log g_{-1/3}(w)=-\frac7{360}w^4+O(w^6). \tag{2.2}
\]

**Proof.** On a compact spectral set with Re s >= sigma_0 > 0 and bounded
lambda, |w_p| <= C p^{-sigma_0}. The large-prime deviations from 1 are
O(p^{-2 sigma_0}), or O(p^{-4 sigma_0}) in (2.2). Comparison with the corresponding
integer p-series proves normal convergence. Finitely many initial factors
are retained. Uniformity is on compact parameter sets, not all z or all
lambda at once. QED.

This proof does **not** assert that the finite initial factors are nonzero.
For lambda = sqrt(3) and s = 1/2, w_3 = -pi and R_{-1/3} vanishes. This is an
actual envelope zero; it is not a metric artifact and is not a beta zero.

### Proposition 2.2. An all-z renormalized family

To vary every z in the larger half-plane, explicitly replace g by

\[
\widehat g_z(w)=g_z(w)
 \exp\left(\frac{z+1/3}{2}w^2\right),\qquad
\widehat R_z(s,\lambda)=\prod_{p\ne2}\widehat g_z(w_p(s,\lambda)). \tag{2.3}
\]

Then log(g_hat_z(w)) = (-1/180 + z/24)w^4 + O_z(w^6), so R_hat is holomorphic
on Re s > 1/4, locally uniformly in (s,z,lambda). It agrees with the raw family
at z = -1/3. Moreover,

\[
\widehat R_z(s,\lambda)=\widehat R_{z'}(s,\lambda)
 \exp\big((z-z')H(s,\lambda)\big), \tag{2.4}
\]
\[
H(s,\lambda)=\sum_{p\ne2}
 \left[\cos w_p-1+\frac{w_p^2}{2}\right].
\]

**Proof.** The summands in H are O(w_p^4), normally summable in the stated
half-plane. The local identity (2.4) follows by subtracting the exponential
exponents, including at local sine zeros, and passes to the normal limits.
The multiplier is holomorphic and nowhere zero. Thus, for fixed lambda, the
divisor is independent of z throughout this common domain. QED.

### Proposition 2.3. Exact local-factor divisor and a safe chart

In Re s > 0, each odd-prime factor has simple zeros at

\[
s=\frac{\log(\lambda/m)}{\log p}
  +\frac{\pi i j}{\log p},\qquad m\in\mathbb N_{\ge1},\ j\in\mathbb Z,\ m<\lambda.
\tag{2.5}
\]

At collisions, the orders add. The divisor is locally finite in every closed
sub-half-plane Re s >= sigma_0 > 0 with lambda bounded above. Its trajectories
satisfy d(Re s)/d lambda = 1/(lambda log p).

**Proof.** A factor vanishes exactly when chi_4(p) lambda p^{-s} is a nonzero
integer. Taking modulus and phase gives (2.5). The sine zeros are simple and
w_p'(s) = -(log p)w_p(s) is nonzero there. A factor can vanish on Re s >= sigma_0
only if p^{sigma_0} <= lambda, so only finitely many primes are relevant locally.
Normal convergence leaves no additional zeros away from these factors. QED.

A sufficient zero-free envelope chart is

\[
\Re s>\tfrac14,\qquad \lambda<3^{\Re s}.
\]

For a uniform, reflected chart use

\[
\mathscr U=\{1/4<\Re s<3/4\},\qquad 0<\lambda\le3^{1/4}. \tag{2.6}
\]

Both R_hat_z(s,lambda) and R_hat_z(1-s,lambda) are holomorphic and nonzero
there, for all z. Outside such a chart, count the known envelope divisor
separately instead of calling its motion spurious.

## 3. Mellin windows and joint reflection

Define, with the value at the removable point filled in,

\[
A_a(s)=\int_0^h e^{(s-ia)r}\,dr
 =\begin{cases}(2^{s-ia}-1)/(s-ia),&s\ne ia,\\h,&s=ia,\end{cases}
\]
\[
K_a(s)=A_a(s)A_{-a}(1-s). \tag{3.1}
\]

### Proposition 3.1. Zero-free multiplier and completed mapping

A_a and K_a are entire. For real a,

\[
A_a(s)\ne0\quad(\Re s>0),\qquad
K_a(s)\ne0\quad(0<\Re s<1). \tag{3.2}
\]

On the safe chart (2.6), define

\[
\mathcal F_{z,\lambda,a}(s)=
 \widehat R_z(s,\lambda)\widehat R_z(1-s,\lambda)K_a(s)B(s).
\tag{3.3}
\]

Then

\[
\mathcal F_{z,\lambda,a}(s)=\mathcal F_{z,\lambda,-a}(1-s),\qquad
\operatorname{ord}_\rho\mathcal F_{z,\lambda,a}
 =\operatorname{ord}_\rho B. \tag{3.4}
\]

**Proof.** Compact integration proves entire dependence of A_a. Its zeros
are ia + 2 pi i k/h for nonzero integers k; they lie on Re s = 0. Equivalently,
|2^{s-ia}| = 2^{Re s} > 1 when Re s > 0. Reflection places the other factor's
zeros on Re s = 1. The product in (3.3) is a zero-free holomorphic multiplier
of B on the specified chart. Swapping s and 1-s and a and -a proves (3.4). QED.

For a contour Gamma contained in this chart, whose interior is also contained
there, and with no zeros on Gamma,

\[
\frac1{2\pi i}\int_\Gamma\frac{\mathcal F'}{\mathcal F}\,ds
 =\frac1{2\pi i}\int_\Gamma\frac{B'}B\,ds
 =\sum_{\rho\ \mathrm{inside}\ \Gamma}m_\rho. \tag{3.5}
\]

A small contour isolates a single multiplicity. An arbitrary contour does not.
For meromorphic functions the argument principle counts zeros minus poles.
Invariance under parameter motion requires a common domain and no boundary
crossing; it is not a statement over all of C x C x R_+ x R.

Set Q_a(s) = K_a(s) B'(s)/B(s). As meromorphic identities,

\[
Q_a(s)=-Q_{-a}(1-s),\qquad Q_a(1-\bar s)=-\overline{Q_a(s)}. \tag{3.6}
\]

Indeed B'(s) = -B'(1-s), and complex conjugation sends K_a(s) to
K_{-a}(bar(s)). The completed logarithmic derivative is

\[
\frac{B'}B(s)=\frac12\log\frac4\pi
 +\frac12\frac{\Gamma'}\Gamma\left(\frac{s+1}{2}\right)
 +\frac{\beta'}\beta(s). \tag{3.7}
\]

The two reflection maps are different: s -> 1-s is a holomorphic half-turn
with real Jacobian determinant +1; s -> 1-bar(s) is reflection in the vertical
critical line and reverses planar orientation. The minus sign in the first
identity (3.6) comes from differentiation, not a reversal of contour orientation.
For the full complex-z family, geometric reflection also conjugates z.

## 4. Entire functions do not acquire artificial sheets

For u = s-ia,

\[
A_a(s)=\sum_{n=0}^{\infty}\frac{h^{n+1}u^n}{(n+1)!}. \tag{4.1}
\]

This series converges everywhere. Thus u = 0 is removable and **there is no
monodromy of A_a or K_a** in the spectral or complexified phase variable.
Compact logarithmic support is useful for integrability and entire dependence;
it is not a branch-cut rule. The endpoints r = +/-h are not spectral singularities.
The proposed update A_a -> A_a + 2 pi i n/(s-ia) would introduce a pole at a
regular point when n != 0 and is rejected.

The exponential 2^{s-ia} has the global logarithm (s-ia)h. Its values can wind
as real a varies, but this is not a change of sheet of A_a. With T = 2 pi/h,
away from removable denominators,

\[
A_{a+T}(s)=\frac{s-ia}{s-ia-iT}A_a(s). \tag{4.2}
\]

So the exponential numerator is periodic in a; the entire window is not.
A chosen logarithm of B or F *can* change by 2 pi i times a winding number
around a zero. Only the logarithm changes; B, F, and their logarithmic derivatives
do not. This is the correct logarithmic monodromy record.

## 5. A genuine finite Hodge model for divisor periods

Choose a bounded planar region inside a safe spectral chart. Remove disjoint
small disks around its finitely many B zeros, and triangulate the remaining
region without putting a zero on an edge or face. Choose positive-definite
inner products on the finite complex cochain spaces

\[
C^0\xrightarrow{d_0}C^1\xrightarrow{d_1}C^2,\qquad d_1d_0=0.
\]

Define

\[
\Delta_1=d_0d_0^*+d_1^*d_1,\qquad
\mathcal H^1=\ker d_0^*\cap\ker d_1.
\]

### Proposition 5.1. Finite Hodge decomposition

\[
C^1=\operatorname{im}d_0\ \mathbin{\perp\oplus}\ \mathcal H^1
 \ \mathbin{\perp\oplus}\ \operatorname{im}d_1^*,\qquad
\ker\Delta_1=\mathcal H^1. \tag{5.1}
\]

**Proof.** The energy identity is
<Delta_1 v,v> = ||d_0^*v||^2 + ||d_1v||^2. The two image spaces are orthogonal
because d_1d_0 = 0. Their orthogonal complement is the displayed intersection
of kernels. Finite dimensionality supplies the direct sum. If a closed cochain
has a coexact component d_1^*w, its squared norm is
<d_1 d_1^*w,w> = 0, so that component vanishes. QED.

Define the closed logarithmic cochain

\[
\omega_B(e)=\frac1{2\pi i}\int_e\frac{B'(s)}{B(s)}\,ds. \tag{5.2}
\]

Cauchy's theorem on every face gives d_1 omega_B = 0. Hence omega_B = d_0 u + h_B
with h_B harmonic. For a positively oriented cycle c around an isolated zero,

\[
\langle c,h_B\rangle=\langle c,\omega_B\rangle=m_\rho. \tag{5.3}
\]

Here the pairing means cycle–cochain evaluation, not the metric inner product.

Multiplication by a holomorphic unit with a logarithm on the filled safe chart
changes omega_B by d_0(log(unit)/(2 pi i)), so its harmonic projection is unchanged
for a fixed complex and fixed metric. A merely nonzero function on a punctured
annulus need not have a global logarithm: that missing hypothesis may not be
silently dropped. Our safe strips are simply connected and the multipliers
extend as units before the zero disks are removed.

This model realizes multiplicities as **harmonic periods**, not as harmonic
nullities. A planar region with r holes has first cohomology dimension r whether
its enclosed multiplicities are 1, 2, or larger. A change of metric can change
the harmonic representative but not the period class. A change in a true period
or an envelope-divisor crossing is not dismissed as a metric artifact.

No global Fredholm determinant equal to B has been constructed. Identifying
zero orders with kernels of a separately proposed operator would require a
proved target identity and appropriate algebraic-multiplicity hypotheses.

## 6. Arithmetic windows, residues, and their different Hodge complex

Let b_n = Lambda(n) chi_4(n), where Lambda is the von Mangoldt function, and set

\[
W_a(x)=\sum_{x<n\le2x}b_n(n/x)^{-ia},\qquad
\mathcal E_a(Y)=\int_0^Y |W_a(x)|^2\frac{dx}{x^2}. \tag{6.1}
\]

Each window is finite; it vanishes for x < 3/2. For Re s > 1,

\[
\int_0^\infty W_a(x)x^{-s-1}\,dx
 =-A_a(s)\frac{\beta'}\beta(s). \tag{6.2}
\]

**Proof.** Absolute interchange follows from
sum |b_n| n^{-sigma} < infinity. The contribution of each n is

\[
\int_{n/2}^{n}(n/x)^{-ia}x^{-s-1}dx
 =n^{-s}\int_1^2u^{s-ia}\frac{du}{u}=n^{-s}A_a(s).
\]

Differentiate the Euler product in its absolute-convergence half-plane [S1]
and sum. QED.

For a beta zero rho of multiplicity m_rho,

\[
\operatorname{Res}_{s=\rho}\left(-A_a(s)\frac{\beta'}\beta(s)\right)
 =-m_\rho A_a(\rho)\ne0. \tag{6.3}
\]

The logarithmic derivative has a **simple pole**, even when m_rho > 1. Its
weighted residue varies with a. The integer invariant is the normalized value

\[
-\frac{\operatorname{Res}_{s=\rho}(-A_a\beta'/\beta)}{A_a(\rho)}=m_\rho.
\tag{6.4}
\]

### Proposition 6.1. An exact arithmetic two-term complex

Let H_Y = L^2((0,Y),dx/x^2) and D_Y:H_{2Y}->H_Y be
D_Y f(x)=f(2x)-f(x). This is a bounded isomorphism, with

\[
(\sqrt2-1)\|f\|_{H_{2Y}}\le\|D_Yf\|_{H_Y}
 \le(\sqrt2+1)\|f\|_{H_{2Y}}, \tag{6.5}
\]
\[
D_Y^{-1}g(x)=\sum_{j\ge1}g(x/2^j). \tag{6.6}
\]

**Proof.** Dilation scales the squared norm by 2. For (6.6), Minkowski and
sum_{j>=1} 2^{-j/2} = 1/(sqrt(2)-1) prove convergence in H_{2Y}. Applying D_Y
telescopes to g. Conversely the remainder f(x/2^J) tends to zero in H_{2Y}
because its norm is at most 2^{-J/2}||f||_{H_{2Y}}. This proves the inverse and
the lower bound; the triangle inequality gives the upper bound. QED.

For S_a(x)=sum_{n<=x} b_n n^{-ia}, W_a=x^{ia}D_Y S_a on (0,Y).
The complex 0 -> H_{2Y} -> H_Y -> 0 therefore has zero cohomology and no harmonic
sector. Every W_a is exact after the stated unitary identification, irrespective
of its size. Its energy is an exact-component norm; there is no additional
coexact component in degree 1. Exactness proves no asymptotic smallness.
This arithmetic complex is **not** the punctured spectral complex of Section 5.

## 7. Quantified tail theorem and its precise arithmetic hypothesis

For finite Y, F_{a,Y}(s)=integral_0^Y W_a(x)x^{-s-1}dx is entire. Let
0 <= delta < 1/2 and assume the genuinely uniform arithmetic statement

\[
\forall\epsilon>0\ \exists C_{a,\epsilon}<\infty\ \forall Y\ge2:
\quad \mathcal E_a(Y)\le C_{a,\epsilon}Y^{2\delta+\epsilon}. \tag{7.1}
\]

### Theorem 7.1. Uniform transform-tail control implies pole exclusion

Under (7.1), beta has no zero in Re s > 1/2 + delta. More precisely, fix
sigma_0 > 1/2 + delta and choose
0 < epsilon < 2(sigma_0-1/2-delta). Put
kappa = sigma_0-1/2-delta-epsilon/2 > 0. Then

\[
\sup_{\Re s\ge\sigma_0}
\left|\int_Y^\infty W_a(x)x^{-s-1}dx\right|
 \le C'_{a,\epsilon,\sigma_0}
 \frac{Y^{-\kappa}}{1-2^{-\kappa}},\qquad Y\ge2. \tag{7.2}
\]

**Proof.** On [X,2X], Cauchy–Schwarz bounds the absolute integral by

\[
\mathcal E_a(2X)^{1/2}
 \left(\int_X^{2X}x^{-2\sigma_0}dx\right)^{1/2}
 \le C'X^{-\kappa}.
\]

Sum over X=2^jY. This proves absolute convergence and locally uniform convergence
of the finite entire integrals, hence holomorphy in the stated half-plane.
Equation (6.2) identifies that holomorphic function with the meromorphic
-A_a beta'/beta by the identity theorem. Equation (6.3) precludes a zero there.
QED.

It is the **Mellin-weighted integral tail** in (7.2) that tends to zero, not
E_a(Y) and not an unweighted arithmetic remainder. E_a is nondecreasing and
already has positive contributions from fixed finite windows.
At delta=0, functional reflection gives RH_4. Conversely RH_4 gives the
fixed-character explicit-formula estimate
psi(x,chi_4)=O(sqrt(x) log^2(2x)) [S4]; partial summation on (x,2x] yields

\[
|W_a(x)|\ll(1+|a|)\sqrt{x}\log^2(2x),\qquad
\mathcal E_a(Y)\ll(1+|a|)^2\log^5(2Y). \tag{7.3}
\]

Thus subpower growth of E_a for one fixed real a is equivalent to RH_4. This
note proves the implication and equivalence, **not** the all-Y subpower bound.
Finite tests of (7.1) do not supply its quantifiers.

## 8. Frequency conservation, independence, and conditioning

Define

\[
C_0(r)=\left(2e^{-|r|/2}-e^{|r|/2}\right)\mathbf1_{|r|\le h}.
\]

Multiplying the integrals in (3.1), then setting r=u-v, gives

\[
K_a(s)=\int_{-h}^{h}C_0(r)e^{(s-1/2-ia)r}\,dr. \tag{8.1}
\]

On the critical line,

\[
k_a(t)=K_a(1/2+it)=
\frac{3-2\sqrt2\cos((t-a)h)}{1/4+(t-a)^2}>0. \tag{8.2}
\]

The autocorrelation of e^{r/2} 1_[0,h](r) is C_0. Plancherel in the
unnormalized Fourier convention [S3] gives the corrected mass law

\[
\boxed{\int_{\mathbb R}k_a(t)\,dt=2\pi\int_0^h e^rdr=2\pi.} \tag{8.3}
\]

The proposed constant 2 pi(sqrt(2)-1) is not the mass of this kernel.
An independent normalization check integrates the two terms in (8.2): their
integrals are 6 pi and 4 pi, respectively. Modulation is the unitary group
C_a(r)=e^{-iar}C_0(r); k_a(t)=k_0(t-a), and
partial_a K_a = -i partial_s K_a. This is transport, not dissipation.

### Proposition 8.1. Finite linear independence is not uniform independence

For any distinct real a_1,...,a_N, the full profiles k_{a_j} are linearly
independent over C.

**Proof.** Fourier uniqueness reduces a linear relation to
C_0(r) sum_j c_j exp(-i a_j r)=0. Since C_0>0 on (-h,h), the exponential
polynomial vanishes on an open interval. Its first N derivatives at zero give
a Vandermonde system with distinct nodes a_j, so all c_j vanish. QED.

They are not orthogonal, and there is no uniform lower conditioning bound for
arbitrarily close phases:

\[
\|C_a-C_b\|_2\le h|a-b|\|C_0\|_2. \tag{8.4}
\]

A finite sampling map into C^M cannot retain independence of more than M
profiles. An uncountable analytic indexing set is not an uncountable list of
performed verifications. All profiles preserve the same zero divisor.

### Proposition 8.2. Fixed-phase energy equivalence

With M_a = ((sqrt(2)+1)/(sqrt(2)-1))(1+2|a|),

\[
M_a^{-2}\mathcal E_0(Y)\le\mathcal E_a(Y)
 \le M_a^2\mathcal E_0(Y). \tag{8.5}
\]

**Proof.** The operator Tf(x)=integral_0^x f(u)du/u has norm at most 2 on
H_Y: after x=e^t and F(t)=e^{-t/2}f(e^t), it is convolution with
exp(-t/2)1_[0,infinity), whose L1 norm is 2. Partial summation gives
S_a=x^{-ia}S_0+ia T(u^{-ia}S_0(u)), and the inverse formula with a replaced by
-a. Consequently the S_a and S_0 norms differ by at most 1+2|a| in either
direction. Apply (6.5), using W_a=x^{ia}D_Y S_a, and square. QED.

This is uniform on bounded phase sets. Finite algebraic independence therefore
does not create distinct asymptotic arithmetic hypotheses or remove the tail
obligation.

## 9. Exact finite arithmetic verification object

For n <= floor(2Y), define the interval feature
f_n(x)=x^{-1}1_[n/2,n)(x) on (0,Y). Its Gram matrix is

\[
G_Y(m,n)=\left[\frac2{\max(m,n)}-
 \frac1{\min(m,n,Y)}\right]_+.
\]

Finite expansion gives

\[
\mathcal E_a(Y)=\sum_{m,n\le2Y}
 b_m\overline{b_n}(n/m)^{ia}G_Y(m,n). \tag{9.1}
\]

G_Y is positive semidefinite because it is a Gram matrix. This supplies an
exact finite mathematical consumer for prime-power weights. It is distinct
from proving an all-Y upper bound. Interval endpoint conventions do not change
any energy integral.

Admissible tracking data must distinguish the analytic chart, raw versus
renormalized envelope, finite local-factor divisor, isolated zero order,
normalized residue, logarithmic winding, spectral Hodge period, arithmetic
cutoff, and the hypothesis/evidence status of each bound. No flag can promote
an envelope crossing to a metric artifact, a pole residue to a kernel nullity,
or a finite numerical pass to (7.1).

## 10. Hostile checks and return to the original objective

The corrections have explicit falsification tests. At lambda=sqrt(3), the
p=3 envelope factor vanishes at s=1/2. At s=ia, A_a equals log 2, so adding a
nonzero proposed monodromy term introduces a forbidden pole. At h=log 2,
Plancherel forces mass 2 pi, not 2 pi(sqrt(2)-1). A log-derivative pole is simple
for every nonzero multiplicity. A planar one-hole complex has harmonic dimension
one even for a zero of order seven. Arbitrarily close phases violate any
uniform positive Gram-floor claim. These tests target different invalid steps;
they do not establish independence from the remaining arithmetic hypothesis.

The valid chain returning to beta zeros is

\[
\text{finite prime window}\longrightarrow
\text{faithful Mellin multiplier}\longrightarrow
\text{surviving zero-generated pole}
\xrightarrow{\text{independently proved (7.1)}}
\text{contradiction with holomorphy}.
\]

The spectral Hodge layer records the same divisor through periods. It does not
prove (7.1), and neither the functional equation nor synthetic geometry alone
excludes an off-critical reflected zero pair.

## 11. Lean declaration coverage and verification specification

All local declarations use namespace `GRWTSK.NumberTheory.DirichletBetaHodgeFilter`.
The module is an explicitly limited, unverified Lean candidate, without a new
axiom or unfinished proof placeholder. The companion examples exercise its
interfaces; they are not a substitute for running Lean.

- `phaseCoordinate`, `phaseCoordinate_re`, `phaseCoordinate_reflection` identify
  the exact spectral shift and its reflection.
- `mellinWindow`, `mellinWindow_at_center`, `mellinWindow_ne_zero_of_re_pos`
  implement the removable-value window and prove its right-half-plane
  nonvanishing, assuming positive logarithmic width.
- `pairedKernel`, `pairedKernel_reflection`, `pairedKernel_ne_zero_in_strip`
  implement and prove the algebraic reflected product and strip nonvanishing.
- `filteredCompletion`, `filteredCompletion_reflection`,
  `filteredCompletion_zero_iff`, and `unitMultiplier_zero_iff` transport an explicitly assumed functional
  equation and preserve zero membership. Lean zero **orders** are not yet
  formalized by these membership theorems.
- `weightedDetector` and `weightedDetector_reflection` transport an explicitly
  assumed antisymmetry of a supplied logarithmic-derivative function.
- `weightedPoleResidue`, `weightedPoleResidue_ne_zero`,
  `recoverMultiplicity` formalize the nonzero residue coefficient and exact
  algebraic recovery of multiplicity. The analytic identification with a residue
  is proved in Section 6, not encoded by these algebraic declarations.
- `normalizedFactor`, `normalizedFactor_zero_iff`, `renormalizedFactor`,
  `renormalizedFactor_zero_iff`, `renormalizedFactor_at_special`,
  `quadraticCoefficient`, `quarticCoefficient`, and their special-value lemmas
  give the local-factor algebra. The Lean coefficients are explicitly named
  polynomial expressions; their identification with Taylor coefficients is
  supplied by Section 2, not asserted as a Lean analytic theorem.
- `logarithmicCorrection_is_not_invariant` rejects a nonzero additive
  monodromy correction at every noncentral point.
- `closed_add_exact`, `period_add_exact`, `hodgeEnergy`,
  `hodgeEnergy_nonneg`, and `hodgeEnergy_eq_zero_iff` record closedness and period
  invariance under a proved exact perturbation and the nonnegative Hodge-energy
  kernel test. They do not identify a global arithmetic Fredholm operator.

Not formalized in Lean here: normal convergence of prime products, holomorphic
removability, argument-principle multiplicities, contour residues, full finite
Hodge decomposition, the beta completion and its functional equation, Mellin
interchange, the uniform tail theorem, Plancherel mass, or finite independence
of the translated profiles. These are ordinary arguments above, not hidden
axioms imported into the Lean core.

Static verification targets (not dispatched by this document):

```sh
lake build GRWTSK.NumberTheory.DirichletBetaHodgeFilter
lake env lean GRWTSK/NumberTheory/DirichletBetaHodgeFilterTests.lean
```

A qualified verification must bind the exact source commit and environment,
compile the module and examples, inspect transitive axioms, and compare each
formal statement with this declaration coverage. Until then all formal checks
remain NOT_RUN. Publication and finite numerical diagnostics are not theorem
acceptance.

## Sources

[S1] NIST Digital Library of Mathematical Functions, Section 25.15,
Equations 25.15.1–2 and 25.15.5–6 (Dirichlet series, Euler product, primitive
functional equation and Gauss sum): <https://dlmf.nist.gov/25.15>.

[S2] NIST DLMF, Equation 4.22.1 (Euler's sine product):
<https://dlmf.nist.gov/4.22.E1>.

[S3] NIST DLMF, Section 1.14(i),(iv), Fourier/Parseval and Mellin conventions:
<https://dlmf.nist.gov/1.14>. The present note uses the unnormalized positive
Fourier exponential, so the Plancherel factor is explicitly 2 pi.

[S4] Kiran S. Kedlaya, *Notes on analytic number theory*, chapter
"Error bounds for primes in arithmetic progressions", fixed-character explicit
formula and zero-counting inputs: <https://kskedlaya.org/ant/chap-errorbounds2.html>.
Only the hypothesis for chi_4 is used in (7.3).

The supplied conversation note is a local mathematical source, not a published
paper. No theorem is attributed to Northshield beyond the motivating finite
trigonometric analogy; no infinitude-of-primes proof is used as a tail estimate.
