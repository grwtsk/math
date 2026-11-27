# Doubling blocks as an integral of exact prime-interval discrepancies

Local source attribution: grwtsk contributors.

Let $w_n(x)=x^{-2}(1-x^{-2})^n$, $b_n=\sum_p w_n(p)-\int_1^\infty w_n(x)\,dx/\log x$, $S_N=\sum_{n=1}^N b_n/n$ and $D_N=S_{2N}-S_N$ for positive integers $N$. In the [ordinary-prime criterion](XiBernoulliOrdinaryPrimeBias.md) the eventual sign $D_N\le0$ implies RH. The following exact integral locates the cancellation an independent proof requires. It also rules out a pointwise version of a natural sufficient inequality at arbitrarily late stages. All logarithms are natural.

## Geometry of one late block

Put $t(s)=1-e^{-s}$, $G_N(s)=\sum_{j=N+1}^{2N}t(s)^j/j$ and $h_N(s)=G_N(s)/s$ for $s>0$. The continuous value of $h_N$ at zero is zero. Differentiating the geometric sum gives
\[
 f_N(s):=G_N'(s)=t(s)^N(1-t(s)^N),\qquad
 s^2h_N'(s)=s f_N(s)-\int_0^s f_N(v)dv .
\]
The function $f_N$ first strictly increases and then strictly decreases, with maximum $1/4$ where $t(s)^N=1/2$. The right side of the second identity has derivative $s f_N'(s)$. It starts at zero, increases strictly to a positive value, then decreases strictly to $-\sum_{j=N+1}^{2N}1/j$. Hence $h_N$ has exactly one maximum, attained at a point $s_N$ beyond the maximum of $f_N$. Write $m_N=h_N(s_N)$. Both limits of $h_N$ at the endpoints of $(0,\infty)$ are zero. For $0<a<m_N$ denote the two solutions to $h_N(s)=a$ by $l_N(a)<s_N<r_N(a)$. Define $x_N(a)=e^{l_N(a)/2}$ and $y_N(a)=e^{r_N(a)/2}$.

The exact block formula is
\[
 \boxed{\quad D_N=2\int_0^{m_N}\left[
  \sum_{x_N(a)<p\le y_N(a)}\frac{\log p}{p^2}
   -\left(\frac1{x_N(a)}-\frac1{y_N(a)}\right)
 \right] da .\quad}
\]
Indeed let $F(y)=\sum_{p\le y}\log(p)/p^2-(1-1/y)$. Its defining signed measure $dF=y^{-2}(d\theta-dy)$ has finite total variation by absolute convergence at exponent two. Expanding the finite sum gives $D_N=2\int h_N(2\log y)\,dF(y)$. The superlevel sets of $h_N(2\log y)$ are the intervals $(x_N(a),y_N(a))$. Integrating the indicator of these intervals over $a$ and applying Fubini proves the formula. Prime endpoints can affect only the countable set of levels $h_N(2\log p)$. This argument keeps the signed prime and continuous terms with their original normalization.

## A pointwise interval estimate fails at arbitrarily large stages

There exist arbitrarily large $N$ for which the bracket in the boxed identity is strictly positive on a set of levels of positive length. For each of these $N$ the bracket is strictly negative at all sufficiently small positive levels. Thus proving that every interval at every late stage has a nonpositive discrepancy cannot establish the block criterion. Its integrated sign remains a separate question.

To locate the maximum smoothly, extend the parameter to real $u\ge1$ by $f_u(s)=t(s)^u(1-t(s)^u)$, $G_u(s)=\int_0^s f_u$, $h_u=G_u/s$. The same strict derivative argument gives a unique maximum $s(u)$. Substituting $t=e^{-v/u}$ into $G_u(\infty)=\int_0^1(t^u-t^{2u})/(1-t)\,dt$ shows that $G_u(\infty)\to\log2$: the integrand in the new variable is $(e^{-v}-e^{-2v})/[u(e^{v/u}-1)]$, dominated by $(e^{-v}-e^{-2v})/v$. Also $G_u(\infty)-G_u(s)\le u e^{-s}$ by Bernoulli's inequality. At $s=\log u+\log\log u+c$ one has $u e^{-s}=e^{-c}/\log u$, so $s f_u(s)\to e^{-c}$ and $G_u(s)\to\log2$. Bracketing the unique root of $s f_u-G_u$ yields
\[
 s(u)=\log u+\log\log u-\log\log2+o(1),\qquad
 e^{s(u)/2}\sim\sqrt{u\log u/\log2}.
\]

We need a step-size estimate in addition to this asymptotic. Set $B(u,s)=s f_u(s)-G_u(s)$, $A=t(s)^u$. Then $\partial_s B=s f'_u(s)$ and $f'_u=(1-2A)A\,u/(e^s-1)$. At the root $s=s(u)$ this gives $\partial_s B\to-\log2$. Meanwhile $\partial_u f_u=(1-2A)A\log t(s)$, hence $s|\partial_u f_u(s)|\ll1/u$ at the root. The derivative of the integral is bounded by
\[
 \int_0^1\frac{(-\log t)t^u}{1-t}dt\le\int_0^1t^{u-1}dt=1/u .
\]
Differentiation under the integral follows from the same integrable majorant locally in $u$. The implicit function theorem gives $s'(u)=O(1/u)$. In particular $X_N=e^{s_N/2}\to\infty$ and $|X_{N+1}-X_N|=O(\sqrt{\log N/N})\to0$.

For every sufficiently large prime $p$ choose the first index $N$ with $X_N\ge p$. Then $0\le X_N-p=o(1)$ as $p\to\infty$. Take the level $a=h_N(2\log(p-1))$. Its left endpoint is $p-1$. We claim its right endpoint is smaller than $p+4$ for large $p$. Indeed $s_N-2\log(p-1)=(2+o(1))/p$. At the maximum, $h_N''(s_N)=f'_N(s_N)/s_N\sim-(\log2)/s_N^2$. On $|s-s_N|\le1/2$ the third derivative of $h_N$ is bounded uniformly: $N/(e^s-1)=O(1)$ there, so $A,A',A''$ and $f_N,f'_N,f''_N$ are bounded, as is $G_N$. Taylor's formula on lengths $O(1/p)$ therefore has cubic remainder negligible compared with the quadratic term. By strictness on both sides, the right equal-height displacement is $(2+o(1))/p$ as well (first bracket it between one half and twice the left displacement). Exponentiating gives $y_N(a)=X_N+1+o(1)<p+4$. The bracket is at least
\[
 \frac{\log p}{p^2}-\frac{5}{(p-1)^2}>0
\]
for every sufficiently large $p$. The same inequalities hold for a neighborhood of this level: both endpoints vary continuously, the prime remains strictly inside, and the length bound has slack (the endpoints actually differ by $2+o(1)$). Finally, as $a\downarrow0$, $x_N(a)\downarrow1$ and $y_N(a)\uparrow\infty$. The bracket tends to $\sum_p\log(p)/p^2-1<0$, for example by the elementary sharp-prefix bound in the ordinary-prime manuscript. This proves both signs.

The sign reversals concern the integrand. They neither refute the block inequality nor supply its proof. For Weil positivity the missing implication is an unconditional bound on the signed integral for **all sufficiently large** indices. The [compactly supported comparison](XiWeilTentPrimeWindow.md) gives a separate all-scale test using actual primes.
