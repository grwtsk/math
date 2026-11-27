# Direct Mellin detection by the original harmonic prime block

Local source attribution: grwtsk contributors. Analytic manuscript. The source of the conditional reverse sign is the [ordinary-prime bias calculation](XiBernoulliOrdinaryPrimeBias.md). The [tent window manuscript](XiWeilTentPrimeWindow.md) gives sparse sampling and the connection to the Weil pairing.

Use the actual ordinary-prime discrepancy and its doubling block
\[
 b_j=\sum_p \frac{(1-p^{-2})^j}{p^2}
       -\int_1^\infty\frac{(1-y^{-2})^j}{y^2\log y}\,dy,
 \qquad D_N=S_{2N}-S_N=\sum_{j=N+1}^{2N} b_j/j.
\]

**Theorem.** Let $1/2\le\theta<1$. Either one-sided bound
$D_N\le C N^{-1+\theta/2}$ or $-D_N\le C N^{-1+\theta/2}$ for every
sufficiently large integer $N$ excludes all zeros of $\zeta$ with
$\Re\rho>\theta$. In particular, the upper bounds
$D_N\le C_\epsilon N^{-3/4+\epsilon}$ for every $\epsilon>0$ imply RH.
If a zero has real part $\beta>1/2$, then for every $1/2\le\theta<\beta$,
$N^{1-\theta/2}D_N$ has limsup $+\infty$ and liminf $-\infty$.
This direct necessity argument uses no Bernoulli interpolation.

## Matching a fixed dilation kernel

For $u,X>0$ put
\[
 g(u)=u^{-2}\int_1^2 e^{-v/u^2}\,dv/v,\qquad
 D(X)=\sum_p g(p/X)-\int_2^\infty g(y/X)\,dy/\log y.
\]
Then $D(\sqrt N)=N D_N+O(N^{-1/2})$ with an absolute implied constant.
To see this, take $X=\sqrt N$, $q=y^{-2}$, $t=Nq$. For $y\ge2$ and
$N<j\le2N$, the inequalities
$0\le-\log(1-q)-q\le C q^2$ and $1-e^{-v}\le v$ give
$|(1-q)^j-e^{-jq}|\le C j q^2 e^{-t}$.
The decreasing function $e^{-vt}/v$ has a right Riemann sum on $[1,2]$
with error at most $e^{-t}/N$. Consequently
\[
 \left|N y^{-2}\sum_{j=N+1}^{2N}(1-y^{-2})^j/j-g(y/X)\right|
 \le (C/N)t(1+t^2)e^{-t}.
\]
The sum of $t(1+t^2)e^{-t}$ over all integers $y\ge2$ and its integral
against $dy/\log y$ on $[2,\infty)$ are $O(X)$: it is bounded on
$y\le X$, and is $O(X^2/y^2)$ beyond $X$. On $1<y<2$, use
$(1-y^{-2})^j\le(3/4)^N(1-y^{-2})$ and
$1-y^{-2}\le2\log y$. This discarded part is $O(N(3/4)^N)$.

Also $|u g'(u)|\ll\min(1,u^{-2})$. Summing and integrating that bound,
and differentiating locally uniformly, gives $D'(X)=O(1)$ for $X\ge2$.
The gaps between consecutive $\sqrt N$ are $O(1/X)$. Hence either
one-sided hypothesis in the theorem yields $\pm D(X)\le C'X^\theta$
for all large real $X$, with the same choice of sign.

## Mellin transform and the real axis

For $\Re s<2$ the Mellin multiplier is
\[
 G(s)=\int_0^\infty g(u)u^{s-1}du
 =\tfrac12\Gamma(1-s/2)\int_1^2v^{s/2-2}dv.
\]
It has no zero in this half-plane. Indeed the last integral is
$(2^{s/2-1}-1)/(s/2-1)$ and $|2^{s/2-1}|<1$ there.

For $1<\Re s<2$, absolute convergence, scaling, and Fubini give
\[
 \int_0^\infty D(X)X^{-s-1}dX=G(s)R(s),\qquad
 R(s)=P(s)-\int_2^\infty y^{-s}dy/\log y,\quad P(s)=\sum_p p^{-s}.
\]
Since $D(X)=O(X^2)$ at zero, the part with $0<X<1$ is holomorphic on
$\Re s<2$. Differentiating the prime Euler product gives
\[
 R'(s)=\frac{\zeta'(s)}{\zeta(s)}-\sum_{k\ge2}P'(ks)+\frac{2^{1-s}}{s-1}.
\]
The higher-power sum converges locally normally for $\Re s>1/2$
by comparison with $\sum_{n\ge2}(\log n)n^{-2\sigma}/(1-n^{-\sigma})$
for each $\sigma>1/2$. At $s=1$ the two simple poles cancel. On the real
interval $(1/2,1)$ the alternating eta series is positive, so $\zeta$
has no zero there. This gives continuation of $R$ along the real axis
to a neighborhood of each point $1/2<s<2$, by local integration.
At any nontrivial zero in this strip, $R'$ has a pole of nonzero residue
equal to its multiplicity.

## One sign excludes the pole

Take the eventual bound $\pm D(X)\le C'X^\theta$ and apply Landau's
theorem to the eventually nonnegative function $C'X^\theta\mp D(X)$
on $[1,\infty)$. Truncating a bounded initial interval changes its
transform by an entire function. Its Mellin integral initially converges
for real $s>1$, and its transform has analytic continuation around every
real $s>\theta$: on $\theta<s<2$ this follows from the preceding formula
and the elementary transform $C'/(s-\theta)$. Landau's real singularity
theorem therefore places its abscissa of convergence at most at $\theta$.
In particular the transform of $D(X)$ on $[1,\infty)$ is holomorphic on
$\Re s>\theta$. Restoring the part at zero and dividing by the nonvanishing
$G(s)$ would give a holomorphic $R$ throughout $\theta<\Re s<2$.
Its derivative cannot have a pole there. This proves the zero exclusion.
The functional equation then gives RH from the family of stated bounds.

The sign condition itself still needs an independent prime estimate.
For comparison, the main ordinary-prime manuscript also gives the
conditional sign in the opposite direction, starting from RH.

For the real-abscissa step see [Landau’s oscillation theorem](https://mathworld.wolfram.com/LandausOscillationTheorem.html).

## A grid with only quadratically many starts in logarithmic height

Put $X_k=\exp(\sqrt{k})$ and $n_k=\lfloor\exp(2\sqrt{k})\rfloor$ for positive integers $k$. For every $1/2\le\theta<1$, an eventual bound
\[
       \sigma D_{n_k}\le C n_k^{-1+\theta/2}\quad(k\ge k_0)
       \qquad\text{for either one fixed }\sigma\in\{-1,1\}
\]
already excludes all zeros with real part greater than $\theta$. Consequently **RH is equivalent to $S_{2n_k}\le S_{n_k}$ for every sufficiently large $k$**. The reverse implication uses only the direct Mellin argument below. The forward implication uses the previously proved prime-square bias under RH. Only $(\log M)^2/4+O(1)$ different starts $n_k$ occur through $M$. The block at each such start contains all the original indices from $n_k+1$ through $2n_k$.

**The analytic interpolation.** Extend the fixed-kernel $D(X)$ above to $X$ in $|\arg X|<\pi/4$ by using
\[
 g(y/X)=(X/y)^2\int_1^2 e^{-v(X/y)^2}\,dv/v .
\]
For $|\arg X|\le1/2$ the real part of $(X/y)^2$ is at least $\cos(1)|X/y|^2$. Thus $|g(y/X)|\ll\min(1,|X/y|^2)$, uniformly there. Absolute local convergence of the prime sum and the integral gives holomorphy in the open sector, with the same argument on any closed subsector. Bounding by all integers and integrating against $dy/\log y$ for $y\ge2$ gives $|D(X)|\ll |X|$ for $|X|\ge2$ in the indicated closed subsector. On the positive axis $D'(X)=O(1)$. Since $X_k-\sqrt{n_k}=O(1/X_k)$, the matching estimate already proved gives
\[
 D(X_k)=n_k D_{n_k}+O(1/X_k).
\]
In particular the assumed one-sided inequality gives $\sigma D(X_k)\le C'X_k^\theta$ on a tail.

**Quadrature.** On $\Re z\ge1/2$ use the principal square root and set
\[
 F_s(z)=\frac{D(\exp\sqrt z)\exp(-s\sqrt z)}{2\sqrt z}.
\]
The difference
\[
 E(s)=\sum_{k\ge1} F_s(k)-\int_{1/2}^\infty F_s(x)\,dx
\]
is initially defined for $\Re s>1$. It extends holomorphically to $\Re s>0$. Here are details establishing the continuation. Use the positively oriented contour bounded by $x=1/2$, $x=K+1/2$ and the curves $z=x\pm i\sqrt x$. Inside this contour, for $z=x+iy$,
\[
 |\Im\sqrt z|=\frac{|y|}{2\Re\sqrt z}\le\frac12,\qquad
 \Re\sqrt z=\sqrt x+O(x^{-1/2}).
\]
The second bound follows from $(\Re\sqrt z)^2=x+(\Im\sqrt z)^2$. Hence $F_s$ is holomorphic throughout; on the walls, uniformly for $s$ in a compact set,
\[
 |F_s(z)|\ll x^{-1/2}\exp((1-\Re s)\sqrt x).
\]
The residues of $\pi\cot(\pi z)F_s(z)$ at the enclosed integers are $F_s(k)$. On the upper wall subtract the constant $-i\pi$ from $\pi\cot(\pi z)$, and on the lower wall subtract $i\pi$. The remainders are $O(e^{-2\pi\sqrt x})$. Their integrals converge locally uniformly for $\Re s>0$, since the wall arclength element is $O(dx)$ for $x\ge1/2$. For $\Re s>1$ the right-hand vertical integral tends to zero as $K\to\infty$: cotangent is bounded on half-integer vertical lines and the height is $O(\sqrt K)$. By Cauchy's theorem each integral of a subtracted constant times $F_s$ can then be moved to the real interval. The upper wall runs from right to left and the lower from left to right, so after division by $2\pi i$ the two contributions add to exactly $\int_{1/2}^\infty F_s(x)dx$. The remaining left vertical segments and the connectors to the real interval are integrals over fixed compact paths and are entire in $s$. This represents $E$ by the absolutely convergent correction integrals plus entire terms, proving the continuation. No bound for $D$ on a vertical line crossing the sector boundary has been assumed.

**Recovering the zeros.** By $X=e^{\sqrt x}$ the real integral is $\int_{\exp(\sqrt{1/2})}^\infty D(X)X^{-s-1}dX$. On $1<\Re s<2$ its difference from $G(s)R(s)$ is holomorphic throughout $\Re s<2$, by the small-$X$ estimate above. Consequently the sampled transform has continuation along the real interval $1/2<s<2$. If $\sigma D(X_k)\le C' X_k^\theta$ eventually, form the positive measure on the frequencies $\sqrt k$ whose late atoms are
\[
            \frac{C'e^{\theta\sqrt k}-\sigma D(X_k)}{2\sqrt k}.
\]
Its Laplace transform is the difference of an absolutely convergent compensating series on $\Re s>\theta$ and the signed sampled transform, up to finitely many entire terms. That difference is regular at every real point $s>\theta$ by the continuation just proved. Landau's theorem applies to a positive measure as well as to a nonnegative density (the same monotone-convergence proof applies). The transform therefore converges absolutely throughout $\Re s>\theta$. The sampled transform is holomorphic there. Subtract $E$, restore the truncated initial integral, and divide by $G$ as in the preceding proof. This makes $R$ holomorphic on $\theta<\Re s<2$, contradicting the nonzero residue of $R'$ at any zero in that strip.

Equivalently, any off-line zero with real part $\beta>1/2$ forces the normalized sampled blocks $n_k^{1-\theta/2}D_{n_k}$ to have limsup $+\infty$ and liminf $-\infty$ for every $1/2\le\theta<\beta$. Reflection covers the other side of the critical strip. A numerical sign check on any finite number of these samples leaves the eventual upper bound open. The integral evaluation and nonvanishing of the closed-form multiplier have a [Lean proof](XiPrimeBlockMellin.lean). The parabolic contour, the arithmetic discretization and the application of Landau in this section are paper arguments.
