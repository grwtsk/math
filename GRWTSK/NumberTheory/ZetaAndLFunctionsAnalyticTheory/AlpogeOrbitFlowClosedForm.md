# The exact gain at every demand on an even Frobenius orbit

Take a real \(p>1\), an even \(r\ge2\), and nonnegative real demands \(D_s\) on \(\mathbb Z/r\). At the source primes \(p\ge3\), let \(V(D)\) be the largest sum of the nonnegative flows \(x_{s,i}\) on all odd edges \(1\le i<r\). Edge \((s,i)\) consumes \(p^ix_{s,i}\) at \(s\) and \(x_{s,i}\) at \(s+i\). Let \(S e_s=e_{s+1}\) on coordinate vectors, \(A=pI+S\), and put
\[
 y=A^{-1}D,\qquad y_s=\frac{\sum_{j=0}^{r-1}(-1)^j p^{r-1-j}D_{s-j}}{p^r-1}.
\]
Multiplying the alternating sum by \(A\) proves the inverse formula. With \(u_+=\max(u,0)\), the full answer is
\[
 \boxed{\quad V(D)=\frac{\sum D}{p+1}-(p-1)\sum_s(-y_s)_+,\qquad
 F(D)=\frac{\sum D}{p^2-1}+(p-1)\sum_s(-y_s)_+.\quad}                 \tag{1}
\]
Here \(F=p\sum D/(p^2-1)-V\) is precisely the source objective. Restricting the infinite array of the formal definition to the finite odd edges and extending by zero identifies the two sets of attainable values. Nonnegative entries at other indices in the upstream incoming-bounds definition do not contribute. The inequality for the marked rows is a separate term. [Alpöge archive, exact flow, objective and dual, lines 7–44](https://github.com/leanprover-community/riemann-hypothesis/blob/40e56bab026552e089d7afcfeff08d2defb9c005/src/Formalism/IncomingBounds/IncomingBound.lean#L7-L44) · [Rubinstein working draft, 21 November 2026, III.94–III.97](https://www.math.uwaterloo.ca/~mrubinst/alpoge_claude_grh/zeta-paper.pdf)

## A dual optimizer from the signs alone

Put \(c_s=1\) for \(y_s<0\), and \(c_s=0\) otherwise. Define \(q=A^{-t}(\mathbf1+(p-1)c)\); then \(p q_s+q_{s+1}=1+(p-1)c_s\). In particular \(0\le q_s\le1\). To see this, the recurrence backwards is \(q_s=(1+(p-1)c_s-q_{s+1})/p\). Each map preserves \([0,1]\) and has Lipschitz constant \(1/p\); composing round the cycle and taking its unique fixed point proves the assertion. On an edge of length one the dual cost is between 1 and \(p\). If the cost \(p^i q_s+q_v\) is at least one with \(v=s+i\), then
\[
 p^{i+2}q_s+q_{v+2}
 =p^2(p^i q_s+q_v)-p(pq_v+q_{v+1})+(pq_{v+1}+q_{v+2})\ge1 .
\]
Every allowed dual inequality follows. Its objective equals
\[
 \langle q,D\rangle=\langle A^tq,y\rangle
 =\sum y_s-(p-1)\sum(-y_s)_+ ,
\]
which is the asserted upper bound on \(V\). At \(p\ge3\) its high-price sites \(q_s\ge2/p\) are exactly \(y_s<0\), since the respective price ranges are \([1-1/p,1]\) and \([0,1/p]\).

## Constructing a primal optimizer

For an odd edge starting at \(s\) its load column is \(w=p^i e_s+e_{s+i}\). In the \(y\)-coordinates this is the alternating string
\[
 A^{-1}w=\sum_{j=0}^{i-1}(-1)^jp^{i-1-j} e_{s+j}.                  \tag{2}
\]
This polynomial identity follows by multiplication by \(A\). Its negative coordinates have total absolute mass \((p^i-p)/(p^2-1)\). A slack unit at site \(s\) instead has inverse column \(A^{-1}e_s\), alternating around the whole cycle, with negative mass \(1/(p^2-1)\). Both mass formulas follow by summing the even or odd powers of \(p\). We will decompose \(D\) with the signs of every inverse column agreeing with \(y\) wherever the column is nonzero. For such a decomposition the negative masses add with no cancellation.

First suppose two consecutive coordinates of \(y\) are nonnegative. Cut the cycle between these sites. Index the resulting path by \(0,\ldots,r-1\) and put \(a_j=p^j y_j\) in this numbering. In the interior, \(a_{j-1}+a_j\ge0\), by \(D_j\ge0\). At any positive height \(h\), retain the sites with \(|a_j|\ge h\). Join consecutive retained sites if their signs differ. Every retained negative site has two retained positive neighbors by the adjacent inequalities and the cut. Consequently every component has odd length, starts and ends positive, and alternates. An isolated positive site has length one. Each component has length strictly less than \(r\), since \(r\) is even. A component covering \(j=m,\ldots,b\) with length \(i\) contributes one signed unit on those sites in the scaled coordinates. After dividing coordinate \(j\) by \(p^j\) this is exactly \(p^{-b}A^{-1}w\) for the edge of length \(i\) starting at \(m\), by (2). Integrate these components in \(h\) from zero to \(\max |a_j|\). This is a finite sum over intervals between distinct coordinate magnitudes. It reconstructs \(y\) coordinate by coordinate, so the resulting nonnegative flows saturate the demands. Their inverse columns have the required signs.

The only remaining case is strict alternation, since negative coordinates cannot be adjacent and a zero must have nonnegative neighbors. Let \(P=\{s:y_s>0\}\), one parity class, and write \(z=A^{-1}(D\mathbf1_P)\). Every column contributing to \(z\) has the prescribed strict alternating signs. At least one such column occurs: columns from the other parity have the opposite signs and alone could not produce \(y\). Thus \(z_s\ne0\) at every site. The remaining columns in \(y-z\) have opposite signs to \(z\), so \(0<|y_s|/|z_s|\le1\). Set \(t=\min_s |y_s|/|z_s|\) and take \(tD\mathbf1_P\) as unused capacity. Its inverse columns agree in sign with \(y\). The residual demands are nonnegative, and their inverse \(y-tz\) has at least one zero and no sign reversed. Apply the cut construction to them. This also treats cycles of length two. The zero demand has the empty decomposition.

In the resulting flow let \(u\) be the vector of unused capacities. Summing its loads gives
\[
 \sum D-(p+1)\sum x_{s,i}=\sum u+\sum_{s,i}(p^i-p)x_{s,i}
 =(p^2-1)\sum_s(-y_s)_+ .
\]
The last equality uses sign agreement and the negative column masses. This attains the dual value and proves (1) without assuming a linear-programming solver or its correctness. An independent implementation constructs the edges, unused capacities and dual prices, then checks their exact rational feasibility and equality of objectives. [Exact primal and dual verifier](../../../scripts/verify_alpoge_orbit_flow_closed_form.py)

## The original valuation and its perturbation

For all nonnegative \(D,D+E\), the exact variation is
\[
 F(D+E)-F(D)=\frac{\sum E}{p^2-1}+
 (p-1)\sum_s\big[(-y_s-(A^{-1}E)_s)_+-(-y_s)_+\big].
\]
This can be used at the actual demands \(D_s=|\nu_s|-\nu_{1,s}\) on the marked sites and \(|\nu_s|\) elsewhere, or at the corollary's \((k-1)w_s\). Substitution in the existing marked valuation estimate preserves the marked positive-part sum, capacity loss and digit error. For its canonical optimizer the high-price incoming demand is at most \(V(D)\): the predecessor of each negative coordinate is positive, and distinct such sites have distinct predecessors. Thus \(\sum_{y_s<0}D_s=\sum_{y_s<0}(y_{s-1}+p y_s)\le\sum (y_s)_+-p\sum(-y_s)_+=V(D)\). In particular this gives the uniform bound \(\sum D/(p+1)\) for this optimizer. No sign or balance assumption on the original distribution of diagram sizes is required. [Original ThmA and corollary](https://github.com/leanprover-community/riemann-hypothesis/blob/40e56bab026552e089d7afcfeff08d2defb9c005/src/Formalism/IncomingBounds/IncomingBound.lean#L103-L146) · [Marked minor estimate](AlpogeMarkedMinorFlow.md) · [Uniform perturbation bound](AlpogeOrbitFlowCorollary.md)

In fact the full optimal dual face can be recovered. Let \(C=A^{-t}(\mathbf1+(p-1)[0,1]^r)\) and let \(Q\) be the source dual polytope. The recurrence proves \(C\subset Q\) for every choice in the cube. The equality of the two minimum costs for every \(D\ge0\), just proved, implies \(Q+\mathbb R_+^r=C+\mathbb R_+^r\): a point outside the latter closed convex set can be strictly separated from it, and a separating covector with finite infimum there must be nonnegative. Thus every optimal price is a cube optimizer plus a nonnegative vector supported on zero-demand sites, subject to the source upper bound one. In a cube optimizer \(c_s=1\) at negative \(y_s\), \(c_s=0\) at positive \(y_s\), and the zero coordinates of \(y\) permit every \(c_s\in[0,1]\). The description follows by minimizing \(\langle \mathbf1+(p-1)c,y\rangle\). It gives uniqueness if all capacities are strictly positive and all inverse coordinates are nonzero.

The sharper incoming-demand bound also holds for **every** source dual optimizer. Pick the constructed primal optimizer. Equality of the objectives forces each positive-priced site to be saturated and each positive flow to have edge price exactly one, by summing the nonnegative complementary slacks. If \(q_s>1/p\), all outgoing edges from \(s\) have price strictly above one. Hence the entire capacity at that site is incoming, and summing over all such sites counts each incoming flow at most once. Their total demand is therefore at most \(V(D)\), improving the source threshold and recovering its universal quantifier over optimizers.

The pairwise ratio hypothesis of the pinned upstream lemma implies zero excess, while the sharp zero-excess condition is simply \(y\ge0\). For example \((3,1,0,0)\) gives \(y=(1,0,0,0)\) at \(p=3\). Formula (1) also gives the exact excess away from that cone. At \(p=3,D=(2,3,5,7,11,13)\), the only negative coordinate is \(-321/728\) and the excess is \(321/364\). At \(p=5,D=(1000,10)\), the full gain is \(2405/12\), whereas the separate top-row prime-power sum is 190. Directly replacing one by the other fails. [Upstream sufficient-condition theorem](https://github.com/leanprover-community/riemann-hypothesis/blob/40e56bab026552e089d7afcfeff08d2defb9c005/src/Development/AutomorphicArithmetic/OrbitLabellings/FnumEqRhoMulSumOfDemandRatioLe.lean)

The companion Lean module proves the dual inequalities on every odd edge, cyclic price evaluation, its negative-part formula and the alternating polynomial identity. The all-demand attainment proof above is analytic. All ten source optima and 6,724 two-site instances were independently certified, as were 700 rational demand vectors through length 18 and the entire 729-vector six-site ternary grid. The flow calculation has the input and output types needed by the local valuation; the construction and complete error budget of the global theta maps remain outstanding.

At the following source blobs the public declarations passed native compilation, fresh kernel replay and transitive axiom auditing with Lean 4.34.1 and Mathlib d13f23b723b8a846827a245b89c10fc7d3f11612. The only axioms reported across these declarations were propext, Classical.choice and Quot.sound. AlpogeOrbitFlowClosedForm at e3e90be5514ec6849e2efdfa6aba7dd7bbb6aedb.
