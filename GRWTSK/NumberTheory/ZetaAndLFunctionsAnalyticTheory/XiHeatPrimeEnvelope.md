# Unbounded derivative orders for the real ξ heat trace

For the arithmetic heat trace \(H\) recovered from the Laplace transform of \(d\log\xi(1/2+\sqrt w)/dw\), put \(H_n(t)=(-1)^nH^{(n)}(t)\). **Every order is strictly positive throughout \(0<t\le169/100\). For every fixed \(t>0\), all sufficiently large orders are strictly positive.** Both statements use the actual zero divisor with its analytic multiplicities. More explicitly, for \(n\ge1\) and \(s=\sqrt{n/t}\ge3\), a sufficient condition independent of finite zero verification is
\[
               \log s>4000(1+t)e^{t/2}.
\]
Consequently, if \(n\to\infty\) along negative samples, then \(t\to\infty\). If their saddle heights also escape to infinity, they satisfy \(t\ge (2-o(1))\log\log s\). The quantifiers leave a joint large-order, large-time obstruction. [Arithmetic definition and finite-order theorem](XiHeatSaddleBounds.md) · [Sra, v3, Lemma 2.2 and Proposition A.1](https://suvrit.github.io/papers/riem-xi/riem-xi-v3.pdf)

## Exact arithmetic formula

Write \(h(u)=u^{2n}e^{-tu^2}\), \(W=s^{2n}e^{-n}\), and \(D(u)=\Re\psi(1/4+iu/2)-\log\pi\). Use the angular Fourier transform \(\widehat h(v)=\int_{\mathbb R}h(u)e^{-ivu}du\). Halving the even Guinand–Weil explicit formula gives
\[
 H_n(t)=h(i/2)+\frac{1}{4\pi}\int_{\mathbb R}h(u)D(u)du
       -\frac{1}{2\pi}\sum_{m\ge2}\frac{\Lambda(m)}{\sqrt m}\widehat h(\log m). \tag{1}
\]
The test is entire and rapidly decreasing on every horizontal strip. On the divisor its argument is \((\rho-1/2)/i\), which retains the real displacement of each zero. Reflection and conjugation justify halving the sum. No prime-to-zero sign assumption enters (1). [Carneiro and Milinovich, Lemma 2.2](https://www.math.bas.bg/mathmod/Proceedings_CTF/CTF-2023/files_CTF-2023/05-Carneiro-Milinovich.pdf)

The digamma series gives \(D(u)\ge-7\) everywhere. Indeed its real part increases with \(|u|\), and the recurrence at \(1/4\) gives \(\psi(1/4)=\psi(5/4)-4\ge-\gamma-4\). For \(u\ne0\),
\[
 D(u)\ge\log(|u|/(2\pi))-\pi/|u|.
\]
Compare the partial sums of \(1/(j+z)\) with their integrals on \([j,j+1]\). The sum of differences in modulus is at most \(\int_0^\infty |x+z|^{-2}dx\le\pi/(2|\Im z|)\). Taking the digamma limit yields \(|\psi(z)-\log z|\le\pi/(2|\Im z|)\) for \(\Re z>0\). [Digamma series, DLMF 5.7.6](https://dlmf.nist.gov/5.7.E6)

## Uniform estimate on a moving strip

For a contour shift of size \(0<b\le1\), let \(v=(u^2+b^2)^{1/2}\). The inequality \(\log(v/s)\le v/s-1\) gives
\[
 |h(u-ib)|/W\le e^{2tb^2}e^{-t(v-s)^2}. \tag{2}
\]
On \(u\ge b\), one has \(du/dv\le\sqrt2\). On \(0\le u\le b\) one has \(v\le s/2\) for \(s\ge3\), and \(b\sqrt t\exp(-ts^2/4)\le1\), since \(b\le s/2\). Reflecting gives the Fourier bound
\[
 |\widehat h(v)|\sqrt t/W\le 2(1+\sqrt{2\pi})e^{2tb^2-bv}\quad (v\ge0).
\]
Use \(b=1/2+1/(2(1+t))\), so \(2tb^2\le t/2+1\). Write \(\delta=b-1/2\). The elementary Chebyshev bound \(\sum_{m\le x}\Lambda(m)\le4x\) follows at integer powers of two from \(\psi(2k)-\psi(k)\le\log{2k\choose k}\le2k\log2\) and then by monotonicity. Partial summation gives \(\sum\Lambda(m)m^{-1-\delta}\le4(1+\delta)/\delta\le12(1+t)\). Thus the prime contribution to \(4\pi\sqrt t H_n/W\) has modulus below \(460(1+t)e^{t/2}\).

On the real axis \(h(u)/W\le e^{-t(|u|-s)^2}\), and on \(s\le u\le s+t^{-1/2}\) it is at least \(e^{-2}>1/8\), by the lower real saddle estimate. Integrate \(D+7\ge0\) on both selected intervals and subtract at most \(14\sqrt\pi\) in normalized units. There \(D+7\ge\log s\) by the digamma estimate at \(s\ge3\). Hence the archimedean contribution exceeds \((\log s)/4-25\). The pole costs at most \(4\pi\), since \(|h(i/2)|/W=(e/(4s^2))^n e^{t/4}\le e^{-n}\) at \(t=n/s^2,s\ge3\), and \(\sqrt t e^{-n}\le1\). These bounds prove the explicit condition and the stated escape estimate. [Real and complex strip inequalities](XiHeatPrimeEnvelope.lean)

## Closing all orders on the stated time interval

For \(n\le10^{21}\) use the [finite-order theorem](XiHeatSaddleBounds.md). For \(s<T/2\), with \(T=3\cdot10^{12}\), its small-saddle proof works at every order. That proof needs only \(s<T/2\), a known real zero in \([T/2,T/2+20]\) and the reciprocal-square tail. It remains to take \(n>10^{21},s\ge T/2,0<t\le1.69\). Put \(L=\sqrt{\pi/(2t)}\). The [two-saddle estimate](XiGaussianPrimeProfile.md) gives the lower bound
\[
 \frac{2\pi H_n}{LW}\ge
 (1-10^{-6})\log(s/(2\pi))-0.001
       -2\sum_{m\ge2}\frac{\Lambda(m)}{\sqrt m}e^{-(\log m)^2/(8t)} .
\]
The sum increases with \(t\). The interval fixture enumerates every prime power through one million. Above \(M=10^6\), dominate by \(\log m\) and integrate the positive decreasing summand. With \(a=\log M,\ k=a/(4t)-1/2>0\), concavity of \(u/2-u^2/(8t)\) gives the upper tail \(2e^{a/2-a^2/(8t)}(a/k+1/k^2)\). At the endpoint the double prime sum is below 26.070664, whereas \(\log(T/(4\pi))>26.198609\). The lower margin exceeds 0.1269. At \(t=1.70\) the partial prime sum alone exceeds 26.2954. This identifies a quantitative limitation of this absolute-value test at the chosen half-height. The proof reuses the published Platt–Trudgian finite-height theorem. The global derivative assertion, explicit formula application and zero-sum assembly remain manuscript mathematics. [Arithmetic fixture](../../../scripts/verify_xi_heat_prime_profile.py) · [Platt and Trudgian](https://arxiv.org/abs/2004.09765)

Lean 4.34.1 and Mathlib d13f23b723b8a846827a245b89c10fc7d3f11612 elaborated this source at blob 44325681df38f09acc1f230f69c87d4c7b1fa39c. A new empty kernel environment replayed the used declaration closure (5 roots, 15971 declarations). The transitive audits used only axioms among propext, Classical.choice and Quot.sound. Independent external review of the manuscript is outstanding. [Verification record](https://github.com/grwtsk/math/issues/1850)
