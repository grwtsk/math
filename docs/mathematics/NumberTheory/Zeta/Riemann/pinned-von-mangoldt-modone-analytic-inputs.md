# Modulus-one von Mangoldt analytic inputs for Wiener–Ikehara

Issue: #928. Parent: issue #909 / draft PR #918.  
Branch: \`research/928-weak-pnt-modone-analytic-input-v01\`.  
Exact parent head: \`d58df640ad98a20ce37956105bf141316c3e8261\`.  
Evidence: **SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED**.

## 1. Precise mathematical objective

The previous child supplies a genuine Chebyshev norm-cumsum input for the actual von Mangoldt coefficients:

\[
\sum_{n<N}|\Lambda(n)|\le (\log 4+4)N.
\]

The historical \`PrimeNumberTheoremAnd/Wiener.lean::WeakPNT\` has four other proof inputs: coefficient nonnegativity, absolute L-series convergence for all \(\sigma>1\), continuity of a pole-subtracted auxiliary on the *closed* half-plane \(\Re s\ge1\), and equality with the von Mangoldt L-series minus its residue-one pole on \(\Re s>1\).

The new module specializes the **already-pinned Mathlib analytic theorems** to modulus \(q=1\), retaining the same actual arithmetic sequence and denominator. It packages the inputs as one proof-relevant source record. This is an input package; it does not construct a Wiener–Ikehara or PNT theorem.

## 2. Exact arithmetic source at modulus one

Pinned \`Mathlib/NumberTheory/LSeries/PrimesInAP.lean\` defines

\[
\Lambda_{q,a}(n)
=
\mathbf1_{\{n\bmod q=a\}}\Lambda(n).
\]

For \(q=1\), every residue class is \(1\), including the class of \(0\). The source proves

\[
\boxed{\Lambda_{1,1}(n)=\Lambda(n)\quad\text{for all }n\in\mathbb N.}
\]

This is the declaration \`pinnedTauberianResidueClassOne_eq_lambda\`. It uses the subsingleton structure of \(\mathbf Z/1\mathbf Z\), not a character approximation or an appeal to PNT.

The actual complexification is defined by

\[
\Lambda_\mathbf C(n):=\operatorname{ofReal}(\Lambda(n)),
\]

and the local \`LSeries.LSeries_congr\` theorem transports the coefficient equality to

\[
L(\Lambda_{1,1},s)=L(\Lambda_\mathbf C,s)
\]

for all complex \(s\). This is an exact identity, not merely agreement in \(\Re s>1\).

## 3. Pinned summability and historic norm-term normalization

The historical Wiener source uses

\[
\operatorname{nterm}(\Lambda,\sigma,n)=
\begin{cases}
0 & n=0,\\
|\Lambda(n)|/n^\sigma & n>0.
\end{cases}
\]

The new source defines \`pinnedTauberianNormTerm\` with the same zero convention and proves the literal equality

\[
\boxed{
\operatorname{nterm}(\Lambda,\sigma,n)
=
\bigl\|\operatorname{LSeries.term}
(\Lambda_\mathbf C,\sigma,n)\bigr\|.
}
\]

The actual pinned \`ArithmeticFunction.LSeriesSummable_vonMangoldt\` is defined for complex \(s\) with \(\Re s>1\). In particular, at the real parameter \(\sigma>1\) it supplies

\[
\boxed{
\forall \sigma>1,\quad
\operatorname{Summable}\bigl(
n\mapsto \operatorname{nterm}(\Lambda,\sigma,n)
\bigr).
}
\]

No new absolute-convergence assumption is hidden in the source profile.

## 4. Continuous auxiliary and residue normalization

Define precisely the pinned modulus-one analytic auxiliary

\[
F(s):=
\operatorname{ArithmeticFunction.vonMangoldt.
LFunctionResidueClassAux}_{q=1}(1,s).
\]

The pinned theorem \`continuousOn_LFunctionResidueClassAux\` gives

\[
\boxed{
F\text{ continuous on }\{s\in\mathbf C:\Re s\ge1\}.
}
\]

Its pinned companion \`eqOn_LFunctionResidueClassAux\` says

\[
F(s)=L(\Lambda_{1,1},s)
-\frac{(\varphi(1))^{-1}}{s-1},
\qquad \Re s>1.
\]

Since \(\varphi(1)=1\), the already-proved coefficient identity yields the **exact pole-subtracted form**

\[
\boxed{
F(s)=L(\Lambda_\mathbf C,s)-\frac1{s-1},
\qquad \Re s>1.
}
\]

The pole is retained with its correct sign and residue. The boundary continuity and right-open identity are separate theorem fields: neither is substituted for the other.

These are the local source declarations:

\`\`\`lean
pinnedTauberianModOneAux_continuous
pinnedTauberianModOneAux_eq_lambdaLSeries
\`\`\`

## 5. Full input package, but not the Tauberian implication

The theorem

\`\`\`lean
pinnedTauberianModOneAnalyticInputs :
  PinnedTauberianModOneAnalyticInputs
\`\`\`

packages precisely:

- \(0\le\Lambda(n)\) for every \(n\);
- \(\operatorname{Summable}(\operatorname{nterm}(\Lambda,\sigma))\) for each \(\sigma>1\);
- the actual parent \`PinnedVonMangoldtCheby\` growth certificate;
- continuity of the same \(F\) on \(\Re s\ge1\);
- its exact pole identity above \(\Re s>1\).

The consuming control defines **but does not inhabit**

\`\`\`lean
MissingPinnedWienerIkeharaForLambda : Prop
\`\`\`

as the implication from these inputs to the historical range-open weak PNT limit

\[
\frac{\sum_{n<N}\Lambda(n)}N\to1.
\]

Only after a proof of that implication is imported or constructed can the previous \`WeakPNT'\` source and theta-PNT comparison be promoted to unconditional theorem proofs at the pinned repository revision.

## 6. Provenance and trust

Historical theorem:

- \`AlexKontorovich/PrimeNumberTheoremAnd\`
- revision \`a5040887e6bb24f7c201db8568e7755c138b3878\`
- \`PrimeNumberTheoremAnd/Wiener.lean\`
- blob \`06d464bfbf34b21360a8c725422d6c7d1cb4c2eb\`
- \`WienerIkeharaTheorem'\` around line 2122 and \`WeakPNT\` around line 2196.

Pinned Mathlib:

- revision \`db584cd6d46c92f209a44c0f1c829460d327499d\`;
- \`Mathlib/NumberTheory/LSeries/PrimesInAP.lean\` blob \`3e305fe2df95dde87e23938a78ff2e25f4665748\` (residue class, auxiliary, boundary continuation, exact on-right identity);
- \`Mathlib/NumberTheory/LSeries/Dirichlet.lean\` blob \`f718ca1edc35ffa92b318b2f74ddcef0e2e754a3\` (L-series summability);
- \`Mathlib/NumberTheory/LSeries/Basic.lean\` for \`LSeries.norm_term_eq\`, \`LSeries.LSeries_congr\`.

External Mathlib revision \`308445d7985027f538e281e18df29ca16ede2ba3\` does not equal the pinned revision. The historical Wiener–Ikehara proof is therefore **not** imported by this source packet.

Although pinned \`PrimesInAP\` supplies closed-half-plane L-function nonvanishing through substantial analytic developments, no theorem-bound transitive dependency audit has been performed here. Do not claim PNT-freeness or axiom closure on the strength of a declaration label alone.

Historical source \`Wiener.lean\` contains later \`sorry\` text after its displayed \`WeakPNT\` source; without a dependency/axiom closure the presence of those later declarations neither proves contamination nor certifies its absence.

## 7. Exact frontier and nonclaims

**Arithmetic and analytic input source:** the five historical hypotheses have been reconstructed over the actual pinned Lambda coefficients *in authored Lean source*. This is a new source-bound supplier, not a generic data wrapper.

**Still open:** the Tauberian Wiener–Ikehara implication itself at the current toolchain; compatible proof transport or an independent theorem proof; exact-header local Lean/Lake elaboration and kernel/axiom receipt under #100.

**No new RH result:** the surrounding fixed all-target integer-psi capacity was mathematically rejected using classical PNT and unbounded prime jumps. The present packet prepares a formal negative audit of that one false premise; it neither rescues it as an RH supplier nor disqualifies all signed/smoothed alternatives.

Evidence: \`SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED / WIENER_IKEHARA_THEOREM_PORT_OPEN / NO_PNT_OR_RH_CLAIM\`.
