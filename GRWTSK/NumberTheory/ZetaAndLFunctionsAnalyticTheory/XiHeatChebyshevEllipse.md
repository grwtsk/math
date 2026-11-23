# Recovering absolute zero displacement from real arithmetic heat samples

Let \(H(t)\) be recovered on \(t>0\) by Laplace inversion of the real-axis logarithmic derivative of \(\xi(1/2+\sqrt w)\) in \(w\). Fix \(h>0\), and form an arithmetic sequence by expanding the shifted Chebyshev polynomials
\[
  T_n(2X-1)=\sum_{j=0}^n c_{nj}X^j,\qquad
  C_n(h)=\sum_{j=0}^n c_{nj}H((j+1)h),\qquad
  R(h)=\limsup_{n\to\infty}|C_n(h)|^{1/n}.
\]
This sequence uses only positive real evaluation times. Set \(D=\sup_\rho|\Re\rho-1/2|\) over the nontrivial zeros. Then
\[
  0\le \sqrt{\frac{2}{h}\log\cosh\!\left(\frac{\log R(h)}2\right)}\le D,
  \qquad
  \lim_{h\downarrow0}\sqrt{\frac{2}{h}\log\cosh\!\left(\frac{\log R(h)}2\right)}=D.
\]
The formula recovers absolute horizontal displacement even when the supremum is approached only at heights tending to infinity. The previous saddle-growth formula recovers horizontal displacement divided by height. Chebyshev tests in the Li criterion use the Möbius image of the divisor and a different arithmetic sequence. [Arithmetic input](XiHeatSaddleBounds.md) · [Relative displacement formula](XiHeatTailAbsorption.md) · [Comparison with generalized Li coefficients](https://www.impan.pl/en/publishing-house/banach-center-publications/all/126/0/115360/a-computational-approach-to-the-generalized-riemann-hypothesis)

Write \(g=\Im\rho>0,\ d=\Re\rho-1/2,\ u=g+id,\ \lambda=u^2,\ z=e^{-h\lambda}\); the sum below runs over distinct upper zeros with analytic multiplicity \(m\). The true low zero gap gives \(\Re\lambda>0\), and zero counting gives \(\sum m|z|<\infty\). Then \(C_n=\sum m z T_n(2z-1)\). Different rates can produce the same node. Their combined coefficient is the sum of their multiplicities times \(z\), which cannot vanish. Distinct nodes accumulate only at zero. For each \(z\) let \(r_z\) be the larger absolute value of the two roots \(w,w^{-1}\) of \(w+w^{-1}=2(2z-1)\); in particular \(r_z\ge1\). Then \(R(h)=\max_z r_z\).

Indeed \(T_n(2z-1)=(w^n+w^{-n})/2\) bounds all coefficients above by \(\sum m|z|(\max r_z)^n\). The maximum exists since \(r_z\to1\) at the only accumulation point. Conversely, the generating function near zero is the sum of
\[
 mz\,\frac{1-(2z-1)v}{1-2(2z-1)v+v^2}.
\]
Its two poles determine \(z\). On compact sets away from these poles and \(v=-1\), the large-height part converges normally by the summability of \(m|z|\). Each selected pole, including one at modulus one when all \(r_z=1\), is isolated away from \(-1\) and has nonzero residue. Here \(z=0,1\) cannot occur. Therefore the Taylor radius about zero is exactly \(1/\max r_z\). In the modulus-one case continuation to a neighborhood of the selected pole is from the open unit disk. This argument handles genuine multiplicities and all equal-node collisions. [Multiple-angle identity](https://dlmf.nist.gov/18.5.E1) · [Formal angle evaluation](XiHeatChebyshevEllipse.lean)

## The complex Gaussian stays inside an explicit ellipse

Put \(a=\sqrt h\,g,\ b=\sqrt h\,d,\ E=e^{b^2/2}\). For \(b\ne0\), the real and imaginary parts of \(v=e^{-(a+ib)^2/2}\) satisfy
\[
 \frac{(\Re v)^2}{E^2}+\frac{(\Im v)^2}{E^2-1}
 =e^{-a^2}\left(1+\frac{\sin^2(ab)}{e^{b^2}-1}\right)\le1 .
\]
Indeed \(\sin^2(ab)\le a^2 b^2\le(e^{a^2}-1)(e^{b^2}-1)\). The degenerate case \(b=0\) gives \(v\in[0,1]\). Write \(v=\cos\theta\). Lines of constant \(|\Im\theta|=y\) map to ellipses with semiaxes \(\cosh y,\sinh y\), so \(|\Im\theta|\le\operatorname{arcosh} E\). As \(2z-1=2v^2-1=\cos(2\theta)\), one obtains \(\log r_z=2|\Im\theta|\le2\operatorname{arcosh}E\). This proves the upper bound uniformly in height. For each fixed \(u\) choose the local angle \(\theta=\sqrt h\,u+O_u(h^{3/2})\), by the Taylor series of the exponential and cosine at zero (equivalently invert the analytic function of \(\theta^2\), whose linear term is nonzero). Thus \(\log r_z=2\sqrt h\,|d|+O_u(h^{3/2})\). Apply \(\log\cosh x=x^2/2+O(x^4)\), take the lower limit for each zero and then the supremum. This avoids exchanging a small-time limit with an uncontrolled sum.

A single step has \(R(h)=1\) exactly when every node is positive real, equivalently \(h\Im\lambda\in2\pi\mathbb Z\) at every rate. In this case \(|C_n(h)|\le H(h)\) for all \(n\); if \(R(h)>1\), such a uniform bound is impossible. Thus the two arithmetic steps \(1,\sqrt2\) together give an exact criterion for RH, because the two integer conditions force \(\Im\lambda=0\). The [fixture](../../../scripts/verify_xi_heat_wave.py) computes an order-20 polynomial from real heat samples and exhibits the actual aliasing mechanism on the model \(u=7+i\pi/7\). Its conjugate nodes coincide at step one and split at step \(\sqrt2\). The small-step displacement estimate converges to \(\pi/7\) there. The full recovery theorem and its application to the true divisor are manuscript results. Lean verifies the ellipse inequality and the multiple-angle step.

Lean 4.34.1 and Mathlib d13f23b723b8a846827a245b89c10fc7d3f11612 elaborated this source at blob 1bbc3fa37994de6b2eb759a1bf96b6d39586fc3b. A new empty kernel environment replayed the used declaration closure (4 roots, 16821 declarations). The transitive audits used only axioms among propext, Classical.choice and Quot.sound. Independent external review of the manuscript is outstanding. [Verification record](https://github.com/grwtsk/math/issues/1850)
