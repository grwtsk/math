# Finite Bernoulli total variation from exact Walsh correlation energy

**Evidence:** SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED (2026-10-22).  
**Owner:** [grwtsk/math#675](https://github.com/grwtsk/math/issues/675).  
**Direct parent:** [#667 / draft PR #670](https://github.com/grwtsk/math/pull/670), head cfc194e5d8f4401bd2fdc82dab39c4d959f989fb, tree 9b3d652a1d216ae186ad81907da4349ff4b787da.  
**Ancestors:** [#658 / PR #663](https://github.com/grwtsk/math/pull/663) (finite cyclic seam), [#654 / PR #655](https://github.com/grwtsk/math/pull/655) (all-event boundary coupling), [#630 / PR #638](https://github.com/grwtsk/math/pull/638) (finite rational Walsh patterns).  
**Separately developed arithmetic source:** [#635 / PR #647](https://github.com/grwtsk/math/pull/647) (pinned Mathlib Liouville). It is NOT imported here.

## Exact finite source and probability definitions

Let I be any finite coordinate type, including the empty type; put \(k=|I|\), \(M=2^k\), and let \(\mathcal B=\{-1,+1\}^I\) be the **complete** Boolean pattern alphabet. Let R be an actual finite set of root identities with \(|R|>0\), and \(x:R\times I\to\{-1,+1\}\) be an arbitrary deterministic Boolean label array. Define the empirical pattern distribution and its **full all-order** nonempty-correlation energy:

\[
P_R(a)=\frac{1}{|R|}\#\{n\in R:x(n,\cdot)=a\},\qquad
C_R(S)=\frac{1}{|R|}\sum_{n\in R}\prod_{i\in S}x(n,i),\qquad
\mathcal E_R=\sum_{\varnothing\neq S\subseteq I} C_R(S)^2.
\]

These observables are ordinary equal-root-weight Cesàro averages, **not logarithmic averages**. Every nonempty subset S appears, not just singleton/pairwise correlations. The empty correlation \(C_R(\varnothing)=1\) is kept in the full Walsh expansion and removed only when centering.

The uniform fair Bernoulli block law is \(U_I(a)=1/M\). For each Boolean event \(A:\mathcal B\to\{0,1\}\), define its **actual** empirical-vs-uniform discrepancy

\[
D_R(A)=\sum_{a\in\mathcal B}{\bf1}_{A(a)}
     \left(P_R(a)-\frac1M\right).
\]

The source definition empiricalVsUniformTV is

\[
\boxed{d_{\rm TV}(P_R,U_I)=\max_{A:\mathcal B\to\{0,1\}}|D_R(A)|.}
\]

This is the all-event/supremum definition of total variation on a finite alphabet, not the maximum of a single singleton-pattern discrepancy. The full event family always contains the empty event. It does not assume that a uniform Bernoulli sample can itself be represented by an empirical finite root set.

## Source-binding and exact mean-zero identity

Issue #667 / PR #670 scripts the exact scaled finite Walsh/Plancherel identity. Define

\[
\delta(a)=M P_R(a)-1.
\]

Then the prior source scripts

\[
\sum_{a\in\mathcal B}\delta(a)^2=M\mathcal E_R.
\]

In the new source, the sum of \(\delta\) is not adopted as an axiom or decorative premise. It is **derived** by summing the centered Walsh polynomial over all patterns, invoking complete Walsh-character orthogonality against the empty character:

\[
\boxed{\sum_{a\in\mathcal B}\delta(a)=0.}
\]

The source builds real-valued versions of these exact rational identities using the same empiricalPattern and nonemptyMomentEnergy definitions inherited from #667, and exposes explicit rational-to-real casts. A separate lemma proves \(\mathcal E_R\geq0\) from the complete finite sum of squared source correlations.

## Sharp finite Cauchy–Schwarz transfer

Fix any event \(A\) and define the sign weight

\[
w_A(a)=
  \begin{cases}
  +1,&a\in A,\\
  -1,&a\notin A.
  \end{cases}
\]

Because \(\sum_a\delta(a)=0\),

\[
2\sum_{a\in A}\delta(a)
    =\sum_{a\in\mathcal B}w_A(a)\delta(a).
\]

For **every** event, \(w_A(a)^2=1\), so the complete weight-squared sum equals M. Finite Cauchy–Schwarz gives

\[
\left(2\sum_{a\in A}\delta(a)\right)^2
 \leq\left(\sum_a w_A(a)^2\right)
      \left(\sum_a\delta(a)^2\right)
 =M^2\mathcal E_R.
\]

Since \(D_R(A)=(\sum_{a\in A}\delta(a))/M\), we obtain

\[
|D_R(A)|\leq\frac12\sqrt{\mathcal E_R}.
\]

Taking the maximum over **every** Boolean event yields the finite target:

\[
\boxed{
d_{\rm TV}(P_R,U_I)\leq\tfrac12\sqrt{\mathcal E_R}.
}
\]

No half-L1 equivalence is assumed or needed. The coefficient \(1/2\) is sharp already for a single Boolean coordinate and one observed sign, where \(\mathcal E_R=1\) and total variation equals \(1/2\).

At k=0, the finite Boolean alphabet has one empty pattern, its empirical distribution equals the uniform law, and \(\mathcal E_R=0\), so both sides are zero. For k>0 the bound can exceed 1 when the energy is large; this is a valid (potentially nonsharp) upper bound, not a false claim that total variation can exceed one.

## Source and trust details

New module: GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteWalshBernoulliTV.lean, blob 2ebb845a9c71ef949d12f23fabdd0d8e5e44e8bd. Its source contains 5 definitions and 11 theorem scripts. The generic signed-event lemma applies to any nonempty finite alphabet, while the source-specific corollary uses the **actual inherited root identities** and rational empirical pattern law.

The pinned mathlib revision is db584cd6d46c92f209a44c0f1c829460d327499d, with Lean toolchain leanprover/lean4:v4.33.0. Mathematical ingredients are classical finite Boolean Fourier/Walsh theory and Cauchy–Schwarz. Imported Mathlib lemma names were inspected at the pinned revision (finite sum-multiplication Cauchy–Schwarz, Fintype cardinality, sqrt positivity). Existing source still awaits clean exact-head Lean elaboration and independent trust audit.

An independent finite rational enumeration checked the identities and \(4\,d_{\rm TV}^2\leq\mathcal E_R\) for all binary sample words of lengths 1 through 3 and coordinate widths 0 through 3 (685 complete sample words). This diagnostic is **not** an execution of Lean, theorem admission, analytic cancellation, or a proof certificate.

## Dependency boundary and next source-only increment

A later separate theorem must connect **identically selected event semantics and pattern/root identities** across:
- empirical-to-uniform TV from this module, and
- cyclic-to-ordinary TV from [#658](https://github.com/grwtsk/math/issues/658).

Only then may the triangle inequality be used, under \(0< N\), \(r\leq N\), and every selected h≤r:

\[
d_{\rm TV}(P_{\rm cyclic},U_I)
\leq\frac12\sqrt{\mathcal E_{\rm ordinary}}+\frac rN.
\]

This combined bound is a **mathematical consequence under the stated finite hypotheses**, not an implemented Lean declaration in the present increment. No theorem about \(r/N\to0\), Chowla correlation decay, Liouville ergodicity, Bernoulli genericity, fixed-to-growing-shift uniformity, Möbius transport, GUE/zeta zeros or the Riemann hypothesis is proved.

Hostile proof review must reject normalization with R empty; loss of the empty character before centering; omission of higher-order correlations; sign reversal; dropping M or the factor 1/2; treating one selected pattern as the full event supremum; invalid casts; misidentifying source roots or shift coordinates; and interpreting paper/algebraic source as a kernel proof.

**SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED:** no Lean/Lake/native execution, independent verification or replay under #100, worker qualification or F06 release, root import, merge, issue closure, or RH proof is claimed.
