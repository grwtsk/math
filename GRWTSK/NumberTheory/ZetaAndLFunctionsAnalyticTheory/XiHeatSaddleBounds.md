# A uniform derivative bound for the ξ heat trace

Let \(g=\Im\rho>0\), \(d=\Re\rho-1/2\), \(\lambda=(g+id)^2\), with the sum over distinct zeros and multiplicity \(m\) equal to the analytic order. Reflection at the line pairs the two choices of sign of \(d\), so the resulting heat trace is real. Set
\[
 H(t)=\sum_{\Im\rho>0}m e^{-t\lambda},\qquad t>0 .
\]
**Claim.** For every real \(t>0\) and every integer \(0\le n\le10^{21}\), one has \((-1)^n H^{(n)}(t)>0\). The proof uses a published finite-height zero theorem and ordinary zero counting. In particular it treats derivatives at all positive times, including times tending to zero with the order.

Suvrit Sra, *On some positivity properties of the Riemann \(\Xi\) function*, v3, 2 November 2026, Lemma 2.2, proves the cases \(H>0\) and \(-H'>0\) using verified low zeros and compares the argument with Polson. Proposition 2.3 gives the Bernstein representation below, and Proposition A.1 relates complete monotonicity to RH. Sra also proves finite Pólya-frequency orders for inverse-transform densities. Those orders concern minors of density kernels. The quantity bounded here is the derivative order of \(H\) itself. Our argument for large orders follows the moving maximum of the differentiated summands. Independent external review of this quantitative bound is outstanding. [Sra, v3](https://suvrit.github.io/papers/riem-xi/riem-xi-v3.pdf)

## Inputs and normalization

Fix \(T=3\cdot10^{12}\). Platt and Trudgian's finite computation puts every zero with \(0<g\le T\) on the line. The positive-ordinate reciprocal-square tail is less than \(1.480\cdot10^{-12}\). Also for every \(s\ge T/2\) there is a zero of some real part at an ordinate in \([s,s+20]\). Indeed the explicit zero count has main term \(v\log(v/(2\pi e))/(2\pi)+7/8\) and error bounded by \(0.28\log v\). The difference is at least \(20\log(s/(2\pi))/(2\pi)-0.28(2\log s+20/s)>67\). The lower bound increases for \(s\ge T/2\). Endpoint half weights, if used, preserve existence in the closed interval. Fix one real-line zero of ordinate \(a\in[T/2,T/2+20]\). We use the published finite computation without redoing it. [Platt and Trudgian, Theorem 1](https://arxiv.org/abs/2004.09765) · [Brent, Platt and Trudgian, Corollary 1](https://maths-people.anu.edu.au/brent/pd/rpb274-final.pdf) · [Explicit reciprocal-square estimate](XiSechProjectionTransport.md)

Gaussian decay and zero counting justify termwise differentiation at every fixed order, locally uniformly for \(\Re t>0\). A term of \((-1)^nH^{(n)}(t)\), divided by its order, is \(A\cos\phi\), where
\[
 A=(g^2+d^2)^n e^{-t(g^2-d^2)},\qquad
 \phi=2n\arctan(d/g)-2tgd .
\]
It suffices to work with \(0\le d\le1/2\) for the estimates. Put \(s=\sqrt{n/t}\) and \(W(v)=v^{2n}e^{-tv^2}\) for \(v>0\). For \(v=s>0\), or for \(s\le v\le g\), one has
\[
 \log(A/W(v))\le -t(g-v)^2+(n/g^2+t)d^2. \tag{1}
\]
Expand the log of the quotient of squared moduli as \(2\log(g/v)+\log(1+d^2/g^2)\); use \(\log r\le r-1\) and \(n(g/v-1)\le tv^2(g/v-1)\). At \(g\ge s>0\), the reverse bound \(\log(A/W(s))\ge-2t(g-s)^2\) follows from \(\log(1+y)\ge y-y^2/2\) for \(y\ge0\). The cancellation between the two terms of the phase gives
\[
 |\phi|\le t|g-s|(1+s/g)+n/(12g^3). \tag{2}
\]
Indeed \(0\le x-\arctan x\le x^3/3\) for \(x\ge0\), and \(|n/g-tg|=t|g-s|(1+s/g)\). These scalar estimates have direct Lean proofs. [Saddle estimates](XiHeatSaddleBounds.lean)

## When the maximum is below the verified half-height

If \(s<T/2\), the fixed real zero contributes at least \(W(a)\). A negative term requires \(g>T\). Since \(n/g\le tg\), both nonnegative angles \(2n\arctan(d/g)\) and \(2tgd\) are at most \(tg\). Thus \(\cos\phi<0\) requires \(tg>1\). Also \(a\le0.51g\) and \(n/g^2\le t\), so (1) gives \(\log(A/W(a))\le-tg^2/8\le-g/8\). For \(g\ge2048\), \(2g^2\le e^{g/8}\), by raising \(e^{g/32}\ge g/32\) to the fourth power. Hence every negative unit costs at most \(W(a)/g^2\). The entire negative mass is smaller than the retained positive contribution. This covers \(n=0\) at every time.

## When the maximum is at large height

Suppose \(s\ge T/2\), so \(1\le n\le10^{21}\) and \(t=n/s^2<1/2000\). Choose an actual zero with ordinate \(h\in[s,s+20]\). Its real part may lie off the line. The lower modulus bound and (2) show that its real contribution, in units of \(W(s)\), is at least
\[
 e^{-800t}\cos\bigl(40t+n/(12s^3)\bigr)>0.700 .
\]
The displayed numerical lower bound uses \(t\le10^{21}/(T/2)^2\), sharper than \(1/2000\).

For every negative term, \(g>T\) and (1) gives \(A/W(s)\le2e^{-t(g-s)^2}\). If \(g<s/2\), both nonnegative phase terms are at most \(n/g\), so negativity requires \(n>g\). Here \(t(g-s)^2\ge n/4\), and \(2g^2e^{-n/4}<1\). If \(g\ge s/2\), (2) implies \(3t|g-s|>1\) whenever the cosine is negative. Splitting the Gaussian into two equal factors and using \(g^2\le6s^2 e^{t(g-s)^2/2}\) yields
\[
 g^2 A/W(s)\le12s^2 e^{-1/(18t)}
 =12s^2 e^{-s^2/(18n)}<1.
\]
For the penultimate estimate use \(g^2\le2s^2+2(g-s)^2\), \(ts^2=n\ge1\), and \(1+y\le e^y\). For the last estimate substitute \(n=10^{21}\) and \(s=T/2\); \(s^2 e^{-s^2/(18\cdot10^{21})}\) decreases on this range. The resulting bound is below \(1.40\cdot10^{-29}\). The [Lean tail bounds](XiHeatTailAbsorption.lean) also give a purely rational/exponential proof of the weaker upper bound one. Summing the negative terms against the same reciprocal-square tail proves the claim. The signed estimates have no truncation in height.

## Arithmetic input and verification scope

The trace can be defined from the analytic function without giving any zero positions. Let \(B(w)=\log(\xi(1/2+\sqrt w)/\xi(1/2))\) for \(w>0\). By the even genus-zero product in \(w\), \(B'(w)=\sum m/(w+\lambda)=\int_0^\infty e^{-wt}H(t)\,dt\). Absolute interchange follows from \(\sum m/\Re\lambda<\infty\), using the actual low central gap and the reciprocal-square upper tail. The Laplace transform determines \(H\) uniquely among locally integrable functions of this growth. Equivalently, Post–Widder inversion takes derivatives of \(B'\) at real arguments \(j/t\) tending to infinity. There the Euler series and the gamma factor supply the analytic inputs. This identification uses the full pole-cleared ξ, including multiplicities. [Sra, Lemma 2.1 and Proposition 2.3](https://suvrit.github.io/papers/riem-xi/riem-xi-v3.pdf)

The interval fixture encloses the constants used above, computes inverse-power traces from the actual central ξ Taylor series, and tests the all-order failure on a separate finite real-even product. The finite-height theorem, infinite-series differentiation, extraction of the selected zero and assembly of the \(10^{21}\)-order theorem are manuscript steps. The supporting scalar bounds and moment algebra have independent Lean checks. [Arithmetic fixture](../../../scripts/verify_xi_heat_saddle.py) · [Moment consequences](XiGammaMomentCalibration.md)

Lean 4.34.1 and Mathlib d13f23b723b8a846827a245b89c10fc7d3f11612 elaborated this source at blob 28e632d60b6d06d5eee692cfe1df76af76b38811. A new empty kernel environment replayed the used declaration closure (6 roots, 27817 declarations). The transitive audits used only axioms among propext, Classical.choice and Quot.sound. Independent external review of the manuscript is outstanding. [Verification record](https://github.com/grwtsk/math/issues/1850)
