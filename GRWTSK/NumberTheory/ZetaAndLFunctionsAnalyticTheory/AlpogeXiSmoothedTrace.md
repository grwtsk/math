# The Alpöge prime-window source and an exact Xi arithmetic/normal-Fredholm trace

**Author:** grwtsk contributors. **Starting local source:** grwtsk/math main 39d8dbdfb041ed66de25fbcdd607578807773d40; Lean 4.34.1, Mathlib d13f23b723b8a846827a245b89c10fc7d3f11612. **Local Lean companion:** [AlpogeXiSmoothedTrace.lean](AlpogeXiSmoothedTrace.lean), new source-level algebra proof candidates, NOT_RUN for elaboration, kernel replay and transitive axiom audit. **Consumers:** [math #124](https://github.com/grwtsk/math/issues/124), [#1849](https://github.com/grwtsk/math/issues/1849), [#1850](https://github.com/grwtsk/math/issues/1850), and [#1828](https://github.com/grwtsk/math/issues/1828). Connect to [XiThetaAntiPickSource.md](XiThetaAntiPickSource.md), [XiToeplitzHilbertPolyaCriterion.lean](XiToeplitzHilbertPolyaCriterion.lean) and [AlpogeWindowSourceTransport.md](AlpogeWindowSourceTransport.md).

**External primary source:** Levent Alpöge, *A remark*, 20 November 2026, [announcement](https://alpo.ge/remark.pdf), with source SHA-256 reported as 3fc97784b71ddd44ff8aa0a177e99622a1c61b13cfa843a0989ee4a7a0cfeb8d. Original author/AI Lean source in the independently browsable community mirror **leanprover-community/riemann-hypothesis@40e56bab026552e089d7afcfeff08d2defb9c005**, Lean 4.33.1 / Mathlib 0df444a360eaa60ab8c11dca51a86af692955474. Inspected: [Main.lean](https://github.com/leanprover-community/riemann-hypothesis/blob/40e56bab026552e089d7afcfeff08d2defb9c005/src/Main.lean) blob dbd5db70bc11b35f18fa5751216ab335321e7bfc; [Statements.lean](https://github.com/leanprover-community/riemann-hypothesis/blob/40e56bab026552e089d7afcfeff08d2defb9c005/src/Statements.lean) blob 1cd1bce93344065936b2b392b23306254e0785ef; [Formalism/StatementOC.lean](https://github.com/leanprover-community/riemann-hypothesis/blob/40e56bab026552e089d7afcfeff08d2defb9c005/src/Formalism/StatementOC.lean) blob 12ab19c0176bd4135c2b23a7ee3ac22888df0122; [Formalism/StatementFL.lean](https://github.com/leanprover-community/riemann-hypothesis/blob/40e56bab026552e089d7afcfeff08d2defb9c005/src/Formalism/StatementFL.lean) blob dc044005eb5db4e1c2a600cc70c8d8974c1aa8c9; [Formalism/SharpRestriction/RamificationFrobenius/TotientGaloisClasses/Window.lean](https://github.com/leanprover-community/riemann-hypothesis/blob/40e56bab026552e089d7afcfeff08d2defb9c005/src/Formalism/SharpRestriction/RamificationFrobenius/TotientGaloisClasses/Window.lean); [Development/AutomorphicArithmetic/PrimitiveCosets/CoreAtH.lean](https://github.com/leanprover-community/riemann-hypothesis/blob/40e56bab026552e089d7afcfeff08d2defb9c005/src/Development/AutomorphicArithmetic/PrimitiveCosets/CoreAtH.lean) blob 0ba3621036f19146e7e67fa9c0e8a1c38661a097; [CoreGm.lean](https://github.com/leanprover-community/riemann-hypothesis/blob/40e56bab026552e089d7afcfeff08d2defb9c005/src/Development/AutomorphicArithmetic/PrimitiveCosets/CoreGm.lean) blob 3ba7a590e84c5993882ea6c5dcf9fdbed5f07d4d; and [MainTheorems.lean](https://github.com/leanprover-community/riemann-hypothesis/blob/40e56bab026552e089d7afcfeff08d2defb9c005/src/Supplements/Kernels/MainTheorems.lean) blob 6a542d7ce969a791fd12ce575f587e6bc29044bf. Secondary **reading guide**, not an independent supply of the main theorem: Michael O. Rubinstein, *The Alpöge–Claude proof of the Riemann hypothesis explained for the Riemann zeta function*, 164-page working draft, 21 November 2026, [PDF](https://www.math.uwaterloo.ca/~mrubinst/alpoge_claude_grh/zeta-paper.pdf), Parts I–III. The guide explicitly quotes, rather than proves, the core inequality (M).

**Literature:** The classical Mellin transform of the Chebyshev ramp, the Euler product logarithmic derivative and the Riemann-von Mangoldt counting theorem; see Titchmarsh, *The Theory of the Riemann Zeta-Function*, revised by Heath-Brown, and [Riemann-von Mangoldt reference](https://mathworld.wolfram.com/Riemann-vonMangoldtFormula.html). The Fredholm product/determinant and trace-norm arguments below are classical. The specific composition is a source-preserving project interface, **not** a claimed new resolution of RH.

## A. What was learned from the actual external proof

The final actual Lean endpoint is the independent Mathlib target:
\[
\texttt{riemannHypothesis : RiemannHypothesis := rhOfAll}.
\]
In the inspected source, \(\texttt{rhOfAll}\) consumes \(\texttt{UpperTheory.FinalTheorems.everyCharacter}\), rather than a constructed self-adjoint Hilbert–Pólya operator.

The analytic arithmetic layer uses:
\[
\begin{aligned}
S(x)&=\sum_{1\le n\le x}\Lambda(n)\left(\frac{x}{n}-1\right),\\
G(x)&=S(x)-x\log x+(1+\gamma_E)x,
\end{aligned}\tag{1}
\]
where \(\gamma_E\) is Euler's constant. These are exactly \(\texttt{Formalism.Sz}\) and \(\texttt{Formalism.Gz}\) in \(\texttt{StatementOC.lean}\). In the external source \(\texttt{Level.Gm}\) also includes **weighted character terms with their actual logarithmic derivatives at 1**. It is not identical to \(G\) without the separately supplied character estimates and a source-level reduction.

The inspected core theorem \(\texttt{UpperTheory.Comparison₂.core_gm}\) derives a bound \(\Lambda.Gm(x)\le x^{1/2+(e_D+e_L+7)\varepsilon}\) **under its full \(\texttt{EAtH}\) and \(\texttt{CoreAtH}\) hypotheses**. The former includes character estimates and logarithmic-derivative control; the latter carries the intricate theta, lattice, rank, window, support and error premises. The final theorem obtains those through an enormous source dependency graph. Importing the endpoint, or substituting a condition with the name \(\texttt{CoreAtH}\), would *not* constitute a reconstruction of those analytic premises.

The Rubinstein guide specializes this process to one main averaged lattice/divisibility inequality **(M)**, two auxiliary character estimates **(B,C)**, and a one-sided bound for \(G(x)\) on arbitrarily late intervals of the form \([Y,Y^{3/2}]\). Its analytic oscillation lemma rules out zeta zeros to the right of a power exponent \(\theta\) when that bound holds. The \(\sqrt{x}\) lift count balances two genuine costs \(x/m\) and \(m\); the remaining lattice terms \(xm/k\) and \(k/n^2\) and conductor/character errors must still be bounded. This is the arithmetic direction to investigate **independently**.

## B. Exact original-prime Mellin identity, with no RH input

For any complex \(s\) with \(\operatorname{Re}s>1\), introduce the **actual** smoothed-prime Mellin source
\[
\mathcal M_G(s)=\int_1^\infty G(x)x^{-s-1}\,dx.\tag{2}
\]
For a fixed integer \(n\ge2\), direct integration, with its exact lower support boundary \(x=n\), gives
\[
\int_1^\infty \left(\frac{x}{n}-1\right)_+x^{-s-1}\,dx
=\frac{n^{-s}}{s(s-1)}.\tag{3}
\]
For \(\operatorname{Re}s>1\), the von Mangoldt Dirichlet series converges absolutely and interchange of sum/integral is legitimate. The two centering terms give
\[
\int_1^\infty x\log x\,x^{-s-1}dx=\frac1{(s-1)^2},
\qquad
\int_1^\infty x\,x^{-s-1}dx=\frac1{s-1}.
\]
Consequently
\[
\boxed{
\mathcal M_G(s)=
-\frac{1}{s(s-1)}\frac{\zeta'(s)}{\zeta(s)}
-\frac1{(s-1)^2}
+\frac{1+\gamma_E}{s-1},
\qquad \operatorname{Re}s>1.
}\tag{4}
\]
In particular, neither pole correction nor the Euler constant is optional. This is an identity involving the original von Mangoldt function and zeta Euler product, not a finite prime approximation or a hypothesis that \(G(x)\) has a sign.

## C. Direct prime-to-Xi-to-normal-resolvent return

Define the **actual** entire completed function
\[
\xi(s)=\frac12s(s-1)\pi^{-s/2}\Gamma(s/2)\zeta(s),
\qquad
\Xi(z)=\xi(\tfrac12+iz),
\]
with removable values at \(s=0,1\). Let
\[
F(w)=\frac{\xi(\tfrac12+\sqrt w)}{\xi(\tfrac12)}
\]
denote its **branch-independent entire even-power-series extension**; \(F(0)=1\), \(F\) has order \(1/2\) and is real entire. The actual source is \(\texttt{sourceXi}\) in [XiToeplitzHilbertPolyaCriterion.lean](XiToeplitzHilbertPolyaCriterion.lean); the mathematical identification of its Taylor representation is documented in [XiThetaSchurSource.md](XiThetaSchurSource.md), but is still a separate Lean formalization obligation.

On \(\operatorname{Re}s>1\), the exact gamma/pole/prime logarithmic derivative is
\[
\frac{\xi'}{\xi}(s)=
\frac1s+\frac1{s-1}-\frac12\log\pi+
\frac12\psi_\Gamma(s/2)-\sum_{n\ge2}\frac{\Lambda(n)}{n^s},\tag{5}
\]
where \(\psi_\Gamma=\Gamma'/\Gamma\) denotes the digamma function. Let \(t=\sqrt w\) be the branch satisfying \(\operatorname{Re}t>1/2\) and put \(s=1/2+t\). Substituting (4) into (5) and applying the chain rule gives the **exact signed Mellin-to-Xi return**
\[
\boxed{
\frac{F'(w)}{F(w)}
=\frac1{2t}\left[
\frac1s-1+(1+\gamma_E)s
-\frac12\log\pi+\frac12\psi_\Gamma(s/2)
-s(s-1)\mathcal M_G(s)
\right],\quad\operatorname{Re}s>1.
}\tag{6}
\]
The correction \(-1+(1+\gamma_E)s\) is the outcome of combining **all three** original pole/centering terms. It cannot be obtained by discarding the gamma factor or replacing the prime terms by their leading average.

The Lean companion supplies the purely algebraic cancellation in (6), with all complex parameters independent, so the identity cannot silently depend on RH. **The analytic identities (2)–(5), the chain rule for the genuine source, and the full operator trace equality are not yet Lean proofs in this project.**

For the next equality, enumerate the **actual complete analytic zero multiset of \(F\)** as \((w_j)_{j\in J}\), retaining every multiplicity. Because \(F\) has order \(1/2<1\) and \(F(0)=1\), classical Hadamard factorization gives
\[
F(w)=\prod_{j\in J}(1-w/w_j),\qquad
\sum_j|w_j|^{-1}<\infty.\tag{7}
\]
Define the actual-zero-indexed diagonal operator
\[
Te_j=\mu_j e_j,\qquad \mu_j=-w_j^{-1}
\quad\text{on }\ell^2(J).\tag{8}
\]
This \(T\) is **normal and trace class unconditionally**, but it is **not known to be positive or self-adjoint independently**. Every spectral factor exactly equals the corresponding original \(F\)-zero factor:
\[
F(w)=\det_{\mathrm{Fr}}(I+wT),\quad
\Xi(z)=\Xi(0)\det_{\mathrm{Fr}}(I-z^2T).\tag{9}
\]
On the zero-free Euler region \(\operatorname{Re}(1/2+\sqrt w)>1\), logarithmic differentiation of the trace-class determinant yields
\[
\boxed{
\operatorname{Tr}\bigl(T(I+wT)^{-1}\bigr)
=\sum_j\frac{\mu_j}{1+w\mu_j}
=\frac{F'(w)}{F(w)}
=\frac{\frac1s-1+(1+\gamma_E)s
-\frac12\log\pi+\frac12\psi_\Gamma(s/2)
-s(s-1)\mathcal M_G(s)}{2\sqrt w}.
}\tag{10}
\]
This is a **complete signed arithmetic-to-original-divisor-normal-resolvent identity**: all actual zeros, multiplicities, gamma terms, poles and prime powers are linked with no fitted spectrum. It is not a proof that the operator is self-adjoint.

## D. An unconditional quantitative trace-class and divisor-convergence budget

In (7) each zero \(w_j\) corresponds, with its analytic multiplicity, to precisely one actual positive-ordinate nontrivial zeta zero
\[
\rho_j=\tfrac12+a_j+i\gamma_j,\quad\gamma_j>0,\quad
w_j=(a_j+i\gamma_j)^2.
\]
The negative-ordinate partner is encoded by the evenness of xi. In particular,
\[
|w_j|=a_j^2+\gamma_j^2\ge\gamma_j^2.\tag{11}
\]
Let \(N(U)\) count all actual positive-ordinate zeros through height \(U\), **with multiplicity**. The unconditional Riemann-von Mangoldt theorem gives a constant \(C>0\) with
\[
N(U)\le C\,U\log(2+U)\qquad(U\ge1).\tag{12}
\]
For \(T_0\ge1\), cut the diagonal \(T\) to the finite set \(\gamma_j\le T_0\), obtaining a finite-rank normal operator \(T_{\le T_0}\). The omitted trace-norm mass obeys
\[
R(T_0):=\|T-T_{\le T_0}\|_1
=\sum_{\gamma_j>T_0}\frac1{|w_j|}
\le \sum_{k=0}^\infty
  \frac{N(2^{k+1}T_0)}{(2^kT_0)^2}.
\]
Using (12), the elementary inequality
\(\log(2+2^{k+1}T_0)\le\log(2+T_0)+(k+1)\log2\),
and the **exact** geometric sums
\(\sum_{k\ge0}2^{1-k}=4\) and
\(\sum_{k\ge0}2^{1-k}(k+1)=8\), we obtain
\[
\boxed{
\|T-T_{\le T_0}\|_1
\le\frac{C}{T_0}
\bigl[4\log(2+T_0)+8\log2\bigr].
}\tag{13}
\]
This proves trace-norm convergence \(T_{\le T_0}\to T\) with an explicit *rate in terms of the classical zero-counting constant*, **without RH**. It does not provide a computable cutoff from primes because the finite head is indexed by the genuine zeros and their multiplicities.

Let \(D_{T_0}(w)=\det(I+wT_{\le T_0})\), \(S=\|T\|_1\), and let \(|w|\le R\). The elementary infinite-product bound gives
\[
\boxed{
|F(w)-D_{T_0}(w)|
\le e^{RS}\bigl(e^{R\,R(T_0)}-1\bigr).
}\tag{14}
\]
Thus \(D_{T_0}\to F\) **locally uniformly**, with a quantitative error. On any finite contour \(\mathcal C\) whose boundary has \(\delta=\inf_{\mathcal C}|F|>0\), the condition
\[
e^{RS}(e^{R\,R(T_0)}-1)<\delta
\tag{15}
\]
implies by Rouché that \(D_{T_0}\) and \(F\) have **the same number of zeros inside** \(\mathcal C\), counted with analytic multiplicity. This is an actual operator/determinant/divisor limiting theorem, not just an unquantified finite-dimensional picture.

The statements (7)–(15) are analytically established using classical entire-function and zero-counting facts; the constants \(C,S,\delta\) remain **source-defined** and are not supplied as computable certificates. Lean elaboration, kernel replay, and independent review of this exact composite argument are NOT_RUN.

## E. Exactly what the independent arithmetic supplier must prove

For the **true** \(G\) in (1), consider the following source-meaningful arithmetic statement:
\[
\boxed{
\begin{gathered}
\forall \theta\in(\tfrac12,1)\ \forall y>0\
\exists Y\ge y:\quad
\forall x\in[Y,Y^{3/2}],\quad G(x)\le x^\theta.
\end{gathered}
}\tag{16}
\]
The classical one-sided Mellin oscillation/Landau argument (given with details in Rubinstein's guide, Part II, §1) shows that (16) excludes every original zeta zero with real part greater than \(1/2\). The completed-zeta functional equation then excludes the reflected left corridor, giving all nontrivial zeros exactly on the critical line. Hadamard factorization (7) then gives \(w_j=-\gamma_j^2<0\), so \(T\) in (8) is positive self-adjoint. Its inverse square root \(H=T^{-1/2}\), on the **maximal unbounded operator domain**, yields
\[
\boxed{
\Xi(z)=\Xi(0)\det_{\mathrm{Fr}}(I-z^2H^{-2}),
\qquad H^{-2}\text{ positive trace class},
}\tag{17}
\]
with the complete original divisor and zero multiplicities. The universal original-source anti-Pick inequality follows from this positive determinant:
\[
\forall\operatorname{Im}w>0,\quad
\operatorname{Im}(F'(w)\overline{F(w)})\le0.
\tag{18}
\]

**Independence gate:** (16) is NOT proved by this document or by the Lean companion. In the original Alpöge proof, it is obtained from the deep averaged theta/lattice main inequality, auxiliary character bounds, and analytic window criterion. Importing \(\texttt{riemannHypothesis}\), \(\texttt{rhOfAll}\), \(\texttt{UpperTheory.FinalTheorems.everyCharacter}\), or \(\texttt{core_gm}\) with its unestablished hypotheses as an "independent supplier" would violate this task. Even if the full source-exact conditional implication (16) ⇒ (17) is formalized, it remains **conditional on an RH-strength arithmetic premise** until the latter is independently proved.

The unproved full signed inequality (18) is equivalent in RH-strength to (16) with the complete analytic continuation/functional equation. **No independent proof of (16) or (18) is supplied here**. The identity (10) is initially only on the Euler region and cannot be used outside it without establishing continuation plus the corresponding sign. An unrelated positive Jacobi or graph operator cannot be substituted for \(T\) merely because its eigenvalues are real.

## F. Evidence, mathematical comparison, and next proof obligation

- **Established classical analysis:** Mellin identity (4), completed-zeta source return (6), full original-zero normal Fredholm identity (9), quantitative trace-norm/determinant/divisor approximation (13)–(15), all without RH.
- **Executed source-independent symbolic check:** the cleared complex algebra (6) simplifies identically to zero; a 50-digit calculation for \(s=2.3+0.9i\) matches the direct completed-zeta derivative to below \(10^{-50}\). These checks support the algebra, not the sign throughout the critical strip or Lean acceptance.
- **Lean candidate:** two finite algebra claims in the adjacent file (pole/gamma cancellation and the one-factor complex resolvent identity). They are not a formal derivation of the whole analytic theorem; elaboration, fresh kernel replay, axiom audit **NOT_RUN**.
- **Open hard arithmetic proof:** independently derive the full main averaged theta/lattice inequality (M), preserve its entire error budget and the character corrections, and then prove (16) *for the true original source* without importing the external endpoint. The 164-page working guide explicitly does not fully reprove (M); the author-published 175,187-file Lean source is the primary formal input for studying it.
- **Open Hilbert–Pólya theorem:** prove (18) independently for every upper-half-plane \(w\), equivalently show the exact source-normal \(T\) is positive/self-adjoint. The unconditional trace-class and divisor convergence proved here are **not** a substitute for positivity.
- **Potentially stronger goal:** construct a source-independent arithmetic operator whose determinant equality (9) is proved without indexing the definition by zeros; neither Alpöge's presented proof nor the present source establishes such an operator.

This reverse-engineering result is an analytically source-preserving **partial theorem and dependency bridge**, not a new unconditional RH proof or independent exact positive Hilbert–Pólya realization. It does not use the external RH theorem as a premise. Local dependency pins and original mathematical source identities are preserved; no root imports or toolchains are changed.
