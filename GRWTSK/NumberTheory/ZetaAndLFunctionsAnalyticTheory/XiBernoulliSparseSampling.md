# A prescribed sparse set of rational Bernoulli comparisons

Let $M_k=6\,10^k k!|B_{2k+2}|/(2k)!$, $P_n=\prod_{k=0}^n M_k^{(-1)^k\binom nk}$ and $d_n=\log P_n$. For each $j\ge1$, put $N=2^j$ and $m=\lceil j/10\rceil$. Form the following $m$ integers by rounding to nearest, with ties rounded upwards:
\[
 n_{j,k}=\left\lfloor \frac N2\left(3+\cos\frac{(2k+1)\pi}{2m}\right)+\frac12\right\rfloor,\qquad 0\le k<m .
\]
The numbers to be rounded are real algebraic. The nodes can equivalently be defined by the ordered roots of $T_m$, where $T_0=1$, $T_1=t$, $T_{r+1}=2tT_r-T_{r-1}$. They can be isolated using rational arithmetic. Write $S$ for the union of these integer sets. There are $O((\log X)^2)$ nodes up to $X$. Computing a product at one node still requires its defining Bernoulli data.

**Theorem.** If $\Theta=\sup_\rho|\Re\rho-1/2|$ over the nontrivial zeta zeros and $\log0=-\infty$, then
\[
  \limsup_{\substack{n\to\infty\\n\in S}}\frac{\log|P_n-1|}{\log n}=-\frac34+\frac\Theta2 .
\]
Consequently RH is equivalent to $n^3(P_n-1)^4\le1$ at every sufficiently large node of $S$. Requiring every node works as well.

**A bound independent of the zero frontier.** The exact signed curvature measure from the Bernoulli Newton formula gives the holomorphic extension to $\Re z>2$
\[
 D(z)=\int_0^1(1-t)^{z-2}\,d\sigma(t),\qquad D(n)=d_n .
\]
For $s=\Re z\ge4$ its total-variation integral is $O(s^{-1/2})$. Its atomic contribution is at most $\sum_{l=2}^\infty l^{-2}e^{-s/l^2}$ because a prime power has a unique prime base, its coefficient $1/r$ is at most one, and $(1-l^{-2})^s\le e^{-s/l^2}$. The summand as a function of real $l>0$ is unimodal, with maximum $1/(es)$ and integral $\sqrt\pi/(2\sqrt s)$. The two continuous contributions to the variation are bounded by
\[
 \int_0^1t(1-t)^{s-2}dt+
 \int_0^1t^{-1/2}(1-t)^{s-1}dt\ll s^{-1/2}.
\]
Here $-\log t\ge1-t$, and the second integral is bounded by replacing the last factor with $e^{-(s-1)t}$. Holomorphy follows by domination on compact subsets. In particular $D'=O(N^{-3/2})$ near the real interval $[N,2N]$ by applying Cauchy's estimate on disks of radius $N/4$.

**Uniform interpolation.** Define $H(t)=D(N(3+t)/2)$. In the Bernstein ellipse with parameter $R=23/4$, the real part of its argument is at least $N[3/2-(R+R^{-1})/4]>N/64$. For all sufficiently large $N$, $|H|\ll N^{-1/2}$ throughout this ellipse. Consider the symmetric Laurent function $H((w+w^{-1})/2)$ in $R^{-1}\le|w|\le R$. Cauchy bounds on its Laurent coefficients give a degree-$m-1$ Chebyshev truncation $Q$ with $\|H-Q\|_{[-1,1]}\ll N^{-1/2}R^{-m}$, by summing the geometric tail.

For an arbitrary polynomial $Q$ of this degree its sup norm on $[-1,1]$ is at most $(2m-1)$ times the maximum of its values in modulus at the $m$ Chebyshev nodes. Indeed the discrete cosine transform at the angles $(2k+1)\pi/(2m)$ recovers its zeroth Chebyshev coefficient with multiplier $1/m$ and the other coefficients with multiplier $2/m$. On $[-1,1]$ each Chebyshev polynomial has modulus at most one. The bound on $D'$ controls rounding independently of the interpolation degree. The resulting inequality is
\[
 \sup_{N\le x\le2N}|D(x)|\ll m\left(\max_{k<m}|d_{n_{j,k}}| + N^{-3/2}+N^{-1/2}R^{-m}\right).
\]
Since $R>2^{5/2}$ and $m\ge j/10$, the last error has exponent at most $-3/4-\delta$ with $\delta=(\log_2 R)/10-1/4>0$.

The full sequence has previously established upper exponent $\alpha=-3/4+\Theta/2\ge-3/4$. If the exponent on the sampled nodes were strictly below $\alpha$, the block estimate would force the full exponent strictly below $\alpha$ since $m=O(\log N)$. This contradiction proves the result for $d_n$. Since $d_n\to0$ it has the same exponent as $P_n-1$, also at zero terms. The all-index rational equivalence proved in the earlier argument supplies necessity under RH. The sampled exponent supplies sufficiency.

The method reduces the number of tested products. It does not prove the comparisons hold at the infinitely many specified nodes.
