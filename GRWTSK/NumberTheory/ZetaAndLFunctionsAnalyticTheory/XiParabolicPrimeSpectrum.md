# Recovering the full normal ξ spectrum from one ray of Gaussian prime sums

grwtsk contributors

The Gaussian prime formula on the single ray \(t\mapsto(\tau,r)=(t/2,t)\) determines a normal operator with the exact ξ determinant. Its real part is self-adjoint. Three shift correlations per decay rate detect exactly when this real part has the same determinant. The required arithmetic vanishing of all the correlation defects remains open.

## Arithmetic samples and their decay rates

Define \(A(t)=2V_{t/2}(t)\), \(t>0\), using the prime, gamma and elementary terms of the [Guinand–Weil wave formula](XiHeatWavePrimeKernel.md). This supplies arithmetic input at positive rational times. For the proof of identification, write \(s=\rho-1/2=d+i\gamma\) for the distinct signed nontrivial zeros and \(m_s\) for their multiplicities. The test \(e^{-tu^2/2}\cos(tu)\) is entire with Gaussian decay on each fixed horizontal strip, as required by the unconditional explicit formula. The explicitly normalized identity on this ray is
\[
 A(t)=\sum_s m_s e^{tF(s)},\qquad
 F(s)=s+s^2/2=h+i\omega,\quad
 h=d+(d^2-\gamma^2)/2,\qquad \omega=(1+d)\gamma.
\]
Indeed, the upper-ordinate wave is a sum of \(e^{-tu^2/2}\cos(tu)\), \(u=\gamma+id\). Expanding twice the cosine gives the two arguments \(s=iu,-iu\). Reflection of the upper-half divisor about the critical line identifies their union, with multiplicities, with the entire signed divisor. The strip \(|d|\le 1/2\) implies \(h\le5/8-\gamma^2/2\), so the sum is absolutely convergent at every positive time. The known low zero-free region implies that every \(h<0\). There are only finitely many rates above any fixed real threshold, counting multiplicities, by the zero count. Distinct strip points give distinct complex rates, since equality would require either equality of the points or \(s+s'=-2\), impossible by their real parts. [Carneiro and Milinovich, explicit formula, Lemma 2.2](https://www.math.bas.bg/mathmod/Proceedings_CTF/CTF-2023/files_CTF-2023/05-Carneiro-Milinovich.pdf) · [Platt and Trudgian, verified low zeros](https://doi.org/10.1112/blms.12460)

## Positive shift measures recover every layer

Start with \(R=A\). At each nonzero residual take
\[
 h=\log\limsup_{n\to\infty}|R(n)|^{1/n}.
\]
This definition determines the largest surviving height, even when integer sampling aliases two different frequencies. In fact, if \(h_*\) is that largest height, \(e^{-h_*t}R(t)=P(t)+O(e^{-\delta t})\) for \(t\ge1\), where \(P(t)=\sum_{h_s=h_*}m_s e^{i\omega_s t}\) and \(\delta>0\) is a gap to the next height. This bound follows by summability at time one; an empty remainder is zero. Combine equal \(e^{i\omega_s}\) in \(P(n)\). Their coefficients add as positive integers. The Cesàro mean of \(|P(n)|^2\) tends to the sum of squares of these nonzero combined coefficients, by the geometric-series identity. Boundedness and a subsequence bounded away from zero prove the claimed root rate.

Take the least positive integer \(q\) satisfying
\[
 \pi q>\tfrac32\sqrt{5/4-2h}.
\]
On this layer, \(\gamma^2\le5/4-2h\) and \(|\omega|\le(3/2)|\gamma|\). Thus the frequencies lie strictly inside the principal argument interval after division by \(q\). For \(k\in\mathbb Z\) set \(n_0=\max(q,q-k)\), \(Y_n=e^{-hn/q}R(n/q)\), and
\[
 C_h(k)=\lim_{M\to\infty}\frac1M\sum_{n=n_0}^{n_0+M-1}Y_nY_{n+k}.
\]
These real correlations define a unique finite positive measure \(\nu_h\) on the unit circle with \(C_h(k)=\int a^k\,d\nu_h(a)\). To prove both existence and exact identification, replace \(Y_n\) by the bounded finite leading polynomial; the decaying remainder contributes \(O_k(M^{-1})\). The normalized geometric average for a distinct pair of characters differs from zero by at most \(2/(M|1-a\bar b|)\). Conjugation symmetry makes \(Y_n=\bar Y_n\). Pair equal characters in \(\bar Y_nY_{n+k}\) to obtain
\[
 \nu_h=\sum_{s:\ h_s=h}m_s^2\,\delta_{e^{i\omega_s/q}}.
\]
The unaliased angles are distinct by rate injectivity. Trigonometric polynomials determine a finite measure on the circle, giving uniqueness independently of the representation. No uniform separation of the angles at successive heights is asserted.

Write \(w_h(a)=\nu_h(\{a\})\). Subtract from the residual at every rational \(t>0\) the arithmetic function
\[
 e^{ht}\int_{w_h>0} w_h(a)^{-1/2}
        \exp\{itq\operatorname{Arg}a\}\,d\nu_h(a).
\]
The identification proves that this deletes precisely the current layer with its original multiplicities. Iterating recovers every signed zero after finitely many preceding layers, since only finitely many points have a greater height. All layer and measure definitions use rational samples and limits. The algorithm defines exact mathematical objects; no computable stopping error for the general input limits is claimed. In particular it does not require attainment of the supremum horizontal displacement used in the [fixed-width edge construction](XiHeatPrimeGridMoments.md).

## Joint normal generator and its self-adjoint projection

Define the Hilbert space using the extracted measures:
\[
 \mathcal K=\bigoplus_{h}\bigoplus_{j=1}^\infty
 L^2\!\left(\nu_h\big|_{\{a:w_h(a)\ge j^2\}}\right).
\]
On each summand let \(N\) multiply by
\[
 Z_h(a)=-i\left(-1+\sqrt{1+2(h+i q\operatorname{Arg}a)}\right),
\]
with principal square root, and take its maximal multiplication domain. Write \(H\) for multiplication by \(\Re Z_h\), and \(B\) for multiplication by \(-\Im Z_h\). These definitions use the sequence of arithmetic measures. Identification gives \(\sqrt{1+2F(s)}=1+s\), because \(\Re(1+s)>0\), hence \(Z_h=\gamma-id\). An atom of mass \(m_s^2\) appears in exactly \(m_s\) summands. This accounts for multiplicities which would otherwise be lost in a single cyclic representation.

Finite-support functions on the atoms are dense. Multiplication by a real function on its maximal square-integrability domain is self-adjoint, as follows by testing the adjoint identity on each atom. The same argument gives normality of \(N\), with adjoint multiplier \(\bar Z_h\). The self-adjoint \(B\) is bounded with norm \(D=\sup_s|d|\le1/2\), so \(N=H-iB\) on \(\mathcal D(H)\); spectral projections of \(H,B\) commute. The low zero-free gap gives bounded inverses of \(N,H\), and the zero count gives \(\sum_s m_s/\gamma^2<\infty\), hence both inverses are Hilbert–Schmidt. The Hilbert–Schmidt regularized product therefore converges locally uniformly. Pairing opposite spectral points cancels the linear regularizers, and the even Hadamard product for \(\xi(1/2+iz)\), normalized at zero, gives unconditionally
\[
 \det{}_2(I-zN^{-1})=\frac{\xi(1/2+iz)}{\xi(1/2)}.
\]
Indeed the two order-one Hadamard products have the same zeros with multiplicities, their exponential factors can differ only by \(e^{a+bz}\), and normalization and evenness make that factor one. The regularized determinant for \(H\) has only real zeros. Its equality to the displayed ξ ratio is equivalent to \(B=0\), hence to RH. This construction produces orthogonal spectral fibers for a normal generator, in contrast to the earlier [Taylor companion construction](XiTaylorFredholmLinearization.md); the [projection trace identity](XiProjectionTraceDefect.md) measures the change under real projection. [B. Simon, *Trace Ideals and Their Applications*, second edition, Chapter 9](https://doi.org/10.1090/surv/120)

## A nonnegative defect from three shifts

Let \(c_h=\cos(\sqrt{-2h}/q)\). Both \(\sqrt{-2h}/q\) and all absolute principal angles lie in \([0,\pi)\). Define
\[
 E_h=\frac{C_h(0)+\Re C_h(2)}2-2c_h\Re C_h(1)+c_h^2 C_h(0)
 =\int(\Re a-c_h)^2\,d\nu_h(a)\ge0 .
\]
Injectivity of the cosine on this interval shows that vanishing forces \(\omega^2=-2h\) at every atom. The precise algebraic identity
\[
 2h+\omega^2=d(2+d)(1+\gamma^2)
\]
shows that every point then has \(d=0\), and conversely. Thus the arithmetic scalar \(\sum_h e^h E_h\) vanishes exactly when RH holds. It converges: \(E_h\le 4\sum_{h_s=h}m_s^2\), and on each positive unit-height bin the sum of multiplicity squares is bounded by the square of the total count, \(O(\log^2(2+|\gamma|))\). Gaussian damping sums these bounds over both signs. Computing the shifts on finite initial layers cannot prove global vanishing. The inequality on the original prime data that would force this scalar to vanish is unresolved.

### Uniform calibration of the three-shift defect

Repeat the correlations with the half-sized step \(1/Q\), where \(Q=2q\) and \(q\) is the least integer selected above. Denote the resulting square by \(E_h^{(Q)}\), using \(c=\cos(\sqrt{-2h}/Q)\). Then, with **absolute constants independent of the height and the number of atoms**,
\[
 \frac1{100}\sum_{h_s=h}m_s^2d_s^2
 \ \le\ E_h^{(Q)}\ \le\ 9\sum_{h_s=h}m_s^2d_s^2.
\]
To verify this, put \(x=|\omega|/Q,\ y=\sqrt{-2h}/Q\); both lie in \([0,\pi/2]\). The cosine difference factors into twice the product of the sines of the half-sum and half-difference. The chord and tangent estimates \(2v/\pi\le\sin v\le v\) for \(0\le v\le\pi/2\) give
\[
 \frac{2}{\pi^2}|x^2-y^2|
 \le |\cos x-\cos y|\le\frac12|x^2-y^2|.
\]
The strip bounds imply \(\gamma^2\le 5/4-2h\le\gamma^2+2\). Since \(|\gamma|\ge14\), the least-integer rule gives \(3|\gamma|/8<q\le 2|\gamma|/3\): for the upper bound use \(\pi>3\) and \(\sqrt{\gamma^2+2}\le|\gamma|+1\). Hence \(9/16\le(1+\gamma^2)/Q^2\le2\). Substituting \(|x^2-y^2|=|d|(2+d)(1+\gamma^2)/Q^2\) gives \(|d|/10\le |\cos x-\cos y|\le3|d|\); squaring and summing proves the claim. In particular, three autocorrelations upper-bound each individual transverse displacement by \(10\sqrt{E_h^{(Q)}}/m_s\), without resolving neighboring frequencies on that layer.

There is an absolute finite upper bound for the weighted global scalar \(W=\sum_h e^h E_h^{(Q)}\) using the verified localization through \(T=3\cdot10^{12}\):
\[
 0\le W <144 \log^2(T+4)e^{-T^2/2}.
\]
Indeed lower ordinates contribute zero. On the signed bin \(T+j\le|\gamma|<T+j+1\), the sum of multiplicity squares is at most \(16\log^2(T+j+4)\) by the unit count, and \(d^2\le1/4\). Bound \(e^h\le e^{5/8-(T+j)^2/2}\), \(\log(T+j+4)\le(j+1)\log(T+4)\), and \(\sum_{j\ge0}(j+1)^2e^{-Tj}<2\). This upper enclosure allows arbitrarily small positive values. No gap principle for its arithmetic value has been established.

### Obstruction to a linear pointwise certificate

A real linear combination of the ray samples gives a holomorphic spectral filter \(\Phi(s)=\sum_t b_t e^{tF(s)}\); the same holds for infinite filters under local normal convergence. Suppose a proposed square-displacement majorant or minorant uses the symmetrized **linear** quartet response
\[
 J(d,\gamma)=\Re\{\Phi(d+i\gamma)+\Phi(-d+i\gamma)\}
\]
on a connected domain symmetric across the imaginary axis. If \(J(0,\gamma)=0\) on an interval, then \(J\) vanishes throughout that domain. Indeed \(\Phi(s)+\overline{\Phi(-\bar s)}\) is holomorphic and vanishes on that imaginary-axis interval, so the identity theorem applies. Consequently this class of linear filters cannot vanish for every possible real ordinate in an interval while supplying a strictly positive response to a symmetric off-line quartet anywhere in the same domain. The obstruction concerns pointwise certification on a continuum; the actual zero ordinates are discrete, and an arithmetic inequality can also exploit dependencies among different quartets. The quadratic products in the shift correlations escape this linear restriction.

## Finite prime reconstruction and alias control

The [interval fixture](../../../scripts/verify_xi_parabolic_prime_spectrum.py) evaluates the actual ray at \(t_1=3/8\) and \(t_2=7/16\). It sums prime powers through \(M=65536\). Put \(\tau=t/2,L=\log M,k=(L-t)/(2\tau)-1/2\). Use \(\Lambda(m)\le\log m\), both Gaussian signs bounded by the positive-center one for \(m>M\), and compare the decreasing majorant with its integral starting at \(M\). After \(u=\log x=L+v\), the integral is bounded by
\[
  \exp\{L/2-(L-t)^2/(4\tau)\}
  \int_0^\infty(L+v)e^{-kv}\,dv
  =\exp\{L/2-(L-t)^2/(4\tau)\}(L/k+1/k^2).
\]
The interval check \(k>1/L\) suffices for the monotonicity used above. Complex ball quadrature integrates the symmetric analytic digamma expression on the unit panels through \(Y=60\). Beyond \(Y\), the [digamma-series bound](XiCurvedWaveSampling.md) is \(7+17y^2\); the fixture verifies that its product with \(e^{-\tau y^2/2}\) decreases from a value below one. The remaining half-Gaussian integral costs at most \(e^{-\tau Y^2/2}/(\tau Y)\). The ray enclosures have centers \(5.97301288489809719\cdot10^{-17}\) and \(2.08166750045694448\cdot10^{-19}\), respectively.

Use the independent low-lying localization that the only distinct positive zero below 21 is on the critical line at some \(g\in[14,15]\). The [unit-height zero count](XiHeatPrimeCenterBounds.md) bounds the total multiplicity at \(21+j\le|\gamma|<22+j\) by \(4\log(25+j)\). Thus \(A(t)\) differs from \(2m e^{-tg^2/2}\cos(tg)\) by at most
\[
 4\log(25)\exp\{t(5/8-21^2/2)\}(1-e^{-21t})^{-2}.
\]
Here \(\log(25+j)\le(j+1)\log25\). After adding these divisor tails, the ratio of the two leading samples eliminates \(m\). The logarithmic derivative in \(g\) of the modeled ratio is
\[
 -(t_2-t_1)g-t_2\tan(t_2g)+t_1\tan(t_1g)<0
 \qquad(14\le g\le 15),
\]
verified on the entire interval by ball arithmetic, including positivity of both cosines. Two endpoint bisections give an enclosure of width below \(4.779\cdot10^{-19}\) about \(14.134725141734693790\), and the original amplitude confines the integer multiplicity to \(m=1\). A second prime pair at \(15/32,1/2\) narrows the first bracket to width below \(7.128\cdot10^{-24}\). Subtracting its interval amplitude at \(1/4,17/64\) recovers the second ordinate near \(21.02203964\) with bracket width below \(1.450\cdot10^{-8}\) and integer mass one. For this second step the coarse localization input says that the second zero lies on the line in \([21,22]\) and the third ordinate exceeds 25; the preceding remainder bound uses 25 in place of 21. Independently computed indexed FLINT enclosures lie inside both reconstructed intervals. This tests the prime-ray normalization quantitatively using a coarse external zero localization; it is a finite check of the reconstruction. [FLINT, rigorously indexed zero functions](https://flintlib.org/doc/acb_dirichlet.html)

For an adversarial finite divisor, choose the leading common height \(h=-18\pi^2\) and frequencies \(\pm6\pi\), \(\pm8\pi\), with multiplicities two and three respectively. The first conjugate pair lies on the line; the second comes from \(s=-1+\sqrt{1+2(h+8\pi i)}\), with \(0.3318<\Re s<0.3320\). Add the critical-line reflections of the off-line pair at the lower height \(h-2\Re s\) to complete the symmetric divisor. At integer times all leading phases agree and give squared amplitude 100. At the admissible mesh \(1/16\), one period recovers the four distinct weights \(2,3,3,2\), their squares sum to 26, and \(2.63603<E_h<2.63605\). On the doubled minimal mesh \(1/20\), the calibrated square interval contains \(1.398811349202698\) and the weighted squared displacement is \(1.982640941207055\) to the displayed precision. Positive masses therefore preserve the coarse root rate while alias removal is necessary for the claimed multiplicity and transverse tests.

The companion [Lean source](XiParabolicPrimeSpectrum.lean) covers the real and imaginary rate coordinates, strip injectivity, the unwrapping budgets, the displacement identity, a finite-character averaging bound, the three-correlation square, the uniform half-mesh cosine comparison, finite zero-defect characterization and the reciprocal projection defect. The full explicit-formula inversion, limiting measures, unbounded operators, regularized determinant and RH equivalence above are mathematical arguments in this manuscript. Independent external review of those arguments remains open.

Lean 4.34.1 and Mathlib revision `d13f23b723b8a846827a245b89c10fc7d3f11612` elaborated source blob `15edb2dee9c5f30f08a2d9d908c9acf2e0a5c5ce`. A fresh native kernel replay passed. The thirteen transitive public declaration audits reported only axioms among `propext`, `Classical.choice` and `Quot.sound`. The 256-bit python-flint 0.9.0 fixture passed at source blob `138b3bb704fc4e374e0485804c2559e6cf0ebf44`.
