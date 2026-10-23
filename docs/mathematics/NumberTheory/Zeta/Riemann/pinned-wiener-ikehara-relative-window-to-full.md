# Last-mile Wiener–Ikehara: from relative windows to the full cumulative limit

Issue: #940. Parent: #928 / draft PR #933.  
Branch: research/940-wi-interval-to-full-v01.  
Exact parent head: 980277d0740ccb6d2d4a9fb30a8c65392ed6436d.

Evidence: **SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED**.

## 1. What has actually been advanced

The historical *Prime Number Theorem + Project* proof of the Wiener–Ikehara theorem first derives a limit for nontrivial multiplicative intervals and only then passes to the normalized full cumulative sum. The final passage is a genuine Tauberian lemma: even when a fixed interval is asymptotically controlled, its omitted prefix still contains arithmetically meaningful terms. One must prove that the omitted contribution can be made uniformly small by taking the relative cutoff sufficiently close to zero.

This child formalizes that **last-mile lemma**, not the full Wiener–Ikehara analytic theorem. It is reusable for arbitrary real sequences satisfying positivity, one fixed Chebyshev growth budget, and the complete interval family, and then for the literal pinned von Mangoldt sequence.

## 2. Exact interval statement

Let \(f:\mathbf N\to\mathbf R\) satisfy \(f(n)\ge0\), with a single \(C\ge0\) such that

\[
S_N:=\sum_{n<N}f(n)\le CN
\]

for all \(N\ge0\). Suppose that for each fixed \(\delta\in(0,1)\),

\[
\boxed{
W_{\delta,N}
:=\frac1N
\sum_{\lceil\delta N\rceil\le n<N}f(n)
\longrightarrow A(1-\delta)
\qquad(N\to\infty).
}
\]

The cutoff is **ceiling**, and the right endpoint is excluded, exactly as in the historical \`WienerIkeharaInterval_discrete'\` theorem specialized to the interval \([\delta,1)\). The finite denominator at \(N=0\) is totalized in Lean; all limit arguments work eventually at \(N>0\).

## 3. Quantitative finite split

At sufficiently large \(N\), \(k=\lceil\delta N\rceil\le N\). The source uses the pinned finite-sum theorem \`Finset.sum_range_add_sum_Ico\` to obtain the **exact identity**

\[
\sum_{n<N}f(n)
=\sum_{n<k}f(n)
 +\sum_{k\le n<N}f(n).
\]

The omitted normalized prefix is

\[
P_{\delta,N}:=\frac{S_k}{N}
\]

and its Chebyshev bound gives

\[
0\le P_{\delta,N}\le C\frac{k}{N}.
\]

Pinned Mathlib \`tendsto_nat_ceil_mul_div_atTop\`, composed with the natural-cast \(N\to+\infty\), proves

\[
\frac{\lceil\delta N\rceil}{N}\longrightarrow\delta.
\]

Thus, for all sufficiently large \(N\),

\[
0\le P_{\delta,N}\le 2C\delta.
\]

This explicitly proves rather than assumes that \(k\le N\) and quantifies the lost prefix.

## 4. Epsilon-squeeze proof

Fix \(\epsilon>0\). Choose one \(\delta\) satisfying

\[
0<\delta\le
\min\left(\frac14,\,
\frac{\epsilon}{8(C+|A|+1)}\right).
\]

Since the interval hypothesis holds for **every** such positive \(\delta\), for all sufficiently large \(N\),

\[
|W_{\delta,N}-A(1-\delta)|<\epsilon/2.
\]

Simultaneously \(P_{\delta,N}\le2C\delta\). From the exact split,

\[
\begin{aligned}
\left|\frac{S_N}{N}-A\right|
&=\bigl|(W_{\delta,N}-A(1-\delta))
 +(P_{\delta,N}-A\delta)\bigr|\\
&\le |W_{\delta,N}-A(1-\delta)|
+P_{\delta,N}+|A|\delta\\
&<\frac{\epsilon}{2}+(2C+|A|)\delta
\le\frac{3\epsilon}{4}<\epsilon.
\end{aligned}
\]

Therefore

\[
\boxed{\frac{S_N}{N}\longrightarrow A.}
\]

This is an actual mathematical proof, not the definition of the limit, a mere condition repackaging, or an assumption that a ceiling cutoff can be removed. The Lean source authors the full epsilon proof under explicitly named hypotheses.

The proof here uses the complete family of small fixed \(\delta\). **It does not prove that only one fixed \(\delta\) would be insufficient.** In fact, an independent contractive iteration may be able to extract the same full limit from a single relative interval and the growth bound. That would be a distinct theorem and is not claimed here.

## 5. Actual pinned von Mangoldt consumer

Take \(f(n)=\Lambda(n)\), \(A=1\), and

\[
C=\log4+4.
\]

The source previously established

\[
\sum_{n<N}|\Lambda(n)|\le CN
\]

for every \(N\), and pinned Mathlib gives \(\Lambda(n)\ge0\). Thus the theorem applies without any new arithmetic hypothesis.

The only missing premise is the actual von Mangoldt relative interval statement

\[
\boxed{
\forall\,0<\delta<1:\quad
\frac1N\sum_{\lceil\delta N\rceil\le n<N}\Lambda(n)
\longrightarrow 1-\delta.
}
\]

The child defines that as \`PinnedVonMangoldtRelativeIntervalLimits\`, **without constructing it**. Its exact consumer is

\`\`\`lean
pinnedVonMangoldtWeakPNT_of_intervalLimits
  (hinterval : PinnedVonMangoldtRelativeIntervalLimits) :
  Tendsto
    (fun N : ℕ => pinnedVonMangoldtRangeSum N / (N : ℝ))
    Filter.atTop (nhds (1 : ℝ))
\`\`\`

The child thereby removes the historical *final* Tauberian passage from the cross-version port. The remaining source is the mathematically deeper relative-interval limit that uses the Wiener–Ikehara analytic/Fourier or distribution machinery.

## 6. Source provenance

Historical [PrimeNumberTheoremAnd/Wiener.lean](https://github.com/AlexKontorovich/PrimeNumberTheoremAnd/blob/a5040887e6bb24f7c201db8568e7755c138b3878/PrimeNumberTheoremAnd/Wiener.lean), blob \`06d464bfbf34b21360a8c725422d6c7d1cb4c2eb\`, contains:
- \`WienerIkeharaInterval_discrete'\` around line 2061;
- its consequence \`WienerIkeharaTheorem'\` around line 2122;
- \`WeakPNT\` around line 2196.

Pinned Mathlib supplies:
- \`Finset.sum_range_add_sum_Ico\` for the exact initial-prefix and interval split;
- \`tendsto_nat_ceil_mul_div_atTop\` for the ceiling asymptotic;
- Chebyshev psi growth and von Mangoldt nonnegativity, packaged by prior PRs #918 and #933.

The historical project pins Mathlib \`308445d7985027f538e281e18df29ca16ede2ba3\`, but \`grwtsk/math\` pins \`db584cd6d46c92f209a44c0f1c829460d327499d\`. No historic theorem proof term is imported or treated as an implicit axiom.

## 7. Hostile controls and remaining research frontier

The control module replays exact range/cutoff equality, the early-prefix budget, generic de-windowing, and the literal pinned \(\Lambda\) consumer. It rejects the false target \(\operatorname{TauberianRelativeWindowLimits}(0,1)\): a zero arithmetic sequence cannot produce a nonzero relative-window limit. It also guards against inferring limits from one finite computation, confusing a right-closed interval with the historical \(\operatorname{Ico}\), or treating source metadata as a proof.

**Remaining independent supplier:** the \(\Lambda\) relative interval-limit theorem, equivalent to the historical \`WienerIkeharaInterval_discrete'\` instance with \(a=\delta,b=1,A=1\), plus its source-bound pinned compatibility and #100 kernel/axiom replay. It is not discharged by this packet.

This branch belongs to the negative audit of the mathematically rejected fixed uniform integer-\(\psi\) capacity. It does not recover that false premise, prove RH, or rule out other nonlinear arithmetic programs.

## Evidence

\`\`\`
SOURCE_DRAFT
NOT_RUN
NOT_KERNEL_AUDITED
EXACT_CEILING_WINDOW_PARTITION_SOURCE_DEFINED
PREFIX_LOSS_CONTROL_SOURCE_DEFINED
WINDOW_TO_FULL_TAUBERIAN_THEOREM_SOURCE_DEFINED
PINNED_LAMBDA_INSTANCE_SOURCE_DEFINED
RELATIVE_INTERVAL_WIENER_IKEHARA_PROOF_PORT_OPEN
NO_LOCAL_WEAK_PNT_PROOF
NO_RH_CLAIM
\`\`\`

No Lean/Lake run, kernel acceptance, mathematical merge, or claim of an unconditional PNT result is represented.
