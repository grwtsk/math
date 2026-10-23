# Exact finite Walsh energy for source-labeled Boolean patterns

**Evidence:** SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED. Date: 2026-10-22.

**Owner:** [grwtsk/math#667](https://github.com/grwtsk/math/issues/667). **Parent:** [#658 / draft PR #663](https://github.com/grwtsk/math/pull/663) at exact head 33b08d937dba13d299ec776cb7a7dcca7448ee43, tree 4ec198024149b36e69793be5d845b060c179a2f0. Ancestors: [#654 / PR #655](https://github.com/grwtsk/math/pull/655) (finite labeled exceptional-root total variation), [#630 / PR #638](https://github.com/grwtsk/math/pull/638) (finite rational Walsh identity), [#658 / PR #663](https://github.com/grwtsk/math/pull/663) (explicit cyclic seam). The arithmetic Liouville source #635 / PR #647 is separate, not imported.

## 1. Exact finite Fourier source

For any finite coordinate type \(I\), let \(\mathcal B=\{+1,-1\}^{I}\), with the Boolean sign convention inherited from the exact parent source (true means \(+1\), false means \(-1\)). For \(S\subseteq I\), define the Walsh character

\[
\chi_S(a)=\prod_{i\in S}a_i.
\]

Mathlib's pinned finite product/sum theorem (Finset.sum_prod_piFinset with Fintype.piFinset_univ at mathlib commit db584cd6d46c92f209a44c0f1c829460d327499d) provides the finite Fubini rearrangement. For two subsets S,T, the coordinate character sum is

\[
\sum_{b\in\{-1,+1\}}
  b^{\mathbf1_{i\in S}+\mathbf1_{i\in T}}
=
\begin{cases}2,&(i\in S)\Longleftrightarrow(i\in T),\\0,&\text{otherwise.}\end{cases}
\]

Multiplying over the complete coordinate type yields exact orthogonality:

\[
\boxed{\sum_{a\in\mathcal B}\chi_S(a)\chi_T(a)
       =2^{|I|}\mathbf1_{S=T}.}
\]

This holds with zero coordinates: there is one empty pattern and one empty character, and the sum equals one. The identity is arithmetic-independent.

## 2. Exact Plancherel

For **arbitrary rational** subset coefficients c(S), define

\[
W_c(a)=\sum_{S\subseteq I}c(S)\chi_S(a).
\]

Expanding the square, interchanging three finite sums, and applying the orthogonality identity gives

\[
\boxed{\sum_{a\in\mathcal B}W_c(a)^2
=2^{|I|}\sum_{S\subseteq I}c(S)^2.}
\]

The proof is finite algebra; no summability assumptions, stochastic independence, analytic number theory or axiom about a limiting distribution is used.

## 3. Exact empirical arithmetic-independent instantiation

Let R be a finite set of **actual sample-root identities**, assume \(|R|>0\), and let \(x:R\times I\to\{-1,+1\}\) be arbitrary Boolean labels. For every subset S define the ordinary, unweighted, Cesaro-normalized correlation

\[
C_R(S)=\frac1{|R|}\sum_{n\in R}\prod_{i\in S}x(n,i).
\]

In particular \(C_R(\varnothing)=1\), exactly. Define the empirical pattern law \(P_R(a)\) to be the fraction of source roots with every selected coordinate equal to a. The inherited parent rational Walsh reconstruction is applied to the same source and yields

\[
2^{|I|}P_R(a)=\sum_{S\subseteq I}C_R(S)\chi_S(a).
\]

Only *after* proving the empty source moment equals one may we center by subtracting the uniform mass:

\[
2^{|I|}P_R(a)-1 =
\sum_{\varnothing\neq S\subseteq I}C_R(S)\chi_S(a).
\]

Define the complete **nonempty** squared-moment energy

\[
E_R(I)=\sum_{\varnothing\neq S\subseteq I} C_R(S)^2.
\]

The resulting exact scaled squared-discrepancy theorem scripted in FiniteWalshEnergy.lean is

\[
\boxed{
\sum_{a\in\mathcal B}(2^{|I|}P_R(a)-1)^2 =
2^{|I|}\,E_R(I).
}
\]

Equivalently, by rational algebra, the chi-squared divergence from uniform equals the full moment energy:

\[
\chi^2(P_R\|U_I)= E_R(I).
\]

**The equivalence to the standard chi-squared notation is a mathematical observation, not a separate Lean declaration.** The actual Lean source uses the explicit sum-of-squares with all sample and coordinate labels present. Its output also works for an empty coordinate type, in which case E is zero.

## 4. Bernoulli and sofic comparison: next separate supplier

Finite Cauchy-Schwarz together with the standard event/half-L1 total-variation identity gives, mathematically,

\[
d_{\rm TV}(P_R,U_I)\le \tfrac12\sqrt{E_R(I)}.
\]

The inherited exact cyclic-window seam in PR #663 gives, at source-draft scope, \(d_{\rm TV}(P_{\rm cyc},P_R)\le r/N\) for offsets bounded by r≤N and N>0. Combining the two (at their **matched** source/pattern coordinate identities) would give

\[
d_{\rm TV}(P_{\rm cyc},U_I)\le
 \tfrac12\sqrt{E_R(I)}+\frac rN.
\]

**Neither of these final TV/Bernoulli inequalities is claimed as an elaborated Lean theorem by the current increment.** The extra transfer must be formalized, with the real/rational casts and full-event total-variation semantics checked. This source increment proves only the finite rational orthogonality, Plancherel, and scaled empirical squared-discrepancy formulas at source-script scope.

## 5. Nonimplications and hostile examples

1. All nonempty moments, at *every order* up to |I|, occur in E. Pairwise cancellation alone is not full independence; PR #638 has a four-sample algebraic counterexample with zero lower moments and nonzero triple moment.
2. The empty moment cannot be discarded before centering. For a nonempty root sample it is one; for empty roots, the normalized source is not a probability.
3. Finite pure algebra does not show any C_R(S) is small. Ordinary fixed-shift Chowla at given orders is different from quantitative growing-shift/all-depth/maximal estimates and from logarithmically averaged Chowla.
4. Small E for fixed I does not itself provide a uniform rate as |I| grows. Large shift windows may have r/N bounded away from zero.
5. The finite cyclic model is only a finite labeled window. It does not prove Liouville ergodicity, Bernoulli genericity, a sofic local weak limit, or an operator-spectrum connection.
6. The exact Liouville arithmetic adapter on PR #647 must be separately checked before attributing source moments to the number-theoretic Liouville function. Möbius requires a ternary/squarefree-support adapter.
7. Binary-pattern TV/chi-square information does not give Montgomery pair correlation, microscopic GUE statistics, a full zeta divisor, or RH. No mathematical theorem arrow to #15 is asserted.

## 6. Source and qualification

The source file is GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteWalshEnergy.lean, dependent on PR #663's source stack and the pinned Mathlib revision. All mathematical credit for Walsh orthogonality, finite Fourier-Plancherel, the chi-squared relationship, and Cauchy-Schwarz belongs to standard classical finite Fourier/probability theory; the repository formalization is a specialization and explicit evidence boundary, not an original proof of new arithmetic randomness.

An independent finite-arithmetic diagnostic checked character orthogonality and the scaled empirical identity for coordinate widths 0 through 4 and several small deterministic sample families. This diagnostic is **not** kernel elaboration or mathematical evidence for Chowla.

Acceptance remains conditioned on exact-head Lean 4.33.0 elaboration; all generated declarations, proof terms, imports and axioms; finite corner/hostile fixtures; source/manifest blob reconciliation; and policy-compliant external Noeaaeue replay under #100. F06/worker authority is not represented as released.

**No toolchain, dependency, root-import, workflow, execution, cache, or agent-control files are changed. The source remains NOT_RUN and NOT_KERNEL_AUDITED.**
