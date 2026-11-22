# A below-one one-sided bound for the TRUE native integrated Chebyshev tail

**Mathematical consumer:** [grwtsk/math #1850](https://github.com/grwtsk/math/issues/1850), independent of Alpöge's final Riemann hypothesis proof, with external 7/8 source-port coordination at [math #448](https://github.com/grwtsk/math/issues/448) and the RH/GRH blueprint [#1828](https://github.com/grwtsk/math/issues/1828).

**Maintained isolated Lean SOURCE_PROOF_CANDIDATE:** [SevenEighthsIntegratedTail.lean](SevenEighthsIntegratedTail.lean). The original Alpöge environment is Lean 4.33.1 with Mathlib 0df444a360eaa60ab8c11dca51a86af692955474. The source file is intended for staging at src/GRWTSK/NumberTheory/AlpogeNativeSevenEighthsIntegratedTail.lean in a disposable copy of the original environment; it must NOT be imported into the incompatible grwtsk/math root or unreviewedly joined with OpenAI's Lean 4.34.1 environment.

## 1. Exactly which independently published theorem changes the status

OpenAI's *The Quasi-Riemann Hypothesis: A Zero-Free Half-Plane Re(s)>7/8* (September 30, 2026) is accompanied by [openai/math](https://github.com/openai/math/tree/4eaee87548250b2682affda7d05d947c05554bae/lean), at pinned immutable source commit 4eaee87548250b2682affda7d05d947c05554bae, original theorem module
[Nonvanishing.lean](https://github.com/openai/math/blob/4eaee87548250b2682affda7d05d947c05554bae/lean/OAI/NumberTheory/DirichletL/Nonvanishing.lean), Git blob 46c67f4000906b1391a471d6e6396ac0da3c16a5.
It exposes EXACT public propositions (for actual Mathlib zeta and Dirichlet LFunction):

- OAI.riemannZeta_ne_zero_of_seven_eighths_lt_re: for every s with Re(s)>7/8, riemannZeta(s)≠0;
- OAI.DirichletCharacter.LFunction_ne_zero_of_seven_eighths_lt_re: for all q>0, Dirichlet characters chi and s with Re(s)>7/8, the actual LFunction chi(s)≠0 except the principal-character pole combination chi=1 and s=1.

The source proof body imports OAI.NumberTheory.DirichletL.Detector.FinalAssemblyUnconditional, Git blob e7c20910424837fb954796e1216f5aa453bbd5da, which delegates to actual certified detector bands rather than an RH assumption. The separate ComparatorChallenges.QuasiRiemannHypothesis.lean, blob e7d1caf6c579dc9afbf0d2b01f79e5cd2511b028, contains a deliberate proof hole as an *unfilled comparator challenge*, NOT as the solution module. Comparator JSON blob acf552468fc23c1a27d685d33983c58c50040542 lists permitted axioms propext, Quot.sound and Classical.choice; it is NOT by itself a kernel receipt. External independent rebuild reports are published by tomoto0/quasi-riemann-hypothesis-7-8-verification; those reports warrant their stated scope but do not mean this research session replayed Lean.

**Important admission boundary:** OpenAI's source is Lean 4.34.1, Mathlib d13f23b723b8a846827a245b89c10fc7d3f11612 (verified from its pinned lake manifest, Git blob 67d01d2717d0aaff59fb8814bb53581b961f42b4). Alpöge's original Lean 4.33.1/Mathlib 0df444a... is incompatible. Our source models those EXACT original proposition forms as explicit inputs and does NOT claim the external OAI proof has been safely imported, compiled or accepted by grwtsk/math. The local external-result port owner #448 remains a separate trust gate.

The rest of this note is a classical mathematical consequence **if one accepts the independently published 7/8 theorem**. This is independence from Alpöge's *final RH result*, NOT a claim of a new self-contained 7/8 theorem derived from prime-Jacobi reconstruction.

## 2. Preserve the original native Level and all characters

For ANY FIXED genuine Formalism.HC.Level Λ (including exceptional levels, not merely cyclic or ofSub levels), use the actual native objects:

\[
c_\Lambda(n)=1+\sum_{\psi\in\Lambda.Nt}\Lambda.wt(\psi)\Re(\psi.\chi(n)),\quad
\Psi_\Lambda(x)=\sum_{1\le n\le\lfloor x\rfloor}
(\operatorname{vonMangoldt}n)c_\Lambda(n),\quad
R_\Lambda(x)=\Psi_\Lambda(x)-x.
\]

The original Level.Nt erases PChar.one, so every retained primitive ψ.χ is genuinely NONPRINCIPAL; this follows from original PChar.of_self and PChar.of_one, as proved mathematically in adjacent [Normalization.md](Normalization.md). For an exceptional Level one of the original Level.wt can equal 1, but all weights are finite real constants. A fixed Level has FINITELY MANY original primitive characters with genuine individual conductors; ramified values zero exactly where the actual Dirichlet character does. There is NO substitution of the cyclic two-symbol formula at nonunits, and no synthetic zeta-zero or Jacobi spectral input.

The independently published 7/8 theorem applies to all these actual L(s,ψ.χ) and to actual ζ(s), with no final RH import or conductor-uniform numerical constant requested here. For every fixed β with 7/8<β<1, the classical zero-free half-plane-to-Chebyshev explicit formula transfer (Perron inversion, the original logarithmic derivatives, polynomial vertical growth and zero count, truncation/endpoint control) gives, after absorbing powers of log(x) into x^(β−7/8):

\[
\boxed{
\exists K=K(\Lambda,\beta)\ge0,\ X=X(\Lambda,\beta)\ge1,\ 
\forall t\ge X,\quad |R_\Lambda(t)|\le Kt^\beta.
}\tag{A}
\]

In detail, the pole of -ζ'/ζ at 1 supplies the ONE copy of t in Ψ; each nonprincipal character contributes no pole at 1. The half-plane Re s>7/8 has no zeros of the relevant actual L-functions, including any exceptional real zero, so a truncated explicit formula on a fixed vertical line strictly to the right of 7/8 gives error O_(Λ,ε)(t^(7/8+ε)) with at most powers of log t. A final small exponent margin absorbs the logs. This gives a genuine all-t estimate for each fixed Level, not a finite-grid test. Constants can depend strongly on Λ; no uniform-in-conductor coefficient or threshold is asserted.

**Analytic source NOT YET LEAN PROVED:** The actual truncated explicit formula and zero-free-to-Chebyshev x^β implication (A) have not been formalized, compiled or replayed in either of the two incompatible Lean environments as part of this task. They form the explicitly named OriginalExplicitFormulaPowerTransfer supplier in the Lean candidate. This is a standard classical analytic consequence of the published 7/8 theorem, not an independently verified machine proof of that transfer in grwtsk/math.

## 3. Genuine integrated lower bound at every target exponent above 7/8

By the prior source-specific exact Mertens/Abel normalization [SmoothedMertensTail.md](SmoothedMertensTail.md), with the original L'/L(1,χ) corrections AND Euler constant retained,

\[
\Lambda.Gm(x)=-x I_\Lambda(x),\qquad
I_\Lambda(x)=\int_x^\infty \frac{R_\Lambda(t)}{t^2}\,dt,
\qquad x\ge1.
\tag{B}
\]

This identity is analytically derived using the classical PNT in AP and genuine L'/L centering, but remains NOT_RUN in Lean as a native imported theorem. From the true all-t estimate (A), for x≥X:

\[
I_\Lambda(x)\ge-K\int_x^\infty t^{\beta-2}\,dt
=-\frac{K}{1-\beta}x^{\beta-1}.
\tag{C}
\]

Let **7/8<θ<1** and choose β=(7/8+θ)/2, so 7/8<β<θ<1. Because θ−β>0, select the threshold

\[
X_\theta=
\max\left(1,X(\Lambda,\beta),
\left(\frac{K(\Lambda,\beta)}{1-\beta}\right)^{1/(\theta-\beta)}\right),
\]
with the third term interpreted as zero when K=0. Then for all real x≥Xθ,

\[
\frac{K}{1-\beta}\,x^{\beta-1}\le x^{\theta-1},
\]

and therefore

\[
\boxed{
\forall\Lambda:\text{fixed actual Level},\
\forall\,7/8<\theta<1,\
\exists X_\theta\ge1,\
\forall x\ge X_\theta,\quad
I_\Lambda(x)\ge -x^{\theta-1}.
}\tag{D}
\]

This is the **requested genuine one-sided integrated Chebyshev lower bound below one**, obtained using the separate OpenAI 7/8 theorem plus the classical explicit formula (independent of Alpöge's final RH proof). The source's original Dirichlet conductors, exceptional Level weights, prime powers, and L'/L constants are preserved.

An explicit rational-exponent example: β=9/10, θ=15/16, β−1=−1/10, θ−1=−1/16, θ−β=3/80, and 1/(1−β)=10. Thus the interim analytical tail lower bound is I(x)≥−10K x^(−1/10), and at x=m^80 it becomes −10K/m^8; target −1/m^5 holds whenever m^3≥10K. This is a real threshold, not an experimentally guessed constant.

**Endpoint and independence scope:** No deduction at θ=7/8 with coefficient one, no θ≤7/8 result, and no RH at θ=1/2. The independent OpenAI theorem is the mathematical supplier of the exponent. The prime-Jacobi or covariant heat system does not produce that theorem, and the local code is an explicit transfer candidate, NOT a checked native proof. This result would remain a consequence of quasi-RH even if the separate Alpöge final proof were unavailable.

## 4. Exact correspondence to the original Gm and Landau consumer

Multiply (D) by positive x and use (B):

\[
\boxed{
\forall x\ge X_\theta,\quad\Lambda.Gm(x)\le x^\theta.
}\tag{E}
\]

The original intermediate Landau.zero_free_of_Chebyshev_growth (not FinalTheorems), from Alpöge Landau.lean blob 441c45be16b20bb999a1746b218c32c6fc5ba289, takes (E) and returns Level.ZeroFreeAbove θ, which is consistent with and weaker than the independently supplied 7/8 theorem. No circular implication has been introduced: external 7/8 zero-free ⇒ original Chebyshev error ⇒ genuine integrated bound ⇒ native Level.Gm upper ⇒ original Level.ZeroFreeAbove θ for every θ>7/8. This does not prove a threshold below 7/8, or add a stronger zero-free region to the external source.

The Lean source candidate has the exact OAI theorem input as NativeSevenEighthsNonvanishing, a separately named OriginalExplicitFormulaPowerTransfer containing ALL genuine per-Level Chebyshev obligations, and OriginalTailNormalization requiring absolute integrability plus the full native Gm equality. It then proves the scalar power integration and eventual absorption as candidate Lean scripts. The dependencies are explicit in each theorem statement. No imported theorem claims existence of these missing bridges without proof.

## 5. Trust, computation and completion

- External OpenAI 7/8 source: independently published actual theorem source; independent reported proof replay; local import/axiom audit in original Alpöge toolchain NOT_RUN and external admission tracked by math #448.
- External classical theorem: 7/8 zero-free ⇒ for every β>7/8, **uniform all-t Chebyshev bound** for fixed Level. Mathematically standard via the explicit formula; not formalized in the local source.
- Original complete Gm=-xI: mathematically derived in SmoothedMertensTail.md, original character and analytic constants included; Lean original-native elaboration/kernel NOT_RUN.
- New Lean adapter: [SevenEighthsIntegratedTail.lean](SevenEighthsIntegratedTail.lean) with seven SOURCE_PROOF_CANDIDATE theorems: actualChebyshev_nat; native_seven_eighths_of_external; integrated_lower_of_normalized_power; normalized_integrand_lower_of_true_power; eventual_native_tail_lower_of_true_chebyshev; eventual_native_integrated_tail_of_external_seven_eighths; eventual_native_gm_of_external_seven_eighths. The theorem types retain every external analytic supplier.
- Exact rational scalar exponent and threshold checks are reproducible separately. Such checks validate finite algebra, NOT the OpenAI proof, Perron contour, actual Chebyshev bound, or Lean acceptance.

**Precise outstanding formal work:** (1) independent review/admission of the pinned external OAI theorem #448; (2) source-faithful original v4.33.1 Lean proof of OriginalExplicitFormulaPowerTransfer using actual Dirichlet explicit formula, endpoint and vertical growth constants; (3) source-faithful OriginalTailNormalization, genuine L'/L, convergence and prime-power matching; (4) compile and fresh-kernel-check the seven candidates in source order; (5) pursue any θ≤7/8 improvement as a truly new arithmetic theorem rather than a consequence of existing quasi-RH.

No worldwide novelty claim is made; the explicit formula, integral power kernel and exponent absorption are classical. The source-specific comparison and precise trust ledger are the maintained new contribution in grwtsk/math.
