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
