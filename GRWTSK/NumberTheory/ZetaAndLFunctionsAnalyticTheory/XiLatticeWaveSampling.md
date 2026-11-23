# One-sided prime discrepancies on a geometric sequence

Fix a heat time \(t>0\). Let \(V_t\) be the real, even [arithmetic Gaussian wave](XiHeatWavePrimeKernel.md), defined by the explicit formula, and let \(D=\sup_\rho |\Re\rho-1/2|\). For Lebesgue-almost every spacing \(h>0\),
\[
  \limsup_{n\to\infty}\frac{\log|V_t(nh)|}{nh}=D.
\]
If \(D>0\), then for each \(0\le a<D\) the numbers \(e^{-anh}V_t(nh)\) are unbounded above and below. The same full-measure set works for all positive heat times. Thus even a one-sided bound on this one geometric sequence of Gaussian-smoothed prime sums would suffice for RH. The bound itself is open.

Write \(\omega\) for the distinct signed frequencies in the true divisor expansion, \(g=\Re\omega\), \(d=\Im\omega\), \(b_\omega=m_\omega e^{-t\omega^2}/2\), and \(z_\omega=e^{ih\omega}\). Then
\[
 V_t(nh)=\sum b_\omega z_\omega^n,\quad e^{-Dh}\le |z_\omega|\le e^{Dh}.
\]
There are \(O(G\log(2G))\) frequencies with \(|g|\le G\), even counted with multiplicity, by the classical zero count. The sum of \(|b_\omega|\) above this cutoff is \(O_t(e^{-tG^2/2})\). The translated Gaussian version of the unconditional Guinand–Weil formula supplies the arithmetic side. [Carneiro and Milinovich, Lozenets 2023 proceedings, Lemma 2.2](https://www.math.bas.bg/mathmod/Proceedings_CTF/CTF-2023/files_CTF-2023/05-Carneiro-Milinovich.pdf)

## Two metric estimates on the step

Restrict \(h\) initially to a compact interval in \((0,\infty)\). For any \(|v|\ge1\) the measure of \(\{h:\operatorname{dist}(hv,2\pi\mathbb Z)<\epsilon\}\) is \(O(\epsilon)\) for \(0<\epsilon\le1\). This follows by counting the periods intersected, each contributing length at most \(2\epsilon/|v|\). For each fixed distinguished frequency \(\omega_0\), apply this with \(v=g-g_0\). The finitely many bounded differences with unequal ordinates obey a bound with a constant depending on the anchor. At equal ordinates unequal frequencies have distinct radii. Remove the countable exact angular coincidences for unequal ordinates. A union bound over the head and Borel–Cantelli on dyadic \(G\), at threshold \(G^{-3}\), show that eventually
\[
     \min_{\substack{|g|\le G\\\omega\ne\omega_0}}|z_\omega-z_{\omega_0}|\gg_{h,\omega_0} G^{-3}.
\]
Here the moduli stay in a compact positive interval and the squared distance between two nodes equals the squared difference of radii plus four times their product times the squared sine of half the angular difference. Intersect the full-measure sets over the countable anchors.

Also put \(\theta_\omega=\operatorname{dist}(hg,2\pi\mathbb Z)\in[0,\pi]\). The same argument without an anchor gives \(\theta_\omega\ge G^{-3}\) on the head eventually for dyadic \(G\), almost surely. Integration of the distribution bound gives \(\int \min(G^3,1/\theta_\omega)\,dh=O(\log G)\), uniformly in the frequencies (there are finitely many small nonzero ordinates). By Markov's inequality the measure where the sum of these truncated inverses exceeds \(G^{5/4}\) is \(O(G^{-1/4}\log^2G)\). This is summable on dyadic scales. Monotonicity between dyadic scales now gives \(\sum_{|g|\le G}(1+1/\theta_\omega)=O_h(G^{5/4})\). Exhaust the positive half-line by compact intervals. Neither estimate needs a lower bound on differences between arbitrary neighboring zero ordinates.

## Isolating one node and controlling both signs

For a finite polynomial \(P\) let \(\|P\|_1\) be the sum of the absolute values of its coefficients. Normalize the product of \((X-z_\omega)\) over the head excluding a fixed anchor by its value at that anchor. The first estimate gives a polynomial \(P_G\) of degree \(O(G\log G)\) and \(\log^+\|P_G\|_1=O_{h,\omega_0}(G\log^2G)\). On the whole node annulus its modulus is bounded by this norm times \(e^{Dh\deg P_G}\). Applying the polynomial in the forward shift to the samples at index \(n\) gives the anchor contribution \(b_{\omega_0}z_{\omega_0}^n\) plus a tail of modulus at most
\[
 O_t\left(\exp[-tG^2/2+Dhn+O_{h,\omega_0}(G\log^2G)]\right).
\]
Take \(G=n^{2/3}\). Both the degree and the logarithmic coefficient cost are \(o(n)\), while the tail is smaller than any fixed exponential in \(-n\). If the absolute samples had upper exponent strictly below \(h^{-1}\log|z_{\omega_0}|\) in the variable \(nh\), the same would hold after filtering, a contradiction. Taking the supremum over anchors and using the trivial upper bound proves the limsup claim, including \(D=0\).

For one-sided control use a different polynomial. For each head node \(z\) choose \(m=\lceil\pi/(2\theta)\rceil\), so \(\pi/2\le m\theta\le3\pi/2\). The factor
\[
  (1-z^{-m}X^m)(1-\overline{z^{-m}}X^m)
\]
has nonnegative real coefficients, constant coefficient one, and vanishes at \(z\). Its coefficient sum is at most \((1+|z|^{-m})^2\). The product \(Q_G\) over the entire head has degree and logarithmic coefficient cost \(O_h(G^{5/4})\) by the second metric estimate. With \(G=n^{2/3}\), shifting against \(Q_G\) leaves only a tail of size \(O_t(\exp[-tG^2/2+Dhn+O_h(G^{5/4})])=o(1)\). If \(V_t(jh)\le C e^{ajh}\) eventually, with \(a\ge0\), then moving the positive shifts to the other side gives \(V_t(nh)\ge-\exp[anh+o(n)]-o(1)\). The absolute exponent would be at most \(a\). Apply the same proof to the negative wave. A constant upper or lower bound under RH follows directly from the real cosine expansion.

For a prime-only version set \(r=nh\), choose \(B>\sqrt{2t}\), and form the **finite** sum
\[
 \sum_{|\log m-r|\le B\sqrt r}\frac{\Lambda(m)}{\sqrt m}
       e^{-(\log m-r)^2/(4t)}-2\sqrt{\pi t}\,e^{t/4+r/2}.
\]
This equals \(-4\sqrt{\pi t}\,V_t(r)+o(1)\). For truncation group integers into unit logarithmic shells. The shell starting at \(k\) contributes at most a constant times \((1+k)e^{k/2-(|k-r|-1)_+^2/(4t)}\). On either omitted side, including the boundary shell, the exponent is at most \((1/2-B^2/(4t))r+O(\sqrt r)\) and decreases by at least one per successive outward shell for large \(r\). The opposite translate and bounded-frequency integral have vanishing error as in the [continuous prime formula](XiHeatWavePrimeKernel.md). Each sample therefore uses finitely many prime powers, while the criterion requires infinitely many samples.

## Sampled operator and multiplicities

An unconditional arithmetic trace-class operator on \(\ell^2(\mathbb N_0)\) has entries \(e^{-\sigma(j+k)} V_t((j-k)h)\), with \(\sigma>h/2\). It is real symmetric. Each separated term in its divisor expansion has trace norm at most \(|b_\omega|/(1-e^{-2(\sigma-h/2)})\) by two geometric-series norm bounds. Its trace is \(V_t(0)/(1-e^{-2\sigma})\). On the full-measure set of spacings its negative index is twice the number of distinct off-line zero quadruples. Indeed the finite evaluation vectors are evaluations of polynomials on the nodes (choosing the opposite sign of all frequencies changes only the labeling). The interpolation polynomials above converge to individual coordinate vectors in the norm of \(\ell^2(|b_\omega|)\), since their head is exact and their norm on the tail is bounded by \(\exp[O(G\log^2G)]\) times a Gaussian tail. Hence their linear span is dense. The positive diagonal weights \(e^{-\sigma j}\) preserve the available finite polynomials. The Hermitian form pairs \(\omega\) with \(\bar\omega\), under \(z_{\bar\omega}=1/\bar z_\omega\). A real frequency gives a positive square. Each nonreal conjugate pair gives one negative and one positive direction. Approximate any finite selection of the negative coordinates, as in the [interval index proof](XiHeatMomentNegativeIndex.md). This argument also proves convergence of the leading finite-section negative indices to the same count.

Conditionally, if the required one-sided bound holds at such a spacing, the circle measures determined by the two positive-definite arithmetic sequences at times \(t\ne u\) are unique by trigonometric polynomial density. The divisor identity identifies their masses \(M_t,M_u\) at a given atom as \(m e^{-t g^2}/2,m e^{-u g^2}/2\). Their ratio recovers \(g^2=\log(M_t/M_u)/(u-t)\). Take one conjugate pair of circle atoms per recovered value and place eigenvalues at both real square roots with fiber dimension \(2M_t e^{t g^2}\). Exact aliases of opposite frequencies have already been excluded. The construction from these two sequences specifies a self-adjoint multiplication operator on the maximal square-summable graph domain. Its Hilbert–Schmidt inverse follows from \(\sum m/g^2<\infty\). Pairing opposite factors in the canonical product yields the requested normalized \(\det_2\) identity with exact multiplicities. Unconditional positivity, and hence this realization without its premise, remain open.

The exceptional-set qualification matters. In a finite symmetric model with \(g=1,d=1/4,t=2\pi,h=2\pi\), the two conjugate Gaussian coefficients are equal and negative, and the sampled cosines equal \(\cosh(nh/4)\). The upper bound alone then misses the growing negative signal. This example tests the method and makes no claim about an actual zeta zero. The comparison with the continuous proof uses different arguments for isolation and one-sidedness. No particular geometric ratio for the actual zeta divisor is certified here.

The [Lean companion](XiLatticeWaveSampling.lean) verifies the reciprocal quadratic, power cancellation, coefficient signs and size, finite-filter lower estimate, product gap bound and two-temperature mass inversion. The metric estimates, infinite-dimensional index and RH criterion are manuscript arguments. Independent external review is outstanding.

Lean 4.34.1 with Mathlib d13f23b723b8a846827a245b89c10fc7d3f11612 elaborated Lean blob 21359da09559939fc42b31202592ae8d2436350d. Fresh kernel dependency replay passed for 6 roots, 15993 declarations. The transitive audits used only axioms among propext, Classical.choice and Quot.sound. [Verification record](https://github.com/grwtsk/math/issues/1850)
