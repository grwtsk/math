# A positive arithmetic test for a whole vertical half-strip

For the strip statistic defined by the [boundary integral and prime series](XiStripGreenKernel.md), one equality \(D_{\sigma,L}(b)=0\) is equivalent to every nontrivial zero satisfying \(\Re\rho\le\sigma\). Indeed each term with \(\Re\rho>\sigma\) has strictly positive sine and positive analytic order. At \(\sigma=1/2\) the functional equation reflects the remaining half of the critical strip. This gives the actual Mathlib RH statement. The Lean definition uses the completed ξ divisor and the clipped displacement \(\max(\Re\rho-\sigma,0)\), and proves unconditional summability before testing the infinite sum. [Lean declarations](XiStripZeroCriterion.lean)

To verify the majorant, set \(y=\Im\rho,\ a=2-\Re\rho\in[1,2]\) and \(C=4+2b^2+4/k^2\). Since \(\cosh v\ge 1\) and \(\cosh v\ge v^2/2\),
\[
 a^2+y^2\le4+2b^2+2(y-b)^2\le C\cosh(k(y-b)).
\]
Also the Green ratio is at most \(U=\sin(k(1-\sigma))<1\). The upper bound \(G_L\le \sech(k(y-b))/(1-U)\) reduces normal summability to the repository's genuine \(m_\rho a/(a^2+y^2)\) anchor. Its strict two-sided tail is summable, and the bounded remaining head is finite. One zero at displacement at least \(\eta>0\), within height distance \(R\), costs at least \(m_\rho\sin(k\eta)/\cosh(kR)\). The sharper cost \(m_\rho\operatorname{artanh}(\sin(k\eta)/\cosh(kR))\) follows by monotonicity. These are lower bounds even when there are arbitrarily many other zeros. [Anchor-summability source](XiAnchorInverseSquareSummability.lean)

## Quantitative return to the exterior Taylor inequality

The [reflected zeta-divisor argument](XiReflectedTaylorBudget.md) forces \(\beta>0.753,\ |\gamma-y|<2\) if the third-derivative inequality fails at \(y\). Fix \(\sigma=0.7,\ L=0.65\). For \(|y-b|\le1/2\) this forces \(D_{\sigma,L}(b)>\operatorname{artanh}(\sin(0.053\pi/L)/\cosh(2.5\pi/L))\). A certified smaller upper bound excludes failure on the entire unit interval around \(b\). For \(|\gamma-b|\le1\), the analogous cost exceeds \(0.0040338\).

For \(b=10^{15}+3.5\), the two-boundary calculation on a four-unit arc gave a truncated difference of approximately \(-0.00002252711\) and an omitted integral upper bound less than \(0.001510927\). The full positive Green sum is below \(0.001489\). This alone excludes \(\beta>0.753\) within distance one at remote height, using no root isolation, winding count or presupposed critical-line zeros. The truncated difference can genuinely be negative even though the full sum is nonnegative. Finite-precision smallness establishes macroscopic exclusions. An arbitrarily small displacement from the line still contributes an arbitrarily small positive summand. The self-adjoint determinant requires an arithmetic vanishing proof. [Boundary integration fixture](../../../scripts/verify_xi_strip_green.py)

For comparison with the earlier [Gaussian defect](XiGaussianScanSemigroup.md), take \(\sigma=1/2\) and \(L>1\). A conjugate-reflected pair with displacement \(d\in(0,1/2)\) contributes at most \(2t d^2e^{-t(\gamma-b)^2}\) per common order to the Gaussian gap. Concavity of sine gives \(\sin(kd)\ge2d\sin(k/2)\), and \(\sech(kx)\ge e^{-k|x|}\). Completing a square shows that its Gaussian contribution is at most
\[
 \frac{t\,e^{k^2/(4t)}}{2\sin(k/2)}\,G_L(d,\gamma-b).
\]
Summing proves this bound with \(D_{1/2,L}(b)\) in place of \(G_L\). The strip data thus also give a certified upper bound for the positive transverse Gaussian defect. For fixed \(x\), the strip cost is linear at small \(d\) while the Gaussian cost is quadratic. There is no constant giving a converse comparison at those small displacements.

Lean 4.34.1 and Mathlib d13f23b723b8a846827a245b89c10fc7d3f11612 elaborated this source at blob ad3802fda8c9e70da534302276e3ddbe92353b6e. A new empty kernel environment replayed the used declaration closure (9 roots, 63062 declarations). The transitive audits used only axioms among propext, Classical.choice and Quot.sound. Independent external review of the manuscript is outstanding. [Verification record](https://github.com/grwtsk/math/issues/1850)
