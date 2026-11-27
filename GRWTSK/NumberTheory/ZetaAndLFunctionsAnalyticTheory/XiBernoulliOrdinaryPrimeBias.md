# What the GRWTSK argument proves about RH

Local source attribution: grwtsk contributors.

**The independent Hilbert–Pólya proof remains incomplete.** [The Bernoulli interpolation argument](XiBernoulliInterpolationCost.md) proved that an explicit rational Bernoulli comparison at all orders would imply the Riemann hypothesis. This continuation proves results about the actual primes, including at unbounded indices, and identifies the remaining sign question. The separate proof of RH by Levent Alpöge with Claude has independent Lean verification. Its conclusion is not an input to the results labelled unconditional here. [Joint statement](https://leanprover-community.github.io/blog/posts/riemann-hypothesis/) · [Independent check of the shortened formalization](https://math.mit.edu/~drew/shortgrh/)

To read the new criterion, choose an integer $n$ and weight each ordinary prime $p$ by $w_n(p)=p^{-2}(1-p^{-2})^n$. Let $b_n$ be the weighted prime sum less the integral with density $dx/\log x$. The supplementary proofs also use $e_n$ for this same difference. A negative value means the weighted prime sum lies below the integral.

| Question | Result obtained without importing a global RH theorem |
| --- | --- |
| Do the actual primes satisfy the sign anywhere beyond a finite computation? | For each $0<\varepsilon<1$, the sign holds throughout some intervals $[N,N+N^{1-\varepsilon}]$ at arbitrarily large $N$. The starting indices need not include every sufficiently large scale. |
| Is there an explicit initial range? | $b_n<0$ for every integer $2\le n\le\exp(9\cdot10^{12})$ using Platt–Trudgian's finite zero verification. Adding the independent $7/8$ zero-free half-plane extends this to $\exp(12\cdot10^{12})$. A second, direct prime-sieve check proves $b_n<-1/1000$ for $2\le n\le512$. |
| What sign holds at all scales? | With $S_N=\sum_{n=1}^N b_n/n$, elementary arithmetic proves $S_N<0$ for **every** $N$. It also proves $S_N\to L=2(\sum_p\log p/p^2-1)<-2/3$. |
| What remains? | Proving from arithmetic that $S_N\ge L$ for every sufficiently large $N$ would finish the independent proof. An equivalent target is $S_{2N}\le S_N$ for every sufficiently large integer $N$. The upper bound $S_N<0$ permits convergence to $L$ from either side. |
| How many Bernoulli tests would suffice? | A fixed positive fraction, however small, in every sufficiently large dyadic block. Every fixed quantile of the rational tests has a growth exponent that recovers the furthest horizontal zero displacement. |
| Which bound on the full infinite rational sequence is already known? | The series $\sum_{n\ge2}\lfloor n^{1/8}\rfloor(P_n-1)^2$ is below $1/5$ by the $7/8$ half-plane. Liu's refinement gives the same budget at weight $\lfloor n^{0.12504}\rfloor$. At $\lfloor\sqrt n\rfloor$, this budget is equivalent to RH, even if only the positive errors are included. |

The finite-height inputs and the zero-free input have different scopes. The first controls individual zeros up to a stated height. The second controls a strip at every height. The papers in this continuation give the transfer from those inputs to the stated arithmetic bounds. [Platt–Trudgian](https://arxiv.org/abs/2004.09765) · [Liu](https://arxiv.org/abs/2610.12234v2)

The Hilbert–Pólya connection is unchanged mathematically. Proving the remaining arithmetic sign would exclude off-line zeros of the actual xi function. The earlier determinant construction would then supply a self-adjoint operator with the correct signed ordinates and multiplicities. The full Weil form would consequently be a sum of squares on its test functions. The local results of Suzuki and the finite matrix reconstruction of Shi identify related operators and still require uniform control to reach the full spectrum. [Suzuki](https://arxiv.org/html/2611.33001v1) · [Shi](https://arxiv.org/abs/2609.04908)

The new analytic results are on-paper arguments. Finite arithmetic checks use the Python standard library. Prior formal checks apply to the Lean statements identified in the earlier report. No independent human review or Lean formalization of this continuation is claimed.

## An eventual sign is enough

Let $w_n(x)=x^{-2}(1-x^{-2})^n$ for $x>1$. At each integer $n\ge2$ define
\[
 b_n=\sum_{p\ {\rm prime}}w_n(p)
            -\int_1^\infty\frac{w_n(x)}{\log x}\,dx .
\]
Both terms converge. The sum includes each ordinary prime once. The integral is the prediction obtained by replacing primes with their smooth mean density $dx/\log x$. The assertion
\[
                  b_n\le0\quad\text{for all sufficiently large }n
\]
is equivalent to RH. If RH fails, $b_n$ has excursions of both signs at infinitely many indices. No independent argument for the sign at all sufficiently large indices was found.

**Proof.** Use the normalized Bernoulli numbers $M_j$, the positive rational products $P_n$, and $d_n=\log P_n$ from the preceding manuscript. The exact signed prime-power formula reads
\[
 d_n=b_n+J_n+\sum_{k\ge2}\frac{1}{k}\sum_{p} w_n(p^k),
 \qquad J_n=\int_0^1\frac{x(1-x)^{n-1}}{-\log x}\,dx .
\]
Here $0<J_n\le1/[n(n-1)]$. In particular the terms separating $d_n$ from the prime average are positive. They have a precise leading term without assuming RH:
\[
          d_n-b_n\sim\frac{\Gamma(3/4)}{2}\,
                             \frac{n^{-3/4}}{\log n}.
\]
For the squares put $X=n^{1/4}$. The ordinary prime number theorem gives $(\log X)/X\sum_p\delta_{p/X}\to dt$ against continuous compactly supported functions on $(0,\infty)$. The rescaled test function is $t^{-4}(1-X^{-4}t^{-4})^n$ at $t=p/X$; on compact subintervals it tends uniformly to $t^{-4}e^{-t^{-4}}$. To control the tails, primes $p<X^{1/2}$ have an exponential cutoff, since $n/p^4>X^2$. For $X^{1/2}\le p\le aX$, sum over dyadic subintervals and use $\pi(u)\ll u/\log u$ together with $(1-p^{-4})^n\le e^{-(X/p)^4}$. The resulting rescaled bound tends to zero as $a\downarrow0$. Likewise the upper tail $p>AX$ has rescaled bound $O(A^{-3})$. Accounting for $1/2$ and $\log n=4\log X$, the coefficient is $2\int_0^\infty t^{-4}e^{-t^{-4}}dt=\Gamma(3/4)/2$. For higher powers the count $\sum_{p^k\le y,k\ge3}1/k\ll y^{1/3}\log(2y)$ and partial summation against $|w'_n(y)|\ll y^{-3}(1+n/y^2)e^{-n/(2y^2)}$ for $y\ge2$ give $O(n^{-5/6}\log(2n))$. This proves the expansion. [Prime number theorem](https://dlmf.nist.gov/27.12)

Under RH the earlier Hadamard–beta formula gives, with $q=(2-\rho)/2$ for each zero $\rho$ counted with multiplicity,
\[
 (\log n)n^{3/4}d_n
   =-\sum_{\rho}\Gamma(q)e^{-i\Im(q)\log n}+o(1).
\]
The series converges absolutely. All $q=3/4+iy$. The logarithmic derivative of xi at one bounds $\sum_\rho |y|^{-2}<1/5$. The identity $\Gamma(q)=\Gamma(q+2)/(q(q+1))$ and the gamma integral yield
\[
 \sum_\rho|\Gamma(q)|\le \Gamma(11/4)\sum_\rho |y|^{-2}
       < \tfrac{21}{80}\Gamma(3/4).
\]
This is smaller than the square-prime coefficient $\Gamma(3/4)/2$. It gives $\limsup n^{3/4}\log n\,b_n\le-19\Gamma(3/4)/80$ under RH.

Conversely, eventual $b_n\le0$ bounds $(d_n)_+=\max(d_n,0)$ by $O(n^{-3/4}/\log n)$. Here is why controlling this one sign suffices. Put $\Theta=\sup_\rho |\Re\rho-1/2|$ and $\alpha=-3/4+\Theta/2$. As in the preceding manuscript the Newton transform interpolates $H(z)=\log(\xi(2+2z)/\xi(2))-z\log(2\pi/5)$ using $d_n$, and $|d_n|=O(n^\alpha/\log n)$. The absolute abscissa of $D(s)=\sum d_n n^{-s}$ is $1+\alpha$. A smaller abscissa would continue the Newton series normally across a zero of $\exp H$ by the uniform bound for $\binom zn$, an impossibility. The gamma-quotient estimate
\[
 (-1)^n\binom zn=n^{-1-z}/\Gamma(-z)+O_K(n^{-2-\Re z})
\]
on compact sets lets one continue $D(1+z)$ along the real interval $-1<z<0$ from $H(z)$, since $\xi(2+2z)>0$ there. In detail, summing the error times $d_n$ gives a holomorphic $R$ on $\Re z>-1$ and $D(1+z)=\Gamma(-z)(H(z)-R(z))$ initially on the intersection with the absolute half-plane. Landau's theorem makes the real abscissa of any nonnegative-coefficient Dirichlet series with finite abscissa a singularity. Consequently the positive- and negative-part series of $D$ both have abscissa $1+\alpha$. Otherwise the larger abscissa would be a real singularity of their difference, contrary to that continuation. The bound on $(d_n)_+$ forces $1+\alpha\le1/4$, so $\Theta=0$. The same argument gives excursions of each sign at size greater than $n^{-3/4+\eta}$ infinitely often for $d_n$ when $0<\eta<\Theta/2$. Using a slightly larger $\eta$ absorbs the positive correction $d_n-b_n$ at this threshold, proving the claim for $b_n$. [Landau's theorem](https://kskedlaya.org/ant/part-1-3.html)

A related theorem of Daniel Johnston makes RH equivalent to the negativity of an integral of $\pi(x)-\mathrm{li}(x)$ and proves a differently weighted sign unconditionally. Those statements involve different tests. Partial summation here uses $w'_n(x)=2x^{-3}(1-x^{-2})^{n-1}[(n+1)x^{-2}-1]$, which changes sign at $\sqrt{n+1}$. A negative prefix integral of a discrepancy alone cannot fix the sign against this derivative. [Johnston](https://doi.org/10.4153/S0008439522000212)

## Where the prime-pair cancellation must occur

Define $t(x)=1-x^{-2}$ and the finite signed measure $\mu$ on $[0,1]$ obtained by pushing forward
\[
 t(x)^2 x^{-2}\big(d\pi(x)-dx/\log x\big)
\]
under $t$. Then $b_{j+2}=\int t^j d\mu(t)$. Let $c_j=(3/2)_j/j!$, positive rationals asymptotic to $2\sqrt j/\sqrt\pi$. For $0\le r<1$ the exact identity
\[
 \mathcal K(r)=\sum_{j\ge0} c_j r^j b_{j+2}^2
    =\iint [1-rtu]^{-3/2}\,d\mu(t)d\mu(u)
\]
follows by the absolutely convergent binomial series. The critical sum $\sum c_j b_{j+2}^2$ is finite exactly under RH. In fact the correction $d_n-b_n=O(n^{-3/4}/\log n)$ has finite squared norm with weight $\sqrt n$ by the preceding calculation. Under RH the same bound holds for $d_n$. Conversely finiteness of $\sum\sqrt n\,d_n^2$ implies absolute local convergence of its Newton expansion throughout $\Re z>-3/4$ by Cauchy–Schwarz. Exponentiation excludes every off-line zero on the right, and reflection excludes its partner. Hence RH is equivalent to $\sup_{r<1}\mathcal K(r)<\infty$.

The part of the integral from equal prime atoms is explicit. With $t_p=1-p^{-2}$ and $a_p=t_p^2p^{-2}$ it equals
\[
 D(r)=\sum_p\frac{a_p^2}{(1-r t_p^2)^{3/2}}
 =2^{-3/2}\log\log X+D_0+o(1),\qquad X=(1-r)^{-1/2}\longrightarrow\infty .
\]
This estimate uses no global zero-location assumption. At $r=1$ the individual summand is $2^{-3/2}/p+O(p^{-3})$. For $p\le X$ its change from the value at 1 is $O((1-r)p)$, by differentiating the summand in $r$. Summing this error costs $O(1/\log X)$ by the Chebyshev upper bound. For $p>X$, use $(1-r)^{-3/2}\sum_{p>X}p^{-4}=O(1/\log X)$. Mertens' second theorem supplies the stated limit with $D_0=2^{-3/2}B_1+\sum_p[a_p^2/(1-t_p^2)^{3/2}-2^{-3/2}/p]$, where $B_1$ is the prime Mertens constant. [Mertens' second theorem](https://mathworld.wolfram.com/MertensSecondTheorem.html)

In particular the equal-prime terms alone diverge. The terms from unequal primes, the two mixed integrals with the smooth density, and the smooth double integral must together cancel precisely this divergence. Their sum plus $2^{-3/2}\log\log X$ has a finite limit exactly under RH: this follows by subtracting the displayed asymptotic from $\mathcal K(r)$ and using monotonicity of its nonnegative coefficient series. Bounding these components separately by absolute values loses cancellation already on the prime diagonal.

## How many rational comparisons need to pass?

Let $R_n=n^3(P_n-1)^4$. For $N=2^j$ let $Q_j(\delta)$ be the $\lceil\delta N\rceil$-th smallest of the $N$ rational numbers $R_N,\ldots,R_{2N-1}$, with $0<\delta<1$ fixed. The following measures the horizontal displacement using any fixed quantile, including the median:
\[
             \limsup_{j\to\infty}\frac{\log Q_j(\delta)}{\log(2^j)}
                      =2\Theta .
\]
We use $\log0=-\infty$. In particular it would suffice to show, from arithmetic, that at least **one percent** of the tests $R_n\le1$ pass in every sufficiently large dyadic block. Under RH all pass. If RH fails, for each $0\le h<2\Theta$ there are arbitrarily large dyadic blocks on which the fraction with $R_n>N^h$ is arbitrarily close to one. This conclusion also applies when the supremum of the real parts of the zeros is never attained.

**Proof.** Write $a_* = 3/4-\Theta/2$ and $\alpha=-a_*$. For $q=(2-\rho)/2=a+iy$ we have $1/2\le a\le1$ and $a\ge a_*$. Use the analytic interpolation
\[
             F(z)=-\sum_\rho\int_0^\infty B(q+v,z+1)\,dv
                 \qquad(\Re z>3).
\]
It agrees with $d_n=\log P_n$ on the integers by the Hadamard–beta formula. On the scaled disk $|z-3N/2|\le N$, the beta recurrence and the absolute integral for the beta function bound each integrated term by
\[
 |z(z-1)|\,|y|^{-2}B(a+2,\Re z-2)\ll |y|^{-2} N^{-a}.
\]
Indeed retain $q+v$ and $q+v+1$ in the denominator, integrate the remaining real beta integral in $v$, and use $(-\log t)^{-1}\le(1-t)^{-1}$. The gamma quotient bound is uniform in $a\in[1/2,1]$. Summability of $|y|^{-2}$ gives local holomorphy and $\|F\|\ll N^\alpha$ on this disk. In particular, the complex bound holds with the actual zero abscissa, whether or not it is attained.

The earlier scalar theorem gives $\limsup \log|d_n|/\log n=\alpha$ and $P_n-1\sim d_n$ off the zero terms. It immediately gives the upper quantile exponent. For the reverse direction, suppose some fixed fraction $\delta$ of indices in every sufficiently large block satisfies $|d_n|\le N^{\alpha-\eta}$ for fixed $\eta>0$. Put $w=z/N-3/2$, so the normalized disk is the unit disk and real sample points lie in $[-1/2,1/2]$. Select $k=\lfloor\varepsilon\log N\rfloor$ of those good sample points, taking their ranks approximately equally spaced in the sorted good set. For large $N$ the resulting nodes $w_i$ have separation at least $\delta/(2k)$; all intermediate index gaps are at least the differences of ranks.

For $t\in[-1/2,1/2]$ let $B_t(w)=(w-t)/(1-tw)$. Its disk norm is at most one. The product with the $i$-th factor omitted satisfies
\[
 \prod_{j\ne i}|B_{w_j}(w_i)|
 \ge \left(\frac{2\delta}{5k}\right)^{k-1}(i-1)!(k-i)!
 \ge (\delta/C)^k
\]
for an absolute $C$, by a factorial bound. Interpolate the $k$ good values with a sum of these omitted-factor products divided by their respective values at $w_i$. The resulting function $L$ has disk norm at most $N^{\alpha-\eta}(C'/\delta)^k$. The remainder has a zero at each $w_i$. Dividing it by all $k$ Blaschke factors preserves the disk norm bound by the maximum principle. For two points in $[-1/2,1/2]$ the pseudohyperbolic distance is at most $4/5$. Hence throughout the real block
\[
 |F(z)|\ll N^{\alpha-\eta}(C'/\delta)^k + N^\alpha(4/5)^k .
\]
Choose $\varepsilon>0$ so that $\varepsilon\log(C'/\delta)<\eta/2$. Both terms now give a fixed power improvement over $N^\alpha$ for every sufficiently large block, contradicting the scalar limsup. This proves that the quantile of $|d_n|$ has the full exponent for every fixed $\delta$. Because $n\in[N,2N)$ and $P_n\to1$, taking the fourth power and multiplying by $n^3$ gives the asserted $3+4\alpha=2\Theta$. For the failure fraction choose success fractions tending to zero and extract blocks successively from the quantified assertion.

A related deterministic mesh needs only $O((\log X)^2)$ prescribed indices through $X$. It uses rounded Chebyshev nodes in each dyadic block. The [sparse sampling proof](XiBernoulliSparseSampling.md) gives the precise nodes. The quantile statement above permits arbitrary locations of the successful indices in each block. Neither statement supplies the arithmetic estimate along its unbounded set.

## Unconditional runs at arbitrarily large indices

These are results about unbounded indices as well as the explicit finite interval. For each fixed $0<\varepsilon<1$, there exist arbitrarily large integers $N$ for which
\[
                    b_n<0\qquad (N\le n\le N+\lfloor N^{1-\varepsilon}\rfloor).
\]
There also exist arbitrarily large integers $N$ for which the original rational tests $R_n<1$ pass on at least $c N^{1-\Theta/2}$ consecutive indices starting at $N$, for an absolute-sequence constant $c>0$. The elementary critical strip gives power $3/4$ here. The independently established $7/8$ zero-free half-plane gives power $13/16$. The starting points need not occupy a fixed proportion of every large dyadic block.

To prove the ordinary-prime assertion, first note that $\limsup\log(d_n)_-/\log n=\alpha$ (use $\log0=-\infty$). The upper bound is the scalar estimate. If the lower bound failed, $(d_n)_-=O(n^{\alpha-\eta})$ for some $\eta>0$, contradicting the negative-part Dirichlet abscissa $1+\alpha$ proved above. The same reasoning applies to the positive part, so $d_n$ takes each sign at arbitrarily large indices, irrespective of RH. The complex disk bound and Cauchy's derivative inequality give $|F'(x)|\le Cx^{\alpha-1}$ for all sufficiently large positive $x$; use, for example, a disk centered at $x$ with radius $x/4$ inside a slightly larger right-half-plane disk on which the same beta estimate holds. Choose arbitrarily large $N$ with $d_N<-N^{\alpha-\varepsilon/2}$. On $[N,N+N^{1-\varepsilon}]$ the variation is $O(N^{\alpha-\varepsilon})$. For large such $N$ the real interpolation stays strictly negative throughout. At integer arguments $b_n=d_n-J_n-H_n<d_n$, where $H_n$ sums all proper prime powers, proving the first assertion.

For the rational comparisons, continuity and the unbounded occurrences of both signs give arbitrarily large real $x$ with $F(x)=0$. Write $N=\lceil x\rceil$. On the following $cN^{1-\Theta/2}$ indices, the derivative bound gives $|d_n|\le C'(1+cN^{1-\Theta/2})N^{\alpha-1}$. Since $\alpha-\Theta/2=-3/4$, choosing $c>0$ small enough makes this less than $(1/4)n^{-3/4}$ for all sufficiently large such starting indices, also when $\Theta=0$. Then $|P_n-1|\le |d_n|e^{|d_n|}<n^{-3/4}$ throughout. The proof gives unbounded runs even in the hypothetical case of an off-line zero.

# A one-sided bound at every order for sums of the prime biases

For $n\ge1$ put $w_n(y)=y^{-2}(1-y^{-2})^n$ and
\[
 e_n=\sum_{p\ {\rm prime}}w_n(p)-\int_1^\infty w_n(y)\frac{dy}{\log y},
 \qquad S_N=\sum_{n=1}^N e_n/n .
\]
The convention extends the prime-bias definition to $n=1$. The integral is convergent there, since the factor $1-y^{-2}$ cancels the singularity at 1. The results involving tails are unchanged by any adjustment to finitely many starting terms. Write
\[
 F(X)=\sum_{p\le X}\frac{\log p}{p^2}-(1-1/X),\qquad
 L=2F(\infty)=2\left(\sum_p\frac{\log p}{p^2}-1\right).
\]

## Unconditional prefix sign

For **every** positive integer $N$,
\[
 S_N<0,\qquad \lim_{N\to\infty}S_N=L<-2/3 .
\]
The sign proof uses only the absolutely convergent Euler product at 2 and elementary inequalities. For $1<X<2$ one has $F(X)=-(1-1/X)<0$. For $2\le X<3$ the only prime contributes $(\log2)/4<1/2$. For $X\ge3$,
\[
 \sum_{p\le X}\frac{\log p}{p^2}\le-\frac{\zeta'(2)}{\zeta(2)}<2/3\le1-1/X .
\]
Indeed $\zeta(2)=\pi^2/6>3/2$. As $\log t/t^2$ decreases for $t\ge2$,
\[
 -\zeta'(2)\le\frac{\log2}{4}+\frac{\log3}{9}
              +\int_3^\infty\frac{\log t}{t^2}\,dt
 =\frac{\log2}{4}+\frac{\log3}{9}+\frac{1+\log3}{3}<1 .
\]
For instance $\log2<0.694$ and $\log3<1.099$ suffice. Thus $F(X)<0$ on $X>1$, with $F(1)=0$.

Put $G_N(s)=\sum_{n=1}^N(1-e^{-s})^n/n$, and $H_N(s)=G_N(s)/s$ for $s>0$, with $H_N(0)=1$. Differentiating the geometric sum gives $G'_N(s)=1-(1-e^{-s})^N$, which is strictly decreasing for $s>0$. Its average over $[0,s]$ equals $H_N(s)$. Therefore $H_N$ decreases strictly from 1 to 0. The exact Stieltjes identity
\[
  S_N=2\int_{1}^\infty H_N(2\log y)\,dF(y)
      =-2\int_{1}^\infty F(y)\,dH_N(2\log y)<0
\]
follows by expanding the finite sum. The endpoint terms vanish since $F(1)=0$, $F$ is bounded, and $H_N(\infty)=0$. As $N$ increases, $H_N(s)\uparrow1$ for fixed finite $s$, by $-\log(1-(1-e^{-s}))=s$. The measure $dF=y^{-2}(d\theta-dy)$ has finite total variation, so dominated convergence gives the stated limit. In particular, every finite positive decreasing reweighting $\sum_{n\le N}a_ne_n/n$ is nonpositive by summation by parts, and is strictly negative if at least one $a_n$ is positive.

## A tail with the opposite role

Set $K_N(s)=1-H_N(s)$. It increases from 0 to 1, so $dK_N(2\log y)$ is a probability measure on $[1,\infty)$. Integration by parts gives the exact tail representation
\[
 V(N):=L-S_N
   =2\int_{1}^\infty\left(\sum_{p>y}\frac{\log p}{p^2}-\frac1y\right)
                                          dK_N(2\log y).
\]
Indeed $V(N)=2\int K_N(2\log y)\,dF(y)$ and the boundary term at infinity is $2F(\infty)$. This identity separates the unconditional prefix sign from the sign of convergence toward its limit.

The following three conditions are equivalent:

1. RH.
2. $S_N\ge L$ for all sufficiently large $N$.
3. $S_{2N}-S_N\le0$ for all sufficiently large $N$.

Moreover, under RH, $S_N>L$ for all sufficiently large $N$. In the opposite direction it suffices to show that the harmonic tails eventually have the specified sign or that every sufficiently late doubling block has the specified sign. This excludes the fixed early terms that supply the unconditional prefix inequality.

For the forward implication use the companion first-prime criterion, which proves $e_n<0$ for every sufficiently large $n$ under RH from the prime-square contribution and the Hadamard formula. Absolute convergence then gives (2) strictly and (3) strictly. Condition (3) implies (2) by summing the blocks starting at $N,2N,4N,\ldots$ and using $S_{2^jN}\to L$.

Here is a proof of (2) $\Rightarrow$ RH. All transform facts used next have independent proofs in the Bernoulli and first-prime sections. Write $d_n=\log P_n$ and $\alpha=-3/4+\Theta/2$, where $\Theta=\sup_{\rho}|\Re\rho-1/2|$. Set $D(s)=\sum_{n\ge2}d_n n^{-1-s}$ and $B(s)=\sum_{n\ge1}e_n n^{-1-s}$. The unconditional estimates are $d_n=O(n^\alpha/\log n)$ and $d_n-e_n=O(n^{-3/4}/\log n)$ for $n\ge2$. Thus $J(s)=D(s)-B(s)$ is holomorphic on $\Re s>-3/4$, and $D,B$ converge absolutely on $\Re s>\alpha$. For $-1<\Re s<0$, the Newton interpolation and the gamma-quotient estimate give, initially on the overlap with $\Re s>\alpha$,
\[
 \frac{D(s)}{\Gamma(-s)}+R(s)=\log A(s),\quad
 A(s)=\xi(2s+2)\,\xi(2)^{-1}(2\pi/5)^{-s}.
\]
Here $R$ is holomorphic throughout the strip: it is the series of the differences between the Newton kernels $(-1)^n\binom sn$ and $n^{-1-s}/\Gamma(-s)$, multiplied by $d_n$, locally normally convergent by the $O(n^{-2-\Re s})$ difference bound. The positive real values of $A$ permit analytic continuation of $D$ along the real interval $(-1,0)$. In particular $B$ continues along $(-3/4,0)$.

For real $x\ge1$ extend $V$ as $V(x)=L-S_{\lfloor x\rfloor}$. When $\Re s>0$, Fubini gives
\[
 \mathcal V(s)=\int_1^\infty V(x)x^{-1-s}\,dx
               =\frac{B(0)-B(s)}s .
\]
This is justified by $\sum|e_n|/n<\infty$. The potential singularity at zero is removable. Condition (2) means $V$ is eventually nonpositive. If its transform had a finite abscissa of absolute convergence $\sigma_c>-3/4$, that real point would be a singularity by Landau's theorem, contrary to the displayed continuation. More explicitly, discard a finite initial interval and change sign to obtain a nonnegative measure in the coordinate $t=\log x$. If the Laplace transform were analytic at its real abscissa of convergence, its Taylor series about a real point just to the right could be evaluated slightly to the left of that abscissa. Positivity and monotone convergence on the Taylor coefficients would imply absolute convergence of the original integral there. Thus $\mathcal V$ is holomorphic throughout $\Re s>-3/4$.

Now $B(0)-s\mathcal V(s)+J(s)$ extends $D$ holomorphically into that half-plane. On $-3/4<\Re s<0$ the exponential of $D(s)/\Gamma(-s)+R(s)$ consequently agrees with $A(s)$ by analytic continuation. It has no zeros there. Any nontrivial zeta zero with $\Re\rho>1/2$ would give $s=(\rho-2)/2$ in this strip with $A(s)=0$. Reflection completes the proof.

The same transform argument with the opposite sign shows that eventual $S_N\le L$ would imply RH and hence the opposite strict sign. In particular $S_N>L$ infinitely often unconditionally; if RH fails, $S_N-L$ takes both strict signs infinitely often. This does not prove its eventual positivity from arithmetic.

Johnston proved an unconditional negative integral of $(\pi(t)-\mathrm{li}(t))/t^2$ from 2 to $x$, and a different unweighted integral sign equivalent to RH. The identities above work directly with the specific $w_n$ and the ordinary primes. [Johnston, Theorems 1.1 and 1.3](https://arxiv.org/pdf/2201.06184)

## A pointwise bound for the sharp tail fails on the actual primes

Let $T(y)=\sum_{p>y}(\log p)/p^2-1/y$, the integrand of the tail probability formula. One might seek $T(y)\le0$ for every $y$ to control this weighted average. The proposed sign fails even for the actual primes. The elementary bound above gives $T(1)<-1/3$, whereas
\[
 T(109/10)>\frac{135445793089}{109000000000000}>\frac1{1000}.
\]
The last lower bound uses only prime terms $11\le p\le2000$. For $2^k\le p<2^{k+1}$ use $\log p\ge k\log 2+2(p-2^k)/(p+2^k)$, keep four positive terms of the atanh series for $\log2$, and round each summand downward at scale $10^{12}$. All omitted prime terms are positive. [The sharp-tail checker](../../../scripts/xi_bernoulli/check_sharp_tail.py) reproduces the bound. Thus the remaining sign requires cancellation under averaging or a separate eventual tail estimate.

# Two one-sided rational energies and the zero abscissa

Let $M_k=6\,10^k k!|B_{2k+2}|/(2k)!$, $P_n=\prod_{k=0}^n M_k^{(-1)^k\binom nk}$, $d_n=\log P_n$, and $u_+=\max(u,0)$, $u_-=\max(-u,0)$. Write $\Theta=\sup_\rho(\Re\rho-1/2)$ over nontrivial zeta zeros and $\alpha=-3/4+\Theta/2$. Define the positive rational partial sums
\[
 E_N^\pm=\sum_{n=2}^N\lfloor\sqrt n\rfloor\,(P_n-1)_\pm^2,\qquad E_N=E_N^++E_N^- .
\]
The two choices of sign give separate exact identities:
\[
 \limsup_{N\to\infty}\frac{\log(1+E_N^\pm)}{\log N}=\Theta.
\]
In fact RH is equivalent to $E_N^+<1/5$ for every $N$, to $E_N^-<1/5$ for every $N$, and to $E_N<1/5$ for every $N$. A proof that one sign has bounded energy, with any fixed constant, would already suffice. The explicit budget, including a substantial independently proved finite range, is justified below. These statements concern different information from checking the individual absolute errors.

## Proof of the abscissa identity

The previous scalar result gives $d_n=O(n^\alpha/\log n)$ for $n\ge2$. In particular $d_n\to0$ and $\operatorname{sign}(d_n)=\operatorname{sign}(P_n-1)$. The ratio $|P_n-1|/|d_n|$ tends to one at nonzero terms. Replacing $P_n-1$ by $d_n$ or replacing $\lfloor\sqrt n\rfloor$ by $\sqrt n$ leaves the asserted growth exponents unchanged. The bound on $d_n$ proves the upper exponent: sum $n^{-1+\Theta}/\log^2 n$; at $\Theta=0$ the series converges, and at $\Theta>0$ its sum through $N$ is $O_\Theta(1+N^\Theta/\log^2N)$, by splitting at $\sqrt N$.

For the lower bound suppose that for one sign the limsup is strictly less than $\Theta$. Necessarily $\Theta>0$. Choose $0<\eta<\Theta$ strictly above that limsup. Then the corresponding energy is $O(N^\eta)$. On a dyadic block, Cauchy–Schwarz gives, for real $s$,
\[
 \sum_{R<n\le2R}(d_n)_\pm n^{-1-s}
 \ll_s R^{\eta/2-3/4-s}.
\]
Thus the corresponding Dirichlet series $D_\pm(z)=\sum (d_n)_\pm n^{-1-z}$ is absolutely and locally uniformly convergent on $\Re z>b=-3/4+\eta/2$.

We justify the required real-axis continuation of $D(z)=\sum d_n n^{-1-z}$. The previous Newton identity gives $H(z)=\log A(z)=\sum_{n\ge2}(-1)^n\binom zn d_n$ for $\Re z>0$, where
\[
 A(z)=\xi(2z+2)\,\xi(2)^{-1}(2\pi/5)^{-z}.
\]
For compact sets in $-1<\Re z<0$, the gamma-ratio estimate
\[
 (-1)^n\binom zn=\frac{n^{-1-z}}{\Gamma(-z)}(1+O_K(1/n))
\]
shows that the difference series $R(z)=\sum[(-1)^n\binom zn - n^{-1-z}/\Gamma(-z)]d_n$ is holomorphic there. The estimate also holds in bounded neighborhoods across $\Re z=0$, with the error understood additively through the entire factor $1/\Gamma(-z)$. On $\Re z>\alpha$ the original Newton series already represents $H$ by normal convergence and continuation. Hence $D(z)=\Gamma(-z)(H(z)-R(z))$ near the real interval $(\alpha,0)$. Now $A$ has no real zeros on $(-1,0)$: on the corresponding positive real arguments $0<s<2$ the only pole of $\zeta(s)$ is cancelled, and $\zeta(s)$ is negative for $0<s<1$ by the alternating eta series. This gives compatible local real-axis continuations of $H$ and $D$ down to any point of $(-1,0)$. No whole-half-plane zero-free region is asserted in that step.

The other sign is the difference, with the appropriate sign, of $D$ and the known holomorphic one-sided series; it consequently extends along the real interval $(b,0)$. Its coefficients are nonnegative. Landau's theorem for Dirichlet series says that a finite abscissa of convergence of a series with such coefficients is a singularity on the real axis. Its abscissa therefore cannot exceed $b$: if it did, it would be at most $\alpha$ by the known bound on $d_n$, and the continuation just obtained would be holomorphic there. Thus *both* signs converge absolutely on $\Re z>b$. So does the Newton series. Its exponential agrees with the entire function $A$ throughout this half-plane. Since $b<\alpha$, this contradicts an actual zero $z=(\rho-2)/2$ there. This proves the lower exponent. The same argument directly proves that $d_n\le C_\epsilon n^{-3/4+\epsilon}$ for each $\epsilon>0$, or the corresponding reverse one-sided estimate, implies RH. [Hardy and Riesz, *The General Theory of Dirichlet's Series*, Theorem 10](https://assets.cambridge.org/97811074/93872/excerpt/9781107493872_excerpt.pdf)

## A numerical budget and attenuation above a verified zero height

For each zero write $q=(2-\rho)/2=a+iy$ and count multiplicities. The scalar Hadamard identity for $n\ge2$ is
\[
 d_n=-\sum_\rho\int_0^\infty B(q+v,n+1)\,dv.
\]
Here $a\in[1/2,1]$, $a\ge3/4-\Theta/2$, and $|y|=|\Im\rho|/2$. The standard Hadamard identity $2\sum\Re(1/\rho)=\kappa=2+\gamma_E-\log(4\pi)<0.047$ gives $S_2=\sum |y|^{-2}<1/5$ without RH. Indeed pair $\beta$ with $1-\beta$ at equal ordinate: $\sum (1+\gamma^2)^{-1}\le\kappa$. Each summand is then at most $\kappa$, and $S_2\le4\kappa/(1-\kappa)<1/5$.

The contribution of *all* zeros known to lie on the line, or any subset of them, satisfies for $n\ge512$, with $a=3/4$,
\[
 n^a\log n\, |d_{n,\mathrm{line}}| < 0.801 .
\]
To see this, bound the first two beta denominators by $|y|$, integrate the remaining real beta functions in $v$, and sum. The resulting upper bound is $S_2 n(n-1)\int_0^1 x^{a+1}(1-x)^{n-2}/(-\log x)\,dx$. On $x\le n^{-1/2}$ bound the reciprocal logarithm by $2/\log n$ and extend the beta integral to one. This contributes at most $2 S_2\Gamma(a+2)n^{-a}/\log n<0.8 n^{-a}/\log n$. We used $\Gamma(a+2)\le2$ by log-convexity and $\Gamma(n+1)/\Gamma(n+a+1)\le n^{-a}$ by Jensen's inequality for a gamma variable. On the remainder $1/(-\log x)\le1/(1-x)$ gives an upper bound $S_2 n(n-1)e^{-(n-2)/\sqrt n}/(n-2)$. After multiplication by $n^a\log n$ this is less than $0.001$: put $v=\sqrt n>22$. The upper bound $0.202 v^{3.5}(2\log v)e^{-v+2/v}$ is decreasing for $v\ge22$ by differentiation. Its value at $22$ is below $0.001$ using $22^{3.5}<53240$, $2\log22<8$, $e^{2/22}<2$ and $e^{22}>2^{30}$.

Take the published height $T=3\cdot10^{12}$, put $U=T/2$, and call the still unclassified contributions with $|\Im\rho|>T$ the high part. For $512\le n\le2T^2$, keep three denominators at $|y|$, and bound the rest by their real parts. More generally, keeping $s$ factors and integrating gives
\[
 \int_0^\infty |B(q+v,n+1)|\,dv
 \le |y|^{-s}\Gamma(a+s)\frac{\Gamma(n+1)}{(n-s)\Gamma(n+a)}\quad (s<n).
\]
For the integral use $-\log x\ge1-x$. Jensen gives $\Gamma(n+1)/\Gamma(n+a)\le(n+a)^{1-a}$. With $s=3$ and $n\ge512$ the final ratio is at most $1.01n^{-a}$. Since $\Gamma(a+3)\le6$ and $\sum_{\mathrm{high}}|y|^{-3}\le 2S_2/T$, this yields $n^{3/4}\log n\,|d_{n,\mathrm{high}}|\le 3.03 n^{1/4}\log n/T<0.001$ in the specified range. [Platt and Trudgian, verified zero height](https://arxiv.org/abs/2004.09765)

For $n\ge2T^2$, let $r=T^2$. Keep the first two factors at $|y|$ and factors indexed by $2\le j<r$ at $\sqrt{j^2+U^2}$. Repeat the preceding beta bound with the remaining real factors. Since $\Gamma(a+r)\le r!$ and $r\le n/2$, this gives
\[
 |d_{n,\mathrm{high}}|\le
 3S_2 n^{-3/4+\Theta/2}\,
 r\sqrt{1+U^2}\left(\prod_{j=1}^{r-1}(1+U^2/j^2)\right)^{-1/2}.
\]
Euler's product for $\sinh$ evaluates the infinite product as $\sinh(\pi U)/(\pi U)$. The discarded tail has log at most $U^2/(r-1)$. We have the uniform, all-index estimate
\[
 |d_{n,\mathrm{high}}|\le
 3S_2 r\sqrt{1+U^2}
 \sqrt{\frac{\pi U}{\sinh(\pi U)}}\,e^{U^2/(2(r-1))}
 n^{-3/4+\Theta/2}\quad(n\ge2T^2).
\]
In particular the coefficient is below $T^4e^{-\pi T/4}$ for the explicit $T$: use $3S_2<1$, $\sqrt{1+U^2}<T$, $\sinh(\pi U)>e^{\pi U}/3$, $\sqrt{3\pi U}<3\sqrt T$, and $e^{U^2/(2(r-1))}<2$.

Using only $\Theta\le1/2$, this settles the range $n\le e^{3T}$. With OpenAI's independently proved zero-free half-plane $\Re\rho\le7/8$, it settles $n\le e^{4T}$. In either case $n^{\Theta/2}\le e^{3T/4}$, and
\[
 n^{3/4}\log n\,|d_{n,\mathrm{high}}|\le4T^5 e^{-(\pi-3)T/4}<0.001 .
\]
In both finite ranges the combined low and high bound gives $n^{3/4}\log n |P_n-1|<0.82$ for every $n\ge512$, using $|e^u-1|\le|u|e^{|u|}$ and $|d_n|<0.01$. Under RH precisely the same bound holds for all $n\ge512$ from the low-ordinate calculation applied to every zero. [OpenAI 003](https://github.com/openai/math/blob/3344da59991ed94f9ba711217b29c1d760badfa6/lean/docs/003.md)

For the first $511$ indices up to $n=511$ (including the zero contribution at $n=1$), the companion standard-library integer checker proves $E_{511}<1/16$ using outward-rounded logarithms of exact rational Bernoulli moments. For the later terms the preceding bound gives
\[
 \sum_{n=512}^N \lfloor\sqrt n\rfloor(P_n-1)^2
 \le .82^2\sum_{n=512}^N\frac1{n\log^2 n}
 <\frac{.82^2}{\log 511}<0.113 .
\]
Thus the entire rational energy is below $1/5$ throughout each stated range. Under RH this holds for *every* partial sum, even the infinite total is below $1/5$. Conversely a uniform bound on either one-sided energy forces $\Theta=0$ by the exponent theorem. The outstanding task is the uniform arithmetic energy estimate beyond the finite range.

## A pure all-index hierarchy of fixed budgets

For rational $0\le w\le1/2$ the weights $\lfloor n^w\rfloor$ are computable by integer powering. For either sign, or the full square, one has
\[
  \sum_{n=2}^\infty \lfloor n^w\rfloor (P_n-1)_\pm^2 <1/5
  \quad\Longleftrightarrow\quad \Theta\le\tfrac12-w .
\]
Indeed put $a_0=(1+w)/2$. The last zero bound is precisely $\Re q\ge a_0$ for every zero. Repeating the two-factor bound on the line contribution with the actual $a$ in each summand, $\Gamma(a+2)\le2$, $n^{-a}\le n^{-a_0}$, and $a_0\le3/4$ gives $n^{a_0}\log n\,|d_n|<0.801$ for all $n\ge512$. The same prefix and convergent tail prove the budget for the full square. Conversely bounded one-sided energy at exponent $w$ makes the corresponding one-sided Dirichlet series absolutely convergent on $\Re z>-(1+w)/2$ by the dyadic Cauchy–Schwarz estimate. Landau continuation as above forces $A$ to have no zeros there. This proves the reverse implication including the boundary. In particular the known open half-plane $\Re\rho>7/8$ free of zeta zeros gives **all-index** convergence at $w=1/8$ and the same $1/5$ budget; ordinary critical-strip theory gives $w=0$. Liu's slightly better open half-plane even gives the rational weight $w=0.12504$. All three conclusions concern the entire sequence without any finite-height input. The remaining endpoint $w=1/2$ is independent RH. [Liu, version 2](https://arxiv.org/abs/2610.12234v2)

# A strict ordinary-prime comparison at every order

Put $w_n(y)=y^{-2}(1-y^{-2})^n$ and
\[
 e_n=\sum_{p\ \mathrm{prime}}w_n(p)-\int_1^\infty w_n(y)\frac{dy}{\log y}\qquad(n\ge2).
\]
The equivalences
\[
  \mathrm{RH}\quad\Longleftrightarrow\quad e_n<0\text{ for every }n\ge2
  \quad\Longleftrightarrow\quad e_n\le0\text{ for all sufficiently large }n
\]
follow below. Without a global RH theorem the negative sign holds for every $2\le n\le\exp(3T)$ at the published zero height $T=3\cdot10^{12}$. With the independent $7/8$ zero-free theorem it holds for every $2\le n\le\exp(4T)$. The argument for the larger finite range and the conditional proof at all orders are given together.

The previous scalar prime-power formula gives
\[
 e_n=d_n-J_n-H_n,\qquad
 J_n=\int_0^1\frac{x(1-x)^{n-1}}{-\log x}\,dx>0,\qquad
 H_n=\sum_p\sum_{k\ge2}\frac{w_n(p^k)}{k}.
\]
The prime-square contribution $Q_n=\frac12\sum_p p^{-4}(1-p^{-4})^n$ is a lower bound for $H_n$. If $x=n^{1/4}\ge100$, Rosser–Schoenfeld's $\pi(y)>y/\log y$ for $y\ge17$ and $\pi(y)<1.25506y/\log y$ give at least $0.4x/\log x$ primes in $(x,2x]$. Indeed $2/(1+\log2/\log100)-1.25506>0.4$. Each such prime has $p^{-4}\ge1/(16n)$ and $(1-p^{-4})^n\ge(1-1/n)^n\ge1/4$. The last bound follows by monotonicity for $n\ge2$, or the derivative of $u\log(1-1/u)$. Hence
\[
      n^{3/4}\log n\,Q_n\ge1/80\qquad(n\ge 10^8).
\]
[Rosser and Schoenfeld, Corollary 1, equations (3.5)–(3.6)](https://denisevellachemla.eu/Rosser-Schoenfeld-1962.pdf)

To bound $d_n$ use the notation and beta identity in the one-sided energy manuscript. For zeros on the line, $a=3/4$ and $|y|>7$ since the first positive ordinate is greater than 14. For the first $r$ beta factors, bound the first two by $|y|$ and the following $r-2$ by $\sqrt{(a+j)^2+49}$, $2\le j<r$. Define $L_r=\prod_{j=2}^{r-1}(a+j)/\sqrt{(a+j)^2+49}$. On integrating the remaining real beta factors the line contribution is bounded by
\[
 \frac{S_2}{\prod_{j=2}^{r-1}\sqrt{(a+j)^2+49}}\,
 \frac{n!}{(n-r)!}\int_0^1\frac{x^{a+r-1}(1-x)^{n-r}}{-\log x}\,dx .
\]
The proof of $S_2<1/5$ in the energy manuscript uses no global RH. [Miller, *The highest-lowest zero and other applications of positivity*, Introduction](https://ow3.math.rutgers.edu/~sdmiller/highlow/highlow.pdf)

For $n\ge10^8$ choose $r=16$. At $x\le n^{-1/2}$ the estimate $1/(-\log x)\le2/\log n$ and the full beta integral bound the contribution to $n^{3/4}\log n\,|d_{n,\mathrm{line}}|$ by $2S_2\Gamma(a+2)L_{16}<0.0075$. Here the rational check obtained by squaring gives $L_{16}<15/1600$. For the complementary range $1/(-\log x)\le1/(1-x)$, $n!/(n-r)!\le n^{16}$, and $(1-n^{-1/2})^{n-r}\le e^{-\sqrt n/2}$. Discarding the remaining denominator and $x^{a+r-1}\le1$ gives an upper bound $n^{17}\log n\,e^{-\sqrt n/2}<0.0005$ after normalization. Indeed it decreases for $n\ge10^8$ by differentiation and the inequality at $10^8$ follows already from $10^{139}<e^{500}$. Thus the full on-line part is below $0.008$ in this normalization. The unclassified high-zero part is below $0.001$ throughout the independently covered ranges from the energy proof. Under RH every zero belongs to the line part, and the same argument has no upper limit on $n$. This gives $e_n<-0.003n^{-3/4}/\log n$ for $n\ge10^8$ in each applicable range.

For $512\le n\le10^8$ use $r=32$ without the logarithm factor. Bounding $1/(-\log x)$ by $1/(1-x)$ on the entire interval and evaluating the beta integral gives
\[
 n^{3/4}|d_{n,\mathrm{line}}|\le S_2\Gamma(a+2)L_{32}
 \frac{n^a\Gamma(n+1)}{(n-32)\Gamma(n+a)}<0.002 .
\]
The last ratio is at most $n^a(n+a)^{1-a}/(n-32)<1.07$ and $L_{32}<0.0046$ by rational comparison after squaring. If $2^j\le n\le 2^{j+1}$ with $j=9,\ldots,26$, then
\[
 n^{3/4}Q_n\ge\big\lfloor(2^j)^{3/4}\big\rfloor
 \sum_{\substack{p\le257\\p^4\ge 2^{j+2}}}\frac1{4p^4}>0.0047.
\]
The first inequality uses $(1-p^{-4})^n\ge1-n/p^4\ge1/2$. The second is checked at all eighteen dyadic blocks by the companion exact verifier. The high-zero part is bounded by $0.001$ even after the additional logarithm factor in that range. Thus the sign holds.

At every $2\le n\le511$ the previously defined integer log intervals bound $d_n$ directly. The checker proves it is strictly less than
\[
 \frac{2}{(n-1)n(n+1)}+
 \sum_{\substack{p\le257\\ p^4\ge2n}}\frac1{4p^4}
 \ \le J_n+Q_n .
\]
The first term bounds $J_n$ from below using $-\log x\le(1-x)/x$. See [the prime-bias checker](../../../scripts/xi_bernoulli/check_bias.py) and its [Bernoulli prefix calculation](../../../scripts/xi_bernoulli/check_prefix.py). The computation works with exact integers and fractions.

For the converse, the cumulative weight of proper prime powers below $y$ is $O(\sqrt y)$: squares contribute at most $\sqrt y/2$ and larger powers at most $O(y^{1/3}\log y)$. Integration by parts against $w_n$ and the bound $|w_n'(y)|\ll y^{-3}(1+ny^{-2})e^{-(n-1)y^{-2}}$ for $y\ge2$ then give $H_n=O(n^{-3/4})$ by the substitution $v=\sqrt n/y$. The bound $J_n\le1/[n(n-1)]$ follows from $-\log x\ge1-x$. If $e_n\le0$ eventually, these estimates give the one-sided bound $d_n\le O(n^{-3/4})$ throughout the tail. The Newton and Landau one-sided argument in the energy manuscript forces RH. An independent proof of the eventual ordinary-prime sign is still missing.
