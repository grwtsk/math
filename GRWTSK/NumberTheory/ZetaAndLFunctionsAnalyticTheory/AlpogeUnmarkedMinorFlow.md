# Divisibility of the unmarked minor product on an even Frobenius orbit

grwtsk contributors

Fix the local datum `Loc` of the pinned Alpöge source, its prime \(p\ge5\), even orbit length \(d\ge2\), ranks \(N_0,N_1\), diagrams \(\nu(s)\), and its actual series \(\mathrm{Th}\). Assume \(\mathrm{Loc.AdmB}\). Write \(w_s=|\nu(s)|\), \(\rho=1/(p^2-1)\), \(\eta=1/(p-1)\), \(\gamma=\eta-\rho\). For **arbitrary** sizes \(w_s\) and every original Hida-admissible \(a\), the source pairing satisfies
\[
 \mathrm{KvalGe}\left(\nu,\mathrm{Th},\,
 \mathrm{lpF}(p,d,w)-dN_0N_1(1+\log_p a)\right).
 \tag{1}
\]
In particular (1) is the original \(\mathrm{Loc.ThmA}(1)\) for an empty marked set. The proof tracks individual occurrences of monomials with a denominator through the exponential. The input on the actual selected good inert places, under the tied and adapted hypotheses, is proved in §§18–19 of the cubical theta argument. [Source hypotheses, pairing and target](https://github.com/leanprover-community/riemann-hypothesis/blob/40e56bab026552e089d7afcfeff08d2defb9c005/src/Formalism/SharpRestriction/Divisibility/ProductZerothFirstParts.lean#L24-L212) · [Definition of the flow](https://github.com/leanprover-community/riemann-hypothesis/blob/40e56bab026552e089d7afcfeff08d2defb9c005/src/Formalism/LocalRingCardinality/DataParams%E2%82%82.lean#L51-L59) · [Actual theta inputs](AlpogeEllipticCubicalB4.md)

## Coefficient of a polarized monomial

Write \(L\) for the source height-two logarithm, \(g=L^{-1}\), and \(b_\alpha=[X^\alpha]\beta\) for its B0 witness. Both coboundaries split one parity of the additive coordinates into two copies. Their degree-\(n\) coefficients have valuation at least \(\eta-\rho n\). Indeed the inverse logarithm has coefficients of degree \(n\) of valuation at least \(-(n-1)\rho\), by the triangular inverse recursion and \(j\le(p^{2j}-1)\rho\). Each B4 exponential is integral and torus-invariant by B2 and equivariance of \(L\). All its nonconstant terms have degrees divisible by \(p+1\) since all signed site weights \((-1)^s p^s\) equal 1 modulo \(p+1\). Substitution of \(g\) in its positive-degree part gives weight at least \((p+1)\rho=\eta\), where weight \(h\) means valuation at degree \(n\) at least \(h-\rho n\). Taking the ordinary logarithm preserves this bound since \(v_p(j)\le(j-1)\eta\). This works in the original nondiscrete coefficient field. [Detailed substitution and weight proof](AlpogeHeightTwoTorusGain.md)

By B3 every nonzero \(b_\alpha\) meets both parities. When a parity has two occupied sites, send one whole site to the first copy and all remaining sites of that parity to the second. The resulting mixed coefficient in the corresponding coboundary is exactly \(b_\alpha\). When a parity has just one exponent \(n\) that is not a power of \(p\), split off one \(p^j<n\) at a nonzero base-\(p\) digit of \(n\). The binomial factor is a unit since in characteristic \(p\), \((1+x)^n=\prod_j(1+x^{p^j})^{n_j}\). In both cases the original multi-index can be recovered by summing the two copies site by site, so no other source monomial contributes. Thus \(v(b_\alpha)\ge\eta-\rho|\alpha|\).

The remaining case has pure powers \(p^k,p^h\) at two opposite-parity sites \(s,t\). Their signed torus weights cancel modulo \(p^d-1\), so \(p^{s+k}\equiv p^{t+h}\pmod{p^d-1}\). The order of \(p\) modulo \(p^d-1\) is \(d\) by the strict size inequality for exponents between 1 and \(d-1\). In particular \(k\ne h\). Orient the pair with \(k>h\), let \(e\) be the least nonnegative residue of \(k-h\) modulo \(d\), and obtain \(t=s+e\), \(e\) odd, \(1\le e<d\). Splitting \(p^{k-1}\) from \(p^k\) gives exactly one factor of \(p\) in the binomial coefficient: it equals \(p\binom{p^k-1}{p^{k-1}-1}\), with the second factor a unit by the same digit identity. Therefore
\[
 v(b_\alpha)\ge\eta-\rho|\alpha|-1.
 \tag{2}
\]
Each such occurrence uses **at least** \(p^e\) exponents at \(s\) and one at \(s+e\), since \(k\ge k-h\ge e\). These costs are oriented as in the source.

## Passing through the exponential and the minors

Composing B0 with \(g\) writes \(\mathrm{Th}(ep\,X)\) as \((U\circ g)\exp(\pm\sum_{a,b}\beta(X_{\bullet,a,b}))\), with \(v(ep)=0\) and \(U\) integral. Every coefficient of degree \(n\) of \(U\circ g\) has valuation at least \(-\rho n\). Factor the exponential as a product over individual monomials and pairs \((a,b)\), truncating at the coefficient degree under consideration. B3 gives positive degree, so this is finite in each degree. An occurrence of multiplicity \(m\) contributes \(b_\alpha^m/m!\) up to sign. The \(m\eta\) in the valuation bound covers \(v_p(m!)\). Every remaining unit of potential valuation loss can be charged to one occurrence of (2).

For a target coefficient of exponent \(n=(n_{sab})\), put \(W_s=\sum_{ab}n_{sab}\). In any contributing product count the charged occurrences by their source site and lag, writing \(x_{s,e}\) for the count. Nonnegativity of all exponents gives, simultaneously at each site,
\[
 \sum_{e}p^e x_{s,e}+\sum_e x_{s-e,e}\le W_s .
\]
Consequently the *integer witness of this very term* is feasible in the source's real linear program. Let \(M(W)\) denote its supremum. Summing finite contributions preserves the bound \(-\rho\sum_s W_s-M(W)\) on the coefficient. Multiplication by \(\prod_{sab}n_{sab}!\) and Legendre's digit formula give
\[
 v\bigl((\prod n_{sab}!)[X^n]\mathrm{Th}\bigr)
 \ge \gamma\sum_s W_s-M(W)-\eta\sum_{sab}s_p(n_{sab}).
 \tag{3}
\]
The central two terms in the proof are the original site capacities and the actual minor factorials. No symmetry assumption on the sizes or rounding of an optimal real flow was used.

For every column choice, each term of a column determinant of height \(h\) at site \(s\) is homogeneous of degree \(h\) in the \(Z\)-variables at that site. Summing column heights gives \(W_s=w_s\) in each monomial of the full product. The polynomial is integral, so its coefficient multiplier cannot decrease (3). For \(0<n_{sab}\le w_s\le a\) the digit sum is at most \((p-1)(1+\log_p a)\), and the zero digit sum is zero. There are \(dN_0N_1\) variables. Taking the sum in the actual pairing proves (1) for every residual coefficient and every column choice.

## Marked sites

Let \(D_s=\mathrm{Dl}(s)\), \(A_s=\mathrm{rowLen}_s(0)\), \(T=\sum_{s\in TT}A_s\), and \(B=dN_0N_1(1+\log_p a)\). The source's \(\mathrm{topTerm}(s)\) is bounded by \(A_s\sum_{e\ge1,\ e\ \mathrm{odd}}p^{-e}=\gamma A_s\), and \(W_c(s)\ge0\). Therefore its full marked target before the logarithmic error is at most \(\mathrm{lpF}(p,d,w)+M(w)-M(D)\).

If the occupied sites lie on one parity, each admissible edge consumes positive capacity on the other parity. Both suprema are zero. Hence (1) gives \(\mathrm{ThmA}(1)\) for every marked set in this family, including an isolated occupied site of any size. A direct check sets all other coordinates to zero in B0 after inversion: B3 forces each exponential factor to equal one, leaving the inverse-coordinate weight of the integral factor alone.

More generally \(M(w)-M(D)\le T\). Starting with any feasible array, reduce its incident edges at one marked site until its reduced capacity is met. Removing one unit of edge value releases at least one unit of capacity there, and this can only decrease the usage at every other site. Fractional trimming is allowed, so the total value sacrificed at that site is at most \(A_s\). Repetition and passage to suprema prove the bound. Thus the marked conclusion with error \(2B\) follows whenever \(T\le B\), and gives the universally quantified \(\mathrm{ThmA}(2)\) for any instance where this holds at every Hida-admissible \(a\). For large marked rows on both parities the difference of the two suprema can be large; (3) alone does not recover the claimed marked correction. Cancellation or a finer accounting in the original minors remains to be shown.

For example, take \(p=5,d=4,TT=\{0\}\), with one row of length \(25h\) at site 0, five rows of length \(h\) at site 1 and empty diagrams elsewhere, \(h\ge25\) an integer. Ranks may be enlarged to accommodate the Hida setting. A lag-one flow of \(5h\) saturates both nonzero capacities; summing capacities shows it is maximal. Thus \(\mathrm{lpF}(p,d,w)=5h/4\). Removing the marked row leaves only site 1 and \(\mathrm{lpF}(p,d,D)=25h/24\). Here \(d_{\rm Top}(0)=\infty\), \(W_c(0)=h\), and the top term equals \(4h+25h\,5^{-3}/(1-5^{-4})\): lag one contributes \(4h\), larger lags congruent to one contribute zero, and all lags congruent to three see an empty site. The marked target before error is \(1047h/208\). Its gap above the size-only bound is \(787h/208\). Taking ranks of order \(\log h\) meets the Hida constraint and leaves its logarithmic error of order \((\log h)^3\). This family rules out absorbing this gap in a universal multiple of that error by the aggregate bound alone.

This is a manuscript reconstruction of the unmarked part of an existing source estimate. The comparison with the previous repeated-derivative method distinguishes the one-site case, where the flow bound gives coefficient \(\gamma\) before digit losses. Lean elaboration, kernel replay and transitive axiom auditing for (1)–(3) as a whole are **NOT_RUN**. The general marked estimate, its global use in (M), the full determinant identity and RH remain open in this reconstruction.
