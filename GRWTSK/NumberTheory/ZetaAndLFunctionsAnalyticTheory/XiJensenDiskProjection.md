# An exact boundary-integral criterion for the actual completed xi

Set \(c=1/2\). Write \(g=|\Im\rho|\), \(b=|\rho-c|\) and \(m\) for analytic multiplicity. Define
\[
 P(R)=\sum_{g\le R}m\log(R/g)
      =\int_0^R N_P(t)\,dt/t,\qquad
 J(R)=\frac1{2\pi}\int_0^{2\pi}\log|\xi(c+Re^{i\theta})|\,d\theta-\log|\xi(c)|.
\]
The projected count includes positive and negative heights. The integral for \(P\) has no singularity at zero because the nontrivial divisor avoids a neighborhood of the real axis at bounded heights. Both sides can be specified using analytic values on boundaries. The second expression remains meaningful at a zero on the circle, by local integrability of its logarithm. The [Lean module](XiJensenDiskProjection.lean) proves \(J(R)\le P(R)\) for every real \(R>0\), and proves that equality at every positive rational radius is equivalent to Mathlib's RH.

The proof first identifies the center value as nonzero using the real-axis theorem. Mathlib's Jensen formula gives the sum of logarithms \(\sum_{b\le R}m\log(R/b)\). We restrict its divisor sum to the finite height head. Outside the closed disk the restricted divisor is zero. Inside, the [xi–zeta alignment](XiZetaDivisorAlignment.lean) identifies both support and full analytic order. Each circular term is bounded above by the corresponding projected term, because \(b\ge g\). In the converse proof a rational radius strictly between \(g\) and \(b\) gives a strictly positive projected term and zero circular term. All other differences are nonnegative. This argument uses the actual pole-cleared xi, its order at each nontrivial zero, and the pinned Mathlib circle-average theorem. [Mathlib Jensen formula at d13f23b](https://github.com/leanprover-community/mathlib4/blob/d13f23b723b8a846827a245b89c10fc7d3f11612/Mathlib/Analysis/Complex/JensenFormula.lean)

Namespace `GRWTSK.XiJensenDiskProjection` contains `center`, `center_nonzero`, `dist_center`, `projected`, `circleGrowth`, `circularTerm`, `circleGrowth_eq_sum`, `term_le`, `circleGrowth_le` and `rational_circle_averages_iff_RH`. The count integral representation for \(P\) follows separately by integrating the finitely many step functions.

## What equality at one radius certifies

For each \(R>0\), the difference is
\[
 P(R)-J(R)=\sum_{g<R} m\log\frac{\min(R,b)}{g}
           =\int_0^R [N_P(t)-N_C(t)]\,dt/t.
\]
This nondecreasing quantity is zero exactly when *all* zeros with \(g<R\) are on the critical line. The equality excludes the boundary fiber at \(g=R\). It tends by monotone convergence to \(\sum m\log(b/g)\), finite by \(\log(b/g)\le (\Re\rho-1/2)^2/(2g^2)\) and the zero count. A limit inferior of zero along any unbounded sequence of radii is therefore equivalent to RH. The zero-density estimate in the [disk comparison](XiDiskCountCriterion.md) bounds the remaining tail of the integrated count excess by \(O(1/(R\log R))\) as \(R\to\infty\), by summing weighted dyadic bands. These single-radius and tail conclusions follow from the displayed finite identity in the manuscript.

For a translated real-height center in the rotated coordinate use \(g=|\gamma-t|\), \(b=\sqrt{(\gamma-t)^2+d^2}\) and require that the center height is distinct from every enclosed height. The same comparison tests the entire interval \((t-R,t+R)\). Unlike simply comparing two integer counts at \(R\), a circle-average equality accumulates every inner radial discrepancy. A single nonreal conjugate pair with projected height \(g>0\) has equal counts at every radius exceeding \(b\), but its circle-average deficit there is the strictly positive constant \(2\log(b/g)\). Proving an upper bound of zero for the deficit of the actual zeta function, uniformly at unbounded radii, remains open.

## A positive trace-class comparison of two arithmetic operators

Use positive heights for this construction. Let \(g_j=\inf\{t:N_P^+(t)\ge j\}\) and \(b_j=\inf\{t:N_C^+(t)\ge j\}\), \(j=1,2,\ldots\). Both integer-valued counts are specified by boundary winding. Equivalently, the radial count away from cut radii is half the derivative of the xi circle mean with respect to \(\log R\), by the finite Jensen formula. The two sequences are sorted independently. Their index pairing need not coincide with the pairing of individual complex zeros. On \(\ell^2(\mathbb N_{>0})\) let \(A,B\) be the real diagonal operators with these entries, each on its maximal domain. Finite support is dense and coordinate-vector testing identifies their adjoints. The count inclusions give
\[
 g_j\le b_j\le\sqrt{g_j^2+1/4}.
\]
For the second bound, the first \(j\) projected occurrences all lie in that disk. Both inverses are Hilbert–Schmidt by the count bound. The two domains coincide, and \(K=BA^{-1}-I\) is a bounded positive trace-class operator since \(0\le b_j/g_j-1\le1/(8g_j^2)\). Its ordinary Fredholm determinant satisfies the unconditional identity
\[
 2\log\det(I+K)=2\sum_j\log(b_j/g_j)=\lim_{R\to\infty}[P(R)-J(R)].
\]
Indeed integrating the difference of the two independently sorted counting functions against \(dt/t\) gives the sum by Tonelli. This also proves equality with the earlier sum using the individual zero pairing. The determinant is at least one. It equals one precisely when RH holds. This is a determinant of the *relative* radial displacement; the exact all-plane xi identity for a self-adjoint Hilbert–Pólya operator still requires its vanishing displacement.

The unnormalized positive difference \(B-A\) extends to a compact diagonal operator. Its first \(n\) diagonal entries have sum at most \(O(1+\log\log(3+n))\): integrate \(\min(n,N_P^+)-\min(n,N_C^+)\) up to \(b_n\), bound it pointwise by the full count excess, and use the dyadic density estimate plus \(b_n=O(n)\) from the zero-count asymptotic. Its entries are individually bounded by \(1/(8g_j)\), giving membership in every Schatten class of exponent greater than one. These operator-ideal comparisons use analytic counting bounds outside the Lean module. The estimates alone allow a nonzero positive defect.

The [finite disk fixture](../../../scripts/verify_xi_disk_counts.py) also evaluates the actual translated circle mean in the Lehmer window, centered at rotated height 7005.08 with radius 0.05. On each of 32,768 equal angular arcs it bounds the Taylor polynomial's variation by its disk derivative bound times the arc half-length, and adds the uniform analytic remainder before taking the real logarithm. Subtracting the log modulus at the center removes the contribution of every holomorphic nonvanishing multiplier, so the normalized zeta mean here equals the normalized xi mean. The integral enclosure lies inside (1.958,1.962) and contains the projected sum 1.95941674277 to the displayed precision. Separate winding and single-root disks exhaust the two actual zeros and give the projected sum independently. Overlap of numerical intervals alone would leave exact equality undecided.

This Lean source elaborated on Lean 4.34.1 with Mathlib d13f23b723b8a846827a245b89c10fc7d3f11612: XiJensenDiskProjection at 97fe08a0faacefb4f22bbbe19341e8d861690f9e. The transitive audit reported only axioms among propext, Classical.choice and Quot.sound. The source-bound fresh kernel results are tracked on [issue #1850](https://github.com/grwtsk/math/issues/1850).
