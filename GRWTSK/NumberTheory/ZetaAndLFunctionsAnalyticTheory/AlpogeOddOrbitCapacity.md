# Exact local gain on an odd Frobenius orbit

Let \(r\ge3\) be odd, \(p>1\), and \(d_s\ge0\) on \(\mathbb Z/r\). The archive maximizes the sum of flows \(x_{s,i}\ge0\) over odd lengths \(1\le i<r\). An edge uses \(p^ix_{s,i}\) at its origin and \(x_{s,i}\) at its endpoint. Write \(V\) for that maximum, \(W=\sum_s d_s\), and \(F=pW/(p^2-1)-V\). For each site set
\[
 L_s=\sum_{\substack{0<j<r\\j\ {\rm odd}}}p^j d_{s+j}
       +\sum_{\substack{0<j<r\\j\ {\rm even}}}p^{j-r} d_{s+j}.
\]
Let \(y\) be the unique solution of \(py_s+y_{s-1}=d_s\). The exact answer is
\[
 F=\frac{W}{p^2-1}+(p-1)\sum_s(-y_s)_+
       +\frac{\sum_s(d_s-L_s)_+}{p^r+1}.                              \tag{1}
\]
The last numerator has at most one positive summand: the coefficients of \(d_t\) in \(L_s\) and \(d_s\) in \(L_t\) are reciprocal. This identifies precisely the information lost by allowing the forbidden full-period edge on a double cover. The previous bound \(W/(p^r+1)\) is sharp at a single occupied site. [Source LP, lines 51–59](https://github.com/leanprover-community/riemann-hypothesis/blob/40e56bab026552e089d7afcfeff08d2defb9c005/src/Formalism/LocalRingCardinality/DataParams₂.lean#L51-L59) · [Double-cover estimate and three-place approximation](AlpogeFrobeniusStencil.md)

## A site with surplus capacity

Take a site with \(d_s>L_s\), and rotate it to 0. Send \(d_j\) along \(0\to j\) for odd \(j\); for positive even \(j\) send \(p^{j-r}d_j\) along \(j\to0\). This saturates every site except 0, where the unused capacity is \(d_0-L_0\). A dual certificate prices site 0 at zero, odd \(j\) at one and other even \(j\) at \(p^{j-r}\). Every edge starting at an odd site is covered by its origin. An edge starting at 0 ends at an odd site; from a positive even \(j\) it either ends at an odd site without wrapping, or has length at least \(r-j\) and is covered by the origin. All used edges have cost exactly one. The flow is optimal.

On the \(2r\)-cover, repeat this flow and use a length-\(r\) edge from each copy of 0 to the other with amount \((d_0-L_0)/(p^r+1)\). This attains the unrestricted doubled optimum. Here is a direct verification. Inverse load coordinates of an odd edge of length \(i\) starting at \(s\) are the alternating string with entries \((-1)^j p^{i-1-j}\), \(0\le j<i\), from \(s\). Multiplying by \(pI+S\) telescopes to the edge load. On each sheet the above strings start at an even site and end at an even site before the next sheet; their negative entries can occur only at the odd sites. The positive amount of the full-period string fixes all signs strictly. Consequently the negative masses add. Their sum per unit flow on a length-\(i\) edge is \((p^i-p)/(p^2-1)\). Full saturation gives \(W-(p+1)V_*=(p^2-1)\sum(-y_s)_+\), where \(V_*\) is this flow per sheet. This is precisely the saturated bound for the even cover. Subtracting the value of the removed length-\(r\) flow establishes (1). [Even-period upper bound and alternate dual proof](AlpogeOrbitFlowClosedForm.md)

## All remaining capacities

Suppose \(d_s\le L_s\) everywhere. There are two consecutive nonnegative \(y_s\): a negative site has two strictly positive neighbors by the recurrence, and a strictly alternating cycle cannot have odd length. Cut between consecutive nonnegative sites and number the resulting path from 0 to \(r-1\). Write \(a_j=p^jy_j\). In the interior \(a_{j-1}+a_j\ge0\). Split into maximal alternating stretches at consecutive nonnegative sites, allowing isolated nonnegative sites. Each stretch starts and ends nonnegative. Zero sites carry no flow. Every interior negative height has absolute value at most either neighboring positive height.

Represent these heights by nonnegative amounts of alternating intervals that start and end on positive sites. At a positive site of height \(B\), let \(C_-\) and \(C_+\) be the absolute heights of its negative neighbors inside the stretch, with zero outside. An amount \(C_-\) arrives in intervals and \(C_+\) must continue. End the oldest intervals first, in total amount \(u=\min(C_-,B-C_+)\). Start \(C_+-C_-+u\) continuing intervals and add singleton intervals of mass \(B-C_+-u\). All amounts are nonnegative. This accounts for the exact signed heights by induction, and each interval ending at \(j\) with mass \(t\) gives flow \(t/p^j\) on its odd edge. The inverse columns agree in sign with \(y\).

The only inadmissible interval could have length \(r\), requiring one stretch occupying the whole path with even sites positive. Put \(m=(r-1)/2\), \(B_i=a_{2i}\), \(C_i=-a_{2i+1}\). Of the \(C_0\) mass continuing from the first positive site, the amount still present at the final site is
\[
 \left(C_0-\sum_{i=1}^{m-1}(B_i-C_i)\right)_+
 =\left(-\sum_{j=1}^{r-2}p^jy_j\right)_+ .
\]
Indeed at each interior site the oldest surviving part is reduced by the smaller of its amount and \(B_i-C_i\). Substitution of \(d_j=py_j+y_{j-1}\), with the cyclic convention, gives
\[
 d_0-L_0=-\frac{p^r+1}{p^{r-1}}\sum_{j=1}^{r-2}p^j y_j .
\]
The endpoints cancel and each interior coefficient follows by collecting its two occurrences. Since \(d_0\le L_0\), the inadmissible mass vanishes. Thus every constructed interval is a source edge, all capacities are saturated, and the signed-mass calculation gives exactly the optimum of the doubled problem. This proves (1), including all chamber walls.

## Return to the prime sum

On the archive's actual \(\mathrm{IsCs}\) branch \(r=\operatorname{ord}(h_P)>1\) is odd. Assume nonnegative \(w\) and \(k\ge1\); on the archived size range the first follows from \(\mathrm{SizesAt}(L)\) and \(j\in\mathrm{lifts}(D)\), and the construction has \(k\ge3\). For each such lift \(j\) and place \(z\), use \(d_s=(k-1)\mathrm{wPl}(D,j,\mathrm{posPl}(D,p,z,s))\). The permutation on this inert branch is \(g(b,t)=(b,t+h_P)\), since the signal predicate is false. The set \(U=\mathrm{kindBC}(D,p)\) is invariant under the place permutation \(g\). For \(w=\mathrm{wPl}(D,j,\cdot)\), write \(L(w)_z\) using \(g^jz\) in place of cyclic offsets and \(pY+Y\circ g^{-1}=w\). Rotation invariance cancels the denominator \(r\) of the original orbit average. Its value is
\[
 (k-1)\left[\frac{\sum_U w}{p^2-1}+(p-1)\sum_U(-Y)_+
        +\frac{\sum_U(w-L(w))_+}{p^r+1}\right].
\]
Inserting this equality in \(\mathrm{lowCs}\) retains the three losses \((k-1)\sum_U w/p^3,\ 8\sum_U w/p,\ 3fN_m^2\log_p a\). This evaluates the scalar for its varying actual weights, in particular at \(p\ge5,\ p\le X^{\prime\prime}(n),\ j=i+1,\ i<m\) in the scaled-generator consumer. The integral generators and global valuations still require their geometric hypotheses. For common \(p,g\), the precise loss on averaging the last term follows by applying the finite positive-part cancellation identity to the linear quantities \(d_s-L_s\), in addition to the existing loss for the inverse coordinates. [Nonnegative weights from the archive size hypotheses](https://github.com/leanprover-community/riemann-hypothesis/blob/40e56bab026552e089d7afcfeff08d2defb9c005/src/Development/AbelianVarietyTheory/Proofs/DivisorProofs/OtherLossSum.lean#L115-L117) · [Actual place action](https://github.com/leanprover-community/riemann-hypothesis/blob/40e56bab026552e089d7afcfeff08d2defb9c005/src/Formalism/LocalRingCardinality/DataForced.lean#L17-L23) · [IsCs and period, lines 100–164](https://github.com/leanprover-community/riemann-hypothesis/blob/40e56bab026552e089d7afcfeff08d2defb9c005/src/Formalism/SharpRestriction/GrowthBounds/IsResidueClassZero.lean#L100-L164) · [Orbit average and actual lowCs consumer](https://github.com/leanprover-community/riemann-hypothesis/blob/40e56bab026552e089d7afcfeff08d2defb9c005/src/Formalism/SharpRestriction/Divisibility/OrbitPlaces.lean#L374-L382) · [Aggregation identity](AlpogeTwoSiteFlow.lean)

For \(r=3\) every legal edge has length one. The [Lean proof](AlpogeOddOrbitCapacity.lean) gives the complete real supremum as the minimum of \(W/(p+1)\) and the three rotations of \(b+c/p\) at demands \((a,b,c)\). It constructs either the saturated inverse solution or the incident flow. The [exact verifier](../../../scripts/verify_alpoge_odd_orbit_capacity.py) constructs both primal flows and dual prices for general odd periods and verifies the raw source constraints and equality of objectives before checking (1). The [alternating-path lemmas](AlpogeOddAlternatingPath.lean) prove the remaining oldest mass, the telescoping identity in scaled coordinates and exclusion of two surplus centers. The all-period formula and its archive instantiation are manuscript results. External independent review is unrecorded.

At the following source blobs the public declarations passed native compilation, fresh kernel replay and transitive axiom auditing with Lean 4.34.1 and Mathlib d13f23b723b8a846827a245b89c10fc7d3f11612. The only axioms reported across these declarations were propext, Classical.choice and Quot.sound. AlpogeOddOrbitCapacity at 114474be50254977b10f3c4fe3544ab9f1db1621, AlpogeOddAlternatingPath at 8aee73145de182e5c33a54e257153cd789dde856.
