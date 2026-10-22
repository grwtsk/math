# Finite cyclic-window seam: exact root support and total variation

**Evidence status:** SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED (2026-10-22).

**Owner:** [grwtsk/math#658](https://github.com/grwtsk/math/issues/658). **Direct parent:** [#654, PR #655](https://github.com/grwtsk/math/pull/655) at exact revision c4d3f20e57f6a153bfec9d3f6ce7a3c3188c25d2, tree 3b6bca4aa0523b4c36ff815c35ef39ec53cd7ea8. **Inherited TV module:** GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FinitePatternBoundaryTV.lean, blob 8087556eaff5a988caba7a2ec89b5f4607daa8ca. Mathematical chain: #630 / PR #638 (finite Walsh); #654 / PR #655 (generic event TV); this issue (#658) proves a cyclic seam supplier. The separate actual Liouville arithmetic binding #635 / PR #647 is NOT imported into this chain.

## The exact finite approximation

Let \(N>0\) and \(0\le r\le N\). Let \(H\subseteq\mathbb N\) be a finite set of offsets satisfying \(h\le r\) for each \(h\in H\). Let \(a:\mathbb N\to\{-1,+1\}\) be any actual binary sequence, represented in Lean by a Boolean whose true and false cases encode the two signs.

For each original root \(n\in R_N=\{0,\ldots,N-1\}\), construct **two labels from the same sequence**:

\[
X(n,h)=a(n+h),\qquad
X_{\rm cyc}(n,h)=a((n+h)\bmod N).
\]

The cyclic model repeats the **first N original labels**. It is not an independently sampled Bernoulli sequence. No operation changes the source, its finite index coordinates, or the selected root identities.

Define the exceptional seam **as a concrete subset**, not an unquantified boundary:

\[
\boxed{E_{N,r}=\{N-r,\ldots,N-1\}.}
\]

Mathlib's finite natural interval-cardinality theorem supplies the purely finite result

\[
E_{N,r}\subseteq R_N,\quad |E_{N,r}|=r
\qquad (r\le N).
\]

For a good root \(n\in R_N\setminus E_{N,r}\), one has the **strict** inequality \(n<N-r\). Thus for any selected \(h\le r\),

\[
n+h<N,\qquad (n+h)\bmod N=n+h,
\qquad X(n,h)=X_{\rm cyc}(n,h).
\]

The bound at n=N-r-1 is valid; the root n=N-r belongs to the seam. The whole argument works with H empty and includes the extrema r=0 and r=N, provided N>0 for probability normalization.

## The consumed finite-TV supplier

The parent #654 defines total variation using the **complete family of Boolean events** on the selected finite pattern alphabet and proves, at source-script scope, that if two labels agree on every selected coordinate outside a named exceptional set E,

\[
d_{\rm TV}(P_X,P_Y)\le\frac{|E|}{|R|}.
\]

Using the actual R_N, E_{N,r}, and off-seam equality above gives the source-script target

\[
\boxed{
d_{\rm TV}(P_{\rm ordinary,N,H},P_{\rm cyclic,N,H})
\le \frac{r}{N}.
}
\]

The result is a finite inequality, not an asymptotic estimate and not an equality claim. It does **not** require every seam root to differ; r is an upper bound for the possible disagreement.

### Sharpness and essential guards

The constant can be sharp. With N=2, r=1, H={1} and a(0)=a(1)=+1, a(2)=-1, the ordinary offset-one windows are (+1,-1), while cyclic windows are (+1,+1). The empirical total variation is \(1/2=r/N\). This is a **paper arithmetic example** and not an additional checked Lean declaration.

- At r=0, the seam is empty and any allowed shift is zero; ordinary and cyclic windows agree exactly.
- At r=N, every root can lie in the seam; the inequality permits the trivial bound 1. It does not imply vanishing boundary mass.
- If r>N, the finset definition saturates at R_N rather than having r roots. This is why r≤N is a required theorem hypothesis.
- At N=0, the cyclic expression is a syntactically defined natural modulo operation, but no empirical probability is claimed. The TV theorem requires N>0.
- If r=r_N grows proportionally to N, r_N/N need not approach zero. A fixed-window limit cannot be silently substituted for growing shifts.

## Exact arithmetic and spectral boundaries

To evaluate Liouville arithmetic, one must explicitly choose the same source \(a(n)=\lambda(n+1)\), using the nonzero-source guard in #635, and then check equality to the selected local labels. The ordinary term then reads \(\lambda(n+1+h)\); the cyclic term reads \(\lambda(1+((n+h)\bmod N))\). This theorem is **generic**, so that specialization is not constructed or assumed here.

Even when the seam fraction tends to zero, it does not prove that the ordinary patterns are close to the fair Bernoulli law. That requires all relevant nonempty Chowla correlations and a separate Walsh orthogonality/TV theorem. The conceptual triangle comparison

\[
d_{\rm TV}(P_{\rm cyclic},U_H)
\le d_{\rm TV}(P_{\rm cyclic},P_{\rm ordinary})
 +d_{\rm TV}(P_{\rm ordinary},U_H)
\]

has a finite boundary term bounded by r/N, but its arithmetic defect term remains open. No unconditional measure limit, Liouville ergodicity, Bernoulli genericity, Sarnak disjointness, sofic operator convergence, GUE universality or RH follows.

The map N↦the N-cycle is an elementary finite approximation of the acting group \(\mathbb Z\); having such cyclic permutation models says nothing by itself about the arithmetic labels. The argument controls **only the selected binary-pattern marginal**, not omitted geometric, source/jet, sector, multiplicity, operator or spectral labels required by #121/#168.

## Formal review and acceptance

The new source is GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/CyclicWindowSeam.lean. The proofs depend on the pinned Mathlib natural interval cardinality, finite membership/inequality, and Nat.mod_eq_of_lt results, together with the exact TV theorem in the inherited #654 source.

Source text, absence of sorry/axiom declarations, and a passive manifest are not proof acceptance. The source has not been elaborated with the pinned Lean 4.33.0 toolchain and was not kernel audited. Independent exact-head full-type, generated-declaration, axiom, import and hostile-control review under #100 is required. F06 / worker qualification remains held; no Lean/Lake/native run or Noeaaeue operational action is authorized by this documentation.

There is no public-root import, merge, issue close, or unconditional Chowla/RH theorem in this increment.
