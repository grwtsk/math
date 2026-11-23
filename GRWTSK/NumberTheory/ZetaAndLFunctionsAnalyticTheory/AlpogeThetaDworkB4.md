# An exact Dwork criterion for Alpöge B4, with genuine elliptic sigma jets

**Author:** grwtsk contributors. **Evidence status:** classical all-degree integrality equivalence plus independently derived and executed finite jets for the actual *elliptic sigma model* in the cited exposition. No independently proved all-degree integrality for the genuine global theta-lift kernels, no (M), no RH, no completed positive self-adjoint Hilbert–Pólya proof. **Lean proof candidates:** [AlpogeThetaDworkB4.lean](AlpogeThetaDworkB4.lean) are only coefficient-level finite algebra; elaboration, fresh kernel replay, transitive axioms and independent mathematical review **NOT_RUN**.

**Pinned local parent:** grwtsk/math@ea998a8bb10ae36fd1ec36f6772515e46c1c0c89, root Lean v4.34.1 and Mathlib d13f23b723b8a846827a245b89c10fc7d3f11612. Consumers: [math #1850](https://github.com/grwtsk/math/issues/1850), [#124](https://github.com/grwtsk/math/issues/124), [#1849](https://github.com/grwtsk/math/issues/1849). Local dependencies: [AlpogeHeightTwoTorusGain.md](AlpogeHeightTwoTorusGain.md), [AlpogeMainPrimeArithmetic.md](AlpogeMainPrimeArithmetic.md), [XiTaylorFredholmLinearization.md](XiTaylorFredholmLinearization.md), [XiNewtonMomentHilbertPolya.md](XiNewtonMomentHilbertPolya.md).

**Actual external primary source, research direction only (NO theorem imported):** Levent Alpöge's 20 November 2026 [announcement](https://alpo.ge/remark.pdf) and Lean code [leanprover-community/riemann-hypothesis@40e56bab026552e089d7afcfeff08d2defb9c005](https://github.com/leanprover-community/riemann-hypothesis/tree/40e56bab026552e089d7afcfeff08d2defb9c005), especially [Formalism/SharpRestriction/Divisibility/ProductZerothFirstParts.lean](https://github.com/leanprover-community/riemann-hypothesis/blob/40e56bab026552e089d7afcfeff08d2defb9c005/src/Formalism/SharpRestriction/Divisibility/ProductZerothFirstParts.lean), Git blob b8f51123f9c2a096c73e8302aac88e1797de16fc, declarations \`Wfrac\`, \`Wint\`, \`B1\`–\`B4\`, \`cobX\`, \`cobY\` (lines 15–73), and \`Loc.B0/AdmB\` (lines 192–201). Here \`B4\` explicitly requires \`OverWOne\` for BOTH exponentiated coboundaries after substitution of the actual \`jetLogG\`; its integrality does **not** follow automatically from \`B2\` and \`B3\`.

**Human-readable source and exact model:** Rubinstein et al., *The Alpöge–Claude proof of the Riemann hypothesis explained for the Riemann zeta function*, 21 November 2026 working draft, [PDF](https://www.math.uwaterloo.ca/~mrubinst/alpoge_claude_grh/zeta-paper.pdf), Part III §III.5 pp. 82–89, especially (III.84)–(III.88) and the elliptic sigma example on pp. 88–89. The draft explicitly quotes the actual theta-kernel integrality input from Lean and reports finite exact computations, without proving B4 at all degrees.

**Independent classical mathematics used:** Dieudonné–Dwork integrality criterion, e.g., M. Hazewinkel, *Formal Groups and Applications* (1978), §2.3.4, [source](https://math.bu.edu/people/jsweinst/AWS/Files/HazewinkelFormalGroups.pdf). This theorem predates Alpöge; its use here is an exact reduction, not a claimed new Dwork theorem.

## A. B4 becomes an explicit full-degree Frobenius congruence

Fix a prime \(\ell\), the \(\ell\)-adically complete maximal unramified coefficient field \(K_0\), its valuation ring \(A\), and the canonical Witt-vector Frobenius lift \(\sigma:A\to A\), extended to \(K_0\), satisfying \(\sigma(a)\equiv a^\ell\pmod{\ell A}\). In the original Lean, these are represented by \`Wfrac l\` and \`Wint l\`. **This reduction retains the source's B1 condition**, so every relevant coefficient lies in \(K_0\); it is independent of the *different* B1-free valuation gain proved in [AlpogeHeightTwoTorusGain.md](AlpogeHeightTwoTorusGain.md).

For a finite index set of formal variables \(T_j\), let \(\mathfrak m=(T_j)_j\), \(G(T)\in\mathfrak m K_0[[T]]\), \(E(T)=\exp G(T)\), and \(\sigma_*G(T^\ell)=\sum_\nu \sigma(G_\nu)T^{\ell\nu}\). The multivariate Dieudonné–Dwork lemma states
\[
\boxed{
E\in1+\mathfrak m A[[T]]
\quad\Longleftrightarrow\quad
\mathcal D_\ell G:=\ell G(T)-\sigma_*G(T^\ell)
\in\ell\,\mathfrak m A[[T]].
}\tag{1}
\]
The algebraic proof uses the filtered unique product decomposition of any series with constant term one into factors \(1+c_\nu T^\nu\). If \(c_\nu\in A\), Frobenius shows \((1+c_\nu T^\nu)^\ell\equiv1+\sigma(c_\nu)T^{\ell\nu}\pmod\ell\). Conversely, an induction by total degree recovers integrality of each first unknown \(c_\nu\) from the corresponding coefficient of the Frobenius quotient. The logarithm of the quotient is \(\mathcal D_\ell G\) up to sign; \(p\)-adic factorial valuations justify equivalence between quotient \(\in1+\ell\mathfrak m A[[T]]\) and logarithm \(\in\ell\mathfrak m A[[T]]\). This proves (1); no RH or theta-kernel theorem is used.

Use the **original** multivariate height-two formal logarithm
\[
L_s(T)=\sum_{e\ge0}\ell^{-e}T_{s-2e}^{\ell^{2e}}
\tag{2}
\]
on doubled site variables. Let \(\Delta_1\beta=\mathrm{cobX}(\beta)\) and \(\Delta_2\beta=\mathrm{cobY}(\beta)\) be the *literal source* differences, and set \(G_i=\Delta_i\beta\circ L\). Under B1 and zero constant term (from B3), the original B4 is **equivalent** to the TWO independent conditions
\[
\boxed{\mathcal D_\ell G_1,\ \mathcal D_\ell G_2
\in\ell\mathfrak m A[[T]].}\tag{3}
\]
Explicitly, for every nonzero multi-index \(\nu\),
\[
\boxed{
v_\ell\left(
\ell g_{i,\nu}-
\mathbf1_{\{\ell\mid\nu_j\ \forall j\}}
\sigma(g_{i,\nu/\ell})
\right)\ge1,\quad i=1,2.
}\tag{4}
\]
The original \(L\), prime \(\ell\), torus action, conductor/character signs, and both coboundary directions remain unchanged. This is a source-preserving **necessary-and-sufficient new interface** to investigate B4. It does not prove (4) for the global theta kernels, so it does not prove (M) or RH.

## B. Independent genuine elliptic sigma-jet computation

The exposition constructs a *test series*, not the full family of automorphic theta kernels, from the actual CM elliptic curves
\[
E_c:\ y^2=x^3-cx,\qquad
m_c(z)=\log\frac{\sigma_c(z)}{t(z)},\quad
t(z)=-x(z)/y(z),
\quad \widetilde\beta(z,w)=m_c(z+w)-m_c(z)-m_c(w).
\tag{5}
\]
At \(\ell=3,7,11\), its twists are respectively \(c=-i,-1-i,-i\) in the unramified quadratic \(\mathbb Q_\ell(i)\), where the coefficient Frobenius \(\sigma\) is conjugation.

**Independent coefficient derivation.** With \(u=cz^4\), write \(\wp_c(z)=z^{-2}A(u)\) and \(B(u)=A(u)-2uA'(u)\). The **original** Weierstrass equation \((\wp_c')^2=4\wp_c^3-4c\wp_c\) becomes
\[
B(u)^2=A(u)^3-uA(u),\quad A(0)=1.
\tag{6}
\]
This recursively fixes \(A=\sum_{n\ge0}\alpha_nu^n\) over \(\mathbb Q\), with each coefficient obtained by division by \(4n+1\), independently of any precomputed sigma table. Because \(t/z=A/B\) and \((\log\sigma_c)''=-\wp_c\),
\[
m_c(z)=\sum_{n\ge1}\mu_nc^nz^{4n},
\quad
\mu_n=-\frac{\alpha_n}{4n(4n-1)}
-[u^n]\log A+[u^n]\log B.
\tag{7}
\]
The exact first six values are
\[
(\mu_1,\ldots,\mu_6)=
\left(-\frac5{12},-\frac3{56},-\frac{13}{990},
-\frac{17}{5200},-\frac{1681}{1889550},-\frac{49}{195500}\right).
\tag{8}
\]
The arithmetic was separately cross-checked using SymPy and a standard-library rational recurrence.

**Exact original torus projection.** For orbit length two, let \(\zeta\) have order \(\ell^2-1\). Project \(\widetilde\beta\) onto the terms invariant under \((X,Y)\mapsto(\zeta X,\zeta^{-\ell}Y)\). Thus the degree \(4n\) coefficient of \(X^aY^b\), where \(a+b=4n\), is
\[
\mu_nc^n\binom{4n}{a}\;
\mathbf1_{\{1\le a,b,\;a-\ell b\equiv0\pmod{\ell^2-1}\}}.
\tag{9}
\]
This is the **actual** elliptic-sigma test model specified in the exposition; it is not an arbitrary substitute positive kernel. Its source B3 (positive even and odd degrees, non-\((1,1)\) bidegrees) and torus invariance are respected at the computed orders.

For \(\ell=3,\ c=-i\), its leading invariant term is
\[
\beta_4=\frac{5i}{3}(X^3Y+XY^3).
\tag{10}
\]
The two actual source coboundaries begin
\[
\Delta_1\beta_4=5i(X_1^2X_2+X_1X_2^2)Y,\quad
\Delta_2\beta_4=5iX(Y_1^2Y_2+Y_1Y_2^2).
\tag{11}
\]
**The leading \(\beta\)-coefficient is nonintegral at 3; both B4 coboundaries nevertheless have integral leading coefficients.** This illustrates exactly why testing integrality of \(\beta\) or of \(\exp(\beta\circ L)\) instead of the source coboundaries would be invalid.

The independent exact checker [verify_alpoge_sigma_dwork.py](../../../scripts/verify_alpoge_sigma_dwork.py) derives (6)–(8), performs the literal torus selection (9), forms **both** original \(\Delta_i\), substitutes (2), and separately tests integrality of \(E_i=\exp G_i\) and the Dwork residual (4) through TOTAL DEGREE 24. At \(\ell=3\), the \(T^9/3\) height-two correction is active and retained; at \(\ell=7,11\), the first nontrivial \(L\) correction is of degree \(49,121\), beyond this window. Results:

| \(\ell\) | \(c\) | Invariant \(\beta\) terms | Coboundary terms | \(E_1\) terms | \(\mathcal D_\ell G_1\) terms | Minimum valuations \(E_1,\mathcal D_\ell G_1\) |
|---|---|---:|---:|---:|---:|---|
| 3 | \(-i\) | 39 | 301 | 302 | 301 | \(0,1\) |
| 7 | \(-1-i\) | 9 | 71 | 72 | 71 | \(0,1\) |
| 11 | \(-i\) | 5 | 43 | 44 | 43 | \(0,1\) |

Exact invariance symmetry and a separate construction of \(\Delta_2,E_2\) verified the SAME bounds in the opposite doubled-variable direction. These are **finite exact coefficients, not all-degree certificates**. The guide already reports larger finite checks for this example; the advance here is a transparent independent derivation and a second, coefficientwise Frobenius test matched to the true Lean B4.

**Hostile source control.** The nonzero series \(\beta(X,Y)=X^3Y/9\) over \(\mathbb Q_3\) satisfies the degree and torus-invariance restrictions for \(\ell=3,d=2\) and has coefficients in the unramified field, but
\[
[X_1^2X_2Y]\,\Delta_1\beta=\frac13,\qquad
[X_1^2X_2Y]\,\mathcal D_3(\Delta_1\beta\circ L)=1.
\tag{12}
\]
Thus its exponential fails integrality **at degree four**. B1+B2+B3 do **not** imply B4. The actual sigma-derived model passes the same test, for genuinely arithmetic reasons.

## C. What is and is not established independently

**Established analytically, using the classical Dwork theorem:** the **all-degree** equivalence (1)–(4), for the same B4 data under the source B1. The elliptic sigma coefficients (6)–(11) are independently derived from its original differential equation. The finite coefficient checks in (8)–(12) were executed in exact rational/Gaussian arithmetic. No zero list, RH premise or final Alpöge theorem entered.

**NOT established:** the actual \`Loc.AdmB\`/global-theta-kernel B4 at all degrees, at all required inert primes and orbit lengths, or its transfer through \`BeOK\`, \`ThetaExpansionAllPlaces\`, \`SelectionServed\`, \`CoreAtH\`, and \`EAtH\`. The global size/covolume/period estimates, relative trace, Galois-cohomology denominators and signed averaging that establish (M) remain separately open in this independent reconstruction.

**Hilbert–Pólya boundary:** the existing [XiTaylorFredholmLinearization.md](XiTaylorFredholmLinearization.md) defines an unconditional trace-class **non-self-adjoint** operator from actual theta/Xi coefficients with an exact Fredholm determinant (no zero-indexed input). The positive self-adjoint replacement in [XiNewtonMomentHilbertPolya.md](XiNewtonMomentHilbertPolya.md) is **conditional on all-rank true-Xi Newton–Hankel positivity**, equivalent to RH. Neither the Dwork criterion nor the finite sigma example proves this positivity.

No new root imports, dependency changes or Noe execution are required. The adjacent Lean finite-algebra declarations are **SOURCE_PROOF_CANDIDATES**; their elaboration/kernel/axiom checks and any source-wide independent mathematical review are **NOT_RUN**. No completed independent (M), RH or positive Hilbert–Pólya proof is claimed.

## D. An exact all-Frobenius-degree necessary B4 family (source ell=3)

The entire source B4 remains open independently. A narrower, **all-degree arithmetic theorem** nevertheless gives a rigorous recurrence that any admissible elliptic-sigma model must satisfy. It uses the **actual original** \`cobX\` formula, the true height-two site logarithm, and the source torus selection. No RH theorem or zero indexing enters.

For \(\ell=3,d=2\), let
\[
L(T)=\sum_{r\ge0}3^{-r}T^{9^r},\quad
\beta(X,Y)=\sum_{a,b>0}\beta_{a,b}X^aY^b,\quad
G(X_1,X_2,Y)=(\Delta_1\beta)(L(X_1),L(X_2),L(Y)).
\]
Write
\[
H(b,M)=[T^M]L(T)^b
=\!\!\sum_{\substack{(j_r)_{r\ge0}\\\sum j_r=b\\\sum 9^rj_r=M}}
\frac{b!}{\prod_rj_r!}\prod_{r\ge0}3^{-rj_r}.
\tag{D.1}
\]
Every coefficient of this series is a **finite exact rational sum**. The first source coboundary has coefficient
\[
[X_1^{r}X_2^{s}Y^b]\Delta_1\beta
=\binom{r+s}{r}\beta_{r+s,b}\quad(r,s,b>0).
\]
Since \(L(T)\) has leading term \(T\) and no constant term, obtaining \(X_1^1 X_2^2\) after substitution forces \(r=1,s=2\). Hence for **every** \(e\ge1\) and every \(\beta\) (no integrality premise),
\[
\boxed{
[X_1X_2^2Y^{9^e}]G
=3\sum_{1\le b\le9^e}\beta_{3,b}\,H(b,9^e).
}
\tag{D.2}
\]
When \(\beta\) obeys the source \(d=2,\ell=3\) torus invariance, \(\beta_{3,b}\ne0\) requires \(3-3b\equiv0\pmod8\), i.e. \(b\equiv1\pmod8\). Moreover, **every** monomial of \(G\) has positive \(X_1\)- and \(X_2\)-degree. Thus the target coefficient of \(\exp G\) is **exactly the same** as (D.2); products of two or more \(G\) factors have \(X_1\)-degree at least two.

Consequently original **B4 implies** for every \(e\ge1\) the necessary, source-specific linear congruence
\[
\boxed{
3\sum_{\substack{1\le b\le9^e\\b\equiv1\ (8)}}
\beta_{3,b}H(b,9^e)\in\mathbb Z_3[i].
}
\tag{D.3}
\]
Equivalently, since \(H(9^e,9^e)=1\), it constrains each new coefficient \(\beta_{3,9^e}\) by a triangular 3-adic congruence in earlier coefficients. **These are necessary conditions, not sufficient conditions for all B4**; the second coboundary has the symmetric conditions for a symmetric \(\beta\).

For the actual elliptic-sigma **test series** (not the general theta-lift kernels) in the paper, \(\beta_{a,b}=\binom{a+b}{a}\mu_n c^n\) for \(a+b=4n\), selected by the torus, with \(c=-i\), and the \(\mu_n\) determined by the independent Weierstrass recurrence (6)–(8). At \(e=1\), \(M=9\), the only terms are \(b=1,9\), with
\[
H(1,9)=1/3,\quad H(9,9)=1,\quad
\beta_{3,1}=5i/3,\quad\beta_{3,9}=-26i/9.
\]
The complete *first Frobenius cancellation* is
\[
\boxed{[X_1X_2^2Y^9]G
=3((5i/3)(1/3)-26i/9)=-7i,}
\tag{D.4}
\]
which has 3-adic valuation zero. If the **same source model** is truncated at elliptic sigma degree 4, then \(\beta_{3,9}\) is omitted and the coefficient is \(5i/3\), of valuation \(-1\), so B4 **fails already at total degree 12**. The truncation nonetheless satisfies the source B1/B2/B3 and passes its B4 check through degree 11. Truncation at degree 12 passes through degree 19 but fails at degree 20; the true degree-20 coefficients repair that failure. This is a concrete obstruction to promoting finite-jet B4 checks.

At the *next Frobenius level* \(e=2\), \(M=81\), exactly **eleven** nonzero torus-selected source coefficients \(b=1,9,\ldots,81\) contribute to (D.2). The independent exact-rational recurrence evaluates their sum to
\[
\boxed{
[X_1X_2^2Y^{81}]G
=i\,\frac{7109870427383233146882397592536214309}
{9225341050208863777507671356201171875}.
}
\tag{D.5}
\]
The numerator is congruent to 2 modulo 3 and denominator to 1 modulo 3, so the 3-adic valuation is **exactly zero**. Deleting just the sigma degree-84 source term leaves a partial sum of valuation \(-10\). The true degree-84 term therefore participates in a cancellation of a *ten-unit valuation defect*. The full coefficient is integral but **is not evidence for all other degree-84 coefficients or for the original global theta kernels**.

The updated [verify_alpoge_sigma_dwork.py](../../../scripts/verify_alpoge_sigma_dwork.py) computes (D.4) and (D.5) **independently from the sigma differential-equation recurrence**, via the finite multinomial formula for \(L(T)^b\). It also cross-checks **all 22 Weierstrass coefficients through \(n=21\)** against an independently derived recurrence from \(\wp''=6\wp^2-2c\), rather than relying only on the original squared-derivative equation \((\wp')^2=4\wp^3-4c\wp\). Its finite output is exact, its Git blob is pinned, and it does not invoke zeta zeros or external RH. The companion Lean file now includes elementary rational first-ray and unit-mod-3 candidate checks; its all-degree formal-series proof is still **NOT FORMALIZED**.

**Prior-art restriction:** The ordinary-reduction Mazur–Tate (p)-adic sigma integrality theorem (see Christian Wüthrich, *The canonical p-adic sigma function*, §5, https://www.maths.nottingham.ac.uk/plp/pmzcw/download/pheight.pdf) cannot simply be invoked here: the paper's CM (j=1728) examples at (p=3,7,11), all inert in ℚ(i), have supersingular good reduction. An applicable supersingular cubical/integral-theta theorem would have to be independently established, not borrowed from the ordinary setting.

**Next exact proof target:** prove the family (D.3), ideally using the elliptic division-polynomial/Dwork congruences on the genuine theta lifts. Doing so for every \(e\) would settle only one thin set of B4 coefficients, not B4 itself. A full independent Hilbert–Pólya proof still additionally needs the true all-degree B4, original (M), zero-freeness, and original-Xi Newton PSD.

## E. Rigidity of the two polarized integrality conditions

**Theorem.** Let the orbit length be even, let \(p\) be a prime and put \(q=p^2\). Use the original logarithms \(L_i(T)=\sum_{h\ge0}p^{-h}T_{\pi^h i}^{q^h}\), with \(\pi(i)=i-2\) on sites and with the copy label fixed. Over \(\mathbb C_p\), a polynomial \(\beta\) satisfying the mixed support condition B3 and both integral exponential conditions B4 is identically zero. The conclusion also holds for a series \(\beta\) converging on every closed \(p\)-adic polydisk of finite radius. It requires neither torus symmetry nor descent to the unramified coefficient field. A nonzero exponent for the original problem must therefore have infinite support and cannot converge on every such polydisk. The zero series is permitted by these local conditions. [Source coboundaries and B3–B4, lines 47–74](https://github.com/leanprover-community/riemann-hypothesis/blob/40e56bab026552e089d7afcfeff08d2defb9c005/src/Formalism/SharpRestriction/Divisibility/ProductZerothFirstParts.lean#L47-L74) · [Source logarithm with the site permutation](https://github.com/leanprover-community/riemann-hypothesis/blob/40e56bab026552e089d7afcfeff08d2defb9c005/src/Formalism/PeriodIntegrals/FunEqAll.lean#L11-L14)

**Coefficient calculation.** Normalize \(v(p)=1\). On the polydisk of radius \(r_e=p^{-1/q^e}\), the weighted valuation of the term of level \(h\) in \(L_i\) is \(-h+q^h/q^e\). Its minimum is \(1-e\), attained only at \(h=e\). For \(h<e\) use \(h+1\le e\); for \(h=e+k>e\) use \(q^k>k+1\). The Gauss norm of each \(L_i\) is therefore \(M_e=p^{e-1}\), with unique dominant monomial \(p^{-e}T_{\pi^ei}^{q^e}\).

For a polynomial \(P=\sum_\alpha c_\alpha Z^\alpha\) this proves
\[
 \|P(L)\|_{r_e}=\max_\alpha |c_\alpha|M_e^{|\alpha|}.
 \tag{E.1}
\]
Indeed for a product of the \(L_i\) the unique maximal weighted term picks level \(e\) in every ordered factor. Different \(\alpha\)'s give distinct exponent vectors \(q^e(\pi^e)_*\alpha\). Even ties between maximizing monomials of \(P\) cannot cancel at any of these distinct leading indices. Every coefficient sum at a fixed index is finite. The remaining upper bound follows by submultiplicativity of the Gauss norm. If \(P\) is entire, approximate by its polynomials in the radius-\(M_e\) Gauss norm. Substitution is contractive between these two radii, so passing to the limit proves (E.1). In particular, if all coefficients of \(P(L)\) have absolute value at most one, (E.1) implies \(P\) is constant. This proof extends to any finite set of sites permuted by \(\pi\).

There is an explicit sequence detecting failure for every nonconstant polynomial. Choose \(\alpha\) of highest degree \(d\) with \(v(c_\alpha)\) minimal within that degree. For all sufficiently large \(e\), \(c_\alpha Z^\alpha\) maximizes (E.1), and the coefficient at \(q^e(\pi^e)_*\alpha\) has valuation exactly \(v(c_\alpha)-ed\). For a direct integer check, any competing product of \(n\) factors reaching total degree \(dq^e\) chooses levels \(h_j\) with
\[
 \sum_j q^{h_j}=dq^e,\qquad \sum_j h_j+n\le d+ne .
\]
The inequality follows by adding \( (h+1)q^e\le q^h+eq^e\). At \(n=d\) a single off-level choice makes it strict. The [Lean module](AlpogeHondaPolynomialRigidity.lean) proves the strict level separation, both ordered-factor inequalities, distinctness of the scaled permuted indices, and the ultrametric norm identity for a strictly dominant coefficient. The full analytic rigidity theorem is a manuscript argument.

**Apply the calculation to the original exponent.** Write \(x\) for the even sites and \(y\) for the odd sites, with the additional odd copy \(z\). B3 gives \(\beta(x,0)=\beta(0,y)=0\). The odd coboundary is
\(\beta(x,y+z)-\beta(x,y)-\beta(x,z)\). In the integral exponential after Honda substitution, take the coefficient linear in the new copy \(Z_j\) and of degree zero in its other variables. The exponent vanishes at \(Z=0\), and the linear terms of the logarithms form the identity. Consequently this coefficient series is precisely
\[
 P_j(L(X),L(Y)),\qquad
 P_j(x,y)=\partial_{y_j}\beta(x,y)-\partial_{y_j}\beta(x,0).
\]
The permutation preserves parity; the remaining logarithms are the same full system on the original sites. Since B4 bounds the coefficients of this slice and \(P_j(x,0)=0\), (E.1) forces \(P_j=0\) for each \(j\) if \(\beta\) is polynomial or entire. In characteristic zero this excludes every term of total odd degree at least two. The even coboundary excludes every term of total even degree at least two in the same way. The remaining mixed bidegree \((1,1)\) is explicitly excluded by B3. Without that exclusion arbitrary bilinear polynomials have zero coboundaries, so this last hypothesis is essential.

The monomial \(x^{2p}y^2\) in the two-site orbit illustrates a second detection mechanism. It is torus invariant. Its odd coboundary is \(2x^{2p}yz\); at \((2p^2,p,p)\) only the \(p\)-th exponential power contributes, giving \(2^p/p!\) of valuation \(-1\) for odd \(p\). The theorem above also detects arbitrarily deep losses even if the polynomial is multiplied by any fixed power of \(p\). This is an obstruction to replacing an actual nonzero exponent by a fixed polynomial at all degrees. It does not invalidate correct finite truncations of the true B4 series at the stated orders.

### A mixed coefficient of the elliptic sigma example

For the actual \(p=3,\ c=-i\) elliptic sigma **test series** of §B, the leading term of \(P=\partial_y\beta(x,y)-\partial_y\beta(x,0)\) is \(5ixy^2\). Let \(H(k,n)=[T^n]L(T)^k\) and \(h=9^e\). Exactly, the coefficient of \(X^hY^{2h}Z\) in the positive exponential of the odd coboundary is
\[
 S_e=\sum_{a,b} b\beta_{a,b}\,H(a,h)H(b-1,2h).
\]
It only uses \(a\le h,\ 2\le b\le2h+1,\ a\equiv1,\ b\equiv3\bmod 8\). The leading term contributes \(5i/3^{3e}\). With \(H(k,n)=\sum_{9^j\le n}3^{-j}H(k-1,n-9^j)\), exact rational calculations give the following valuations. The last source term is the monomial \(x^{h}y^{2h+1}\) of degree \(3h+1\).

| \(e\) | Degree | Nonzero summands | Leading contribution | Without last term | Complete \(v_3(S_e)\) |
|---:|---:|---:|---:|---:|---:|
| 1 | 28 | 6 | −3 | −3 | 1 |
| 2 | 244 | 231 | −6 | −30 | 1 |

For example \(S_1=-112428489\,i/27625\). The coefficients \(\beta_{a,b}\) here use the Weierstrass recurrence and torus projection (6)–(9), with no fitted values. These two computations check individual coefficients of the original test construction and quantify the loss from deleting its highest contributing degree. [Exact calculation](../../../scripts/verify_alpoge_sigma_dwork.py)

### An integrality test without coefficient Frobenius

There is also a direct test for the norm condition over any extension of \(\mathbb Q_p\), including ramified ones. For \(G=\sum_{\alpha\ne0}g_\alpha T^\alpha\) of zero constant term, define
\[
 b_\alpha=g_\alpha-\sum_{\substack{k\ge1\\p^k\mid\alpha}}
               b_{\alpha/p^k}^{\,p^k}/p^k .
\]
Divisibility means divisibility in every coordinate. Every recursion is finite. Then \(\exp G\) has integral coefficients if and only if every \(b_\alpha\) is integral. Indeed the Artin–Hasse series \(A(T)=\exp(\sum_{j\ge0}T^{p^j}/p^j)\) has coefficients in \(\mathbb Z_{(p)}\); use the Dieudonné–Dwork criterion over \(\mathbb Q_p\) on this single universal series, whose logarithmic defect is \(-pT\). Formal logarithms give \(\exp G=\prod_{\alpha\ne0}A(b_\alpha T^\alpha)\) by coefficient comparison. In each total degree the product stabilizes. If \(\exp G\) is integral, remove the factors of all lower degrees by integral power-series division; in the first remaining degree the coefficient of \(T^\alpha\) equals \(b_\alpha\), proving necessity by induction. The converse follows by multiplication. This is the multivariate monomial form of the classical Artin–Hasse/Witt decomposition. [Katz, *Witt Vectors and a Question of Keating and Rudnick*, §2](https://web.math.princeton.edu/~nmk/wittchar31.pdf)

Applied to each \(G=(\Delta_i\beta)\circ L\), this tests the valuation part of B4. The indices \((h,2h,1)\) in the preceding computation already have a coordinate prime to \(p\), so at these indices \(b_\alpha=g_\alpha=S_e\) without lower-level Witt terms. The archived definition also requires coefficients in its designated unramified field; when B1 holds there, formal arithmetic preserves that field. For a ramified check take \(p=3,\ \varpi^2=3,\ E=1+\varpi T\). This \(E\) is integral, while the coefficient of \(T^3\) in \(\log E(T^3)-3\log E(T)\) is \(\varpi-\varpi^3\) of valuation \(1/2\). Taking the identity as a coefficient Frobenius on this ramified ring would give an incorrect test. Neither formulation supplies the genuine theta coefficients required to prove (M).
