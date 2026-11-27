# A quantitative sign for the next harmonic block of primes

Local mathematical exposition and formalization by grwtsk contributors. The question is whether the ordinary-prime discrepancy in the next complete block,
\[
                         D_N=S_{2N}-S_N,
\]
is eventually negative. With Alpöge's established zero-location theorem as an input, the signed-pairing argument gives, for every sufficiently large integer $N$,
\[
                       D_N<-0.736\,R_N<0 ,
\]
where $R_N$ is the positive weighted contribution from all proper prime powers below and above the physical scale. This bounds the specific statistic asked about. The prefix sign $S_N<0$ is unnecessary. The proof below gives no numerical onset for the block inequality.

## A sufficient bound from either side of the prime ramp

Let $G$ be the actual centered von Mangoldt ramp. A more general result allows an arbitrary real constant $c$. If
\[
 B=\limsup_{y\to\infty}\frac{|G(y)-c|}{\sqrt y}<\infty ,
\]
then
\[
        \limsup_{N\to\infty}\frac{|D_N+R_N|}{R_N}
        \le 2 B\,\mathbb E|2-10Z+4Z^2|,\qquad Z\sim\operatorname{Gamma}(3/4,1).
\]
In particular $B<1/(2\cdot2.853535)$ is sufficient for eventual strict block descent. This is a two-sided estimate about large arguments. The one-sided arithmetic ceiling on isolated three-halves windows supplied before Alpöge's zero exclusion has different hypotheses.

Use the [exact pairing and evaluation of the prime-square term](XiAlpogeOrdinaryPrimeWindows.md#exact-intermediate-identity). In full,
\[
 W_N(y)=y^{-2}\sum_{j=N+1}^{2N}\frac{(1-y^{-2})^j}{j},\quad
 F_N(y)=\frac{yW_N(y)}{\log y},\quad
 R_N=\sum_p\sum_{h\ge2}\frac{W_N(p^h)}h.
\]
Then $D_N+R_N=\int_1^\infty G(y)F_N''(y)\,dy$, $\int F_N''=0$ for $N\ge2$, and
\[
 R_N\sim \frac{\Gamma(3/4)}2\left(\int_1^2t^{-7/4}dt\right)
                                  \frac{N^{-3/4}}{\log N}.
\]
The identity uses the full prime-power measure. Its [finite integration-by-parts identity](XiPrimeBlockRampPairing.lean) is checked in Lean. The cited paper derivation proves the passage to infinity and the leading prime-square term by the ordinary prime number theorem.

Put $K(v)=\int_1^2v^{-1}e^{-t/v^2}dt/t$. Direct differentiation on compact subsets of $v>0$ gives
\[
 \tfrac12 N^{3/2}\log N\,F_N''(\sqrt N v)\longrightarrow K''(v).
\]
For the absolute integrals one must also control both tails. For $\sigma\in\{1/4,3/4\}$ the [weighted estimate](XiAlpogeOrdinaryPrimeWindows.md#scale-of-the-signed-pairing) bounds $\int y^\sigma |F_N''|\,dy$ by $O(N^{-1+\sigma/2}/\log N)$. After normalization by $N^{3/4}\log N$, the contribution with weight $\sqrt y$ on $y\le\delta\sqrt N$ is $O(\delta^{1/4})$ by the first bound. On $y\ge T\sqrt N$ it is $O(T^{-1/4})$ by the second. Consequently the full absolute integral against $\sqrt y$ has normalized limit $2\int_0^\infty v^{1/2}|K''(v)|\,dv$. These estimates also make the contribution on any fixed initial interval vanish after normalization. The continuous ramp is bounded there. Subtracting $c$, using $|G(y)-c|\le(B+\epsilon)\sqrt y$ on the remaining ray, then taking $\epsilon\downarrow0$, now controls both signs of $F_N''$.

For $z=t/v^2$ and $Q(z)=2-10z+4z^2$ one has
\[
 \frac{d^2}{dv^2}(v^{-1}e^{-t/v^2})=v^{-3}e^{-z}Q(z).
\]
The triangle inequality followed by the substitution $z=t/v^2$ gives
\[
 \int_0^\infty v^{1/2}|K''(v)|dv
 \le \frac12\int_1^2t^{-7/4}dt\int_0^\infty z^{-1/4}e^{-z}|Q(z)|dz.
\]
Division by the displayed leading coefficient of $R_N$ gives $2\mathbb E|Q(Z)|$ as asserted. This argument uses the absolute size of both curvature signs.

## Bounding the curvature constant

The gamma moment identity gives $\mathbb E Q(Z)^2=865/16$. Indeed $Q^2$ has coefficients $4,-40,116,-80,16$, and the first four positive moments of $Z$ are $3/4,21/16,231/64,3465/256$. The [pinned Lean proof](XiPrimeBlockCurvatureMoment.lean) evaluates the actual Lebesgue integrals of the gamma density and proves $\mathbb E|Q(Z)|\le\sqrt{865}/4$. This alone yields $D_N<-0.32R_N$ eventually after using the zero-location input below.

For a sharper constant, a [reproducible rational quadrature](../../../scripts/verify_xi_block_curvature_moment.py) gives $\mathbb E|Q(Z)|\le 2.853535$. Put $z=u^4$, so $z^{-1/4}dz=4u^2du$. Divide $0\le u\le2$ into 8,192 equal cells and integrate $4u^2$ exactly in each. The maximum of $|Q|$ on each corresponding $z$ interval occurs at an endpoint or at $5/4$. For $0\le z\le16$, $m=2^{14}$, the inequalities $(1-z/m)^m\le e^{-z}\le(1+z/m)^{-m}$ bound the exponential, and each squaring is rounded outward on the scale $2^{64}$. The denominator is bounded below on these cells. For the numerator beyond $z=16$ integrate $(4z^2+10z+2)e^{-z}$, giving the upper bound $1332e^{-16}$. All operations in the comparison are integer or rational. A second quadrature with Taylor bounds through orders 13 and 14 and a derivative bound on each cell independently gives $\mathbb E|Q(Z)|<2.86$.

## Using Alpöge's result

Once all nontrivial zeros $\rho$ lie on the line, each term in the smoothed explicit formula divided by $\sqrt y$ has absolute value $1/(\rho(1-\rho))$. Counting both signs and all multiplicities gives
\[
 B\le A=2+\gamma_E-\log(4\pi)=0.0461914179\ldots <0.0462
 \qquad(c=\log(2\pi)).
\]
The trivial-zero tail is $O(y^{-2})$. It follows that
\[
 \limsup_N\frac{|D_N+R_N|}{R_N}
 \le 2 A\,(2.853535)<0.263667 .
\]
Hence $D_N<-0.736R_N$ eventually, with a positive margin. Alpöge's geometric arithmetic, the analytic zero exclusion and reflection enter through $B\le A$. Invoking the block-to-RH theorem after this application would reuse the zero-location premise. The preceding general criterion also applies to a separately proved arithmetic two-sided bound for $G$. [Smoothed explicit formula and zero-sum constant, §I.1](https://math.uwaterloo.ca/~mrubinst/alpoge_claude_grh/zeta-paper_v2.pdf) · [Original formal proof verification](https://math.mit.edu/~drew/grh/) · [Ordinary-prime reverse implication](XiBernoulliOrdinaryPrimeBias.md) · [Weil and spectral conclusions](XiWeilDampingThreshold.md)

The infinite-kernel limit, the comparison with $R_N$ and the resulting asymptotic inequality are paper proofs. The exact gamma moment and its Cauchy–Schwarz consequence passed fresh Lean kernel replay. The sharper numerical bound was checked by rational arithmetic. The external proof has separate verification on its own pin.
