# Disk counts and projected zeta heights

For a nontrivial zero \(\rho=\beta+i\gamma\), write \(g=|\gamma|\), \(d=\beta-1/2\), and \(b=|\rho-1/2|=\sqrt{g^2+d^2}\). Count with the positive analytic multiplicity of zeta. Let \(N_P(R)\) count \(g\le R\) and \(N_C(R)\) count \(b\le R\), with both signs of height. The formal result is
\[
 N_P(R)-N_C(R)=\sum_\rho m_\rho {\bf1}_{[g,b)}(R),\qquad
 (\forall R\in\mathbb Q,\ N_P(R)=N_C(R))\ \Longleftrightarrow\ \mathrm{RH}.
\]
Each summand counts a genuine zero. If its real part differs from one half, there is a rational strictly between its projected height and its radius. At that radius the excess is positive regardless of every other zero. The [Lean source](XiDiskCountCriterion.lean) proves `radius_sq`, `height_le_radius`, `radius_eq_height_iff`, `count_split`, `excess_pos_iff` and `rational_disk_counts_iff_RH` for its `radius`, `diskCount` and `excess` in namespace `GRWTSK.XiDiskCountCriterion`. The target is Mathlib's actual RH. The [canonical divisor](NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/CanonicalZeroDivisor.lean) supplies local finiteness and multiplicities.

Both counts have definitions without a supplied zero list. Use the argument principle on the boundary of the disk of radius \(R\) about \(1/2\) and the boundary of a rectangle containing the entire critical strip at heights between \(-R\) and \(R\). Take right limits in the radius for the closed-count convention. Over finite rectangles and disks this is a locally eventually constant limit. The [Jensen comparison](XiJensenDiskProjection.md) uses the arithmetic boundary values also when a circle meets the divisor.

## How frequently the counts can differ

Here count **only positive heights**, so both displayed counts in the first paragraph are halved. Associate each zero with its interval \([g,b)\), whose length is \(d^2/(b+g)\le d^2/(2g)\). At heights \(T<g\le 2T\) the sum of interval lengths, with multiplicity, is \(O(1/\log T)\). To prove this, put \(L=\log T\). The right-half zero-density estimate bounds the number with \(d>v\) by \(O(TL e^{-vL/4})\) for \(0\le v\le1/2\). Reflecting about one half, and integrating the tail count against \(4v\,dv\), yields \(\sum d^2\ll T/L\). Dividing by \(2T\) proves the assertion. The absolute implied constant is independent of \(T\). [Simonič, v2, discussion of Selberg's Theorem 1 and explicit Theorem 1](https://arxiv.org/pdf/1910.08274v2)

For explicit constants take \(T\ge3\cdot10^{12}\), \(a=0.331\), \(A=10395.2\), \(C=0.1\), \(B=1.104L^2+0.173L\log L+0.51L\), and \(u=\log(A/C)\). The number in the upper half of the critical strip at horizontal distance \(d>v\) in the dyadic height band is bounded by both \(CTL\) and \(ATL\exp(-\min(v,a)L/4)+B\). The second bound is Simonič's Theorem 1 and monotonicity past its stated range. For the first, the total count is bounded by \((T/6+2)L\le TL/5\), from the derivative and discrepancy bounds in the [sampling analysis](XiWindowSampling.md), and reflection gives at most half on the right. Integrating the lesser bound, extending the exponential envelope to infinity after adding its cutoff error and splitting at \(4u/L\), gives
\[
 \sum_{T<g\le2T}m(b-g)
 \ \le\ \frac{16C(u^2+2u+2)}{L}
       + AL(1/4-a^2)e^{-aL/4}+B/(4T).
\]
This bounds the intervals *originating* in the band. To bound the count excess integrated on \([T,2T]\), include intervals originating in \((T/2,T]\) as well. Smaller heights cannot reach \(T\), since \(|d|\le1/2\). Summing dyadically gives
\[
 \int_2^X [N_P^+(R)-N_C^+(R)]\,dR=O(1+\log\log X).
\]
In particular equality of the two integer counts holds off a set of this small total length, unconditionally. Sparse count agreement consequently gives little evidence about the first unmatched fiber. Full equality is the open sign comparison. The measure estimates are manuscript results.

## Finite boundary checks

The [verification fixture](../../../scripts/verify_xi_disk_counts.py) counts the winding of the exponential-scaled zeta function along a full-strip rectangle around a positive reference height. On each subdivided edge, a recentered Taylor expansion encloses the entire image in an open disk missing zero. The change in argument is then the principal argument of the ratio of true endpoint values. Adding these interval enclosures certifies a unique integer winding. All Taylor coefficients and the uniform analytic remainder come from the [earlier Cauchy bounds](XiContourTraceForm.md). On a proposed disk with real center \(x\), radius \(r\), coefficients \(a_j\) and uniform error bound \(E\), the strict inequality
\[
 |a_1|r>|a_0|+\sum_{j\ge2}|a_j|r^j+E
\]
certifies exactly one zero by Rouché. Conjugation symmetry of the xi divisor forces it to be real in the rotated coordinate, and count one implies simplicity. The fixture requires disjoint disks strictly inside the height window and exactly as many as the separately certified winding count. Real Newton steps only propose smaller disks. Rigorous checks certify all final disks. A pair of nonreal conjugate points cannot satisfy a single-root certificate in any real-centered disk containing one of them. [Becker, Sagraloff, Sharma and Yap, polynomial Pellet isolation and Newton refinement](https://arxiv.org/abs/1509.06231)

For the dyadic bands beginning at heights \(10^{100},10^{300},10^{1000}\), interval arithmetic bounds the total originating excess length by 1.104, 0.368 and 0.111 respectively. In the Lehmer unit window the fixture isolated both zeros using 21 winding segments. In the unit window centered at \(10^{15}+2\) it exhausted six simple critical-line zeros using 68 winding segments. The rightmost one has an offset in (0.49868008, 0.49868009). These finite computations count the complete local divisor inside the stated window only.

This Lean source elaborated on Lean 4.34.1 with Mathlib d13f23b723b8a846827a245b89c10fc7d3f11612: XiDiskCountCriterion at 66bde40dd17a47f1b6516668404e75308f3d5d7d. The transitive audit reported only axioms among propext, Classical.choice and Quot.sound. The source-bound fresh kernel results are tracked on [issue #1850](https://github.com/grwtsk/math/issues/1850).
