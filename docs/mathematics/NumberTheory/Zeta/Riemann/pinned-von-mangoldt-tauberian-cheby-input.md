# The pinned Chebyshev input to Wiener–Ikehara

Issue: #909. Parent: #885 / draft PR #898.  
Branch: \`research/909-weak-pnt-pinned-chebyshev-input-v01\`.  
Exact parent head: \`8a44589a5181176cba2266e24e7d44e05979a9e7\`.  
Evidence: **SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED**.

## The mathematical supplier discharged

At the cited historical revision of the Prime Number Theorem + Project, \`PrimeNumberTheoremAnd/Wiener.lean\` defines a Chebyshev growth hypothesis for an arithmetic function \(f\):

\[
\operatorname{chebyWith}(C,f)
:\iff
\forall N\ge0,\quad
\sum_{n<N}\|f(n)\|\le C N.
\]

Its theorem \`WienerIkeharaTheorem'\` consumes this hypothesis alongside nonnegativity, absolute Dirichlet-series convergence, and a continuously extended pole-subtracted analytic auxiliary function. In the historical application \`WeakPNT\`, the arithmetic function is the literal von Mangoldt function \(\Lambda\).

Historically, \`vonMangoldt_cheby\` (Wiener.lean, around line 2143) is proved using \`BrunTitchmarsh.card_range_filter_isPrimePow_le\`. That derivation is not needed at the local pinned Mathlib revision:

\[
\boxed{
\psi(x)\le(\log4+4)x \qquad (x\ge0)
}
\]

is **already proved** as \`Chebyshev.psi_le_const_mul_self\` in pinned Mathlib \`Mathlib/NumberTheory/Chebyshev.lean\`, revision \`db584cd6d46c92f209a44c0f1c829460d327499d\`.

The arithmetic source proof in this PR gives, for all \(N\in\mathbf N\),

\[
\boxed{
\sum_{n<N}\|\Lambda(n)\|
\le(\log4+4)N.
}
\]

It does so without using PNT, Brun–Titchmarsh, a zeta-zero-free claim, or a Tauberian theorem. This discharges **one exact arithmetic hypothesis** of the historical PNT proof.

## Correct finite endpoint and normalization

The historical \`cumsum\` is open at the right endpoint:

\[
S_N=\sum_{0\le n<N}\Lambda(n).
\]

Pinned Mathlib defines the inclusive Chebyshev sum

\[
\psi(N)=\sum_{0<n\le N}\Lambda(n).
\]

The source proves the exact one-step reconciliation

\[
\boxed{
S_{N+1}=\psi(N).
}
\]

Indeed, \(\operatorname{range}(N+1)=\operatorname{Icc}(0,N)\), and \(\Lambda(0)=0\). Thus \(S_N\le S_{N+1}=\psi(N)\) by nonnegativity of the additional \(\Lambda(N)\).

All summands are nonnegative, so \(\|\Lambda(n)\|=\Lambda(n)\). The pinned upper bound on \(\psi(N)\) then supplies the historical norm-sum estimate above. The chosen constant \(\log4+4\) is nonnegative and fixed before all \(N\).

This is true at \(N=0\) and does not divide by \(N\) at zero.

## Exact local theorem family

\`\`\`lean
pinnedVonMangoldtRangeSum_succ_eq_psi
pinnedVonMangoldtRangeSum_succ
pinnedVonMangoldtRangeSum_le_psi
pinnedVonMangoldtRangeNorm_eq_sum
pinnedVonMangoldtRangeNorm_le_chebyshev

PinnedVonMangoldtChebyWith
PinnedVonMangoldtCheby

pinnedVonMangoldtCheby
pinnedVonMangoldtCheby_nonnegativeWitness
\`\`\`

The source is bound to the actual local \`ArithmeticFunction.vonMangoldt\`, not a free arithmetic sequence or target-fitted pseudo-\(\Lambda\).

## The still-missing analytic theorem

Historical \`WienerIkeharaTheorem'\` in \`PrimeNumberTheoremAnd/Wiener.lean\` (around line 2122) has the following logical inputs:

1. \(0\le f(n)\) for all \(n\);
2. absolute convergence of the Dirichlet series for every \(\Re s>1\);
3. a Chebyshev norm-cumsum bound \(\sum_{n<N}\|f(n)\|\le C N\);
4. an auxiliary complex function \(G\) continuous on the closed half-plane \(\Re s\ge1\);
5. agreement \(G(s)=L(f,s)-A/(s-1)\) on \(\Re s>1\).

The Tauberian conclusion is

\[
\frac1N\sum_{n<N}f(n)\longrightarrow A.
\]

For \(\Lambda\) and \(A=1\), this is the \`WeakPNT\` statement that drives the source proof of \`WeakPNT'\`.

The **growth input (3)** is now independently supplied by the pinned \(\psi\) bound. Positivity is pinned as \`ArithmeticFunction.vonMangoldt_nonneg\`; the pinned L-series source includes \`LSeriesSummable_vonMangoldt\` and \`Mathlib/NumberTheory/LSeries/PrimesInAP.lean\` exposes \`vonMangoldt.continuousOn_LFunctionResidueClassAux\` and \`vonMangoldt.eqOn_LFunctionResidueClassAux\`. The exact local normalization and proof adapters for (2), (4), and (5) have **not** been constructed in this increment.

Most importantly, the **Tauberian implication itself remains unported**. Nothing in the Chebyshev growth proof asserts a prime number theorem. A theorem establishing \(\psi(x)=O(x)\) is far weaker than \(\psi(x)\sim x\).

## Historical source and trust boundary

- External repository: \`AlexKontorovich/PrimeNumberTheoremAnd\`.
- Historical commit: \`a5040887e6bb24f7c201db8568e7755c138b3878\`.
- File: \`PrimeNumberTheoremAnd/Wiener.lean\`.
- Blob: \`06d464bfbf34b21360a8c725422d6c7d1cb4c2eb\`.
- \`chebyWith\`, \`cheby\`: approximately lines 807–809.
- \`WienerIkeharaTheorem'\`: approximately line 2122.
- \`vonMangoldt_cheby\`: approximately line 2143.
- \`WeakPNT\`: approximately line 2196.
- External project Mathlib: \`308445d7985027f538e281e18df29ca16ede2ba3\`.
- Local project Mathlib: \`db584cd6d46c92f209a44c0f1c829460d327499d\`.

The file contains later \`sorry\` occurrences at approximately lines 2246, 2268, and 2286. Those occur *after* the displayed \`WeakPNT\` source text. They must **not** be presented either as proof of tainted transitive dependencies or as a reason to declare the \`WeakPNT\` theorem kernel-safe; a real closure/axiom audit is required for both claims. The displayed source term for \`WeakPNT\` applies \`WienerIkeharaTheorem'\` and does not textually reference the subsequent sorry-bearing declarations.

The historical proof runs against different Lean/Mathlib versions. There has been no cross-version port, local Lean elaboration, kernel acceptance, axiom dump, external build or #100 immutable replay receipt in this packet. Exact source identity is not a proof term.

## Research disposition

**Discharged:** the genuine von Mangoldt norm-cumsum Chebyshev growth hypothesis at the pinned local source, with explicit constant and all endpoints.

**Still open:** Wiener–Ikehara Tauberian proof transport or independent implementation; exact admissible L-series normalization/closed-half-plane analytic adapters; external project compatibility; full PNT theorem proof import; kernel audit.

**Retained:** the no-go conclusion against the *specific* false fixed uniform integer-\(\psi\) capacity remains mathematically sound by classical PNT and prime jumps. This packet does not propose that capacity as an RH supplier, disprove RH, or rule out other smoothed arithmetic constructions.

The next meaningful research increment is to isolate and replay a compatible proof of the Wiener–Ikehara Tauberian theorem, with a minimal theorem-bound dependency path. Merely adding another wrapper around \`WeakPNT'\` cannot substitute for it.
