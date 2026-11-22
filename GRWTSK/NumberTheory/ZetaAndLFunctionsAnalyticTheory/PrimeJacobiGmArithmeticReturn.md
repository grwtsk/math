# Certified finite source observations to Alpöge's intermediate Gm: no final theorem

**Mathematical consumers:** `grwtsk/math#1850` (prime-Jacobi conditioning and arithmetic return), `#1828` (RH/GRH supplier blueprint), `#1819` (signed Weil source and tails).  
**Local source pin:** `grwtsk/math@a24fc18b2a55b3b78e04092307421276392fdaeb`; Lean `4.34.1`, Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`.  
**Certified prime weights:** `WeilFinitePrimeObservations.lean`, blob `a1d3a6350d9bf3a66bdebee6977962c2545e2d9b`, `primeWeightBounds_sound`; its input is the *original* `LowSchur.primeWeight n=ArithmeticFunction.vonMangoldt n/Real.sqrt n`.  
**Prime-Jacobi decoder:** `PrimeJacobiKrylovFrontier.lean`, blob `05aafe27b87dae744c49533a8906b6ab6b08cecb` (candidate), and this iteration's inverse and coefficient-envelope sources.  
**Local Lean candidate:** `PrimeJacobiGmArithmeticReturn.lean`, independent of Alpöge's final result. All Lean elaboration/axiom/kernel checks: **NOT_RUN**. Its finite arithmetic checker: `scripts/verify_prime_jacobi_gm_source.py`. No source-specific bound is promoted by a finite check.

## Source pin for each Alpöge intermediate declaration

Inspected the read-only public mirror `tamnd/riemann-lean@af705e0d9a5904326eb0693310e36d9484df7f8f` (original released Lean 4.33.1 / incompatible Mathlib). None of these modules is imported into this file.

| Upstream declaration | Exact file and Git blob | Local mathematical target |
|---|---|---|
| `Formalism.Sz`, `Formalism.Gz`, `Formalism.Schi`, `Formalism.Gchi` | `lean/src/Formalism/StatementOC.lean`, `12ab19c0176bd4135c2b23a7ee3ac22888df0122` | `sourceGz`, observed zeta sum, nontrivial real character branch |
| `Formalism.SchiC`, `Formalism.GchiC` | `lean/src/Formalism/StatementFL.lean`, `dc044005eb5db4e1c2a600cc70c8d8974c1aa8c9` | `observedSchiC`, `sourceGchiC`; retain full complex phases |
| `Formalism.HC.An.G`, `An.sumLamChi`, `An.gChi` | `lean/src/Formalism/SharpRestriction/RamificationFrobenius/TotientGaloisClasses/Analytic.lean`, `599699b5b35f6fb7bf2ab94f5f0c577b14f35ea1` | `positivePartSz`, `positivePartSchiC`, `alpogeStyleG`, `alpogeStyleGchiC` |
| `Level.Nt`, `Level.wt`, `Level.Gm`, `EAtH`, `CoreAtH` | `lean/src/Formalism/SharpRestriction/RamificationFrobenius/TotientGaloisClasses/ExplicitFormulaErrorOfHostConditions.lean`, `ed60b4b997cd4703713660b185b9e43fd95559a1` (and upstream imported definitions) | finite weighted character family with original source corrections and separately supplied analytic premises |
| `UpperTheory.Comparison₂.core_gm` | `lean/src/Development/AutomorphicArithmetic/PrimitiveCosets/CoreGm.lean`, `3ba7a590e84c5993882ea6c5dcf9fdbed5f07d4d` | *conditional* one-sided bound, NOT inferred from exact arithmetic recovery |
| `Formalism.HC.HasWindows`, `Level.FormBAt` | `lean/src/Formalism/SharpRestriction/RamificationFrobenius/TotientGaloisClasses/Window.lean`, `099d96fec932b03a505ea79a81c45bcc3fbf0ea3` | previously authored `AlpogeWindowSourceTransport` with source-identical quantifiers |

## A. An exact physical-to-Mangoldt normalization theorem

In the original Weil explicit formula, the arithmetic prime power at integer \(n\ge1\) is weighted by

\[
w_W(n)=\frac{\Lambda(n)}{\sqrt n}.
\]

But Alpöge's `SchiC` and `An.sumLamChi` use \(\Lambda(n)\), without the \(n^{-1/2}\) weight. The correct bridge is therefore **not** an identity of the two series without a multiplier. It is the exact coefficient theorem

\[
\boxed{\sqrt n\,w_W(n)=\Lambda(n)\quad(n\ge1).}\tag{A}
\]

The existing `primeWeightBounds_sound` returns rational endpoints \([\ell_n,u_n]\) for \(w_W(n)\), with the true prime-power indicator and its source log approximation. Define the observed Alpöge coefficient and certified radius

\[
\widehat\Lambda_n=\sqrt n\frac{\ell_n+u_n}{2},\qquad
\eta_n=\sqrt n\frac{u_n-\ell_n}{2}.
\]

Because \(\sqrt n>0\) for \(n\ge1\), the exact interval bounds imply

\[
\boxed{|\widehat\Lambda_n-\Lambda(n)|\le\eta_n.}\tag{B}
\]

This is the actual finite rational interval information carried into Alpöge's normalization. The factor \(\sqrt n\) is algebraic, not a rational table entry; the real interval is still certified by a rational Weil interval plus a provably positive scale. The Lean source contains separate candidates for (A) and (B), directly consuming the existing `FinitePrimeObservations.primeWeightBounds_sound`.

## B. Exact finite arithmetic return, including complex character phases

For real \(X\ge1\), write \(I_X=\{1,\ldots,\lfloor X\rfloor\}\) and define

\[
\widetilde S_z(X)=\sum_{n\in I_X}\widetilde\Lambda(n)
\left(\frac Xn-1\right),\quad
\widetilde S_\chi(X)=\sum_{n\in I_X}\widetilde\Lambda(n)\chi(n)
\left(\frac Xn-1\right).
\]

If \(\widetilde\Lambda(n)=\Lambda(n)\) on the entire exact finite window \(I_X\), then both sums equal the original `Sz` and `SchiC`, **without discarding imaginary parts**. Such exact equality is provided mathematically by certified prime-Jacobi moment rounding plus unique factorization, provided the recovered prime list includes *every* prime \(\le X\). The Lean `observedGm_eq_source_of_exact` theorem targets precisely the finite cancellation conditional on this **full-window** coverage; it does not invent a proof that a finite, possibly incomplete prime cache is exhaustive.

For every \(n\in I_X\), \(1\le n\le X\); hence the positive part in Alpöge's actual `An` functions equals the ordinary \(X/n-1\). Thus for every \(X\ge1\):

\[
\begin{gathered}
An.G(X)=G_z(X),\qquad
An.sumLamChi(\chi,X)=S_\chi(X),\\
An.gChi(\chi,X)=S_\chi(X)+X\frac{L'(1,\chi)}{L(1,\chi)}
\quad\text{for nontrivial }\chi.
\end{gathered}
\]

The **trivial** character is exceptional: the source's `An.gChi` selects `An.G` instead of a logarithmic derivative at a pole. The finite character family inside `Level.Gm` is exactly `Level.Nt=Level.KEPT.erase PChar.one`; do not merge this with the trivial branch.

The resulting local `alpogeStyleGm` is the source-expression analogue

\[
\boxed{
G_m(X)=G_z(X)+\sum_{\psi\in Level.Nt}
   w_\psi\,\operatorname{Re}\!\left(
   S_{\chi_\psi}(X)+X\frac{L'(1,\chi_\psi)}{L(1,\chi_\psi)}
   \right).}\tag{C}
\]

Here the finite index and weights **must** be instantiated using the actual upstream `Level`, with its selected character family, conductor, primitive-state evidence, exceptional member and weights. The local source does not claim to be a Lean theorem asserting equality with the incompatible v4.33.1 `Level.Gm` type; its equality is at the literal formula/normalization level, with a typed cross-edition bridge still open.

## C. Certified Gm error ledger, retaining all analytic corrections

For observed prime-weight errors \(|\widetilde\Lambda(n)-\Lambda(n)|\le\eta_n\), the triangle inequality gives the real zeta bound

\[
|\widetilde S_z(X)-S_z(X)|\le
\sum_{n\in I_X}\eta_n\left|\frac Xn-1\right|.
\tag{D}
\]

Since every genuine Dirichlet character has \(|\chi(n)|\le1\), the complex character sum has the **same norm bound**. If the separately supplied logarithmic-derivative corrections are unchanged, then for the actual finite family and real weights

\[
\boxed{
|\widetilde G_m(X)-G_m(X)|\le
\left(1+\sum_{\psi\in Level.Nt}|w_\psi|\right)
\sum_{n\in I_X}\eta_n\left|\frac Xn-1\right|.}\tag{E}
\]

If an analytic correction is itself approximate, its independent error \(X\sum|w_\psi|\epsilon_{L,\psi}\) must **also** be added. The stored `primeWeightBounds` alone does not bound the unknown complex value \(L'(1,\chi)/L(1,\chi)\) or provide any zero-free result. `observedSz_error_le` and `observedGm_error_le_of_component_bounds` target (D) and the explicitly componentwise version of (E) in Lean. The further character-norm specialization is a source-specific Lean obligation.

## D. Retain Alpöge's exact analytic hypotheses rather than replace the estimate

The upstream pinned theorem `UpperTheory.Comparison₂.core_gm` states (schematically, preserving all named arguments)

\[
\begin{gathered}
\forall\ \Lambda:\mathrm{Level},\ e_D,e_L,K,c_{HH},e_K,C,\varepsilon\in\mathbb R,
\quad\varepsilon>0,\\
\exists x_1\ \forall x\ge x_1\ \forall\varphi:\mathrm{Frame}\ \forall H:\mathrm{HostAx}(\varphi)\ \forall TT\subseteq\varphi.A,\\
 EAtH(\Lambda,H.toHostRaw,TT,x,\varepsilon,C)\ \wedge\
 CoreAtH(H.toHostRaw,TT,e_D,e_L,K,c_{HH},e_K,\varepsilon,x)\\
\Longrightarrow\quad
 G_m(x)\le x^{1/2+(e_D+e_L+7)\varepsilon}.
\end{gathered}
\]

This is a **conditional** theorem. Translating its arithmetic argument into prime-Jacobi coordinates requires (A)–(E), but it does not prove either `EAtH` or `CoreAtH`. The local `observedGm_upper_of_intermediate_suppliers` and `observedGm_upper_with_certified_error` **expose**, but do not construct, these two hypotheses and the original conditional estimate. They are only a typed interface after the exact arithmetic normalization is established; they are **not** a re-formalization of the full upstream `core_gm` proof. Its `Frame`, `HostAx`, `TT`, `EAtH` and `CoreAtH` types are not available in the root Mathlib environment and require an isolated compatible source port. Positive weights, actual conductor and primitive-character status, and nontrivial character selection must likewise be checked by that port.

Once those original inputs are actually established and the arithmetic observation budget is at most \(x^{\theta'}-x^\theta\), the separate `AlpogeWindowSourceTransport` lemma gives the approximate bound with exponent slack \(\theta'>\theta\) and then the original quantified `HasWindows` conclusion. There is no appeal to final `Main.riemannHypothesis`, `FinalTheorems.everyCharacter`, or Weil positivity implied by RH.

## E. Verification scope, novelty, and remaining exact proof tasks

- **Verified finite algebra in Python 3:** 678 exact symbolic log-prime coefficient comparisons, including nontrivial complex Dirichlet characters mod 4 and 5, through all integer and half-integer cutoffs up to 113; 223 checks used genuinely nonreal phases. Another 226 exact rational weighted arithmetic error ledgers passed, including boundary terms and separately supplied analytic correction symbols. Every prime-power readout is independently recomputed by factoring each integer. No zeta zero was supplied.
- **The existing prime-Jacobi exact checker:** 72/72 moment/Hankel/rounding checks for up to 8 prime bonds; a separate 60-bond coefficient envelope control passed. These are finite controls, not all-index Lean proofs.
- **New Lean source candidates:** exact Weil-to-Mangoldt normalization, certified observed coefficient intervals, max-convention identity, full complex arithmetic summations, finite-family equality and error ledgers, plus an `EAtH/CoreAtH`-preserving conditional estimate. **Elaboration, axiom audit and fresh kernel replay: NOT_RUN.** The actual moment-to-prime coverage and provider cross-edition equality are OPEN Lean proof obligations.
- **Classical prior art:** Jacobi inverse and orthonormal polynomials (Teschl 2000), Dirichlet Euler factors, Weil's explicit formula, Hadamard determinant bounds and the conditional half-plane Landau argument. The particular interfaces and source-typed error ledger are newly authored for this project; global mathematical novelty is not established.

**This source does not prove RH or Weil positivity independently.** Its exact source-return, finite validation and explicit open conditions make it possible to check which upstream supplier would be needed without silently importing the final result.
