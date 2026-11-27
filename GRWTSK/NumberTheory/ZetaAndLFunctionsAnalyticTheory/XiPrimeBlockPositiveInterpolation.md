# A positive-type interpolation of the harmonic prime block

Local source attribution: grwtsk contributors. The prime-power identity and the obstruction for the uncorrected kernel have a [Lean proof](XiWeilBlockObstruction.lean). The correction and its asymptotic order below are analytic arguments.

For integers $N\ge1$ and $s\ge0$, define
\[
 B_N(s)=\sum_{j=N+1}^{2N}\frac{(1-e^{-s})^j}{j},
 \qquad g_N(t)=e^{-3|t|/2}\frac{B_N(2|t|)}{|t|},\qquad g_N(0)=0.
\]
The Fourier convention is $\widehat f(\xi)=\int_{\mathbb R} f(t)e^{-i\xi t}\,dt$.
The even continuous profile $g_N$ has a negative two-point quadratic form, since
$2g_N(0)-2g_N(t)<0$ for $t\ne0$. The following correction preserves every
arithmetic sample that enters the prime-power side of the Weil explicit formula.

**Theorem.** Take $a=(\log 2)/2$, $h(t)=e^t\mathbf 1_{[0,a]}(t)$ and
$K=h*\widetilde h$, where $\widetilde h(t)=h(-t)$. Define
\[
 c_N=\max\!\left(0,\sup_{\xi\in\mathbb R}\frac{-\widehat g_N(\xi)}{\widehat K(\xi)}\right).
\]
For every $N\ge1$, one has $0<c_N\le 29/(\sqrt2-1)^2$. The function
$g_N+c_NK$ is a real translation autocorrelation of an $L^2(\mathbb R)$
function. It is the least nonnegative scalar correction in this family.
As $N\to\infty$,
\[
 c_N\asymp\frac{N^{-3/4}}{\log N}.
\]
For any prime $p$ and $k\ge1$, write $m=p^k$. For every real $c$,
\[
 \Lambda(m)m^{-1/2}(g_N+cK)(\log m)=\frac{B_N(2\log m)}{k m^2}.
\]
Indeed $\log m\ge\log2>a$ and the support of $K$ lies in $[-a,a]$.

## A uniform estimate

Write $x=e^{-s}$ and $A=(1-x)^N$. Differentiation gives
$B_N'=A(1-A)$, so $|B_N'|\le1/4$. If $P_j$ is the probability of $j$ successes
in $N$ independent Bernoulli trials of success probability $x$, then
$A'=P_1$ and $A''=-P_1+2P_2$. These identities follow by differentiating
the polynomial in $x$ with $d/ds=-x\,d/dx$, including when $N=1$.
Consequently $|B_N''|\le1$ and
$|B_N'''|=|A''(1-2A)-2(A')^2|\le4$.

For $u\ge0$ set $H(u)=\int_0^2 B_N'(uv)\,dv$. It agrees with
$B_N(2u)/u$ when $u>0$, and $H(0)=0$. Integration of the three preceding bounds
gives $|H|\le1/2$, $|H'|\le2$, $|H''|\le32/3$. Thus $\|g_N\|_1\le2/3$.
On $u>0$,
\[
 |g_N''(u)|\le e^{-3u/2}\left(32/3+6+9/8\right)
 =\frac{427}{24}e^{-3u/2}.
\]
The distributional second derivative $D^2g_N$ also has an atom of mass
$2g_N'(0+)$, of magnitude at most $4$. Integrating on both half-lines yields
\[
 \|g_N\|_1+\|D^2g_N\|_{\rm TV}
 \le \frac23+\frac{427}{18}+4=\frac{511}{18}<29.
\]
Since $\widehat {D^2g_N}(\xi)=-\xi^2\widehat g_N(\xi)$, this bounds
$(1+\xi^2)|\widehat g_N(\xi)|$. Direct integration gives
\[
 \widehat K(\xi)=\left|\frac{e^{(1-i\xi)a}-1}{1-i\xi}\right|^2
 =\frac{e^{2a}+1-2e^a\cos(a\xi)}{1+\xi^2}
 \ge\frac{(e^a-1)^2}{1+\xi^2}.
\]
This proves the uniform bound on $c_N$. At $c=c_N$, the transform of
$g_N+cK$ is nonnegative, even and integrable. Its nonnegative square
root is an even real $L^2$ Fourier transform. By Plancherel and Fourier
inversion its inverse transform $f$ is real and satisfies
$(g_N+cK)(t)=\int_{\mathbb R} f(x)f(x+t)\,dx$ for every $t$.
The same reasoning at $c=0$ would contradict the negative two-point
quadratic form. Minimality follows immediately from the defining supremum.

## Size of the correction at large orders

For $N\ge4$, put $z=Ne^{-s}$. The finite sum defining $B_N$ gives
$0\le B_N(s)\le e^{-z}$, since $\sum_{j=N+1}^{2N}1/j\le1$.
For $j=1,2$, the binomial formula gives
$P_j\le z^j e^{-z/2}/j!$. From the derivative identities above there is an
absolute $C$ with $|B_N^{(j)}(s)|\le C e^{-z/4}$ for $j=0,1,2,3$.

For $0\le u\le1$, the integral formula for $H,H',H''$ now gives exponential
decay in $N$, uniformly in $u$. For $u\ge1$, differentiate
$H=B_N(2u)/u$ twice and use the same bounds. This shows on $u\ge1$ that
\[
 |g_N(u)|+|g_N''(u)|\le \frac{C'}u e^{-3u/2}\exp(-Ne^{-2u}/4).
\]
For $N\ge2$, $B_N''(0)=0$, so $g_N'(0+)=0$ and there is no atom in $D^2g_N$.
For large $N$, the integral from $1$ to $(\log N)/4$ is
$O(e^{-\sqrt N/4})$. On the remaining ray, use $1/u\le4/\log N$ and
$y=Ne^{-2u}$ to obtain
\[
 \int_0^\infty e^{-3u/2}e^{-Ne^{-2u}/4}\,du
 \le\tfrac12N^{-3/4}\int_0^\infty y^{-1/4}e^{-y/4}\,dy.
\]
It follows that $c_N=O(N^{-3/4}/\log N)$.

For the lower bound, take $\xi_N=2\pi/\log N$. The even transform is
$2\int_0^\infty g_N(u)\cos(\xi_Nu)\,du$. The part with
$u<(\log N)/4$ is negligible after multiplication by $N^{3/4}\log N$ by
the preceding estimates. On the remaining ray the substitution $y=Ne^{-2u}$
makes the normalized integral
\[
 2\int_0^{\sqrt N} y^{-1/4}
 \frac{\log N}{\log(N/y)}B_N(\log(N/y))
 \cos\!\left(\pi\frac{\log(N/y)}{\log N}\right)dy.
\]
For any fixed $y>0$, the finite sum $B_N(\log(N/y))$ tends to
$\int_1^2 e^{-vy}\,dv/v$ by Riemann sums. The cosine tends to $-1$.
The integrand extended by zero is dominated by $4y^{-1/4}e^{-y}$,
since $\log N/\log(N/y)\le2$ on this range. Dominated convergence and the
gamma integral give
\[
 \lim_{N\to\infty}N^{3/4}\log N\,\widehat g_N(\xi_N)
 =-2\,\Gamma(3/4)\int_1^2 v^{-7/4}\,dv<0.
\]
Also $\widehat K(\xi_N)\to(e^a-1)^2$. In fact this proves the explicit bound
\[
 \liminf_{N\to\infty}N^{3/4}\log N\,c_N
 \ge \frac{2\,\Gamma(3/4)}{(e^a-1)^2}\int_1^2 v^{-7/4}\,dv.
\]

## What the arithmetic identity retains

The identity at $p^k$ retains the entire prime-power sum, with weight $1/k$.
An ordinary-prime discrepancy also requires the higher-power and continuous
density contributions to be accounted for. Adding $c_NK$ changes the
archimedean and pole evaluations in the explicit formula. The positive-type
interpolation therefore supplies neither the sign of the ordinary-prime
moving block nor unconditional Weil positivity for the zeta divisor.
