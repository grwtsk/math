# Closed Möbius Dirichlet polynomials

Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI Codex. Local contributions are MIT; Mathlib retains upstream authorship and Apache-2.0 licensing.

For every natural closed cutoff \(U\), the actual Möbius Dirichlet polynomial is
\[
P_U(s)=\sum_{n=1}^{U}\mu(n)n^{-s}
=\sum_{n=1}^{U}\mu(n)\exp(-\log(n)s),\quad s\in\mathbb C.
\]
It is entire, including \(U=0\). Its closed-cutoff LSeries representation agrees with the finite sum at every complex argument; no infinite continuation or convergence hypothesis is concealed in that polynomial.

For the complete signed high-factor output \(H_U=(\mu-\mu_{\le U})*(\mu-\mu_{\le U})*\zeta\), the checked initial transform is
\[
\sum_{n\ge1}H_U(n)n^{-s}
=\zeta(s)\left(\sum_{n\ge1}\mu(n)n^{-s}-P_U(s)\right)^2,
\qquad \Re s>1.
\]
All ordered factors, squareful outputs and signs remain present. The complete closed-cutoff series is absolutely summable on this initial half-plane. This identity does not continue a divergent series into a larger half-plane. A contour shift would require the exact meromorphic return, every crossed pole and zero cluster with multiplicities, and its full remainder.

## Sources and evidence

[Truncated series](../../../../GRWTSK/NumberTheory/LSeries/TruncatedMoebiusSeries.lean) and [entire closed polynomial](../../../../GRWTSK/NumberTheory/LSeries/ClosedMoebiusPolynomial.lean) have a separate public consumer receipt (artifact:gitblob:90489f7f5af779ff5b892b490b8a2a050a63d131). It reuses only unchanged source-bound arithmetic dependencies already publicly checked, and freshly replays the series consumers with literal contracts, owned bodies and transitive axioms. Counts for the reused dependencies are not counted as new proofs. Neither identity supplies P04, P05, original absolute MB6 or RH; all remain open.

<!-- BEGIN GENERATED MATHEMATICS TOTALS -->

## Totals

Scope: this object guide and the current bytes of its registered primary source [`GRWTSK/NumberTheory/LSeries/ClosedMoebiusPolynomial.lean`](../../../../GRWTSK/NumberTheory/LSeries/ClosedMoebiusPolynomial.lean).

| Inventory | Total |
|---|---:|
| Object guide | 1 |
| Linked primary source file | 1 |
| Source declaration commands | 5 |
| Theorem/lemma commands | 5 |

Theorem/lemma commands are included in declaration commands. These are source syntax counts; compiler-generated declarations and proof acceptance are outside their scope.

[Count definitions](../../../reference/library-pages.md#count-definitions) · [Structured inventory](../../../reference/library-summary.json).

<!-- END GENERATED MATHEMATICS TOTALS -->
