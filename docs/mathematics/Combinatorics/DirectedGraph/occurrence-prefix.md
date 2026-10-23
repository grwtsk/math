# Occurrence reachability and complete trace prefixes


Fix any quiver and a root $r$. For actual path occurrences $p,q$ in the
[path unfolding](path-unfolding.md), reachability by a finite unfolding path
is equivalent to prefix inclusion of their complete typed edge traces:

\[
\operatorname{Quiver.Reachable}(p,q)
\quad\Longleftrightarrow\quad
\operatorname{EdgeTrace.encode}(r,p.history)
\mathrel{<+:}\operatorname{EdgeTrace.encode}(r,q.history).
\]

The relation on the left is Mathlib's existing `Quiver.Reachable`; no new
ancestry or path datatype is introduced. The trace retains every actual
arrow, its source and target, and chronological occurrence position. No
finiteness, countability, thinness, decidable equality or acyclicity of the
base quiver is assumed.

## Actual suffix reconstruction

An unfolding path gives the target history as the starting history composed
with its projected suffix. The [typed trace append law](edge-trace.md) then
gives prefix inclusion. Conversely, prefix inclusion supplies an actual suffix
list. Full target validity and the append-validity law prove the suffix valid
from the starting endpoint. Proof-indexed decoding and actual finite lifting
recover the target occurrence by complete trace injectivity.

Endpoint equality or base reachability cannot replace these obligations.
Distinct histories may have identical endpoints and vertex lists. In a base
loop, repeated visits remain different occurrences; occurrence reachability
keeps the history direction and cannot reverse an extension merely because
the projected endpoint returns to the same vertex.

## Endpoint selection and history loss

The endpoint projection covers exactly the root-reachable vertex subtype.
A set-theoretic section can choose one rooted path for each such vertex, with
the projection composed after the section equal to the identity. This right
inverse does not recover every occurrence: two distinct histories with the
same endpoint prevent any section from being a left inverse. No chosen-path
monotonicity, quiver map, source-node prefix embedding or universal property
follows from that set-theoretic selection.

Replacing each occurrence by the chosen history to its endpoint preserves
endpoints and is idempotent. Two replacements are equal exactly when the
original endpoints are equal. The controls prove that this replacement
loses parallel histories and does not reflect ancestry; an actual one-edge
Unit loop already rules out every endpoint decoder recovering all histories.

The [endpoint-section obstruction](endpoint-section.md) gives a stronger
conditional boundary for source reachability: incomparable ancestors of a
common upper vertex prevent every endpoint section from preserving all
source reachability. Its actual thin-diamond control and native receipt are
separate from this full-history equivalence.

The [finite prefix inventory](prefix-inventory.md) now collects complete
prefix traces of selected finite keyed occurrences. It proves valid-prefix
decoding and exact reconstruction of original ordered occurrences through
the checked indexed dictionary. Full edge tags remain the identity criterion;
shared endpoint labels and numeric dictionary positions do not replace them.

## Source, verification and credit

The [source](../../../../GRWTSK/Combinatorics/DirectedGraph/OccurrencePrefix.lean),
[positive controls](../../../../GRWTSK/Combinatorics/DirectedGraph/Checks/Positive/OccurrencePrefix.lean),
native receipt (artifact:gitblob:007d6ab28b8e3f85128e75ed3748816c4b5eef1b)
and integration record (artifact:gitblob:648b3cd630c4798eef842b96f9c96066b92e4a30)
bind the exact selected closure and counterexamples. Pinned Lean 4.33.0 checks
fresh selected local objects at trust zero with fatal warnings and a complete
owned-declaration/transitive-axiom census permitting only `propext`,
`Classical.choice` and `Quot.sound`. Pinned dependency objects are reused and
fingerprinted; their sources are not rebuilt. Source/model review is
correlated and supplies no independent validation.

Local source is MIT. Lean and Mathlib retain upstream author credit and
Apache-2.0 terms. Human mathematical direction: grwtsk contributors;
formalization/checking assistance: OpenAI Codex. The operational relation-ID
prefix comparator has separate bounded tests. No Lean/Python/JSON refinement,
permission implication or proof authority follows from a prefix relation.

**Current source scope.** Source links identify the existing mathematical modules. Earlier proposed bindings and verification receipts retain their recorded paths and hashes; this pointer repair records current bytes and does not claim fresh proof replay.

<!-- BEGIN GENERATED MATHEMATICS TOTALS -->

## Totals

Scope: this object guide and the current bytes of its registered primary source [`GRWTSK/Combinatorics/DirectedGraph/OccurrencePrefix.lean`](../../../../GRWTSK/Combinatorics/DirectedGraph/OccurrencePrefix.lean).

| Inventory | Total |
|---|---:|
| Object guide | 1 |
| Linked primary source file | 1 |
| Source declaration commands | 16 |
| Theorem/lemma commands | 11 |

Theorem/lemma commands are included in declaration commands. These are source syntax counts; compiler-generated declarations and proof acceptance are outside their scope.

[Count definitions](../../../reference/library-pages.md#count-definitions) · [Structured inventory](../../../reference/library-summary.json).

<!-- END GENERATED MATHEMATICS TOTALS -->
