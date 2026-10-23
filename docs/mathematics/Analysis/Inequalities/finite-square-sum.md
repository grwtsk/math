# Finite square sums with support size

For a real function $f$ on a finite type, the checked statement is
\[
\left(\sum_i f(i)\right)^2
\le \#\{i:f(i)\ne0\}\sum_i f(i)^2.
\]
The sum is over the entire type, while the multiplier counts only nonzero
entries. Zero functions and empty index types are included. The proof restricts
Mathlib's finite Cauchy–Schwarz inequality to the nonzero support and then
restores the original sums.

## Source and checked reuse

The [source](../../../../GRWTSK/Analysis/Inequalities/FiniteSquareSum.lean)
extracts the reusable finite-sum result from OpenAI's
[TraceRank source](https://github.com/openai/math/blob/1581d4cbdd69a0faf34b2089614fe2a814316a6a/lean/OAI/Algebra/DepthFive/TraceRank.lean).
It is used by the [Hermitian matrix trace-rank theorem](../../LinearAlgebra/Matrix/trace-rank.md)
on the real eigenvalue function. This makes the multiplier matrix rank rather
than ambient dimension.

The selected native receipt (artifact:gitblob:32c4dda5d6b5d72b2e901095ec41aeb24cd5185d)
binds this source and its actual matrix consumer. The sources were freshly
elaborated using pinned Lean 4.33.0, trust zero and fatal warnings, with the
complete owned-declaration/transitive-axiom audit for the selected closure.
Only `propext`, `Classical.choice`, and `Quot.sound` are permitted. Dependency
objects are reused and fingerprinted; there is no whole-library or independent
review claim.

## Credit and limits

OpenAI is the upstream formalization author in its project metadata. The
adapted source remains Apache-2.0, with its original source identity and changes
recorded in the header and repository `NOTICE`. Human project direction:
grwtsk contributors. Adaptation and checking assistance: OpenAI Codex.
Mathlib retains its authorship and licensing. The inequality is classical;
the port does not establish a surrounding circuit lower bound or an RH supplier.

<!-- BEGIN GENERATED MATHEMATICS TOTALS -->

## Totals

Scope: this object guide and the current bytes of its registered primary source [`GRWTSK/Analysis/Inequalities/FiniteSquareSum.lean`](../../../../GRWTSK/Analysis/Inequalities/FiniteSquareSum.lean).

| Inventory | Total |
|---|---:|
| Object guide | 1 |
| Linked primary source file | 1 |
| Source declaration commands | 1 |
| Theorem/lemma commands | 1 |

Theorem/lemma commands are included in declaration commands. These are source syntax counts; compiler-generated declarations and proof acceptance are outside their scope.

[Count definitions](../../../reference/library-pages.md#count-definitions) · [Structured inventory](../../../reference/library-summary.json).

<!-- END GENERATED MATHEMATICS TOTALS -->
