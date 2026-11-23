# Uniform two-point and sixteen-point positivity of the arithmetic heat wave

Let \(V=V_{1/100}\) be the even arithmetic wave defined by the positive-real heat evaluations and the prime formula. Write \(T=3\cdot10^{12}\), \(\tau=1/100\). Then
\[
 |V(r)|<V(0)\quad(0<|r|\le 2\tau T^2-1000).
\]
More generally the actual real symmetric matrix \((V((i-j)r))_{0\le i,j<16}\) is positive definite for **every** nonzero real step satisfying \(15|r|\le 2\tau T^2-10000\). The bounds apply to every translate of the grid. At zero step the matrix has rank one. The estimates use a verified finite-height theorem, complete rational separation certificates for the low phases, and an unconditional bound for the entire infinite remainder. [Global operator criterion](XiHeatWavePrimeKernel.md) · [Platt and Trudgian](https://arxiv.org/abs/2004.09765)

## Two sample points

Write \(u=g+id\), with \(g>0\) and \(|d|<1/2\), for the true upper ξ divisor as in the [heat trace normalization](XiHeatSaddleBounds.md). All \(g\le T\) have \(d=0\). Every such zero contributes nonnegatively to \(V(0)\pm V(r)\). For \(g>T\) the absolute total in either expression is bounded by
\[
 2T^2 e^{-\tau(T^2-1/4)+r/2}\sum_{g>T}m/g^2
 < 2T^2 e^{-\tau(T^2-1/4)+r/2}
\]
when \(r\ge0\). Here \(g^2e^{-\tau g^2}\) decreases and the published zero count gives the reciprocal-square tail below one. For \(0<r\le0.1\), the minus case has the sharper tail \(r^2 T^4 e^{-\tau(T^2-1/4)+1}\). Indeed twice integrating the cosine derivative gives \(|1-\cos(ru)|\le r^2|u|^2 e^{r/2}/2\). The first real ordinate \(g_1\) then supplies at least \(2e^{-\tau g_1^2}g_1^2 r^2/\pi^2\) to the minus case by Jordan's inequality; the plus case retains at least \(e^{-\tau g_1^2}\).

For larger \(r\), let \(p,q\) be the integers nearest \(rg_1/\pi,rg_2/\pi\) for the first two actual ordinates. Set \(\alpha=g_2/g_1,\ N=10^{24}\). The [interval check](../../../scripts/verify_xi_heat_wave.py) gives coprime integers
\[
 A=4531156026945979067537035,\qquad B=3046642767102053141588344
\]
with \(B>2N\) and \(|p|\le N\) throughout the stated range. For \(p\ne0\), the determinant \(pA-qB\) is a nonzero integer, hence \(|p\alpha-q|\ge1/B-N|\alpha-A/B|\). The larger of the two phase distances to \(\pi\mathbb Z\) is at least \(\pi(1/B-N|\alpha-A/B|)/(1+\alpha)>3.5266\cdot10^{-25}\). When \(p=0\), the first phase distance is \(rg_1\ge0.1g_1\). Since \(1-|\cos y|\ge 2\,\operatorname{dist}(y,\pi\mathbb Z)^2/\pi^2\), one retained positive term dominates \(3.03\cdot10^{-52}\). The log of the absolute possible negative tail at the endpoint is below \(-441.84\). [Diophantine and cosine estimates in Lean](XiHeatWaveSeparation.lean)

## Separating enough phases for the full matrix

Let \(g_1,\ldots,g_{17}\) be the first seventeen ordinates. Their positive pairwise differences form a list of 136 elements. On \(0.01\le r\le(2\tau T^2-10000)/15\), at most one edge of the seventeen points \(z_j=e^{irg_j}\) has chord length less than \(\delta=10^{-36}\). For each pair \(d_1,d_2\) of distinct entries in that list, run the same rational determinant proof with \(\alpha=d_2/d_1\), \(p,q\) the nearest integers to \(rd_1/(2\pi),rd_2/(2\pi)\). The fixture verifies all 9,180 rational approximants at interval enclosures of the true ordinates. The smaller bound across all pairs for the maximum distance to the nearest integer exceeds \(8.79\cdot10^{-30}\). If \(p=0\), use \(rd_1/(2\pi)\ge0.01/(2\pi)\), since \(d_1>1\). Finally \(|e^{2\pi ix}-1|\ge4\operatorname{dist}(x,\mathbb Z)\). Removing one endpoint of any short edge leaves sixteen \(\delta\)-separated nodes.

For a polynomial \(P(z)=\sum_{j=0}^{15}c_j z^j\), the low positive frequencies contribute at least \(\frac12 e^{-\tau g_{17}^2}\sum |P(z_j)|^2\) on these nodes, even though their negative-frequency partners and other real frequencies are also present. On any sixteen separated nodes of modulus at most \(U\), each cardinal Lagrange polynomial has coefficient \(\ell^1\) norm at most \(((1+U)/\delta)^{15}\) by multiplying its fifteen linear factors. Interpolation and Cauchy–Schwarz thus give the retained lower bound
\[
 \frac{e^{-\tau g_{17}^2}}{32}
 \left(\frac{\delta}{1+U}\right)^{30}\sum |c_j|^2 .
\]
Here \(U=1\). The possible remote error at each Toeplitz entry costs at most \(T^2e^{-\tau(T^2-1/4)+15r/2}\), hence at most sixteen times this times \(\sum|c_j|^2\) in the quadratic form. The logarithms of the retained coefficient and error coefficient at the worst endpoint are respectively greater than \(-2560\) and less than \(-4939\).

For \(0<r<0.01\), change the polynomial coordinate to \(w=(z-1)/r\). This is an invertible basis change for every such \(r\). The low nodes have modulus below 100 and separation above \(0.1\), since \(r|g_j-g_l|<1\) and \(|g_j-g_l|>1\). For either complex frequency of absolute ordinate \(g>T\) and its conjugate, the scaled exponential has modulus bounded by \(|u|e^{r/2}<2g\), by the integral formula for the exponential difference. For a unit vector of coefficients in the new coordinate, the absolute bilinear contribution at high frequency is bounded by \(16(2g)^{30}\) times its Gaussian mass. This applies to the product with the conjugate-frequency polynomial, including nonreal frequencies. The reciprocal-square estimate therefore bounds the tail coefficient by \(16T^2(2T)^{30}e^{-\tau(T^2-1/4)}\), since \(g^{32}e^{-\tau g^2}\) decreases. It is smaller than the Lagrange lower bound at \(U=100,\delta=0.1\). This proves strict positivity through the confluent limit.

The fixture uses Arb enclosures of the actual zeros, integer rational certificates and scalar interval inequalities. The global separation proof quantifies over a continuous range of steps. The complete rank-sixteen transfer and the endpoint results are manuscript mathematics. Positivity on arbitrary-sized grids and the unbounded-span two-point bound remain open. [Arithmetic fixture](../../../scripts/verify_xi_heat_wave.py) · [Arb zeta-zero routines](https://arblib.org/acb_dirichlet.html)

## Arbitrary sample times on a short interval

There is also an unconditional result for meshes of **arbitrary shape**. For every \(d\le256\) and every set of \(d\) distinct real times contained in an interval of length \(1/41\), the matrix \((V(x_i-x_j))\) is strictly positive definite. It suffices to prove the assertion for 256 points: add distinct points and take a principal submatrix. Translate the times into \([0,R]\), \(R=1/41\), and write \(d=256,\ G=500,\ M=d(d-1)/2\). Let \(g_l\) be the first 256 positive ordinates, with adjacent gap at least \(\eta>0\).

To treat arbitrarily close times, replace the rows \(e^{i x_j u}\), in increasing time order, by the Newton divided differences on the first \(j+1\) times, multiplied by \(j!/(iG)^j\) for \(0\le j<d\). This triangular change of basis is invertible. The normalized row at a real frequency \(u\) has modulus at most \((|u|/G)^j\): the divided difference is \((iu)^j/j!\) times the mean of \(\exp(iu\sum v_l x_l)\) on the uniform probability simplex. The simplex identity follows by iterating the fundamental theorem of calculus (or expanding the exponential and integrating multinomial monomials on the simplex). For complex \(u\) multiply the modulus bound by \(e^{R|\Im u|}\). Denote the transformed square matrix at the retained real positive frequencies by \(B\).

The unitary orbital integral formula gives
\[
 |\det B|=\frac{|\Delta(g)|}{G^M}
 \left|\int_{U(d)}\exp\{i\operatorname{Tr}(XU YU^*)\}\,dU\right|,
 \qquad X=\operatorname{diag}(x_j),\quad Y=\operatorname{diag}(g_l).
\]
Indeed the determinant of the divided-difference row operation has modulus \(\prod j!/(G^M|\Delta(x)|)\). The unitary integral formula for the exponential determinant cancels both \(\prod j!\) and \(\Delta(x)\). Its imaginary parameter follows by analytic continuation from real parameters. Haar measure is normalized to mass one. Subtract the midpoint of the spectral range from each diagonal matrix; the integral changes by a unit phase. Its centered integrand has phase bounded by \(dR(g_d-g_1)/4\), since \(|\operatorname{Tr}(AB)|\le d\|A\|\|B\|\). This elementary bound already gives modulus at least \(1/2\) on spans up to \(1/30000\). [Harish–Chandra–Itzykson–Zuber formula, Theorem 1.1](https://www.cs.yale.edu/homes/vishnoi/HCIZ.pdf) · [Orbital integral proof](https://arxiv.org/abs/1712.03995)

For the larger stated span, center both spectra by their arithmetic means. Put \(X_0,Y_0\) for the traceless matrices, and \(Z=\operatorname{Tr}(X_0 U Y_0 U^*)\). Its Haar mean is zero and its variance is
\[
 \mathbb E Z^2=\frac{\operatorname{Tr}(X_0^2)\operatorname{Tr}(Y_0^2)}{d^2-1}
 \le \frac{d R^2\sum_l(g_l-\bar g)^2}{4(d^2-1)}.
\]
Indeed the squared moduli of the entries of one Haar row are uniform on the simplex, by normalizing independent complex Gaussians. Their diagonal and mixed second moments are \(2/(d(d+1))\) and \(1/(d(d+1))\). Each diagonal entry of \(U Y_0U^*\) therefore has variance \(\operatorname{Tr}(Y_0^2)/(d(d+1))\). Their sum is zero, so exchangeability gives pairwise covariance equal to minus this variance divided by \(d-1\). Summing with traceless weights \(X_0\) proves the identity. Subtracting the mean minimizes the sum of squares, which yields the upper bound for \(\operatorname{Tr}(X_0^2)\) by comparison with the midpoint of the time range. Finally \(\cos y\ge\pi/4-y^2/\pi\) for all real \(y\): by evenness take \(y\ge0\); the difference decreases to zero at \(\pi/2\) by Jordan's inequality, then increases since \(\sin y\le1\). Thus the orbital modulus is at least \(b=\pi/4-\mathbb E Z^2/\pi\). The certified upper bound on the variance gives \(b>0.01\) at \(R=1/41\).

Every entry of \(B\) has modulus at most one since \(g_d<G\). Therefore its smallest singular value is at least \(b(\eta/G)^M/d^{d-1}\), by the determinant and the bound \(d\) on the remaining singular values. On the transformed coefficient space the retained mass is bounded below by \(\frac12 e^{-\tau g_d^2}\sigma_{\min}(B)^2\) times squared coefficient norm. For each conjugate-frequency product at \(g>T\) the two divided-difference vectors have norm product at most \(d(2g/G)^{2(d-1)}e^R\). The full tail therefore costs at most \(d T^2(2T/G)^{2(d-1)}e^{R-\tau(T^2-1/4)}\) in squared-norm units, again by the reciprocal-square bound and monotonicity. The fixture encloses all of the first 256 ordinates and uses their actual minimum adjacent gap. The log of the retained lower bound exceeds \(-10^6\), and the omitted tail is smaller. This uniform comparison survives arbitrarily close distinct times. The divided differences are used for both the head and the tail before comparing the two. The orbital integral theorem is a published input; the 256-point comparison is a manuscript argument. [Interval certificate](../../../scripts/verify_xi_heat_wave.py)

Lean 4.34.1 and Mathlib d13f23b723b8a846827a245b89c10fc7d3f11612 elaborated this source at blob d4bae0eb3c2007b6605d952c1421878402b62de9. A new empty kernel environment replayed the used declaration closure (5 roots, 32954 declarations). The transitive audits used only axioms among propext, Classical.choice and Quot.sound. Independent external review of the manuscript is outstanding. [Verification record](https://github.com/grwtsk/math/issues/1850)
