# Recovering prime powers from consecutive heat orders

Fix one real time \(t>0\), set \(s_n=\sqrt{n/t}\) for positive orders, and normalize the signed heat derivatives by
\[
 Y_n=\frac{2\pi(-1)^nH^{(n)}(t)}{s_n^{2n}e^{-n}\sqrt{\pi/(2t)}}-\log(s_n/(2\pi)).
\]
Put \(c_m=\Lambda(m)m^{-1/2}\exp(-\log^2m/(8t))\). The [explicit profile](XiGaussianPrimeProfile.md) gives \(Y_n=-2\sum_{m\ge2}c_m\cos(s_n\log m)+o(1)\). The series is absolutely convergent. In particular the arithmetic oscillation at a fixed time has the following invariants, using the ordinary average over consecutive derivative orders:
\[
 \lim_{N\to\infty}\frac1N\sum_{n=1}^{N}Y_n=0,\qquad
 \lim_{N\to\infty}\frac1N\sum_{n=1}^{N}Y_n^2=2\sum_{m\ge2}c_m^2.
\]
For every \(v>0\) the complex Fourier mean \(N^{-1}\sum_{n\le N}Y_n e^{iv s_n}\) tends to \(-c_m\) if \(v=\log m\) and to zero otherwise. This recovers the individual prime-power weights from the real derivative data.

Indeed the average of \(e^{ia\sqrt n}\) tends to zero for every fixed real \(a\ne0\). Compare the sum indexed from zero with \(\int_0^{\sqrt N}2u e^{iau}du\). On \([\sqrt j,\sqrt{j+1}]\) the measure \(2u\,du\) has mass one, and replacing the exponential by its left endpoint costs at most \(|a|(\sqrt{j+1}-\sqrt j)\). The accumulated error is at most \(|a|\sqrt N\). Integration by parts bounds the integral by \(2\sqrt N/|a|+4/a^2\). Division by \(N\) proves the claim. Expand each finite cosine product into exponentials, then let the truncation grow using absolute uniform convergence. [Real cell estimates, integral and telescoping sum in Lean](XiHeatPhaseSampling.lean)

One also gets the exact lower envelope \(\liminf Y_n=-2\sum c_m\). The lower bound is termwise. For any finite set of primes the phase vectors \((s_n\log p\bmod 2\pi)_p\) are equidistributed on their torus. The same exponential mean proves the Weyl criterion in every nonzero integer direction because unique factorization gives \(\sum k_p\log p\ne0\). Hence arbitrarily large orders approach phase zero simultaneously at the selected primes and all their finitely many retained powers. The uniform prime tail proves attainment in the limit. This also gives the limsup as \(-2\sum_p\min_\theta \sum_{j\ge1}c_{p^j}\cos(j\theta)\) by independent finite choices followed by absolute convergence. Thus cancellation in the oscillatory sum cannot uniformly improve its absolute worst negative value at arbitrary large saddle heights. The positive growing density still dominates for each fixed time. The prime extraction, torus assertion and moment limits are manuscript results. [Unconditional explicit formula used before sampling](https://www.math.bas.bg/mathmod/Proceedings_CTF/CTF-2023/files_CTF-2023/05-Carneiro-Milinovich.pdf)

Lean 4.34.1 and Mathlib d13f23b723b8a846827a245b89c10fc7d3f11612 elaborated this source at blob eb04aab8fc183b0d44a6a2c17cc1e007a1959f4b. A new empty kernel environment replayed the used declaration closure (6 roots, 40961 declarations). The transitive audits used only axioms among propext, Classical.choice and Quot.sound. Independent external review of the manuscript is outstanding. [Verification record](https://github.com/grwtsk/math/issues/1850)
