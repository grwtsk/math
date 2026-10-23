# Hermitian trace-rank moment bounds


Let $A$ be a complex matrix indexed by a finite type and assume $A^*=A$.
The theorem `hermitian_trace_sq_le_rank_mul_trace_sq` states exactly
\[
  (\operatorname{Re}\operatorname{tr} A)^2
  \le \operatorname{rank}(A)\operatorname{Re}\operatorname{tr}(A^2).
\]
Positive semidefiniteness is not required. The zero matrix and empty index
types are included in this squared formulation.

## Spectral moments and the ratio

`hermitian_trace_sq_eq_sum_eigenvalues_sq` identifies the actual complex trace
of $A^2$ with the sum of the squared real eigenvalues. The
[finite support inequality](../../Analysis/Inequalities/finite-square-sum.md)
counts nonzero eigenvalues, and Mathlib identifies that count with rank.

`hermitian_trace_sq_pos` proves strict positivity of the second moment when
$A\ne0$. The ratio theorem keeps $\operatorname{Re}\operatorname{tr}(A^2)>0$
explicit and concludes
\[
\frac{(\operatorname{Re}\operatorname{tr} A)^2}
 {\operatorname{Re}\operatorname{tr}(A^2)}\le\operatorname{rank}(A).
\]
For a rectangular complex matrix $B$, `gram_rank_ge_trace_ratio` applies this
to $B^*B$ and uses Mathlib's equality of the Gram rank with the original rank.
Its positive-denominator hypothesis remains explicit.

Hermitian symmetry and the nonzero boundary are tested on actual source
expressions. The one-by-one matrix with entry $i$ has second moment $-1$ and
is not Hermitian. The zero Hermitian matrix has second moment zero. Negative
controls reject the proposed nonnegativity of the former and strict positivity
of the latter at the intended false inequalities.

## Sources, verification and credit

The [source](../../../../GRWTSK/LinearAlgebra/Matrix/TraceRank.lean)
is adapted from OpenAI's
[TraceRank formalization](https://github.com/openai/math/blob/1581d4cbdd69a0faf34b2089614fe2a814316a6a/lean/OAI/Algebra/DepthFive/TraceRank.lean).
The upstream file was supporting algebra for a circuit manuscript; this
standalone port makes no claim about that manuscript's main result.
The upstream environment used Lean 4.34.1, so its checking status was not
transferred to this Lean 4.33.0 repository.

Classical spectral Cauchy–Schwarz and related trace-rank arguments appear in
[Appleby, Bengtsson, Flammia and Goyeneche, §3](https://arxiv.org/abs/1903.06721v2)
and [Datta, Howard and Cochran, Lemma 2.1](https://arxiv.org/abs/0909.0206v2).
No historical novelty or equality-characterization formalization is claimed.

The [consumer checks](../../../../GRWTSK/LinearAlgebra/Matrix/Checks/Positive/TraceRank.lean)
and fresh selected receipt (artifact:gitblob:32c4dda5d6b5d72b2e901095ec41aeb24cd5185d)
bind the actual sources, imports, native commands and complete owned-declaration
audit. The replay uses trust zero and fatal warnings, permits only `propext`,
`Classical.choice`, and `Quot.sound`, and fingerprints reused pinned dependency
objects. It is not a cold dependency rebuild, whole-repository acceptance or
independent review. Existing repository-wide layout and documentation failures
remain outside this selected result's native scope.

Upstream formalization authorship: OpenAI, with Apache-2.0 retained on the
adapted files. Human project direction: grwtsk contributors. Local adaptation
and checking assistance: OpenAI Codex. Mathlib retains its source authorship
and Apache-2.0 license. The integration record (artifact:gitblob:6a02fbba48aea9cc62ee9a661f00c4c155b404f1)
records source pins, contribution roles, search coverage and remaining work.

**Current source scope.** Source links identify the existing mathematical modules. Earlier proposed bindings and verification receipts retain their recorded paths and hashes; this pointer repair records current bytes and does not claim fresh proof replay.

<!-- BEGIN GENERATED MATHEMATICS TOTALS -->

## Totals

Scope: this object guide and the current bytes of its registered primary source [`GRWTSK/LinearAlgebra/Matrix/TraceRank.lean`](../../../../GRWTSK/LinearAlgebra/Matrix/TraceRank.lean).

| Inventory | Total |
|---|---:|
| Object guide | 1 |
| Linked primary source file | 1 |
| Source declaration commands | 5 |
| Theorem/lemma commands | 5 |

Theorem/lemma commands are included in declaration commands. These are source syntax counts; compiler-generated declarations and proof acceptance are outside their scope.

[Count definitions](../../../reference/library-pages.md#count-definitions) · [Structured inventory](../../../reference/library-summary.json).

<!-- END GENERATED MATHEMATICS TOTALS -->
