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
