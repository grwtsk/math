# A positive tolerance for the exterior Hardy deficit

Let \(L=\xi'/\xi\), \(P(t)=\Re L(3/2+it)\) and \(a_3(t)=L'''(3/2+it)/6\). Write \(B(d)\) for the inner factor of the arithmetic half-plane multiplier, in the coordinate \(d=s-1/2\). One sufficient condition for \(|a_3(t)|\le P(t)\) **at every real height** is
\[
 -\log|B(R+i\tau)|\le j_*=
 \frac{3R}{4(2R^2+1/4)},\qquad
 R=2021500000000004,\quad \tau=2024500000000000.
\]
Here \(j_*>1.85505812515458\cdot10^{-16}\). This is a single positive-tolerance inequality on an arithmetic boundary integral. It has not been proved. Two classes of natural upper certificates have explicit obstructions below. The [Hardy construction](XiHardyDissipativePart.md) defines the multiplier before extracting any spectral information.

## How much inner defect a failure requires

For \(r>1/2\) let \(J_r(t)=-\log|B(r+it)|\). The pole-cancelled function \(U(s)=(s-1)\zeta(s)/s\) has this same inner factor. The rational decay factors in the bounded-multiplier construction are outer. At \(s_0=1/2+r+it\), Poisson integration of its outer logarithm gives
\[
 J_r(t)=\frac1\pi\int_{\mathbb R}\frac{r\log|\zeta(1/2+iu)|}{r^2+(u-t)^2}\,du
         -\log|U(s_0)|.
\]
The boundary pole factor has modulus one, and the Euler product applies at \(s_0\). The previously established absence of a singular inner factor gives the positive expansion
\[
 J_r(t)=\sum_{\rho:\,\beta>1/2}m_\rho
 \operatorname{artanh}\frac{2r\sigma}{r^2+\sigma^2+x},
 \qquad \sigma=\beta-1/2,\quad x=(\gamma-t)^2.
\]
The far tails converge by the zero count. [Arithmetic factorization and boundary logarithm](XiBoundaryResolventMeasure.md)

One right-hand zero contributes \(E_\rho=32\sigma^2(1+x)/(D_-D_+)^2\) to the [exact transverse energy](XiPrimeChordCertificate.md), where \(D_\pm=(1\pm\sigma)^2+x\). If \(J_\rho\) denotes its contribution at \(r=1\), then
\[
 \sum m_\rho E_\rho
 \le C\sum m_\rho J_\rho^2\le C J_1(t)^2,\qquad
 C=\frac{2048}{81(\log3)^2}.
\]
To check the sharp constant, set \(A=1+\sigma^2+x\), \(z=2\sigma/A\). The single-term ratio is \(8(1+x)A^{-2}[z/((1-z^2)\operatorname{artanh}z)]^2\). The first factor decreases with \(x\), and the bracket increases with \(z\), because its derivative has numerator \((1+z^2)\operatorname{artanh}z-z>0\). The maximum for fixed \(\sigma\) is at \(x=0\). There the square root of the ratio equals \(\sqrt8\,\sigma/((1-\sigma^2)^2\operatorname{artanh}\sigma)\). Its logarithmic derivative is at least \(3\sigma/(1-\sigma^2)>0\), using \(\operatorname{artanh}\sigma\ge\sigma\). Evaluation in the limit \(\sigma\uparrow1/2\) gives \(C\), attained as a supremum for individual strip pairs. Summing uses integral multiplicities. The gamma–Euler lower bound for an order-three failure is \(\sum m_\rho E_\rho>10.94575312\). Consequently such a failure forces \(J_1(t)>0.72284438\), or \(|B(1+it)|<0.485370\).

For the global test one needs a local **linear** displacement charge. Use \(F_{13/20}\) from the [reflected-pair inequality](XiReflectedTaylorBudget.md). The existing Euler comparison shows that the summed negative loss \(\sum m_\rho\max(0,-F_{13/20})\) in \(\sigma>0.1, |\gamma-t|<4\) exceeds 5.863 at any violation. For \(0\le\sigma\le3/8\) and all \(x\ge0\), the following strengthened bound holds:
\[
 F_{13/20}(\sigma,x)+(5.863/(3/8))\sigma\ge0.
\]
The [fixture](../../../scripts/verify_xi_blaschke_displacement.py) clears the positive denominator and checks that all rational coefficients after \(\sigma=(3/8)v/(1+v)\) are nonnegative, including the endpoint by continuity. If the local sum of \(m_\rho\sigma\) were at most \(3/8\), every contributing \(\sigma\) would be in this box and the total loss would be at most 5.863. Thus every failure requires local displacement mass greater than \(3/8\), with no multiplicity cap.

The previous [lower height coverage](XiPrimeChordCertificate.md) and [upper height coverage](XiPrimePhasePacking.md) place any positive failing height between \(A=3\cdot10^{12}\) and \(V=4.046\cdot10^{15}\). Take \(\tau=(A+V)/2\), \(R=(V-A)/2+4\). Every local zero in the preceding charge has \(|\gamma-\tau|<R\). Its contribution to \(J_R(\tau)\) is at least \(2R\sigma/(2R^2+1/4)\) by \(\operatorname{artanh}z\ge z\). Summation yields \(J_R(\tau)>j_*\). Conjugation treats negative heights. This proves the stated sufficient condition.

## A causal obstruction for every ordinary Dirichlet polynomial

Let \(s_0=1/2+R+i\tau\), \(a=R-1/2-i\tau\), and let \(Q(H)\) be the Poisson mean of \(|H|^2\) at that center divided by \(|H(s_0)|^2\), for a nonzero evaluation. Jensen gives \(Q(UM)\ge e^{2J_R(\tau)}\) for bounded analytic multipliers \(M\). Hence \(Q(UM)-1\le e^{2j_*}-1\) suffices. Cayley polynomials \(M=p(w)\) with \(w=2R/(s+a)-1\) have exact infimum \(e^{2J_R(\tau)}\). Indeed \(U\) pulls back to disk Hardy space: the bounded pole-cancelled normalization gives Smirnov membership, and the weighted critical-line second moment is finite by the classical zeta mean square. Its inner factor is \(B\). The closed polynomial span is \(BH^2\) by outer cyclicity. Evaluation at the disk origin is continuous, and the minimal squared norm for normalized evaluation on that subspace is \(1/|B(R+i\tau)|^2\), attained by the normalized inner function. [Beurling, *On two problems concerning linear transformations in Hilbert space*, Acta Math. 81, 239–255](https://doi.org/10.1007/BF02395019)

For **every** ordinary Dirichlet polynomial \(M=\sum c_d d^{-s}\), regardless of degree or complex coefficients, the quadratic excess satisfies
\[
 Q(UM)-1>4.32205007597\cdot10^{-16},
 \qquad e^{2j_*}-1<3.71011625032\cdot10^{-16}.
\]
To see this, write \(k_H\) for the inverse Mellin profile of \(H(s)/(s+a)\), with threshold variable \(x\). Mellin–Plancherel and the Hardy evaluation identity give exactly
\[
 Q(H)-1=2R\int_1^\infty
 \left|k_H(x)/H(s_0)-x^{-a}\right|^2\frac{dx}{x^2}.
\]
For \(H=UM\) on \([1,8]\), all possible profiles lie in the complex span of seven vectors \(v_m=(1+1/a)h_m-b_m/a\), \(1\le m<8\), where \(h_m=1_{x\ge m}(m/x)^a\) and \(b_m=1_{x\ge m}\). This follows by expanding \(\zeta M\) on \(\Re s>1\) and inverting \((s-1)/(s(s+a))\). The profile is bounded at infinity for each finite polynomial by summation by parts on its finitely many shifted counting functions; the inversion thus extends to the critical line. Discard the remainder of the norm integral and allow arbitrary coefficients of the seven vectors after normalization. This relaxation still costs \(2R(\|h_1\|^2-c^*G^{-1}c)\), with \(G_{mn}=\langle v_m,v_n\rangle\) and \(c_m=\langle v_m,h_1\rangle\). The vectors are independent by their successive support thresholds. For example, with \(d=\max(m,n)\),
\[
 \langle h_m,h_n\rangle=
 (m/d)^{\bar a}(n/d)^a[1-(d/8)^{2R}]/(2Rd).
\]
Replacing the second factor by \(b_n\) gives \((m/d)^{\bar a}[1-(d/8)^{\bar a+1}]/((\bar a+1)d)\); for two indicators the entry is \(1/d-1/8\). Enclosing this seven-column solve at 250-bit precision gives the lower bound displayed above. The obstruction exceeds the target by a factor greater than 1.16493. It bounds the quadratic certificate, while the actual inner deficit remains unknown.

## An explicit correction and its first omitted prime

For integer \(N\ge2\), let
\[
 M_N(s)=\left(1+\frac{1-N^{1-s}}{s-1}\right)
             \sum_{d\le N}\mu(d)d^{-s},\qquad H_N=UM_N .
\]
The apparent singularity is removable and the new factor is bounded on \(\Re s>1/2\), since the quotient is \(\int_1^N x^{-s}dx\). Then \(H_N=(1-N^{1-s}/s)\zeta(s)\sum_{d\le N}\mu(d)d^{-s}\). With \(c_m=\sum_{d\mid m,d\le N}\mu(d)\), the exact profile is
\[
 k_{H_N}(x)=\sum_{m\le x}c_m(m/x)^a
       -\frac{N}{a}\sum_{Nm\le x}c_m[1-(Nm/x)^a].
\]
It equals the constant function's profile \(x^{-a}\) on \(1\le x<N\), before scalar normalization. Thus the seven-vector obstruction can be removed from any prescribed finite initial interval by a bounded multiplier.

Nevertheless **every sharp cutoff \(2\le N\le10^{13}\)** in this corrected family also misses the required quadratic threshold. By Bertrand's postulate there is a prime \(N<p<2N\), with \(c_p=1\). On \([p,p e^{1/(2R)}]\) no new integer enters, and the delayed correction uses only \(m=1\), since the right endpoint is less than \(p+1\le2N\). Put \(b=\Re a\). The new pulse has modulus at least \(e^{-1/2}\), while all preceding terms together have modulus at most \(p^2e^{-b/p}<5.1\cdot10^{-18}\) using \(|c_m|\le m\). The correction costs at most \(2N/R\), and \(|H_N(s_0)x^{-a}|\le2\cdot2^{-b}\). Here \(0<|H_N(s_0)|<2\) follows from the absolutely convergent series at \(\Re s_0=R+1/2\), with \(\sum_{n\ge2}n^{-\Re s_0}\le2^{-\Re s_0}(1+2/(\Re s_0-1))\). Thus the unnormalized residual has modulus greater than 0.59. Integrating over this short interval, dividing by \(|H_N(s_0)|^2<4\), and using \(1-e^{-u}\ge u/2\) for \(u=1/(2R)\), gives
\[
 Q(H_N)-1>0.59^2/(8p)>2.17\cdot10^{-15}.
\]
This tail obstruction is established for this cutoff family only. The general Cayley-polynomial upper certificate and the all-height order-three inequality remain open.

The [Lean companion](XiBlaschkeDisplacementBudget.lean) proves the reflected denominator, the factored height comparison, the positive radial derivative numerator, the finite displacement charge and the optimum scale inequality. The arithmetic, Hardy, Mellin and full zeta arguments are manuscript results. The fixture checks the rational charge, scalar enclosures, Gram projection and prime-pulse budget. At Lean source blob `01b198b5d279557e356d69cd0824eb2328292c49` the module elaborated on Lean 4.34.1 with Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`. A fresh native kernel replay passed and all five transitive audits returned only `propext`, `Classical.choice` and `Quot.sound`. Exact-source verification is tracked on [issue #1850](https://github.com/grwtsk/math/issues/1850). Independent external analytic review remains outstanding.
