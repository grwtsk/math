# Alpöge → the full arithmetic Weil positivity theorem in grwtsk/math

**Authors / adaptation:** grwtsk contributors. Source-specific Lean candidate [AlpogeWeilPositivityReturn.lean](AlpogeWeilPositivityReturn.lean), Apache-2.0 adaptation from the credited independent formal proof below.  
**Research consumer:** [math #1849](https://github.com/grwtsk/math/issues/1849); source-sensitive Weil-form work [math #1819](https://github.com/grwtsk/math/issues/1819).  
**Starting grwtsk/math main:** \`96dd44d5741a609877f4c208853d19ff5b539fd2\` (2026-11-22), Lean **v4.34.1**, Mathlib **d13f23b723b8a846827a245b89c10fc7d3f11612**.  
**Alpöge formal RH source (read-only pinned mirror):** \`tamnd/riemann-lean@af705e0d9a5904326eb0693310e36d9484df7f8f\`, \`lean/src/Main.lean\` blob \`dbd5db70bc11b35f18fa5751216ab335321e7bfc\`; \`theorem riemannHypothesis : RiemannHypothesis := rhOfAll\`; Lean **v4.33.1**, different Mathlib. [Lean/Mathlib community verification statement](https://leanprover-community.github.io/blog/posts/riemann-hypothesis/) (21 November 2026).  
**Independent, previously formalized RH → full Weil direction (primary adaptation source):** \`Kuberwastaken/riemann@94fa51e8f26794ef2d206c6c12e7adb4d85cbeaf\`, \`formal/RiemannFormal/Criterion.lean\`, Git blob \`47aa70097604b71a1bafa236a3dd1af40e7ff87c\`, Apache License 2.0, theorem \`RiemannFormal.weil_positivity_of_RH\`. That source reports sorry-free compilation/axiom audit in its **own** Zeta23 environment (Lean **v4.33.0-rc2**, Mathlib **51e6992efd06126df61a496bebf8f49482a4e129**). This is prior art, not a newly discovered proof.  
**Local already-established mathematical source:** \`GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/WeilZetaExplicitFormula.lean\`, blob \`99d2362fd66a89c746e19517360569d84cc43e70\`, and \`WeilZetaOddCriterion.lean\`, blob \`8541fb4c406ca8e3d965996509ccb3d5874e9230\`. The former adapts Zeta23's original explicit formula in an **isolated** environment; its comment explicitly states that the root build does not import it.  
**Independent complete physical source:** \`WeilGammaPhysicalReturn.lean\`, blob \`70afaf727ccaed77f170b6cdc48a62ea521e648d\`, has \`zeta_hasSum_physical_arithmetic\` with the **conductor-one pole pair, entire gamma correction, signed active prime-power sum and actual multiplicities**. Its precise equality to the distinct \`Zeta23.EF.literatureRHS\` normalization must be checked when fusing the two proof implementations.

**Evidence status:** the complete *mathematical implication* and the external pinned source proof are established. The five new Lean declarations are **SOURCE_PROOF_CANDIDATES** pending compilation in a compatible isolated build, external Alpöge theorem transport, transitive axiom audit, and kernel replay. Neither external build has been replayed in the current ChatGPT session. This is **not an independent proof of RH**: RH is the imported theorem supplying positivity.

## A. Exact main theorem: all complex compact C² autocorrelations

Write \(\widetilde f(u)=\overline{f(-u)}\), \(\varphi_f=f*\widetilde f\), and set

\[
W_{\zeta}(f)
=\operatorname{Re}\bigl[\operatorname{literatureRHS}(\varphi_f)\bigr],
\quad
f\in C_c^2(\mathbb R;\mathbb C).
\]

Here \(\operatorname{literatureRHS}\) denotes **the literal arithmetic right-hand side of Zeta23's completed zeta Weil explicit formula**, not a learned or graph-constructed kernel. It already includes gamma, poles, and the original signed von Mangoldt prime powers.

**Theorem A (full Weil positivity, consuming Alpöge).** Given Alpöge's theorem \(RH\),

\[
\boxed{\forall f\in C_c^2(\mathbb R;\mathbb C),\quad W_{\zeta}(f)\ge0.}
\]

**Proof.** Zeta23's \`EF.weilTest_contDiff\` and \`EF.weilTest_hasCompactSupport\` show that \(\varphi_f\) is an admissible compact \(C^2\) test. The exact \`WeilEF.EF_lit_zetaZeroConfig\` gives the **convergent** explicit formula

\[
\operatorname{literatureRHS}(\varphi_f)
=\sum_{\rho\text{ nontrivial}}\!m_\rho\,
  \widehat{\varphi_f}(\gamma_\rho),
\qquad
\gamma_\rho=\frac{\rho-1/2}{i},
\]

where \(m_\rho\in\mathbb N_{>0}\) is the *actual analytic multiplicity*. The theorem \`Zeta23.RH_implies_on_line\` turns Alpöge's original \`RiemannHypothesis\` into \(\operatorname{Re}\rho=1/2\), so \(\gamma_\rho\in\mathbb R\). The verified transform identity \`EF.paperFT_weilTest\` then gives, with the literal Fourier convention,

\[
\widehat{\varphi_f}(\gamma_\rho)
=\widehat f(\gamma_\rho)\,
 \overline{\widehat f(\gamma_\rho)}
=|\widehat f(\gamma_\rho)|^2.
\]

Each term \(m_\rho|\widehat f(\gamma_\rho)|^2\ge0\). The source's absolute summability and \`Complex.re_tsum\` justify taking real parts and summing; \`tsum_nonneg\` proves the claimed bound. \(\square\)

This proof does **not** require a separate positivity claim for the prime term, gamma term, or poles. Only their **complete summed source** is positive. The corresponding adapted Lean theorem is \`full_weil_positive_of_riemannHypothesis\`, exactly returning the original Zeta23 signed arithmetic functional, not just the zero-side sum.

The contrapositive is formalized as \`negative_full_weil_source_implies_not_riemannHypothesis\`: a genuine compact smooth test with a rigorously **negative complete arithmetic Weil value** would contradict RH. An indefinite truncated or constraint-free matrix is not such a test.

## B. Direct return to the grwtsk/math literal odd Weil form

The repository's \`WeilZetaExplicitFormula.literalOdd_zeta_zeroSum\` returns the literal odd form \`OddLiteralWindow.shiftedOddWeilEnergy T 0 f\` to its **original** multiplicity-weighted zero sum after exact gamma, prime and *both pole* identities. Its theorem \`literalOdd_nonneg_of_riemannHypothesis\` proves RH → nonnegativity for all supported compact \(C^2\) real odd tests. The stronger existing equivalence

\[
\boxed{
\texttt{riemannHypothesis_iff_literal_odd_nonneg}:
\quad RH\ \Longleftrightarrow\
  \forall T>0,\ \forall f\ \text{admissible real odd},
  \quad
  \texttt{shiftedOddWeilEnergy}\ T\ 0\ f \ge 0
}
\]

already identifies the correct Mathlib RH target.

**Theorem B (literal Weil positivity from Alpöge).** Applying Theorem A's source RH premise to the *existing* odd equivalence proves \(\texttt{shiftedOddWeilEnergy}\ T\ 0\ f\ge0\), for every \(T>0\) and every admissible real odd \(f\), with no finite-window cutoff. The new Lean theorem \`odd_literal_weil_positive_of_riemannHypothesis\` makes this transport explicit. The theorem \`odd_literal_positive_iff_riemannHypothesis\` retains the reverse implication and proves the return map is not a substitute for an independent RH supplier.

**Theorem C (diffusion without loss of the source).** Let \(D\) be any transformation of test functions for which \(f\in C_c^2\Rightarrow Df\in C_c^2\). Then, under Alpöge's RH, \(W_\zeta(Df)\ge0\). This follows by applying Theorem A to \(Df\). The exact formal declaration is \`full_weil_positive_after_admissible_diffusion\`.

It is important that **untruncated Gaussian heat is not compact-support-preserving**. Theorem C does not automatically cover it. For Gaussian heat \(H_t f=g_t*f\), first use a smooth cutoff \(D_{t,R}f=\eta_R H_t f\), retaining compact support. Show \(D_{t,R} f\to H_tf\) in a topology where the **complete gamma/pole/prime arithmetic functional is continuous**; then and only then pass positivity to \(H_tf\). This needs explicit tail domination and remains a separate formal obligation. The finite \`WeilDiffusionSourceBridge\` theorem shows invertible heat cannot erase a genuine negative source direction.

## C. Exactly how prime-Jacobi arithmetic participates

The prior prime-Jacobi results recover \(p_j\) from root moments of \(J\) via the positive Hankel determinant ratio

\[
p_j^2=\frac{D_{j+2}D_j}{D_{j+1}^2}.
\]

Those genuine prime values determine the von Mangoldt terms \(\Lambda(p^h)=\log p\) for all \(p^h\) in any chosen compact-support source window; the prime-power support comes from the *original* \`LowSchur.activePrimePowers A\` and \(\log(p^h)\). The prior \`PrimeJacobiSymbolPerturbation\` and \`FiniteEulerSymbolCancellation\` distinguish source-exact prime symbols from generic perturbations and supply finite error ledgers. The complete \`WeilGammaPhysicalReturn\` additionally retains its gamma integral and both pole contributions.

Thus the justified calculation diagram is

\[
\begin{array}{ccccc}
\text{Jacobi root moments}&\xrightarrow{\text{exact inverse}}&
\text{true primes}&\xrightarrow{\text{exact }\Lambda\text{ readout}}&
\text{signed arithmetic Weil source}\\
&&&&\ \downarrow\ \text{explicit formula}\\
&&\text{Alpöge RH}&\longrightarrow&
\displaystyle\sum_\rho m_\rho |\widehat f(\gamma_\rho)|^2\ge0.
\end{array}
\]

**Current limits:** source-exact arithmetic recovery is not an independent positivity proof. The full \`Zeta23.EF.literatureRHS\` and \`WeilGammaPhysicalReturn\` expressions have distinct normalizations and zero-carrier interfaces; the literal odd form is already an exact source return, but a separate general complex physical-form normalization theorem remains required. No prime-Jacobi spectral measure is equated to the zero-ordinate measure (the second-moment obstruction rules that out).

## D. Verification and compatibility gates

The new file provides exactly five theorem candidates:

1. \`full_weil_positive_of_riemannHypothesis\` — all complex compact C² tests;
2. \`odd_literal_weil_positive_of_riemannHypothesis\` — every literal odd test/window;
3. \`odd_literal_positive_iff_riemannHypothesis\` — original Mathlib RH reverse map;
4. \`negative_full_weil_source_implies_not_riemannHypothesis\` — genuine negative-source obstruction;
5. \`full_weil_positive_after_admissible_diffusion\` — domain-preserving smoothing.

The logical composition is complete **mathematically** using previously checked Alpöge and Weil formalizations:

\[
\underbrace{\vdash_{\text{Alpöge 4.33.1}}RH}_{\text{original verified theorem}}
\qquad\qquad
\underbrace{RH\implies W_\zeta(f)\ge0}_{\text{source-specific forward Weil theorem}}
\quad\Longrightarrow\quad
W_\zeta(f)\ge0.
\]

But a **single checked Lean artifact** for the conjunction still needs actual dependency compatibility, root-statement identity, independent source/kernel replay and axiom reporting. Avoid importing \`Main\` from Alpöge into math's v4.34.1 root; do not add any axiom \`hRH\`. The source currently has an explicit \`hRH : _root_.RiemannHypothesis\` parameter, not an unproved global axiom. The imported \`WeilZetaOddCriterion\` depends on the isolated Zeta23 adaptation, not part of the default root import closure. Compiling this new module requires restoring that isolated source with the correct equivalent Mathlib definitions and then proving/porting the RH supplier in the same trusted environment. None of these builds/replays occurred in this ChatGPT session.

This result is established from **Alpöge's proof** and is suitable as a reference positive-source oracle for the independently developed Hilbert–Pólya/GNS and diffusion program. It is **not** a second independent proof of RH and does not imply that the original prime-only Jacobi adjacency has zeta-zero eigenvalues.
