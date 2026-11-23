# Exact skew-adjointness defect of the original Xi divisor and arithmetic control

**Attribution:** grwtsk contributors. **Mathematical consumer:** [RH/GRH blueprint #1828](https://github.com/grwtsk/math/issues/1828), [exact Fredholm divisor #124](https://github.com/grwtsk/math/issues/124), [prime/arithmetic Hilbert–Pólya #1849](https://github.com/grwtsk/math/issues/1849), and [Alpöge intermediate supplier #1850](https://github.com/grwtsk/math/issues/1850). **Adjacent Lean source:** [XiSelfAdjointDefect.lean](XiSelfAdjointDefect.lean). **Starting grwtsk/math pin:** 4d6f827cd1db597e560439874cb09dbd8ffdc2c4, Lean 4.34.1, Mathlib d13f23b723b8a846827a245b89c10fc7d3f11612.

**Actual maintained original-Xi sources:** [XiToeplitzHilbertPolyaCriterion.lean](XiToeplitzHilbertPolyaCriterion.lean) (the actual Mathlib completed zeta and its pole-removed \`sourceXi\`), [XiThetaSignedHalfPlane.md](XiThetaSignedHalfPlane.md) (unconditional zero-free disk and strict proper-domain signed inequalities), [XiThetaAntiPickSource.md](XiThetaAntiPickSource.md) (RH-equivalent all-upper-half-plane sign), and [AlpogeXiSmoothedTrace.md](AlpogeXiSmoothedTrace.md) (exact original smoothed prime Mellin/normal Fredholm resolvent and source-specific counting tails).

**External research, consulted for direction only:** Levent Alpöge, *A remark* (20 November 2026), https://alpo.ge/remark.pdf, and its Lean development, inspected via https://github.com/leanprover-community/riemann-hypothesis/tree/40e56bab026552e089d7afcfeff08d2defb9c005 . Relevant exact Lean declarations:
- \`Main.riemannHypothesis\` (\`src/Main.lean\`, blob dbd5db70bc11b35f18fa5751216ab335321e7bfc): \`rhOfAll\`;
- \`Supplements.Kernels.MainTheorems.rhOfAll\` (blob 6a542d7ce969a791fd12ce575f587e6bc29044bf): consumes \`UpperTheory.FinalTheorems.everyCharacter\`;
- \`UpperTheory.Comparison₂.core_gm\` (\`Development/AutomorphicArithmetic/PrimitiveCosets/CoreGm.lean\`, blob 3ba7a590e84c5993882ea6c5dcf9fdbed5f07d4d): the power bound requires **both** \`EAtH\` and \`CoreAtH\` at their genuine assumptions;
- \`Formalism.HC.HasWindows\` (\`Formalism/SharpRestriction/RamificationFrobenius/TotientGaloisClasses/Window.lean\`, blob 099d96fec932b03a505ea79a81c45bcc3fbf0ea3): explicitly quantified late intervals.

**Independent reading guide:** Michael O. Rubinstein, *The Alpöge–Claude proof of the Riemann hypothesis explained for the Riemann zeta function*, working draft 21 November 2026, https://www.math.uwaterloo.ca/~mrubinst/alpoge_claude_grh/zeta-paper.pdf, §§I.0–I.8, II.3–II.6 and III.4–III.9. The guide derives RH from the main inequality (M) and auxiliary estimates B, C, but **does not independently prove (M)**; it quotes a number of nontrivial mathematical suppliers from the Lean source. The author's formal endpoint and the guide are **not imports, premises, axioms or source identities** of the argument below.

## Theorem 1. Unconditional decomposition of the genuine normal Xi divisor operator

Let
\[
\xi(s)=\frac{s(s-1)}2\pi^{-s/2}\Gamma(s/2)\zeta(s),\qquad
\Xi(z)=\xi\bigl(\tfrac12+iz\bigr),\quad
F(w)=\frac{\xi(\tfrac12+\sqrt w)}{\xi(\tfrac12)},
\]
where \(F\) is the branch-independent entire even-Taylor extension, normalized by \(F(0)=1\). All its analytic zeros with multiplicity are \(\{w_j\}\). By the unconditional order-\(1/2\) genus-zero factorization and the exact source determinant in the companion work,
\[
F(w)=\prod_j(1-w/w_j),\qquad
\sum_j|w_j|^{-1}<\infty.
\tag{1}
\]

Index \(\mathcal Z^+\) by **all actual nontrivial Riemann-zeta zeros of positive ordinate, with analytic multiplicity**; there are no real nontrivial zeros. Every \(j\) therefore uniquely corresponds to
\[
\rho_j=\tfrac12+a_j+i\gamma_j,\quad |a_j|<\tfrac12,\quad\gamma_j>0,
\quad w_j=(a_j+i\gamma_j)^2.
\tag{2}
\]
The positive-ordinate indexing is by zeros \(\rho\), **not by height alone**: different zeros may share a height, and repeated zeros retain separate coordinates. The even \(\xi\) functional equation identifies the omitted negative-ordinate counterpart with the same \(w_j\).

Define the diagonal operator \(T\) on \(\mathcal H=\ell^2(\mathcal Z^+)\) by
\[
Te_j=\mu_j e_j,\qquad
\mu_j=-\frac1{w_j}
=\frac{\gamma_j^2-a_j^2+2ia_j\gamma_j}{(a_j^2+\gamma_j^2)^2}.
\tag{3}
\]
Since \(\sum|\mu_j|<\infty\), \(T\) is normal, injective, compact and **trace class**; \(\Xi(z)=\Xi(0)\det_{\rm Fr}(I-z^2T)\) identically, with the full original divisor and all multiplicities.

Let
\[
A=\frac{T+T^*}{2},\qquad B=\frac{T-T^*}{2i},\qquad T=A+iB.
\tag{4}
\]
Both \(A,B\) are self-adjoint trace-class operators, commute, and have eigenvalues
\[
\alpha_j=\frac{\gamma_j^2-a_j^2}{(a_j^2+\gamma_j^2)^2},\qquad
\beta_j=\frac{2a_j\gamma_j}{(a_j^2+\gamma_j^2)^2}.
\tag{5}
\]
The genuinely source-specific unconditional zero-free disk from \`XiThetaSignedHalfPlane.md\` gives \(\gamma_j^2>30\), while \(|a_j|<1/2\). Hence **\(A\) is strictly positive**: every \(\alpha_j>0\). The adjective means \(\langle Au,u\rangle>0\) for every nonzero \(u\), not a uniform spectral lower bound in infinite dimensions. This does **not** prove that \(T=A\).

The following **exact, multiplicity-sensitive self-adjointness defect** is unconditional:
\[
\boxed{
\|B\|_1
=2\sum_{\rho\in\mathcal Z^+}m_\rho
 \frac{|(\operatorname{Re}\rho-\tfrac12)\operatorname{Im}\rho|}
 {\big((\operatorname{Re}\rho-\tfrac12)^2+(\operatorname{Im}\rho)^2\big)^2},
\qquad
\|T-T^*\|_1=2\|B\|_1.
}
\tag{6}
\]
In the sum, \(\mathcal Z^+\) denotes **distinct** zeros, and \(m_\rho\) is their multiplicity (equivalently, sum over the repeated-index multiset in (2) with no extra \(m_\rho\)). These two conventions must not be applied together.

Every term on the right of (6) is nonnegative. Because every \(\gamma_j>0\), the defect vanishes exactly when every \(a_j=0\); the functional equation then gives the critical-line assertion for every zeta zero:
\[
\boxed{\|B\|_1=0\ \Longleftrightarrow\ T=T^*\
\Longleftrightarrow\ RH.}
\tag{7}
\]
This is a classical zero-divisor recoding and **not** an independent proof that \(\|B\|_1=0\). In particular, the positive operator \(A\) is not claimed to reproduce the actual Xi determinant.

## Theorem 2. Exact positive-determinant projection with its *missing* signed correction

The original Xi function is real entire; its nonreal \(w_j\) and \(\mu_j\) occur in equal-multiplicity conjugate pairs. Index these pairs by \(\mathcal P\). The remaining real zeros of \(F\) are strictly negative because the genuine positive Riemann theta representation gives \(F(r)>0\) for all \(r\ge0\); the corresponding real \(\mu_j\) are strictly positive.

For \(r\ge0\), let \(D_A(r)=\det_{\rm Fr}(I+rA)>0\). On any conjugate pair \(\mu=\alpha+i\beta\), \(\bar\mu=\alpha-i\beta\),
\[
(1+r\mu)(1+r\bar\mu)
=(1+r\alpha)^2+r^2\beta^2.
\tag{8}
\]
Thus the full original determinant is **not** silently replaced by a real-part Gram determinant. Its precise discrepancy is
\[
\boxed{
\frac{F(r)}{D_A(r)}
=
\prod_{j\in\mathcal P}
\left(1+\frac{r^2\beta_j^2}{(1+r\alpha_j)^2}\right),\quad
\log\frac{F(r)}{D_A(r)}
=
\sum_{j\in\mathcal P}
\log\left(1+\frac{r^2\beta_j^2}{(1+r\alpha_j)^2}\right).
}
\tag{9}
\]
The products and logs converge absolutely: \(\sum_j|\beta_j|<\infty\), \(\alpha_j>0\), and \(\sum_j\beta_j^2<\infty\). Every multiplicity is retained. Each summand is nonnegative for \(r\ge0\). Consequently for **any fixed \(r>0\)**,
\[
\boxed{
F(r)\ge D_A(r)>0,\qquad
F(r)=D_A(r)\ \Longleftrightarrow\ RH.
}
\tag{10}
\]
At \(r=0\) equality is automatic and gives **no** information. If any zeta zero lies off the line, its conjugate pair contributes a *strictly positive* factor at every \(r>0\).

The leading coefficient of the difference at the origin is
\[
\boxed{
F(r)-D_A(r)
=r^2\sum_{j\in\mathcal P}\beta_j^2+O(r^3)
=\frac{r^2}{2}\operatorname{Tr}(B^2)+O(r^3),
\quad r\to0.
}
\tag{11}
\]
The first-order coefficient matches automatically because \(\operatorname{Tr}(B)=0\) by conjugate pairing. Ordinary moment positivity or an exact first-trace match therefore does **not** identify a positive projected operator with the actual Xi divisor. Equation (11) identifies the first missing term **exactly**.

The finite real-algebra identities behind (8) and (11) are separate **Lean source proof candidates**, not infinite determinant theorems, in \`XiSelfAdjointDefect.lean\`.

## Theorem 3. Alpöge's arithmetic zero-free margin gives a quantitative operator-defect bound

Suppose independently, for a fixed \(\delta\in(0,1/2)\), an original arithmetic argument proves that \(\zeta(\rho)\ne0\) for \(\operatorname{Re}\rho>1/2+\delta\) in the nontrivial strip. The unconditional functional equation and conjugation then give
\[
|a_j|\le\delta\qquad(j\in\mathcal Z^+).
\tag{12}
\]
Put the finite **true-zero spectral sums**
\[
C_3=\sum_{j\in\mathcal Z^+}\gamma_j^{-3},\qquad
C_6=\sum_{j\in\mathcal Z^+}\gamma_j^{-6}.
\]
Both converge absolutely by unconditional Riemann–von Mangoldt counting and the source zero-free disk. They are real source constants, not data extracted from a finite zero table.

Using (5), \((a_j^2+\gamma_j^2)^2\ge\gamma_j^4\), hence
\[
|\beta_j|\le\frac{2\delta}{\gamma_j^3},\qquad
\boxed{\|B\|_1\le2\delta C_3.}
\tag{13}
\]
From \(0\le\log(1+t)\le t\) and \(\alpha_j>0\), equations (9) and (12) give the **quadratic** scalar defect:
\[
\boxed{
0\le\log\frac{F(r)}{D_A(r)}
\le 4r^2\delta^2 C_6
\quad(r\ge0).
}
\tag{14}
\]
In fact the unconditional critical-strip \(|a_j|<1/2\) itself gives the weak estimate \(\log(F(r)/D_A(r))\le r^2 C_6\), **without RH**. This is not a vanishing error bound.

**Independent completion criterion.** If a proved *family* of original one-sided arithmetic estimates yields zero-free right half-planes \(\operatorname{Re}s>1/2+\delta\) for **every \(\delta>0\)**, then (13) forces \(\|B\|_1=0\). Therefore \(T=A\) is positive self-adjoint, and the source-exact Fredholm identity becomes
\[
\boxed{\Xi(z)=\Xi(0)\det_{\rm Fr}(I-z^2H^{-2}),\qquad
H=A^{-1/2}\ \text{positive self-adjoint on its maximal domain}.}
\tag{15}
\]
This is a logically complete **conditional implication**; it does not establish the family of arithmetic estimates, and the operator remains indexed by the actual zero divisor.

Alpöge's actual source targets the missing family through \(\texttt{CoreAtH}\), \(\texttt{EAtH}\), the window theorem and \(\texttt{core_gm}\), not through a self-adjoint spectral axiom. Rubinstein's guide derives the requisite zero-free regions from an arbitrarily-late interval estimate on the original centered sum
\[
G(x)=\sum_{n\le x}\Lambda(n)(x/n-1)-x\log x+(1+\gamma_E)x.
\tag{16}
\]
Its main arithmetic inequality **(M)** is not independently established in that guide. Merely importing the Lean endpoint \(\texttt{riemannHypothesis}\), any equivalent positivity theorem, or the name of \(\texttt{core_gm}\) without the complete supply of its hypotheses violates the independent-proof requirement.

## Theorem 4. The skew-defect tail is *faster* than the full determinant tail

The previous original-divisor normal-operator estimate in \`AlpogeXiSmoothedTrace.md\` shows \(\|T-T_{\le U}\|_1=O(\log U/U)\). The skew component has the extra source factor \(a_j/\gamma_j\).

Unconditionally, \(|a_j|<1/2\) and (5) imply
\[
|\beta_j|\le\gamma_j^{-3}.
\tag{17}
\]
Let \(B_{\le U}\) retain precisely the genuine positive-ordinate zero records with \(\gamma_j\le U\), including multiplicity. If
\[
N(U)\le C U\log(2+U)\quad(U\ge1)
\]
is any valid unconditional Riemann–von Mangoldt upper bound, then dyadic decomposition gives
\[
\begin{aligned}
\|B-B_{\le U}\|_1
&\le\sum_{\gamma_j>U}\gamma_j^{-3}\\
&\le \frac{C}{U^2}
\sum_{k\ge0}2^{1-2k}
\bigl(\log(2+U)+(k+1)\log2\bigr)\\
&=\boxed{\frac{C}{U^2}
\left[\frac83\log(2+U)+\frac{32}{9}\log2\right]}.
\end{aligned}\tag{18}
\]
The geometric coefficients are exact:
\[
\sum_{k\ge0}2^{1-2k}=\frac83,\qquad
\sum_{k\ge0}(k+1)2^{1-2k}=\frac{32}{9}.
\]
No RH, no conjectural spectrum and no tail truncation without an error ledger enter this bound. As with the full determinant truncation, the finite head is indexed by **actual** zeros: it is not a verified prime-only certificate.

**Important logical control:** a tail tending to zero as \(U\to\infty\) does **not** imply \(B=0\). An off-critical zero at one fixed finite height leaves a fixed nonzero summand in (6). The arithmetic zero-free margin \(\delta\to0\), not the height cutoff \(U\to\infty\), is the missing mathematical convergence for the exact Hilbert–Pólya goal.

## Exact-rational hostile pair and mathematical acceptance

For a test that has the same strip geometry but is **not claimed to be an actual zeta zero**, take \(a=1/4,\gamma=6\). Then
\[
\mu=\frac{9200}{332929}+i\frac{768}{332929},\qquad
\bar\mu=\frac{9200}{332929}-i\frac{768}{332929}.
\]
At \(r=1\) the full pair determinant differs from the projected positive pair by exactly
\[
\boxed{(768/332929)^2>0.}
\]
At \(a=0\), the correction is exactly zero. These were checked with exact rational arithmetic, and the general inverse-square and pair polynomial identities simplified symbolically to zero using SymPy. This controls the finite algebra and proves no analytic statement about the location of actual zeros.

**Evidence and independence status:** Equations (1)–(18) are analytic derivations using the source-listed standard theorems and prior exact-source results. They have **not undergone independent mathematical review or Lean formalization as infinite operator theorems**. The companion Lean module contains only elementary algebra and sign proof candidates; Lean elaboration, fresh kernel replay and transitive axiom auditing are **NOT_RUN**. The external Alpöge theorem is neither imported nor a premise. No proof that \(B=0\) is claimed, and the positive operator \(A\) is emphatically **not** identified with the Xi determinant without the explicit defect (9).

**Next decisive analytic task:** independently reconstruct (M) with its genuine \(\texttt{CoreAtH}\), \(\texttt{EAtH}\), theta integrality, local factor, lattice, period, character, Galois-cohomology and error inputs, or prove the true all-upper-half-plane signed Xi inequality directly. Either must produce a source-exact theorem excluding all \(|a_j|>0\), rather than another self-adjoint auxiliary operator or an unverified infinite limit. A truly *source-independent* Hilbert–Pólya operator additionally requires a construction from arithmetic data and an independent determinant identity; the zero-indexed \(T\) is only a divisor-level existence and diagnostic model.
