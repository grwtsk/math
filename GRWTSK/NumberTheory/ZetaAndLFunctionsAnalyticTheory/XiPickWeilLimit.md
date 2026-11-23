# Limits of the arithmetic Pick eigenvalues on a prescribed time interval

Let \(L(x)=\xi'(1/2+x)/\xi(1/2+x)\). For each finite set \(E\) of distinct positive real nodes in the Euler-product half-plane use the two real symmetric matrices
\[
 C_{xy}=\frac{L(x)+L(y)}{x+y},\qquad G_{xy}=\frac1{x+y}\quad (x,y\in E).
\]
The metric \(G\) is strictly positive. Let \(\lambda_j(E)\) be the generalized eigenvalues of \((C,G)\) in increasing order, repeated with multiplicity. Let \(\nu_j(b)\) be the correspondingly ordered variational eigenvalues of the full Weil form on the interval \([0,b]\), using the ordinary \(L^2(dt)\) norm. Then for **every** sequence of arrays satisfying
\[
 \min E\longrightarrow\infty,\qquad b_E=2\sum_{x\in E}1/x\longrightarrow b\in(0,\infty),
 \qquad \boxed{\lambda_j(E)\longrightarrow\nu_j(b)\quad\text{for each fixed }j.}       \tag{1}
\]
At \(b=0\) the least eigenvalue tends to \(+\infty\) for nonempty arrays. No separation, upper node bound, or prescribed spacing enters these statements. The interval length is exactly twice the reciprocal sum. A negative compact-window Weil direction forces negative eigenvalues on every array at that scale. A strictly positive window floor gives a uniform positive lower bound on the sampled Rayleigh quotient there. At a zero window eigenvalue the limit leaves the finite signs undecided. [Earlier Euler-sample divisor representation](XiIntegerPickInertia.md) · [Earlier sufficient harmonic budget](XiPickHarmonicBudget.md)

## Identifying the forms and the trial space

Extend a causal test function \(f\) by zero to the real line, put \(F(z)=\int f(t)e^{-zt}dt\), and use the Fourier convention \(F(iy)\). The full Weil form is
\[
 \begin{aligned}
 Q(f)={}&\frac1{2\pi}\int_{\mathbb R}\Omega(y)|F(iy)|^2dy
 +2\Re\{F(1/2)\overline{F(-1/2)}\}\\
 &-2\Re\sum_{n\ge2}\frac{\Lambda(n)}{\sqrt n}\int f(t+\log n)\overline{f(t)}dt,
 \qquad \Omega(y)=\Re\psi(1/4+iy/2)-\log\pi.                         \tag{2}
 \end{aligned}
\]
The Guinand–Weil formula identifies (2) with \(\sum_a m_a F(ia)\overline{F(i\bar a)}\), for the zeros \(a\) of \(\xi(1/2+ia)\). In particular on \(V_E=\operatorname{span}\{e^{-xt}1_{t>0}:x\in E\}\) it is exactly the sampled form \(C\) by the paired logarithmic derivative. The ordinary Gram matrix is \(G\). The explicit formula, initially for smooth compactly supported functions, extends to each particular exponential combination with \(\min E>2\) by smooth truncation and mollification. One can choose both with uniformly bounded weighted variation through weight \(e^{t/2}\), so Laplace evaluations on the zero strip are \(O((1+|a|)^{-1})\). Absolute summability of \(\sum m_a/(1+|a|^2)\) permits passage on the divisor side. The same variation bound and the estimates below justify passage in (2). All pole and prime terms in (2) are retained. Translating \(f\) leaves the form invariant. [Bombieri, *Remarks on Weil’s quadratic functional*, I, §§2–4 and 8–12](https://www.bdim.eu/item?fmt=pdf&id=RLIN_2000_9_11_3_183_0)

On a bounded interval the form domain consists of its supported \(L^2\) functions with \(\int\log(2+|y|)|F(iy)|^2dy<\infty\). Stirling's formula gives \(\Omega(y)=\log(|y|/(2\pi))+O(1/|y|)\) at infinity, and \(\Omega\) is continuous and bounded below. The remaining two terms are bounded forms there. This gives a closed lower-semibounded form. Its unit ball in the form norm is relatively compact in \(L^2\), by physical support and Fourier tightness. The associated self-adjoint operator therefore has compact resolvent and the min-max eigenvalues used in (1). Smooth functions supported in the interior are a form core. To see this, first slightly contract and translate the supported function into the interior, then convolve with a smooth approximate identity. Translation and dilations near one are strongly continuous in the logarithmically weighted Fourier norm, by density and the uniform comparability of the dilated weights. The limiting operator here is the compact-window Weil operator of Bombieri's variational problem. The specific moving trial spaces and the limit (1) require the additional argument below.

## Why the interval length is exact

Write \(B_E(z)=\prod_{x\in E}(x-z)/(x+z)\). On every fixed complex compact set,
\[
 B_E(z)\to e^{-bz}.
\]
Indeed expand the logarithm of each factor near one as \(-2z/x+O_K(x^{-3})\). The sum of the remainders is \(O_K((\min E)^{-2}\sum1/x)\). For fixed \(c>0\), on \(\Re z=-c\) the reciprocal-mass estimate gives
\[
 |B_E(z)|\le\exp\{cb_E/(1-c/\min E)\}.                                \tag{3}
\]
For every normalized \(f\in V_E\) this gives the uniform physical localization
\[
 \|e^{ct}f\|_2\le \exp\{cb_E/(1-c/\min E)\},\qquad c<\min E.          \tag{4}
\]
For a direct proof, \(F(z)=P(z)/\prod_{x\in E}(x+z)\), with \(\deg P<|E|\). The rational function \(F^*(z)=B_E(z)\overline{F(-\bar z)}\) has the same type and the same boundary \(L^2\) norm. On the line \(-c+iy\), \(|F(-c+iy)|=|B_E(-c+iy)|\,|F^*(c+iy)|\). Plancherel identifies the first norm with the weighted time norm and bounds the norm on the positive line by the boundary norm, since the inverse Laplace transform of \(F^*\) is causal. This proves (4) using (3). In particular for each \(\epsilon>0\), the limsup of the squared norm beyond \(b+\epsilon\) is at most \(e^{-2c\epsilon}\) for every fixed \(c>0\), hence it is zero.

Conversely, at any fixed real \(v>0\) the proper rational function
\[
 K_E(z,v)=\frac{1-B_E(z)B_E(v)}{z+v}
 \quad\longrightarrow\quad
 \frac{1-e^{-b(z+v)}}{z+v}=\int_0^b e^{-(z+v)t}dt                           \tag{5}
\]
is the Laplace transform of a vector in \(V_E\) for all sufficiently deep arrays. The apparent pole at \(-v\) is removable since \(B_E(-v)B_E(v)=1\). All remaining poles are the simple \(-x\). Norms and Weil forms of any fixed finite linear combination of (5) converge to those of the corresponding combination of \(e^{-vt}1_{[0,b]}\). On the imaginary axis the transforms are bounded uniformly by \(O((1+|y|)^{-1})\), hence the Gram and gamma integrals converge. On each line \(\Re z=-c\) with fixed \(c>1\) distinct from the finitely many \(v\), (3) gives the same bound. Plancherel then gives convergence in the \(e^{ct}\)-weighted norm. On causal functions, the prime term is bounded in the \(e^t\)-weighted norm by Cauchy–Schwarz and \(\sum\Lambda(n)n^{-3/2}<\infty\), since the shift by \(\log n\) supplies a factor \(1/n\). The two pole functionals are bounded in the same norm. This justifies the stated convergence in the whole form.

Finite combinations of the limiting exponentials are form dense on the window. For a smooth test approximate it in \(C^1[0,b]\) by \(e^{-t}P(e^{-t})\) using polynomial approximation of the derivative followed by integration, which gives \(C^1\) approximation on the compact interval in the variable \(e^{-t}\). Extending the differences by zero introduces at most two jumps of size bounded by the uniform error. Integration by parts gives the Fourier majorant \(O(\|\text{error}\|_{C^1}/(1+|y|))\). Applying (5) to an approximately minimizing \(j\)-dimensional subspace yields \(\limsup\lambda_j(E)\le\nu_j(b)\), since all the entries of its two finite Gram matrices converge.

For the reverse inequality take a subsequence realizing the liminf and orthonormal eigenvectors for the first \(j\) eigenvalues. For each vector, (4) bounds the pole and prime terms uniformly. The upper eigenvalue bound therefore bounds the logarithmic Fourier energy uniformly. The uniform Fourier-tail bound gives translation continuity in \(L^2\) and (4) gives physical tightness. The Fréchet–Kolmogorov compactness theorem gives a further subsequence on which each vector converges strongly in \(L^2\), with orthonormal limits supported in \([0,b]\). Weighted \(L^2(e^{2t}dt)\) convergence follows by interpolation with the uniform \(e^{2t}f\) bound from (4). The two lower-order terms of (2) consequently converge. The gamma term is lower semicontinuous after adding a common constant to its multiplier. These conclusions apply to every fixed linear combination of the \(j\) vectors. Their limiting span therefore has maximum Rayleigh quotient at most \(\liminf\lambda_j(E)\), proving (1). If \(b_E\to0\), a bounded subsequence of lowest Rayleigh quotients would by the same compactness produce a unit vector supported at the single point zero, an impossibility. This also handles arrays of bounded cardinality in that case.

A control with a negative point mass tests both the scale and the possibility of crossing zero. Replace the sampled function by \(L_\kappa(x)=1/2-\kappa/x\), \(\kappa>0\). Its matrix is exactly \(G_{xy}-\kappa/(xy)\). The functional \(f\mapsto F(0)\) on \(V_E\) is represented by the vector with transform \((1-B_E(z))/z\). This follows by evaluation at the nodes and removal of the pole at zero. Its squared norm is the value of that transform at zero, \(-B'_E(0)=2\sum_E1/x=b_E\). Thus the smallest generalized eigenvalue is **exactly** \(1-\kappa b_E\) on every finite array and all others are one. On the interval the limiting form is \(\|f\|^2-\kappa|\int_0^b f|^2\), whose least eigenvalue is \(1-\kappa b\). This example resolves the factor of two without any analytic limit and shows why positivity of scalar samples far to the right cannot guarantee positivity at every width.

## Positive windows, constituent prime powers and numerical checks

Xuefeng Zhu's preprint revised 2 September 2026, Theorem 1.2 and Corollary 6.3, reports a computer-assisted lower bound \(8.9\cdot10^{-18}\) for the full complex Weil form on a window of length \(1.6\), in the normalization (2). Combining that external certificate with (1), interval inclusion and the \(b=0\) case shows that for all sufficiently large \(N\), **every** finite \(E\subset[N,\infty)\) of reciprocal sum at most \(0.8\) satisfies \(C\succeq 4\cdot10^{-18}G\). Otherwise a sequence of failures would have a subsequence whose widths converge in \([0,1.6]\), contradicting the corresponding floor. This applies in particular to the full integer block \([N,BN]\) for every \(1<B<e^{0.8}\), including the entire dyadic block \([N,2N]\). No quantitative starting \(N\) is obtained here. The cited paper retracted an earlier claim at width 2.38. Its width-1.6 interval certificate was not replayed here. [Zhu, *Weil positivity in compact windows*, v2, §§1, 5 and 6](https://arxiv.org/html/2608.24827v2) · [Yoshida range and the archimedean trace formula, Connes and Consani](https://arxiv.org/abs/2006.13771)

There is an independent elementary improvement on the original central bound. In the [short-time completion](XiPickHarmonicBudget.md) take \(b_0=1/10\) and the same gamma subtraction at 16. For \(0<t\le b_0\) write the continuous density there as \(h=-D+P+e^{t/2}\), where \(D=(1-e^{-16t})/(2t)\) and \(P=1/(2t)-e^{-t/2}/(e^{2t}-1)\). Taylor's upper bound gives \(0\le D\le8-64t+(1024/3)t^2\), and \(5/11\le P\le5/4\). The lower bound uses \(e^{2t}-1\ge2t(1+t)\). The upper bound was derived in the short-time completion. Thus
\[
 |h(t)|\le 7-5/11-64t+(1024/3)t^2.
\]
Indeed the right side bounds \(-h\) directly and its minimum is \(4-5/11>5/4+e^{1/20}\ge h\). The logarithmic model therefore has real part at least \(\tfrac12\log(8/\pi)-\int_0^{1/10}(7-5/11-64t+(1024/3)t^2)dt>1/64\) on the right half-plane. The residual is \(O(e^{-\Re z/10})\), since the first prime time is \(\log2\). The earlier interpolation argument now gives \(C\succeq G/64\) on sufficiently remote arrays of reciprocal mass at most any fixed \(\eta<1/20\). By (1) this bounds \(\nu_1(b)\ge1/64\) for each \(0<b<1/10\) (take consecutive nodes \(N<x\le Ne^{b/2}\)). The form core and interval inclusion extend the same floor to \(b=1/10\). A subsequence argument as above gives \(C\succeq G/128\) on all sufficiently deep arrays of reciprocal mass at most \(1/20\), independently of the width-1.6 computation.

For one explicit probe take \(f=e^{-t/2}1_{[0,b]}\), \(c=e^{-b}\). Its autocorrelation for \(0\le u\le b\) is \(e^{-u/2}-c e^{u/2}\). Direct evaluation of (2) gives
\[
 Q(f)=2\log((1/c+1)/2)
 -(1-c)\{\gamma+\log\pi+\log(1-c^2)\}
 -2\sum_{n\le1/c}\Lambda(n)(1/n-c).                                  \tag{6}
\]
In the digamma integral, after removing the diagonal constant in braces, the integrand on \([0,b]\) is \(2[c-(1-c)e^{-u}]/(1+e^{-u})\). Its integral is \(2\log((e^b+1)/2)-2(1-c)b\). The pole term adds \(2(1-c)b\). This gives a check with the prime powers kept individually, including a zero boundary coefficient at an integral endpoint. [Archimedean integral, Zhu v2, Lemma 2.5](https://arxiv.org/html/2608.24827v2#S2)

At \(b=\log4\), (6) divided by \(1-c\) is \(0.07980073752928595082418\ldots\). A 4096-bit Arb calculation used the *arithmetic* \(L(x)\) from gamma, zeta and its derivative at the integer nodes \(N+1,\ldots,2N\). It used exact rational residues of (5) at \(v=1/2\) and checked them separately at three rational evaluation points for each of seven arrays. The corresponding quotients at \(N=16,32,128,256\) were respectively \(0.08097558\ldots,0.05799945\ldots,0.07443205\ldots,0.07734393\ldots\). These are single trial-vector values. Neither monotonicity in \(N\) nor a claim about the ground state follows from this numerical comparison.

## One positive trial direction through divergent reciprocal sums

Put \(v=1/2\) and let \(k_E\) be the vector with transform (5), for finite nonempty \(E\subset(1,\infty)\). For all sufficiently deep sets of **any** cardinality and reciprocal mass,
\[
 Q(k_E)>\frac1{50000}\|k_E\|_2^2 .
\]
Moreover, along every exhaustion of a sequence of divergent reciprocal sum in \((1,\infty)\) tending to infinity, or along any arrays with \(\min E\to\infty\) and \(b_E\to\infty\),
\[
 Q(k_E)/\|k_E\|_2^2\ \longrightarrow\ 2+\gamma-\log(4\pi)>0.                 \tag{7}
\]
The trial vector is specified by the samples alone. It is the ordinary projection of \(e^{-vt}\) onto \(V_E\), because its transform takes the value \(1/(x+v)\) at every node \(x\). Hence \(\|k_E\|^2=K_E(v,v)=1-B_E(v)^2\).

For any zero \(a\) of the centered xi function, \(\Re(ia)\ge-v\) and
\[
 |B_E(v)B_E(ia)|\le1.
\]
For a single factor, writing \(ia=r+it\), this follows by subtracting \((x-v)^2((x-r)^2+t^2)\) from \((x+v)^2((x+r)^2+t^2)\). The difference is \(4x(v+r)(x^2+vr)+4xvt^2\ge0\). Thus both Laplace evaluations in a divisor summand are bounded by \(2/|\Re a|\), uniformly across all sets. All real zeros contribute nonnegative terms. For \(\sum_E1/x\ge1/20\), the inequality \(B_E(v)\le e^{-2v\sum_E1/x}\) gives a lower bound on the first certified real pair's contribution, since \(|B_E(i\gamma_1)|=1\). Its ordinate is below 15. All nonreal zeros have \(|\Re a|>3\cdot10^{12}\) by Platt and Trudgian, and summing the reciprocal-square tail over both signs gives at most \(2.960\cdot10^{-12}\). Consequently
\[
 Q(k_E)\ge\frac{2(1-e^{-1/20})^2}{225+1/4}-4(2.960\cdot10^{-12})>1/50000 .
\]
Since \(\|k_E\|^2\le1\) this proves the claim on the whole large-mass range, even without a large minimum node. The small-mass range follows from the elementary \(G/128\) bound just proved. This combines the actual externally proved finite-height verification with an explicit bound on the entire unverified tail. [Platt and Trudgian, Theorem 1](https://arxiv.org/pdf/2004.09765) · [First zero bracket](XiShiftedHankelPositivity.md) · [Lehman's reciprocal-square estimate and constants](XiSechProjectionTransport.md)

For fixed \(a\), strictness of the zero strip gives \(v+\Re(ia)>0\). The logarithm of each product factor's modulus is \(-2(v+\Re(ia))/x+O_a(x^{-3})\) at large \(x\), unless a factor already vanishes. Thus \(B_E(v)B_E(ia)\to0\) in either divergent regime, including an exhaustion with fixed small initial nodes. The reciprocal-square majorant permits dominated convergence in the divisor sum. Its limit is \(\sum_a m_a/(1/4+a^2)=2\xi'(1)/\xi(1)=2+\gamma-\log(4\pi)\), obtained by the paired product and the Laurent expansion of zeta at one. The vector norm tends to one. This proves (7). The same estimates apply to the window probe (6) by taking any arrays with \(b_E\to b\), so (6) exceeds \((1-e^{-b})/50000\) for **all** \(b>0\). This controls a single explicit test at every width. Arbitrary linear combinations at unrestricted widths can have further negative directions if the divisor has nonreal zeros. As numerical checks, the actual quotients on the prefixes \(E=\{2,\ldots,128\}\) and \(E=\{2,\ldots,512\}\) lie near 0.04615065 and 0.04616577, respectively. The value in (7) is 0.04619141793224 to the displayed precision.

The [Lean module](XiPickWeilLimit.lean) proves the finite kernel expansion, cancellation of reflected poles, the anchored strip comparison and the real-axis product limit used in the scaling. The Fourier representation, compactness, min-max result and xi consequences are analytic. Equation (1) determines fixed-width spectral limits. Positivity of the Weil form on unrestricted windows, the independent central determinant and the original RH statement remain open.

At Lean source blob `1b6d7c4765f3bd3430ad11fe95581ab0e05e6555`, the seven public declarations passed native compilation, explicit fresh kernel replay and transitive axiom auditing on Lean 4.34.1, Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`. The audits reported only `propext`, `Classical.choice` and `Quot.sound`. The independent exact signed controls verified twelve point-mass pencils. The arithmetic checks used seven finite-width trial arrays, six divergent-sequence prefixes and seven finite prime sums. These checks do not certify the external width-1.6 computation or the analytic convergence theorem. External independent review of the latter is unrecorded.

## Positive subspaces of arbitrary fixed dimension

For every \(d\ge1\), all sufficiently deep arrays with at least \(d\) nodes have a \(d\)-dimensional subspace on which the central form is at least \(1/128\) times the ordinary norm squared, with no upper bound on the reciprocal mass. In the large-mass case one can specify the subspace by projecting only \(d\) reference exponentials. This controls the positive index and leaves the complementary directions open.

To see this take \(v_j=L2^j,\ 0\le j<d\) and \(L\) large with \(d\) fixed. The [small-mass estimate](XiPickHarmonicBudget.md) gives \(C(V)\succeq G(V)/8\) for this reference set since its reciprocal sum is at most \(2/L\). Its Gram matrix is \(G(V)=G(\{2^j\})/L\) with strictly positive least eigenvalue \(\kappa_d/L\). Take \(\min E>2\max V,\ b_E\ge1/10\). Estimate (3) at \(c=1/2\) and \(|B_E(v)|\le e^{-vb_E}\) show
\[
 |B_E(v)B_E(ia)|\le e^{-(v-1)b_E}
\]
throughout the zero strip (the same factorwise bound holds on every real part at least \(-1/2\)). Consequently (5) for the projected exponential of rate \(v\) differs from \(1/(z+v)\) at the divisor evaluations by at most \(e^{-(L-1)/10}/|z+v|\). Both denominator moduli are bounded below by a fixed positive constant times \(1+|\Re a|\) for \(v\ge2\). The absolute reciprocal-square sum over zeros including multiplicities therefore bounds the difference of each polarized form entry from \(C(V)_{ij}\) by \(C e^{-(L-1)/10}\) with \(C\) independent of \(L,E\). Choose \(L\) so that \(d C e^{-(L-1)/10}<\kappa_d/(16L)\). The form on the projected exponentials then dominates \(G(V)/16\); the projected norm matrix is at most \(G(V)\) because orthogonal projection is contractive. Strict positivity relative to the original Gram also proves linear independence. In the smaller-mass regime \(b_E\le1/10\) the elementary bound established above holds on the entire sample space. This gives the stated result, including for arrays of divergent reciprocal mass.
