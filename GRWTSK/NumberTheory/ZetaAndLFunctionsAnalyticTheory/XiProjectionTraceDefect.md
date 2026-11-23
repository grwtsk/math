# Inverse trace moments and the first off-line height

Let \(X(z)=\xi(1/2+iz)\), \(a=\gamma+i(1/2-\beta)\), \(g=\gamma>0\), \(d=1/2-\beta\). In the analytic formulas below choose only the positive heights. The [contour operator](XiWindowVariance.md) supplies the projected heights, counted with the original multiplicities. Define for real \(p>0\)
\[
 D(p)=\sum_{g>0}m\{g^{-p}-\Re(a^{-p})\},
\]
using the logarithm on the right half-plane. Each difference is nonnegative by \(\Re(a^{-p})\le |a|^{-p}\le g^{-p}\), with strict inequality for every off-axis zero. Thus a single zero upper bound for any \(D(p)\) would suffice.

At \(p=2\) the individual difference is
\[
 \frac{d^2(3g^2+d^2)}{g^2(g^2+d^2)^2}\le\frac{3d^2}{g^4}.
\]
The [Lean module](XiProjectionTraceDefect.lean) proves this identity, nonnegativity, strictness and the upper bound for nonzero signed \(g\). Its `total_zero_iff_RH` takes the extended nonnegative sum of these nonnegative terms over **both** height signs on the actual Mathlib zeta divisor and proves its vanishing equivalent to RH. The use of an extended nonnegative sum preserves positivity before adding summability. For the genuine divisor the analytic bounds below prove finiteness, and the formal total is twice \(D(2)\). In namespace `GRWTSK.XiProjectionTraceDefect` the declarations are `defect`, `explicit_defect`, `defect_nonneg`, `defect_pos`, `defect_upper`, `weighted`, `total` and `total_zero_iff_RH`. The integral representation and general-order assertions here are manuscript results.

## Two independent specifications of the moments

For \(p=2n\), \(n\ge1\), the projected moment is \(2n\int_0^\infty N_P^+(t)t^{-2n-1}dt\), with the count obtained from winding on rectangles. The real part of the complex moment is the negative of \(n[z^{2n}]\log(X(z)/X(0))\), by the paired order-one Hadamard product. Therefore \(D(2n)\) can be specified by a single counting integral and an ordinary Taylor coefficient, without prescribing the spectrum of a new operator. It is also the coefficient of \(z^{2n}/n\) in the difference of the normalized logarithms of xi and the projected determinant. For comparison with the literature, Voros studies the secondary zeta functions of the complex divisor. The subtraction of the projected counting measure is essential here. [Voros, Annales de l'Institut Fourier 53 (2003), 665–699](https://doi.org/10.5802/aif.1955)

For a uniform error, put \(T=3\cdot10^{12}\). Every summand with \(g\le T\) vanishes by Platt and Trudgian. Taylor's theorem on real \(v=d/g\) for \(\Re(1+iv)^{-p}\) has zero linear term and second derivative bounded in absolute value by \(p(p+1)\). Thus each remaining summand is at most \(mp(p+1)d^2/(2g^{p+2})\). The zero count \(N_P^+(u)\le u\log(u)/5\) for \(u\ge T\) follows from the explicit count estimate. By integration by parts, dropping the negative lower boundary term,
\[
 0\le D(p)\le \frac{p(p+2)}{40 T^{p+1}}\left(\log T+\frac1{p+1}\right).
\]
At \(p=2\) this recovers the bound \(2.153\cdot10^{-37}\). The explicit positive bound for each higher moment still allows a sufficiently high or narrow off-axis pair. [Platt and Trudgian, 2021](https://arxiv.org/abs/2004.09765) · [Hasanalizade, Shen and Wong, Corollary 1.2](https://doi.org/10.1016/j.jnt.2021.06.032)

Suppose at least one off-axis zero exists. Let \(G\) be the least positive height with one and let \(M\) be the sum of **off-axis** multiplicities there. Local finiteness gives a gap to the next such height \(G_2\), if any. At the first fiber \(G^p D(p)\) has contribution \(M+O(\lambda^p)\), since each off-axis \(G/|a|\) is strictly below one. The remaining terms are bounded for \(p\ge2\) by \(2(G/G_2)^{p-2}G^2\sum_{g\ge G_2}m/g^2\). Take \(\lambda<1\) to be the larger of these finitely many first-fiber ratios and \(G/G_2\), omitting a missing tail. In particular
\[
 G=\lim_{n\to\infty}\sqrt{D(2n)/D(2n+2)},\qquad
 M=\lim_{n\to\infty}G^{2n}D(2n).
\]
Real zeros at exactly \(G\) cancel. Thus the arithmetic coefficient sequence sees the first obstructing height and its multiplicity with geometric convergence whenever an obstruction exists. The convergence constant depends on its geometry. It can be arbitrarily close to one even for a single conjugate pair.

## Continuation past absolute convergence of the individual traces

Use the symmetric summand \(g^{-s}-(a^{-s}+\bar a^{-s})/2\) for complex \(s\). On compact sets of \(\Re s>-1\), Taylor expansion along the segment \(g+itd\), \(-1\le t\le1\), bounds its modulus by \(C|s(s+1)|d^2 g^{-\Re s-2}\). The linear terms cancel. The count bound gives local uniform convergence, so this defines a holomorphic relative trace on the full half-plane. Differentiation at zero gives \(D'(0)=\sum_{g>0}m\log(|a|/g)\), half the limiting [Jensen deficit](XiJensenDiskProjection.md).

For real \(-1<s<0\), let \(q=-s\). The derivative of \(\Re(1+iv)^q\) on \(v>0\) is \(q(1+v^2)^{(q-1)/2}\sin((1-q)\arctan v)>0\). Consequently the relative trace is nonpositive in this interval and is strictly negative if an off-axis zero exists. At the left endpoint the improved [dyadic transverse-square estimate](XiDiskCountCriterion.md) gives \(\sum_{T<g\le2T}m d^2\ll T/\log T\). With \(s=-1+\epsilon\), \(0<\epsilon<1/2\), the tail bound is \(O(\epsilon\sum_{k\ge1}2^{-k\epsilon}/k)=O(\epsilon\log(2/\epsilon))\), and finite initial terms are \(O(\epsilon)\). Hence \(D(-1+)=D(0)=0\) unconditionally. Those two endpoint values cannot force vanishing in the interior. A single symmetric nonreal pair supplies an explicit counterexample to that inference.

This Lean source elaborated on Lean 4.34.1 with Mathlib d13f23b723b8a846827a245b89c10fc7d3f11612: XiProjectionTraceDefect at 265b0420ad46bbc3207a1f1e8f1fc308de35d413. The transitive audit reported only axioms among propext, Classical.choice and Quot.sound. The source-bound fresh kernel results are tracked on [issue #1850](https://github.com/grwtsk/math/issues/1850).
