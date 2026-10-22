# Finite total variation from exactly labeled exceptional roots

**Status:** SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED. Mathematical owner: [math#654](https://github.com/grwtsk/math/issues/654). Parent: [math#630 / draft PR #638](https://github.com/grwtsk/math/pull/638) at exact head dc276722903ba77173e89c7e3e7288d10bbc569a; prior generic Walsh #628 and arithmetic Liouville #635 are separate sources, not this module's assumptions.

## Scope and imported parent

This is one **arithmetic-independent finite probability** result. The parent module GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteWalshPatterns.lean (blob afa3ef31687182ebccf1877aeddb1e3647c7b935) has already scripted exact pattern-count difference support under full selected-coordinate agreement outside a named exceptional-root set. Its proof is still only a source draft.

The current module GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FinitePatternBoundaryTV.lean adds finite event-level count and total-variation estimates. It is not an alternative definition of Chowla or an analytic supplier. Its exact sample and exceptional-root identities are retained in the theorem hypotheses.

## Finite theorem

Let R be a finite set of root indices and E a subset of R. Let A be a finite label alphabet, with two labeled observations x,y : R -> A. Assume

\[
x(n)=y(n)\quad\text{for every }n\in R\setminus E,\qquad |R|>0.
\]

For each Boolean event B : A -> Bool, define the exact finite event count and empirical event probability

\[
Q_x(B)=\sum_{n\in R}\mathbf1_{B(x(n))},\qquad
P_x(B)=Q_x(B)/|R|
\]

and analogously for y. The support identity is

\[
Q_x(B)-Q_y(B)=Q_{x|E}(B)-Q_{y|E}(B).
\]

Because each exceptional count is between zero and |E|, for every event, without requiring an independent bound for each pattern,

\[
\left|P_x(B)-P_y(B)\right|\le |E|/|R|.
\]

**Total variation is defined in the source as the maximum over every Boolean event on A**:

\[
d_{\rm TV}(P_x,P_y)=
\max_{B:A\to\{0,1\}}
|P_x(B)-P_y(B)|.
\]

The alphabet is finite, so the maximum exists; the family of events includes the empty event. The source thereby scripts the finite bound

\[
\boxed{d_{\rm TV}(P_x,P_y)\le |E|/|R|.}
\]

This is the standard event-supremum definition of total variation. The half-L1 formula over individual pattern probabilities is a separate equivalent formulation, but its Lean equivalence theorem is **not** implemented or claimed by this increment.

## Selected-coordinate Liouville / sofic interface

For arbitrary ambient coordinate type iota, a finite coordinate set I, and source labels x(n,i), y(n,i) in Bool, form the exact **full selected pattern**

\[
L_x(n)=(x(n,i))_{i\in I}.
\]

A root is good only if ALL labels match:

\[
\forall n\in R\setminus E,\ \forall i\in I,\quad x(n,i)=y(n,i).
\]

Then the same finite TV inequality applies on the finite alphabet of Boolean functions from I to Bool. The result controls this sign-pattern marginal only. It does not compare omitted source labels, orientation, jets, sector/multiplicity metadata, geometry, graph structure, operator domains, determinants or zeta zeros.

A future cyclic approximation may select an exceptional seam E consisting of roots whose windows wrap around an N-cycle. That application still needs an **actual proof** of seam containment and cardinality, e.g. |E| <= r for fixed maximal shift r < N. Only after those hypotheses are proved may the bound r/N be used.

If r grows proportionally with N, the theorem does not imply that the seam density vanishes. If E=R, the result allows TV as large as one. Neither small boundary mass nor finite-model ergodicity implies ergodicity of a local weak limit.

## Connection to Chowla and Bernoulli limits

Finite Walsh reconstruction in PR #638 connects all fixed nonempty sign moments to cylinder frequencies. This TV theorem bounds errors *between* two separately supplied finite labeled samples. The two results combine **conditionally** in a triangle inequality to compare a cyclic finite model to an ideal Bernoulli law, but only if separate arithmetic correlation-energy hypotheses and an actual cycle seam theorem are provided.

In particular the present finite theorem does not prove qualitative or quantitative Chowla cancellation, Frantzikinakis's ergodicity criterion, Liouville Bernoulli genericity, source preservation beyond selected labels, sofic operator convergence, Montgomery pair correlation, microscopic GUE, or Riemann Hypothesis. The Möbius function has a zero value and needs a different source adapter.

## Formal scope, hostile fixtures, verification

- Nonempty root set is essential when treating normalized event counts as probabilities; no division by an empty sample is used in the positive theorem.
- Exception must be an actual subset of the root set, not an unmeasured boundary label or unnamed bad locus.
- Agreement must hold at **each matching root and each selected coordinate**, not only at unlabeled graph neighborhoods.
- The theorem takes the maximum over the complete finite family of events. A single pattern inequality cannot replace this maximum.
- Empty I is admitted (a singleton pattern alphabet); no additional I nonempty premise is necessary.
- The bound remains |E|/|R|, not a claimed limit of zero. No growing-shift or logarithmic averaging upgrade is inferred.
- Source-only proof scripts are not kernel-accepted results: independent clean-head Lean elaboration, generated/declaration/axiom review, hostile controls, and a Noeaaeue-qualified external replay under #100 remain open.

**Pinned review:** parent PR #638 head dc276722903ba77173e89c7e3e7288d10bbc569a, inherited module blob afa3ef31687182ebccf1877aeddb1e3647c7b935, pinned Lean 4.33.0 toolchain and unchanged manifest. There is no public root import, merge, execution receipt, claim of Lean success or RH proof.
