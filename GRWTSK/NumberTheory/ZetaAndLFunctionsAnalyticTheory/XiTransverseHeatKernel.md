# Heat production and arithmetic Gaussian scans

Write \(X(z)=\xi(1/2+iz)\). For a zero \(\rho=\beta+i\gamma\), put \(g=\gamma, d=1/2-\beta\), so that \(a=g+id\) is a zero of \(X\) of the same order \(m\). Start with the following prescription from the values of the analytic function. Choose a smooth radial cutoff \(0\le\chi_R\le1\) equal to one on the disk of radius \(R\), zero outside radius \(2R\), increasing to one. For \(t>0\) and real \(b\) set

\[
 G(t,b)=\frac1{2\pi}\lim_{R\to\infty}\int_{\mathbb R^2}
  \log|X(x+iy)|\,\Delta\!\left[\chi_R(x,y)e^{-t((x-b)^2+y^2)}\right]dx\,dy.
\]

This definition needs no zero locations. The local identity \(\Delta\log|X|=2\pi\sum_a m_a\delta_a\) follows by factoring out the order at an isolated zero, using harmonicity of the logarithm of the unit, and integrating the normal derivative of \(\log|z|\) on a small circle. Applied **before** passing to the limit this gives \(G=\sum m e^{-t((g-b)^2+d^2)}\), independently of the cutoff. The logarithmic singularities are locally integrable. Absolute convergence follows from the Gaussian majorant in the [transverse moment proof](XiGaussianTransverseMoment.md). The integral formula uses the planar Laplacian and Lebesgue area. Demailly treats the general current identity in Chapter III, equation (2.15). [Complex Analytic and Differential Geometry](https://www-fourier.ujf-grenoble.fr/~demailly/source_files/analgeom/agbook.pdf)

## Heat production at one point

For \(h>0\) let \(K(h,b)=G(1/(4h),b)/\sqrt{4\pi h}\). Differentiating each Gaussian gives
\[
 (\partial_h-\partial_b^2)K(h,b)=
  \frac1{4h^2\sqrt{4\pi h}}\sum_a m_a d_a^2
       e^{-((g_a-b)^2+d_a^2)/(4h)}.
\]
On a compact subset of positive times and bounded centers all required derivatives have a common majorant \(C m_a(1+|g_a|^4)e^{-c g_a^2}\) with \(c>0\). Reducing \(c\) absorbs the polynomial. Thus the termwise derivatives are valid. The measure, the multiplicities and the square on the right are positive, and the Gaussian never vanishes. Equality in the ordinary heat equation at any one specified time and center is equivalent to every \(d_a=0\). Rodgers and Tao, equation (2), study the backward evolution of a family of entire functions. The heat equation tested here acts on real-center scans of the fixed divisor. [Rodgers and Tao](https://arxiv.org/abs/1801.05914)

The local Lean file proves the two first partial derivatives, the second spatial derivative and the residual for each atom, with the constant \(1/\sqrt{4\pi}\) suppressed. It proves the center convolution integral by completing the square and applying the real Gaussian integral. It also proves the finite geometric inversion and its two-sided error bound. The passage from analytic values to the divisor by the planar current identity, as well as termwise differentiation in both real scan variables, is manuscript-level. The infinite sum and its transverse derivative are verified separately. [Lean declarations](XiTransverseHeatKernel.lean) · [Actual infinite sum](XiGaussianTransverseMoment.lean)

## Finite boundary test

For the pair near height 7005, count zeros within real-centered circles by bounding the variation of the Taylor enclosure of zeta on every curved arc. Each image enclosure omits zero, so the principal argument of the ratio of endpoint values gives the true change on that arc. The sum of these changes yields an integer winding. For each rank in the outer disk, bisect the radius using only winding counts and apply \(r\mapsto e^{-512r^2}\) to the resulting interval. The rotation, distances and analytic units relating the local zeta chart to \(X\) preserve the divisor. The outer radius is \(1/16\). Centers at offsets \(2/25\) and \(3/32\) enclose two zeros each. The sums are in \(1.6658\pm0.000080\) and \(1.5901\pm0.000053\). Both enclosures contain the independent results from disjoint real-centered isolating disks. These are truncated sums over the indicated disks. [Reproducible boundary test](../../../scripts/verify_xi_gaussian_scans.py) · [Independent disk isolation](../../../scripts/verify_xi_disk_counts.py)

A hostile check for single-center recovery is the pair \(b\pm r\) and the pair \(b\pm ir\). Their isotropic scans at \(b\) coincide for every inverse width. Shifting the center by \(c\ne0\) introduces the factor \(\cosh(2tcr)\) only for the first pair. The center dependence is essential to the positive recovery and to the two-scale test. [Two-scale theorem](XiGaussianScanSemigroup.md)

Lean 4.34.1 and Mathlib d13f23b723b8a846827a245b89c10fc7d3f11612 elaborated this source at blob 3ade6666c615f3369fb87d716b6d4a4138d758f5. A new empty kernel environment replayed the used declaration closure (8 roots, 46837 declarations). The transitive audits used only axioms among propext, Classical.choice and Quot.sound. Independent external review of the manuscript is outstanding. [Verification record](https://github.com/grwtsk/math/issues/1850)
