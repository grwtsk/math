# Three consecutive Frobenius weights in the prime valuation

For a prime and geometric data in the archived orbit valuation theorem, write \(p\) for the residue characteristic, \(k=D.R.k\), \(j=i+1\), \(w(z)=\mathrm{wPl}(D,j,z)\), and \(g z=\mathrm{posPl}(D,p,z,1)\). The source has \(p\ge5\), nonnegative weights, and even orbit period \(r=\mathrm{nP}(D,p)\) on the branch under consideration. The permutation is explicit on \(z=(b,t)\): add \(h_P\) to \(t\) and toggle \(b\) precisely at signal primes. In particular \(U=\mathrm{kindBC}(D,p)\) is invariant. The following statements also hold with all places as \(U\). Write \(W=\sum_{z\in U}w(z)\) and \(\rho=1/(p^2-1)\).

Let \(Y\) be the unique solution of \(pY(z)+Y(g^{-1}z)=w(z)\). Its existence follows by the alternating geometric inverse around each orbit. Inserting the exact even-orbit flow value at the actual demand \((k-1)w(\mathrm{posPl}(D,p,z,s))\) and summing over all \(z\in U\) gives
\[
 \frac1r\sum_{z\in U}\mathrm{FOrb}(D,j,p,z)
 =(k-1)\left(\rho W+(p-1)\sum_{z\in U}(-Y(z))_+\right).             \tag{1}
\]
For each offset \(s\), \(z\mapsto g^s z\) permutes \(U\), so the factor \(r\) cancels even if a shorter cycle is repeated. The exceptional residue-zero case with \(h_P=0\) takes the separately defined baseline in \(\mathrm{FInert}\). No assumption on how the diagram weights vary with the lift, prime or window is needed for (1). [Original place action and FOrb/FInert definitions, pinned lines 12–114](https://github.com/leanprover-community/riemann-hypothesis/blob/40e56bab026552e089d7afcfeff08d2defb9c005/src/Formalism/LocalRingCardinality/DataForced.lean#L12-L114) · [Closed orbit flow value and attainment](AlpogeOrbitFlowClosedForm.md)

## A local approximation with different upper and lower errors

Put \(w_b(z)=w(g^{-b}z)\) and \(T_3(z)=(p^2 w_0(z)-p w_1(z)+w_2(z))/p^3\). Replacing \(Y\) by \(T_3\) in the parentheses of (1) has an error which satisfies
\[
 -\frac{W}{p^3(p+1)}
 \ \le\ (p-1)\sum_U [(-Y)_+-(-T_3)_+]\ \le\ \frac{W}{p^2(p+1)}.       \tag{2}
\]
Indeed, set \(P=\sum_U(Y)_+\), \(N=\sum_U(-Y)_+\). The recurrence and nonnegativity imply \(p(-Y(z))_+\le(Y(g^{-1}z))_+\). Sum to obtain \(pN\le P\) and use \((p+1)(P-N)=W\). Thus \(N\le W/(p^2-1)\), \(P\le pW/(p^2-1)\). Concentrating the demands on a single parity of a two-cycle attains both of these budget bounds. Substituting the recurrence three times gives \(Y=T_3-p^{-3}Y\circ g^{-3}\). For a real residual \(b\), the change from \((-a)_+\) to \((-(a-b))_+\) lies between \(-(-b)_+\) and \(b_+\). Summing proves (2). It is important to retain the sign of the third residual to obtain the fourth-power order in the lower bound.

The source's actual \(\mathrm{lowCs}\) is the left side of (1) minus
\[
 (k-1)W/p^3+8W/p+3 f\,N_m^2\log_p a .
\]
Thus (2) gives an explicit lower estimate for that quantity using three adjacent weights per place and the additional cost \((k-1)W/[p^3(p+1)]\). All displayed existing losses remain. At the full-place branch (1) identifies \(\mathrm{FInert}\) itself. The quantities \(g_{0,\mathrm{Pl}}\), the separate marked top-row sum, and \(\mathrm{errF}\) in the geometric bound retain their original definitions and sign. In particular a number for the extra gain alone cannot replace their valuation inequality. [Exact lowCs and local input](https://github.com/leanprover-community/riemann-hypothesis/blob/40e56bab026552e089d7afcfeff08d2defb9c005/src/Formalism/SharpRestriction/Divisibility/OrbitPlaces.lean#L350-L379) · [Return to the geometric valuations and explicit errF](https://github.com/leanprover-community/riemann-hypothesis/blob/40e56bab026552e089d7afcfeff08d2defb9c005/src/Formalism/PeriodIntegrals/UnitaryGroupMassFormula/OrbitValuationBounds/PrvFOfOrbitLetterBounds.lean#L17-L59)

Uniformly for any subset of primes above an integer \(L\ge2\), if \((k-1)W\le B\) throughout that window, summing the additional lower cost with weights \(\log p\) costs at most
\[
 B\sum_{n>L}\frac{\log n}{n^4}\le B\frac{3\log L+1}{9 L^3}.
\]
The last inequality follows by integrating the decreasing function on \([L,\infty)\). One can take the maximum of the actual per-prime weights on each finite window; independence from the lift is unnecessary. For positive linear averages at a fixed \(p,g\), replacing the average of the exact gains by the gain of the averaged weights loses exactly \((p-1)\sum_z\min(\sum_j(v_j(z))_+,\sum_j(-v_j(z))_+)\), where \(v_j\) are the inverse coordinates including the averaging weights and the factors \(k_j-1\). This follows by subtracting positive and negative masses at each \(z\). The formula quantifies information lost by averaging before taking the positive part. It requires the specified common inverse operator.

## Exact two-site verification

On a two-cycle all edges have length one. For nonnegative capacities \(a,b\) and \(p>1\), the supremum of \(x+y\) under \(x,y\ge0,\ px+y\le a,\ x+py\le b\) is attained and equals \(\min(a,b,(a+b)/(p+1))\). The inequalities give the three upper bounds directly. If \(pa\le b\), take \(x=0,\ y=a\); if \(pb\le a\), take \(x=b,\ y=0\). Else use \(x=(pa-b)/(p^2-1)\) and \(y=(pb-a)/(p^2-1)\). For \(p=5\), demands \((20,1)\) and \((1,20)\) give total optimal flows 1 and 1; their sum has optimal flow 7. Averaging before the local optimization can therefore erase real excess. [Original objective and capacity constraints](https://github.com/leanprover-community/riemann-hypothesis/blob/40e56bab026552e089d7afcfeff08d2defb9c005/src/Formalism/IncomingBounds/IncomingBound.lean#L7-L44)

The [two-site module](AlpogeTwoSiteFlow.lean) proves the attained optimum and supremum with the actual inequalities for every real input in this range, and the finite aggregation identity. The [three-step module](AlpogeFrobeniusStencil.lean) proves the complete two-sided bound (2) for an arbitrary finite permutation, together with the signed budgets and exact remainder. The [exact verifier](../../../scripts/verify_alpoge_orbit_flow_closed_form.py) checks (2) against a constructed primal and dual optimum. The identification with the archive’s specific primes, formula (1) and the prime sum are analytic. The all-degree global normalized theta and complete analytic comparison required for (M) remain outstanding. External independent review is unassessed.

At the following source blobs the public declarations passed native compilation, fresh kernel replay and transitive axiom auditing with Lean 4.34.1 and Mathlib d13f23b723b8a846827a245b89c10fc7d3f11612. The only axioms reported across these declarations were propext, Classical.choice and Quot.sound. AlpogeFrobeniusStencil at 554046ee2c29811da6493509525fa9b0447a2992, AlpogeTwoSiteFlow at 85a9e3ca0f7f28a997ab3888a3f6eabd92bd7a11.
