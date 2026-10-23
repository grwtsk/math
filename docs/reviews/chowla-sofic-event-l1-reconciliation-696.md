# Finite event-supremum and half-\(L^1\) total variation: source reconciliation

**Research and source date:** 2026-10-22  
**Status:** SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED  
**Owner:** [grwtsk/math#696](https://github.com/grwtsk/math/issues/696)

**Direct parent:** [grwtsk/math PR #638](https://github.com/grwtsk/math/pull/638), updated head bc40a07d5a15e904e7226694749a60f3622c2d71 (tree 0f125f47261a99b443de8fb83864f7f1d3e9a557). The parent imports the finite rational Walsh / Parseval / categorical TV chain. The new source module is GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteEventL1Comparison.lean, blob f2daee28e2b9f1818d31983f14aa75094992e7ec.

## 1. A changed dependency graph—not a second Chowla theorem

Since the earlier dependency snapshot dc276722903ba77173e89c7e3e7288d10bbc569a, PR #638 first added fourteen commits and five source modules (FiniteWalshOrthogonality, FiniteWalshParseval, FiniteWalshTotalVariation, FiniteLabeledBoundaryTV, FiniteWalshBoundaryTriangle). It subsequently advanced four more commits to fbe3bc2b651fd24edd7eb40ed4276b8b0041bbc1, adding FiniteCyclicWalshBoundary. This increment was intentionally branched from the exact earlier review parent bc40a07d5a15e904e7226694749a60f3622c2d71; its imported triangle and categorical module blobs remain unchanged in that subsequent parent advance. Source references in the later draft branch chain #655, #663, #670, #680 and #689 remain pinned to the still-earlier dc276722 snapshot. Their file blobs and source evidence are historically identifiable, but their declarations are not automatically synchronized with the current parent branch.

Several paths now express analogous **finite** results with different data representations. The updated #638 definitions include:

- Categorical root-count variation, a **rational half-\(L^1\)** metric on complete category frequencies.
- Uniform Boolean-cube variation, also a rational half-\(L^1\) metric using the entire empirical pattern law.
- A typed **finite** boundary-to-uniform triangle theorem, with explicit label agreement and the exact parent Walsh correlation-energy supplier.

The downstream drafts #655/#680/#689 independently use **real event-supremum** total variation. Mathematical equivalence is standard, but a Lean claim cannot jump between those specific definitions merely because each is named “total variation.”

## 2. The exact generic theorem

Let \(B\) be any finite alphabet, including the empty set. Let \(\delta:B\to\mathbb Q\) be a signed vector satisfying the **essential** zero-total-mass hypothesis

\[
\sum_{b\in B}\delta(b)=0.
\]

For a Boolean event \(A:B\to\{0,1\}\), define

\[
m_\delta(A)=\sum_{b\in B}\mathbf1_{A(b)}\delta(b).
\]

The all-event-supremum functional is

\[
\operatorname{TV}_{\rm event}(\delta)
=\max_{A:B\to\{0,1\}}|m_\delta(A)|.
\]

The source theorem finiteSignedEventSup_eq_half_l1 scripts the exact classical result

\[
\boxed{\operatorname{TV}_{\rm event}(\delta)
=\frac12\sum_{b\in B}|\delta(b)|.}
\]

This is an algebraic theorem about finite signed masses. It holds for an empty alphabet because the sums and event supremum are both zero.

### Upper inequality

For any event, define its centered sign \(w_A(b)=+1\) when \(A(b)\) and \(-1\) otherwise. Zero total mass gives

\[
\sum_b w_A(b)\delta(b)=2m_\delta(A).
\]

Every \(w_A(b)\) has absolute value one. The finite triangle inequality then gives

\[
2|m_\delta(A)|
=\left|\sum_b w_A(b)\delta(b)\right|
\leq\sum_b|\delta(b)|.
\]

This controls **every** event, not just one full-pattern atom.

### Attainment by the positive-mass event

Select exactly \(A_+=\{b:\delta(b)\geq0\}\), including zero values. At this event \(w_{A_+}(b)\delta(b)=|\delta(b)|\) pointwise. Thus

\[
2m_\delta(A_+)=\sum_b|\delta(b)|
\quad\Longrightarrow\quad
\operatorname{TV}_{\rm event}(\delta)\geq\frac12\sum_b|\delta(b)|.
\]

The two bounds establish equality. **Zero total mass is not dispensable:** a one-element vector \(\delta=1\) has event supremum 1 but half-\(L^1\) equal to 1/2.

## 3. Exact rooted categorical instantiation

The updated PR #638 defines actual source category counts

\[
C_{R,x}(b)=\sum_{n\in R}\mathbf1_{\{x(n)=b\}}
\]

and proves \(\sum_b C_{R,x}(b)=|R|\) by finite root/category transposition. For the **same original root set**, let

\[
\delta_{R;x,y}(b)=\frac{C_{R,x}(b)-C_{R,y}(b)}{|R|}.
\]

Its signed sum is exactly zero, derived from the parental category-count total theorem. When \(|R|>0\), this is a valid difference of two empirical distributions. The new source's categoricalEventSupTV is precisely the all-event maximum of the normalized \(\delta_{R;x,y}\).

The source theorem categoricalEventSupTV_eq_categoricalTotalVariation scripts

\[
\boxed{
\operatorname{categoricalEventSupTV}(R,x,y)
=\operatorname{categoricalTotalVariation}(R,x,y)
}
\]

where the **right side is the actual inherited PR #638 half-\(L^1\) definition**. Every category is included; the denominator is the original root cardinality, not the number of categories/events.

The generic zero-mass formula also holds algebraically when R is empty due to Lean's totalized rational division, but the categorical theorem retains \(|R|>0\) before interpreting it as a probability statement.

## 4. Exact boundary of cross-branch compatibility

This increment establishes the **rational** all-event versus half-\(L^1\) categorical metric equality against the updated PR #638 source, using one actual source alphabet and shared roots. It does **not** import or compile the different real-valued event-supremum definitions in draft PR #655 or #680. An additional source-identity, normalization/cast, and branch-reconciliation adapter would be required before asserting equality of those concrete Lean declarations.

No PR is rebased or merged by adding this generic bridge. The latest observed PR #638 head also independently scripts a cyclic collar and finite cycle bound in FiniteCyclicWalshBoundary. Thus both PR #638 and the distinct PR #663 lineage now have cyclic seam interfaces, with different constraints and metrics (the updated parent requires maximum offset strictly below N). A downstream refactor must compare exact declarations and guards; neither source route is automatically canonical. Formal verification and carefully reviewed consolidation must precede merging or superseding either implementation.

## 5. Hostile controls and verification obligations

- Reject omission of the hypothesis \(\sum_b\delta(b)=0\). Its removal breaks the generic formula.
- Reject a maximum over singleton events: arbitrary unions of categories are required.
- Reject dropping signed negative masses when computing the lower bound; the nonnegative-mass event is exact.
- Confirm empty alphabet, singleton alphabet, zero signed mass, and both-sign distributions.
- Reject wrong normalization \(|B|\) or \(2^{|I|}\) in place of \(|R|\) for empirical category differences.
- Reject conflating rational half-\(L^1\) metrics on the updated PR #638 with real event metrics on PR #655 or #680 without a checked cast and source adapter.
- Preserve the parent branch's exact source and pinned Mathlib/Lean versions. No arbitrary rebase or implicit root import.
- Finite metric identities do not imply any Liouville Chowla cancellation, sofic ergodicity, GUE eigenvalue statistics, zeta-zero divisor identity, or RH proof.
- Absence of sorry/admit/new axiom text or agreement of finite numeric examples is not Lean elaboration or proof trust.

This source-only work requires clean pinned-head Lean 4.33.0 elaboration, generated declarations/type/proof-term review, complete transitive axiom/import/native audit, hostile examples, and Noeaaeue-authorized replay under #100 before promotion. F06 is held; no Lean/Lake/native runs, independent receipts, root imports, or merges are represented here.

**Disposition: SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.**
