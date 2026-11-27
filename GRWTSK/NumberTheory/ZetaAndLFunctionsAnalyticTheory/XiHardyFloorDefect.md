# A floor-sum bound and an exact distance formula for the GRWTSK Hardy defect

Write $d_\rho=\rho-1/2=\sigma+i\gamma$ for each actual zeta zero to the right of the critical line. Include multiplicities in every zero sum. The GRWTSK Hardy construction gives
\[
D=\sum_{\sigma>0}\frac{\sigma}{|d_\rho|^2},\qquad
\|\Im K\|_1=2D,\qquad \det_2(I-zK)=\xi(1/2+iz)/\xi(1/2).
\]
Those infinite-dimensional assertions are manuscript results in the repository. The arguments below are on paper. They use no previously asserted RH theorem. [Pinned GRWTSK source](https://github.com/grwtsk/math/blob/36c52a33f8ef731c3bc58bb68cc086906a750bab/GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/XiHardyDissipativePart.md)

## The boundary distance giving exactly the transverse trace

Let $V\subset L^2(0,1;dx)$ be the closed span of $v_\theta(x)=\{\theta/x\}-\theta\{1/x\}$ for $0<\theta<1$. Under the Mellin transform $Mf(s)=\int_0^1 f(x)x^{s-1}dx$, this space has image $BH^2$ on the half-plane $\Re s>1/2$, where $B$ is the Blaschke product of the right-side zeta zeros. Burnol proves this identification using the Mellin formula $Mv_\theta(s)=(\theta-\theta^s)\zeta(s)/s$, coprimeness of the remaining factors and invariant-subspace theory. The Hardy norm is the boundary $L^2(dt/2\pi)$ norm. Burnol gives the $s=1$ projection as Theorem 1.2 and Lemma 2.4. [Burnol, pp. 2–3](https://arxiv.org/pdf/math/9910055)

For every real $z>0$, put $h_z(x)=x^{z-1/2}$. Its transform $1/(s-1/2+z)$ is the reproducing kernel at $s=1/2+z$, with norm squared $1/(2z)$. Multiplication by $B$ is an isometry. Its adjoint acts on that kernel by multiplication by $\overline{B(1/2+z)}$. Orthogonal projection therefore gives
\[
 \operatorname{dist}(h_z,V)^2=\frac{1-|B(1/2+z)|^2}{2z}.
\]
In particular $z=1/2$ gives the constant target, norm one, and evaluates the Blaschke product at $s=1$.

The log contribution of each zero to $S(z)=-\log|B(1/2+z)|$ is $\operatorname{artanh}(2z\sigma/(|d_\rho|^2+z^2))$. As $z\downarrow0$, its quotient by $z$ tends to $2\sigma/|d_\rho|^2$. The centered xi function is nonzero at zero, so $|d_\rho|$ is uniformly bounded away from zero. For $z$ sufficiently small the argument of every artanh has modulus below $1/2$. The summands divided by $z$ are then bounded by $4\sigma/|d_\rho|^2$, summable from the classical zeta-zero count and the bounded real strip. Consequently
\[
 \boxed{\lim_{z\downarrow0}\operatorname{dist}(x^{z-1/2},V)^2
       = 2D = \|\Im K\|_1.}
\]
Rational $0<\theta<1$ and real rational coefficients suffice for each fixed real target. As rational parameters converge, the generators converge almost everywhere off their countable jump sets, are uniformly bounded, and hence converge in $L^2$. Real parts of complex approximants suffice for a real target. For rational $z>0$, a rational-generator approximant is a bounded step function away from zero because its linear-in-$1/x$ terms cancel in each generator. Its squared error on any rational interval $[\delta,1]$ is a finite sum of exactly computable real algebraic numbers by integration of $x^{2z-1}, x^{z-1/2},1$ on rational intervals. If the approximant has absolute bound $C$, the omitted squared error on $(0,\delta)$ is at most $\delta^{2z}/z+2C^2\delta$. This bound is for each fixed $z$. Taking $z=0$ inside the Hilbert space would give a non-square-integrable target.

## A single rational witness bounds the trace defect

Take finite rational $a_k$ such that $\sum_{k=1}^N a_k/k=0$. Then $f=\sum a_k\{1/(kx)\}$ belongs to $V$ and vanishes for $x>1$. On $n\le1/x<n+1$ its residual $1-f$ is the rational number $R(n)=1+\sum a_k\lfloor n/k\rfloor$. Let $L$ be the least common multiple of the supported $k$. The balancing identity gives $R(n+L)=R(n)$. For $C=\max_{0\le n<L}|R(n)|$ and any $M\ge1$ the rational number
\[
 q_M=\sum_{n=1}^M\frac{R(n)^2}{n(n+1)}+\frac{C^2}{M+1}
\]
bounds the full squared residual, since the weights telescope. Thus $1-|B(1)|^2\le q_M$.

An elementary small-height exclusion makes the coefficients in the next bound explicit. For $1/2\le\Re s<1$, write $\eta(s)/s=\int_1^\infty A(t)t^{-s-1}dt$ with $A(t)=1$ when $\lfloor t\rfloor$ is odd and zero otherwise. This follows by partial summation. For $|\Im s|\le1/2$, the cosine is positive for $t\le16$, since $2\log2<1.4<\pi/2$. On the first and third unit intervals its contribution to the real part is at least $(1-0.35^2/2)/2+(1-0.7^2/2)/12>0.532$, using $t^{-\Re s-1}\ge t^{-2}$. The tail beyond 16 has absolute integral at most $1/2$. Hence there is no right-side zero with $|\gamma|\le1/2$.

Put $u=|d_\rho|^2>1/4$, $y=\sigma/(u+1/4)$. Each term of $S(1/2)$ satisfies $\operatorname{artanh}(y)\ge y\ge \sigma/(2u)$. Therefore any rational upper certificate $q\ge q_M$ with $q<1$ gives the fully arithmetic bound
\[
  D\le2S(1/2)\le-\log(1-q)\le\frac{q}{1-q}.
\]
### A proof using only finite Gram matrices

The forward bound for a rational witness has a proof independent of the invariant-subspace theorem. Use the inner product linear in its first argument and write $v_s(x)=x^{\bar s-1}$ for $\Re s>1/2$. Then $\langle f,v_s\rangle=Mf(s)$, and $\|v_s\|^2=1/(2\Re s-1)$. For a balanced finite list the integral on $(0,1)$ equals the integral on $(0,\infty)$. On $0<\Re s<1$ this gives
\[
 Mf(s)=-\zeta(s)\sum_{k=1}^N a_k k^{-s}/s.
\]
One elementary proof is the substitution $t=1/(kx)$ followed by partial summation in $\int_0^\infty\{t\}t^{-s-1}dt=-\zeta(s)/s$. In particular, $Mf$ vanishes at each right-side zero through its multiplicity. For even a single such zero $\rho$ the residual $r=1-f$ must satisfy $Mr(\rho)=1/\rho$. Cauchy–Schwarz already gives $(2\Re\rho-1)/|\rho|^2\le q$. Arbitrarily small rational witnesses therefore exclude each individual right-side zero, and the functional equation gives RH.

To obtain the full trace bound take finitely many distinct right-side zeros and span the vectors $v_\rho$ in a subspace $U$. The Gram entries are $1/(\bar s_i+s_j-1)$. Applying the Cauchy determinant to the enlarged list with $s_0=1$, then dividing by the original Gram determinant, yields
\[
 \operatorname{dist}(1,U)^2=\prod_{\rho}\left|\frac{1-\rho}{\rho}\right|^2.
\]
For a zero of order $m$ include $v_\rho(\log x)^j$, $0\le j<m$. They are orthogonal to $f$ because its Mellin transform vanishes to order $m$. The same product formula holds with $m$ factors. Indeed take $m$ neighboring distinct nodes and replace their vectors by finite divided differences. These converge in $L^2$ to the derivative vectors divided by factorials, by domination with $x^{\Re\rho-1-\epsilon}(1+|\log x|^m)$ for $\epsilon<\Re\rho-1/2$. The jet vectors at distinct nodes are linearly independent, as follows from independence of exponential polynomials after $x=e^{-t}$, so the finite Gram projections converge. Now $f\perp U$, and hence $q\ge\|1-f\|^2\ge\|P_U1\|^2=1-\operatorname{dist}(1,U)^2$. Taking logarithms and the same elementary comparison term by term shows
\[
 \sum_{\rho\ \mathrm{selected}}\frac{\Re\rho-1/2}{|\rho-1/2|^2}
 \ \le\ -\log(1-q).
\]
Monotone finite sums yield the full bound for $D$. The Burnol theorem provides the exact continuum identity above, while the arithmetic implication here uses only Mellin integration, finite Hilbert-space projections, Cauchy determinants and elementary bounds.

There is a converse comparison for the exact continuum distance. Since $0<\sigma<1/2$ and $|\gamma|>1/2$, we have $y\le2/3$ by maximizing $\sigma/(\sigma^2+1/2)$. The artanh series implies $\operatorname{artanh}(y)\le y(1+y^2)$, since its tail relative to $y$ is at most $y^2/[3(1-y^2)]\le y^2$. Also $y^2\le1/(4u)$ by $(u+1/4)^2\ge u$. Hence $S(1/2)\le D$. In particular,
\[
 1-e^{-D}\le \operatorname{dist}(1,V)^2\le1-e^{-2D}.
\]
These inequalities connect the continuous Nyman projection and the GRWTSK trace defect quantitatively. The derivation of the right-side bound for a single finite candidate uses only its containment in $V$.

## Four rational examples

The table gives upper bounds certified using 8400 terms and the exact maximum of the periodic tail. Decimal entries in the last column are upper bounds rounded upward to the displayed precision.

| Highest $k$ | $a_1,\ldots,a_N$ | Period | $C$ | Squared residual below |
|---:|---|---:|---:|---:|
| 2 | $-1,2$ | 2 | 1 | 0.306913 |
| 3 | $-1,1,3/2$ | 6 | 1 | 0.098695 |
| 5 | $-1,1,1,0,5/6$ | 30 | 1 | 0.041286 |
| 7 | $-1,1,1,0,1,-1,14/15$ | 210 | 4/3 | 0.035990 |

To reproduce the common rational upper rounding, take $S=10^{10}$ and sum the integers $\lceil SR(n)^2/(n(n+1))\rceil$ through $M=8400$. Divide by $S$ and add $C^2/8401$. The four resulting fractions in increasing order of support are $25783723304363/84010000000000$, $518209879113/5250625000000$, $867089309847/21002500000000$, and $5442263162681/151218000000000$. These demonstrate genuine finite improvements within this elementary construction. The previous GRWTSK finite-height bound is numerically much smaller.

If arbitrarily small floor certificates are produced, the displayed inequality forces $D=0$, and the GRWTSK operator is self-adjoint. Conversely Báez-Duarte's Theorem 1.1 shows that under RH integer generators approximate the indicator in $L^2(0,\infty)$. For an unbalanced finite list its approximant on $x>1$ equals $c/x$ for $c=\sum a_k/k$, so $|c|$ is bounded by the total error. Subtracting $c\{1/x\}$ enforces balance at a cost tending to zero. Rational approximation of all but the first coefficient preserves balance by solving for the first. Finally the certified periodic tail tends to zero for each fixed list as $M\to\infty$. The missing independent assertion is that witnesses of arbitrarily small error exist. [Báez-Duarte, Theorem 1.1](https://arxiv.org/pdf/math/0202141)

### One explicit family that fails at all orders

For an integer $y\ge2$ let $P=\prod_{p\le y}p$ and let $a_k=-\mu(k)$ for divisors $k$ of $P$, zero otherwise. Add $c=\varphi(P)/P$ to $a_1$ so that $\sum a_k/k=0$. Inclusion–exclusion gives $R(n)=1-\#\{1\le m\le n:\gcd(m,P)=1\}+cn$. For $1\le n\le y$ this simplifies to $cn$, since only $m=1$ can occur. Thus the squared error is at least $c^2\sum_{n\le y}n/(n+1)\ge yc^2/2$.

This lower bound diverges without a prime number theorem. With $t=1+1/\log y$, one has $\sum_{p\le y}p^{-1}\le e\sum_p p^{-t}\le e\log\zeta(t)\le e\log(1+\log y)$. The elementary inequality $-\log(1-1/p)\le2/p$ therefore yields $c\ge(1+\log y)^{-2e}$. On the other hand $c\to0$ by Euler’s divergence of reciprocal primes, so $R(n)\to0$ for every fixed $n$. This particular balanced primorial construction fits each fixed integer eventually to arbitrary accuracy and its full squared error diverges.
