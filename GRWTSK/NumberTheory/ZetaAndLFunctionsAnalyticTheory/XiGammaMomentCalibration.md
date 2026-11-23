# Positive measures for calibrated inverse-power traces

Use the true heat trace \(H\) in the [saddle estimate](XiHeatSaddleBounds.md). The latter gives a strictly positive density at every scale for the following construction. Fix an integer \(1\le n\le10^{21}\). On \(x>0\), set
\[
 d\mu_n(x)=\frac{n^{n+1}}{n!}x^{-n-1}(-1)^nH^{(n)}(n/x)\,dx .
\]
This prescription uses the real-axis function obtained by Laplace inversion of the logarithmic derivative of \(\xi(1/2+\sqrt w)\) in \(w\). The zeros enter the proof of the moment identity. For positive integers \(k\), write \(S_k=\sum_{\Im\rho>0}m\lambda^{-k}\), with one summand per distinct zero of order \(m\) and \(\lambda=(\Im\rho+i(\Re\rho-1/2))^2\). Equivalently, \((-1)^{k-1}S_k\) is the coefficient of \(w^{k-1}\) in this logarithmic derivative. The exact identity is
\[
 \int x^{-k}\,d\mu_n(x)=C_{n,k}S_k,\qquad
 C_{n,k}=\prod_{j=0}^{k-1}(1+j/n).
\]
Indeed, substitute \(v=n/x\). Each rate contributes \(n^{1-k}\lambda^n\int_0^\infty v^{n+k-1}e^{-v\lambda}dv/n!\). Repeated integration by parts gives the asserted factor. Put \(A=\Re\lambda>0\). The series of absolute integrals is bounded by a constant depending on \(n,k\) times \(\sum m (|\lambda|/A)^n A^{-k}\). This is finite because \(|\lambda|/A\) is uniformly bounded, \(A\) is bounded away from zero and \(\sum m/A<\infty\). The positivity and moment statements concern the actual complete trace.

Push the finite positive measure \(x^{-1}\,d\mu_n(x)\) forward by \(y=1/x\). Its moment of degree \(j\) is \(C_{n,j+1}S_{j+1}\). Integration of \(y^\ell |P(y)|^2\) now gives positive definite Hankel forms of every finite degree and every nonnegative shift \(\ell\), since the density is positive throughout the open half-line. In particular, for every \(k\ge1\),
\[
 S_k S_{k+2}>\frac{n+k}{n+k+1} S_{k+1}^2 .
\]
The factor follows by cancelling the positive \(C_{n,k}\) in the consecutive two-by-two minor. With \(n=10^{21}\) the relative loss is less than \(10^{-21}\) uniformly in \(k\). The finite measure defines self-adjoint multiplication by the real coordinate on its maximal square-integrable domain. Bounded-support simple functions form a dense subset of that domain and multiplication by \((y\pm i)^{-1}\) gives the two resolvents. The positive density gives continuous spectral measure. The unresolved operator construction requires the unscaled moments and their discrete multiplicities. [Unscaled moment criterion](XiNewtonMomentHilbertPolya.md)

The Lean source establishes the correction recurrence, its normalization and positivity, the quadratic form integral with its integrability and support hypotheses, and the resulting two-moment inequality with weak sign. The strict sign, exact integration over the ξ divisor and infinite Hankel family are manuscript results. The interval computation obtains the first five leading scaled Hankel minors by differentiating at the center of the actual ξ function. [Lean declarations](XiGammaMomentCalibration.lean) · [Finite arithmetic check](../../../scripts/verify_xi_heat_saddle.py) · [Sra, v3, §2 and Appendix A](https://suvrit.github.io/papers/riem-xi/riem-xi-v3.pdf)

Lean 4.34.1 and Mathlib d13f23b723b8a846827a245b89c10fc7d3f11612 elaborated this source at blob f9f20b9f4e879c78b4cd41dda9747a232abcce27. A new empty kernel environment replayed the used declaration closure (6 roots, 25802 declarations). The transitive audits used only axioms among propext, Classical.choice and Quot.sound. Independent external review of the manuscript is outstanding. [Verification record](https://github.com/grwtsk/math/issues/1850)
