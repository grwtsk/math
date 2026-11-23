# A two-scale test and the projected self-adjoint operator

Fix \(t>0\) and \(b\in\mathbb R\). The Gaussian width and center are arbitrary. Define the isotropic scan \(G\) from planar values of \(\log|X|\) as in the [cutoff construction](XiTransverseHeatKernel.md). Then
\[
 \mathcal E(t,b)=G(t,b)-2\sqrt{t/\pi}\int_{\mathbb R}
  e^{-2t(b-c)^2}G(2t,c)\,dc\ge0 .
\]
Equality at a single prescribed pair \((t,b)\) is equivalent to the Riemann Hypothesis. In particular the test does not require determining an infinite list of zero ordinates.

Indeed let \(v=d^2\), \(w=m e^{-t(g-b)^2}\), \(q=e^{-tv}\). The two quantities being subtracted are \(\sum wq\) and \(\sum wq^2\). The second comparison follows by completing the square in the center variable and integrating a translated Gaussian with coefficient \(4t\). Tonelli applies to nonnegative terms. Thus \(\mathcal E=\sum wq(1-q)\). The inequalities \(x e^{-x}\le1-e^{-x}\le x\) and \(q\ge e^{-t/4}\) give the explicit two-sided estimate
\[
 t e^{-t/4} M(t,t,b)\le\mathcal E(t,b)\le t M(t,t,b).
\]
This recovers the same defect using only isotropic scans. In Lean the scan is defined on the actual ξ divisor. Its convolution identity includes countability, integrability, summability of the integral norms and interchange of integral and sum. The formal converse applies Rolle's theorem to the two equal width samples and invokes the independently verified stationary-scan criterion. The distributional construction of the same \(G\) from the boundary data is analytic exposition. [Exact Lean statements](XiGaussianScanSemigroup.lean) · [Stationary-scan criterion](XiGaussianTransverseMoment.lean)

## What the scans determine about operators

Consider the joint polynomial moment functional, defined entirely by integration against analytic data:
\[
 L(p)=\frac1{2\pi}\lim_R\int\log|X(x+iy)|\,
  \Delta\bigl[\chi_R p(x,y^2)e^{-x^2-y^2}\bigr]\,dx\,dy .
\]
For each polynomial the absolute majorant follows from Gaussian summability. Applying the compact-test current identity gives \(L(|p|^2)\ge0\). Quotient polynomials by null vectors and complete in this inner product. The resulting Hilbert space is the scalar \(L^2\) space of the positive pushforward measure with atoms \((g,v)\) of mass \(\alpha_{g,v}=e^{-g^2-v}\sum_{(g_a,d_a^2)=(g,v)}m_a\). This identification is a consequence of the data prescription. To verify density, a vector orthogonal to all polynomials defines a finite signed or complex measure by multiplication against that vector. Its two-variable Laplace transform is entire by Cauchy–Schwarz, Gaussian decay in \(g\), and bounded \(v\). All derivatives at zero vanish, hence the transform vanishes, and uniqueness of the Fourier transform gives the zero measure. The same proof with weight \(1+g^2\) proves density in the graph norm of multiplication by \(g\).

The longitudinal multiplication operator is essentially self-adjoint on polynomials. The transverse multiplication operator \(C:p\mapsto vp\) extends to a bounded positive operator of norm at most \(1/4\). They strongly commute by their multiplication representation. Moreover \(\|C\|=\lim_{n\to\infty}(L(v^n)/L(1))^{1/n}\) by the elementary \(L^p\)-norm limit for a finite positive measure. The equality \(C=0\) would establish RH. Positivity of \(C\) alone follows for every divisor in the strip.

The scalar representation has one degree of freedom per joint atom. Its spectral weight recovers the aggregate order \(M_{g,v}=e^{g^2+v}\alpha_{g,v}\), since the constant vector \(1\) carries exactly the mass \(\alpha_{g,v}\). Build a second Hilbert space with \(M_{g,v}\) copies of each recovered atom and use the maximal diagonal domain \(\sum g^2|u|^2<\infty\). Multiplication by \(g\) gives a densely defined self-adjoint operator \(A\). For \(v>0\) conjugate symmetry gives equally many copies of each sign of \(d\). Splitting them accordingly gives a normal operator \(D\) with entries \(g\pm i\sqrt v\); for \(v=0\) its entries are \(g\). The finite central gap and inverse-square summability give \(A^{-1},D^{-1}\) Hilbert–Schmidt. Both statements use the actual absence of zeros of ξ on the real segment of its critical strip, which excludes \(g=0\).

Hadamard factorization for the order-one entire \(X\) yields \(\det_2(I-zD^{-1})=X(z)/X(0)\). Indeed the factors match, including orders, the constant is fixed at zero, and the remaining linear exponential has zero derivative there because \(X\) is even and the genus-one product has derivative zero. This normal-operator identity recovers the analytic divisor. Its self-adjointness requires exactly \(C=0\). The longitudinal self-adjoint operator \(A\) has the following obstruction already at the second logarithmic Taylor coefficient:
\[
 \operatorname{Tr}(A^{-2})-\Re\operatorname{Tr}(D^{-2})
 =\sum_a m_a\,\frac{3g_a^2d_a^2+d_a^4}{g_a^2(g_a^2+d_a^2)^2}\ge0.
\]
Every term with \(d_a\ne0\) is strictly positive. Thus even equality of these second traces would imply RH. Analytic reconstruction or layer multiplicities do not supply an independent arithmetic proof that the second traces agree. These operator arguments are manuscript results. No Lean proof of the claimed self-adjoint zeta determinant follows from them. [Related projected trace comparison](XiProjectionTraceDefect.md)

## Verification scope

The formal modules use the repository's pole-cleared ξ, its actual analytic orders, the critical-strip identification, unconditional explicit zero-counting estimates and Mathlib's real Gaussian integral. The exact determinant identity for an arithmetic self-adjoint operator and an unconditional inhabitant of Mathlib's RiemannHypothesis remain open. Exact-source kernel and transitive axiom records are reported on [issue 1850](https://github.com/grwtsk/math/issues/1850).

Lean 4.34.1 and Mathlib d13f23b723b8a846827a245b89c10fc7d3f11612 elaborated this source at blob fee7cf610008479ccae8cdf02db98006f90cdd8d. A new empty kernel environment replayed the used declaration closure (3 roots, 62987 declarations). The transitive audits used only axioms among propext, Classical.choice and Quot.sound. Independent external review of the manuscript is outstanding. [Verification record](https://github.com/grwtsk/math/issues/1850)
