# Sturmian potential, half-open coding and recurrence


For Sturmian Hamiltonians, every irrational frequency and every real nonzero coupling give a Cantor spectrum of Lebesgue measure zero, with every permitted internal gap open. Zero coupling instead gives the interval spectrum of the free discrete Schrödinger operator. The almost Mathieu operator shares the Cantor conclusion, but its spectrum generally has positive measure. These statements concern different objects from the arithmetic convergence boundary in the CCC reduction of RH.

Human mathematical direction: grwtsk contributors. Research synthesis and local formalization assistance: OpenAI Codex. Established results retain their named authors and source versions. The local Lean additions prove conditional transport, actual finite Dirichlet count comparison, the complete free eigenvalue list, the free IDS count limit with inverse cuts, the count error for splitting adjacent Dirichlet volumes, accumulated repeated-block and remainder bounds, and exact origin-to-phase/block-sampling adapters. The infinite Sturmian operator spectrum, tree, nonzero-coupling IDS construction and full Dry Ten Martini theorem remain separate formalization obligations.

## Operators and zero coupling

For an irrational $\alpha\in(0,1)$, phase $\xi\in[0,1)$ and real coupling $V$, the Sturmian operator is

$$
(H_{\alpha,V,\xi}\psi)(n)=\psi(n+1)+\psi(n-1)
+V\,\mathbf1_{[1-\alpha,1)}(\{\xi+n\alpha\})\psi(n).
$$

The half-open interval and integer lattice matter. The spectrum and IDS are independent of phase in the irrational Sturmian setting. [Band, Beckus and Loewy, arXiv:2402.16703v2](https://arxiv.org/abs/2402.16703v2), equation (1.1) and Appendix I, use phase zero after establishing this independence.

The [Sturmian transfer source](../../../../../GRWTSK/Algebra/LinearAlgebra/Sturmian.lean) preserves the literal half-open coding, integer sites, phase, exact scalar recurrence and determinant-one transfer. It proves the potential comparison offsets, the bound $|v_V(n)-v_W(n)|\le|V-W|$, zero-coupling transfer and the single-step trace criterion. The latter is algebraic; a Floquet or Fourier theorem is still required to identify an operator spectrum.


## Source and verification scope

[Source](../../../../../GRWTSK/Algebra/LinearAlgebra/Sturmian.lean). Status: **literature-and-historical-source-description**. Credit and evidence limits (artifact:gitblob:e717d9762d6031755bcd6e700ca0aa087232db0f). Earlier checks bind their recorded revisions; no new proof acceptance.

**Current source scope.** Source links identify the existing mathematical modules. Earlier proposed bindings and verification receipts retain their recorded paths and hashes; this pointer repair records current bytes and does not claim fresh proof replay.

<!-- BEGIN GENERATED MATHEMATICS TOTALS -->

## Totals

Scope: this object guide and the current bytes of its registered primary source [`GRWTSK/LinearAlgebra/Sturmian.lean`](../../../../../GRWTSK/Algebra/LinearAlgebra/Sturmian.lean).

| Inventory | Total |
|---|---:|
| Object guide | 1 |
| Linked primary source file | 1 |
| Source declaration commands | 12 |
| Theorem/lemma commands | 9 |

Theorem/lemma commands are included in declaration commands. These are source syntax counts; compiler-generated declarations and proof acceptance are outside their scope.

[Count definitions](../../../../reference/library-pages.md#count-definitions) · [Structured inventory](../../../../reference/library-summary.json).

<!-- END GENERATED MATHEMATICS TOTALS -->
