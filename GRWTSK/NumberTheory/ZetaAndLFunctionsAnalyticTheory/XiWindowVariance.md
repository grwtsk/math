# Transverse second moment of the zeta divisor

For the moments \((n,p,q)\) of the [rational window criterion](XiLocalVarianceCriterion.md) define \(V(I)=q-p^2/n\) on a nonempty cell and set it to zero on an empty cell. At any real center \(c\),
\[
 q-2cp+c^2n=\sum m((\gamma-c)^2-\delta^2).
\]
At the minimizing center \(c=p/n\), adding back \(\sum m\delta^2\) gives the ordinary unnormalized variance of the heights. The midpoint of a cell of width \(h\) consequently gives
\[
 0\le V(I)+\sum_I m\delta^2\le nh^2/4 .
\]
Merging disjoint cells of positive counts \(a,b\) increases the sum of their energies by \(ab(\bar\gamma_1-\bar\gamma_2)^2/(a+b)\); empty children contribute zero. The algebra for `Moments`, `centered`, `determinant`, `energy`, `merge` and `stats` is formalized in `GRWTSK.XiWindowVariance`, particularly `complete_square`, `determinant_nonneg_iff`, `merge_energy`, `midpoint_square_le` and `stats_centered`. These are local elementary identities. [Lean source](XiWindowVariance.lean)

## A weighted quantity from contour data

Choose a rational cut in each interval \((j+1/4,j+3/4)\), \(j\in\mathbb Z\), whose vertical contour segment misses every zero. Such cuts can be found by dovetailing rational candidates and interval certificates of nonvanishing on their compact segments. There are finitely many obstructed heights in each band. Write \(J_j\) for the interval between consecutive cuts and fix \(w_j=(1+j^2)^{-1}\). Subdivide with zero-free cuts in the middle third of each cell. Thus the mesh tends uniformly to zero. Use the original weight of the band on every child. The zero-count estimate gives \(O(\log(2+|j|))\) zeros per band with multiplicity. Hence \(M=\sum_j w_j n(J_j)<\infty\). [Hasanalizade, Shen and Wong, Corollary 1.2](https://doi.org/10.1016/j.jnt.2021.06.032)

Put \(Q=\sum_j w_j\sum_{J_j}m\delta^2\). At every mesh \(h\) the weighted sum of cell energies satisfies
\[
 0\le \sum_{j,I\subset J_j}w_j V(I)+Q\le h^2M/4 .
\]
It decreases to \(-Q\) on nested partitions. In a fixed compact collection of bands the limit is already attained when every distinct height has its own cell. Globally, truncating the weighted mass beyond band \(B\) costs \(O(\log(2+B)/B)\). These bounds control approximation in absolute error. Vanishing of \(Q\) remains equivalent to RH because every weight and multiplicity is positive.

There is also an exact shift average at any fixed width \(h\). Translate the full grid of width \(h\) by \(u\in[0,h]\); intersect each grid cell with each band but use the *full grid cell midpoint* \(c\) in \(q-2cp+c^2 n\) on the intersection. Let \(S_h(u)\) be the weighted sum of these centered moments. For each height the displacement from its grid midpoint runs uniformly through \([-h/2,h/2]\). Termwise integration is justified by \((h^2+1)M/4\), since \(|\delta|\le1/2\). Boundary coincidences are confined to countably many phases. This gives
\[
 h^{-1}\int_0^h S_h(u)\,du=h^2 M/12-Q .
\]
For \(k\) equispaced shifts the error against the integral average is at most \(h^2M/(6k^2)\): summing \((\{x+j/k\}-1/2)^2\) and dividing by \(k\) gives \(1/12+k^{-2} B_2(\{kx\})\), by summing the arithmetic progression, where \(B_2(v)=v^2-v+1/6\). A half-open convention assigns each boundary fiber exactly once. This produces an exact analytic test with a known one-sided theoretical obstruction \(Q\).

## Which spectrum the construction recovers

In each band, allocate slots numbered from one to its zeroth contour count. Assign the slots to successive children in increasing order, using their contour counts. On each occupied cell use its first moment divided by count as the diagonal entry of every allocated slot. Averages belong to the closed cell by the residue identity. Nested cells of vanishing diameter make the entries uniformly Cauchy relative to any fixed stage, with error bounded by its mesh. This procedure specifies the slots and entries from analytic contour data. The limiting real diagonal entries \(t_k\) define a densely defined self-adjoint operator on \(\ell^2\) with maximal domain \(\{v:\sum_k t_k^2|v_k|^2<\infty\}\). Testing the adjoint against coordinate vectors gives that same domain. Each distinct height is eventually isolated locally and appears as many times as its full fiber count, including possible off-line partners. This is the projected operator already identified by the [finite contour construction](XiContourTraceForm.md).

There is no height zero since \(\zeta(s)\ne0\) on \(0<s<1\) by the alternating series. Local finiteness separates all heights from zero. The count per band gives \(\sum_k t_k^{-2}<\infty\), so the inverse is Hilbert–Schmidt. When \(Q=0\), the extracted heights are exactly the complex \(X\)-divisor including multiplicity. The order-one Hadamard product differs from \(\det_2(I-zA^{-1})\) by an exponential of a linear polynomial; normalization and evenness at zero fix this factor to one for \(X(z)/X(0)\). In the other direction, the regularized product has only real zeros, so the identity implies \(Q=0\). These manuscript statements specify what would complete the spectral argument. Proving \(Q=0\), and formalizing the contour and operator comparisons, remain open.

## Comparing determinants at a single imaginary argument

A one-sided determinant comparison already holds without RH. For each \(y>0\),
\[
 0< X(iy)/X(0)\ \le\ \det{}_2(I-iy A^{-1}).
\]
Equality for even one specified \(y>0\) implies the desired all-plane identity. Indeed choose the half of each pair of opposite nodes \(a=\gamma+i\delta,-a\) with \(\gamma>0\). The normalized Hadamard product of the even function is \(\prod_{\gamma>0}(1-z^2/a^2)^m\), absolutely convergent on compact sets after pairing; the possible linear exponential vanishes by evenness. The projected determinant has the same expression with \(a\) replaced by \(\gamma\). Each factor obeys
\[
 |1+y^2/a^2|\le1+y^2/|a|^2\le1+y^2/\gamma^2.
\]
The last comparison is strict whenever \(\delta\ne0\). All factors are nonzero, their log ratios are absolutely summable, and the conjugate factors make the left product positive. Thus there is no cancellation between defects. Taking \(y=1/2\), where \(X(i/2)=\xi(0)=1/2\), integration by parts against the zero count leads to the equivalent single real equality
\[
 2\int_0^\infty \frac{N(t)}{t(4t^2+1)}\,dt=\log\frac1{2\xi(1/2)} .
\]
The proven inequality has the integral on the larger side. Taking the quadratic term at zero instead gives an exact trace deficit
\[
 2\int_0^\infty\frac{N(t)}{t^3}\,dt+\frac{X''(0)}{2X(0)}
 =\sum_{\gamma>0} m\,
 \frac{\delta^2(3\gamma^2+\delta^2)}{\gamma^2(\gamma^2+\delta^2)^2}\ge0.
\]
Here \(N(t)\) counts positive heights with multiplicity and can be specified by the zeroth contour integral. The formula follows by subtracting \(\Re(1/a^2)\) from \(1/\gamma^2\) term by term. Both integrals converge by the count and the gap at zero. An upper bound of zero for the last left side would suffice. The comparisons and their equality cases are manuscript deductions, with no prior-art priority or independent formal verification claimed.

Native elaboration, fresh kernel replay and transitive axiom audits passed with Lean 4.34.1 and Mathlib d13f23b723b8a846827a245b89c10fc7d3f11612 for XiWindowVariance at 7f2a2ad90a40ec497f063af0598fd9713deea11c. Across the declarations the reported axioms were propext, Classical.choice and Quot.sound.
