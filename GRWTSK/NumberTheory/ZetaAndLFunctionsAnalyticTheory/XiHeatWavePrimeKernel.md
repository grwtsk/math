# One-sided Gaussian prime discrepancies and a two-point operator criterion

For each fixed \(\tau>0\), define the real even arithmetic wave
\[
 V_\tau(r)=\sum_{j\ge0}\frac{H^{(j)}(\tau) r^{2j}}{(2j)!}.
\]
Here \(H\) is the arithmetic heat trace obtained by real-axis Laplace inversion. The Taylor prescription is entire in \(r\), by Cauchy bounds on a fixed circle about \(\tau\) for \(H\). Write \(u=g+id,\lambda=u^2\) as in the [sampled displacement theorem](XiHeatChebyshevEllipse.md). Expanding the cosine and summing absolutely gives \(V_\tau(r)=\sum m e^{-\tau u^2}\cos(ru)\). Gaussian decay dominates every fixed exponential in \(g\). Reflection makes the result real on \(\mathbb R\).

Put \(D=\sup_\rho|\Re\rho-1/2|\). Then \(\limsup_{r\to\infty}r^{-1}\log|V_\tau(r)|=D\), with the convention \(\log0=-\infty\). Moreover, if \(D>0\), for **each** \(0\le a<D\) the scaled wave \(e^{-ar}V_\tau(r)\) is unbounded above and below. In particular a uniform upper bound alone, a uniform lower bound alone, and the positive semidefiniteness of
\[
 \begin{pmatrix}H(\tau)&V_\tau(r)\\ V_\tau(r)&H(\tau)\end{pmatrix}
 \quad\text{for all real }r
\]
are each equivalent to RH. Under RH the wave is a positive weighted sum of ordinary real cosines and \(|V_\tau(r)|\le H(\tau)\). The [finite-span theorem](XiHeatWaveSeparation.md) verifies this last bound on an effective interval.

For the converse, \(|V_\tau(r)|\le e^{D|r|}\sum m e^{-\tau\Re\lambda}\). Its positive-half Laplace transform is
\[
   L(s)=\sum m e^{-\tau u^2}\frac{s}{s^2+u^2}\qquad(\Re s>D).
\]
The right side is meromorphic on the plane by local normal convergence off the discrete poles. At \(s=\pm iu\) its residue is \(m e^{-\tau u^2}/2\ne0\), since \(g>0\) and distinct upper zeros supply distinct \(u\). These poles give the lower growth exponent, including the case \(D=0\) by poles on the imaginary axis. There are no poles on the real axis. If \(V_\tau(r)\le C e^{ar}\) eventually for some \(0\le a<D\), enlarge \(C\) to make \(F(r)=C e^{ar}-V_\tau(r)\ge0\) on the positive half-axis. Its Laplace transform for large real \(s\) is \(C/(s-a)-L(s)\), analytic along the real interval \(s>a\). A nonnegative Laplace transform must be singular at its finite real abscissa of convergence. Indeed at a point to its right the Taylor coefficients in the variable pointing left are the nonnegative exponentially tilted power moments divided by factorials. If analytic at the abscissa, expansion from a nearby point and monotone summation give convergence beyond it. Thus the defining integral converges for every real \(s>a\) and is analytic on that half-plane, contradicting a pole there. Apply the same proof to \(-V_\tau\).

## Exact prime formula and conditional spectral realization

Let \(\mathcal P_\tau(r)=\sum_{m\ge2}\Lambda(m)m^{-1/2}\exp(-(\log m-r)^2/(4\tau))\). The unconditional Guinand–Weil formula for the even entire test \(e^{-\tau u^2}\cos(ru)\) reads
\[
 V_\tau(r)=e^{\tau/4}\cosh(r/2)+
 \frac1{4\pi}\int_{\mathbb R}e^{-\tau y^2}\cos(ry)
   [\Re\psi(1/4+iy/2)-\log\pi]dy
 -\frac{\mathcal P_\tau(r)+\mathcal P_\tau(-r)}{4\sqrt{\pi\tau}} .
\]
The digamma density times the Gaussian is integrable, so the displayed integral tends to zero as \(r\to\infty\). Dominated convergence also gives \(\mathcal P_\tau(-r)\to0\). Consequently the prime discrepancy \(\mathcal P_\tau(r)-2\sqrt{\pi\tau}\exp(\tau/4+r/2)\) is \(-4\sqrt{\pi\tau}V_\tau(r)+o(1)\). Either one-sided boundedness condition on this concrete prime sum for a single fixed smoothing time suffices. The residue argument proves the converse oscillation without requiring attainment of \(D\). [Carneiro and Milinovich, Lemma 2.2](https://www.math.bas.bg/mathmod/Proceedings_CTF/CTF-2023/files_CTF-2023/05-Carneiro-Milinovich.pdf) · [Fourier constants and two-point quadratic form in Lean](XiHeatWavePrimeKernel.lean)

If the two-point inequality holds globally, the implication just proved puts all ordinates on the line and consequently makes the arithmetic kernel \(V_\tau(r-s)\) positive definite in every size. Its unique positive Bochner measure is specified by that kernel. Its atom of frequency \(x\ne0\) has mass \(m e^{-\tau x^2}/2\), by uniqueness of the Fourier transform of finite measures and the true divisor formula. On the Hilbert sum of fibers of dimension \(2e^{\tau x^2}\mu(\{x\})\) over the atoms, multiplication by \(x\) on its maximal domain is self-adjoint. Finite support is dense and the inverses at \(\pm i\) are bounded. The inverse is Hilbert–Schmidt since \(\sum m/g^2<\infty\), and pairing opposite atoms gives the exact regularized determinant from the even ξ product. This prescription uses the arithmetic kernel to specify both positions and multiplicities. Its global two-point premise remains open. The cyclic translation representation alone would count an atom once irrespective of its mass. [One-time moment construction for comparison](XiTiltedHeatMomentCriterion.md)

The interval fixture independently encloses the prime and true-divisor expressions at \(\tau=1/100,\ r=0,2,6\), using prime powers through 20,000, complex interval quadrature for the gamma term and all true ordinates below 100. Each column includes a rigorous omitted tail. These computations and the native Fourier lemmas do not certify the global prime discrepancy. [Arithmetic fixture](../../../scripts/verify_xi_heat_wave.py)

Lean 4.34.1 and Mathlib d13f23b723b8a846827a245b89c10fc7d3f11612 elaborated this source at blob 69bc83f75c5271a60a78395265b375613e4b88db. A new empty kernel environment replayed the used declaration closure (4 roots, 48991 declarations). The transitive audits used only axioms among propext, Classical.choice and Quot.sound. Independent external review of the manuscript is outstanding. [Verification record](https://github.com/grwtsk/math/issues/1850)
