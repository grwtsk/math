# Exact finite cyclic-to-Bernoulli comparison through matched event laws

**Evidence:** SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED. Date: 2026-10-22.

**Owner:** [grwtsk/math#685](https://github.com/grwtsk/math/issues/685). **Direct parent:** [#675 / draft PR #680](https://github.com/grwtsk/math/pull/680) at fae6a751437029b0bf6dd84c4c73b4dcfac5d6c7, tree 03dc391479ca1f1a0a324c1b59c0e543219e737a. Ancestors: #667/PR #670 (finite Walsh energy), #658/PR #663 (cyclic seam), #654/PR #655 (root-event TV), and #630/PR #638 (finite rational Walsh patterns). **Separate arithmetic source:** #635/PR #647, not imported.

## A necessary probability-space identification

PR #654 computes empirical event probability by counting **original roots**. PR #675 computes deviation from the uniform law by summing frequencies over **complete Boolean patterns**. The two interfaces are mathematically equal, but not definitionally the same Lean expression. A triangle bound must not join them without an explicit theorem.

Fix a finite coordinate type I, an original finite sample-root set R, arbitrary Boolean labels x(n,i), and a Boolean event A on the complete pattern alphabet B={-1,+1}^I.

The all-coordinate indicator is

\[
\prod_{i\in I}\mathbf 1_{\{x(n,i)=p_i\}}=
\mathbf 1_{\{x(n,\cdot)=p\}}.
\]

Sum over every pattern p and transpose the **finite root/pattern sums**:

\[
\sum_{p\in B}\mathbf1_{A(p)}
 \sum_{n\in R}\mathbf 1_{\{x(n,\cdot)=p\}}
=
\sum_{n\in R}\mathbf1_{A(x(n,\cdot))}.
\]

For |R|>0, divide by the actual root cardinality and preserve the rational-to-real cast:

\[
\boxed{
\operatorname{EmpiricalEvent}_{R,x}(A)
=\sum_{p\in B}\mathbf1_{A(p)}P_{R,x}(p).
}
\]

Here P is **exactly** the inherited empiricalPattern for all coordinates and EmpiricalEvent is **exactly** the inherited BoundaryTV.empiricalEvent. The uniform event mass is separately specified by

\[
U_I(A)=\sum_{p\in B}\mathbf1_{A(p)}2^{-|I|}.
\]

The source scripts the identity

\[
\boxed{
\operatorname{uniformPatternEventDeviation}_{R,x}(A)
= \operatorname{EmpiricalEvent}_{R,x}(A)-U_I(A).
}
\]

There is no fictitious uniform empirical sample and no restriction to singleton events. With zero coordinates, the alphabet has the one empty pattern, and the identity remains meaningful.

## Finite triangle inequality using the same events

For two source labelings x and y of the **same** root set and each Boolean event A, the signed deviation identity gives

\[
\begin{aligned}
|P_{R,y}(A)-U_I(A)|
&\leq |P_{R,y}(A)-P_{R,x}(A)|+
      |P_{R,x}(A)-U_I(A)|\\
&\leq d_{\mathrm{TV}}(P_{R,x},P_{R,y})
       +d_{\mathrm{TV}}(P_{R,x},U_I).
\end{aligned}
\]

Both total-variation observables are the actual **all-event finite suprema** of the parent modules. The source scripts the bound event by event, and only then takes the finite supremum.

## Exact cyclic-seam specialization

Let a:Nat→Bool be **any** binary sequence. Choose N>0, a finite set H of distinct nonnegative offsets and r≤N with h≤r for every h∈H. The complete pattern alphabet is precisely the Boolean function type on the subtype {h:Nat | h∈H}.

Reuse the original-root labels **without changing their definition**:

\[
x_{\rm ordinary}(n,h)=a(n+h),\qquad
x_{\rm cyclic}(n,h)=a((n+h)\bmod N).
\]

The parent #658 source constructs the seam \(E_{N,r}=\{N-r,\ldots,N-1\}\), with |E|=r, and scripts

\[
d_{\rm TV}(P_{\rm ordinary},P_{\rm cyclic})\leq r/N.
\]

The parent #675 source scripts the separate fair-Bernoulli comparison

\[
d_{\rm TV}(P_{\rm ordinary},U_H)
\leq\frac12\sqrt{\mathcal E_{N,H}},
\]

where the **actual ordinary finite correlation energy** is

\[
\mathcal E_{N,H}=
\sum_{\varnothing\ne S\subseteq H}
\left(\frac1N\sum_{n=0}^{N-1}
  \prod_{h\in S}a(n+h)\right)^2.
\]

The new source identifies these event laws and then scripts the finite theorem

\[
\boxed{
d_{\rm TV}(P_{\rm cyclic},U_H)
\leq \frac12\sqrt{\mathcal E_{N,H}}+\frac rN.
}
\]

**This theorem has not been elaborated or kernel accepted in Lean.** It gives no bound on the nonempty correlations or vanishing of r/N. For r=N the seam may contain the entire original sample. For H empty the pattern law is uniform automatically.

## Arithmetic and dynamical boundaries

The separate Liouville adapter #635 / PR #647 identifies Liouville at positive integers via its prime-factor-count parity (the pinned Mathlib function has value zero at n=0). Exact specialization therefore uses a(n)=λ(n+1), giving ordinary λ(n+1+h) and cyclic λ(1+((n+h)%N)). This **source binding is not imported here** and must be proved separately with exact sign and cast types.

If future full Chowla estimates imply the nonempty correlations vanish for each **fixed** H, and r is fixed as N grows, the finite bound becomes a conditional route to a fair Bernoulli limit on that finite alphabet. This statement does not prove the arithmetic premise. The estimates required for **growing** windows/shift sets, Möbius' zero-valued alphabet, logarithmic-vs-ordinary averaging, RH-E02 maximal-prefix energy, and operator/spectral comparisons remain separate.

Neither a finite cyclic model nor a finite Bernoulli comparison proves Liouville ergodicity, Bernoulli isomorphism, GUE gap universality, or the Riemann hypothesis.

## Hostile proof controls and qualification

- N>0 for normalized probability and r≤N for exact seam size.
- The full-pattern match indicator must include every coordinate and the finite Fubini sum every pattern and original root.
- The two empirical event representations must be proved equal, including rational-to-real casts. No implicit coercion of source labels or events.
- Every TV is a supremum over the **same full Boolean event alphabet**, not one pattern.
- Ordinary/cyclic windows use the **same original** sequence and exact shift subtype. Unlabeled graph matching supplies no such guarantee.
- H empty, r=0, r=N, and off-by-one seam boundaries remain separate hostile test cases.
- The uniform law is specified by its masses rather than fabricated root samples.
- Small ordinary correlation energy is an arithmetic input; no qualitative fixed-window theorem automatically supplies growing-shift uniformity.
- Do not promote a finite distributional estimate to a spectral/GUE/zeta/RH theorem.
- Static source scripts and passive manifests do not establish Lean proof authority.

The mathematical source is GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/CyclicBernoulliComparison.lean, stacked directly on PR #680. The pinned environment remains Mathlib db584cd6d46c92f209a44c0f1c829460d327499d with Lean 4.33.0. Exact-head type, generated-declaration, axiom/transitive-import and hostile-control checks plus approved #100 replay are still mandatory.

**SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED:** No Lean/Lake/native execution, Noeaaeue worker authority change, F06 release, root import, merge, issue closure, or RH claim was made.
