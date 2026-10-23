# Reindexing stored prefix-table states


Fix old and new finite relation tables over the same vertex and role types.
Let their actual relation-index map preserve source, target and selected role,
and suppose it is injective. Start with an arbitrary structurally well-formed
stored prefix-table state. Map its retained root, full dictionary traces and
stored final edge tags through the actual quiver map. Retain its dictionary
order, stored ranks, numeric parent slots and ordered keyed real references.

## Structural facts and actual decoding

The invariant supplies a distinct prefix-closed dictionary of rooted valid
traces, the actual cells determined by that dictionary, and bounded references.
The proof derives mapped lookup and index positions, rather than assuming a
serializer or index-map identity. The resulting actual state is well formed. Its full dictionary expansion and
ordered real-reference decoder commute with full-tag translation. The numeric
fuel-expansion, slot-decoder and raw dictionary-reference laws are stronger:
they hold for every node array, without a well-formedness or injectivity premise.
Those numeric laws alone do not establish rooted semantic validity.

The structural cell equations, well-formedness and semantic compaction results
require decidable equality of both old and new full typed tags. No equality
decision on keys is needed.

Semantic compaction concerns the actual decoded full histories. It does not
assert equality of raw compacted representations. Certificate reuse requires
actual inverse transport into a common old rooted payload and the supplied
certificate's exact entries, criterion and evidence. A bijection supplies the
global inverse; injectivity alone does not supply preimages of new relations.
Rooted repacking additionally requires decidable equality of the underlying
vertex type. Roots have different table-indexed wrapper types; the theorem
compares their underlying vertex values. Restoration reads the actual new
state root, and certificate transport separately preserves its outer root
equality even when there are no rows.

The [incremental update law](prefix-update-reindex.md) now proves that actual
stored-state update commutes with injective relation translation, field by field.
The proof derives inventories, missing prefixes, cells and real references from
the actual mapped occurrences. Successive update consumers retain full rooted
histories; criteria for newly appended rows remain separate evidence obligations.

## Checked boundaries

The controls use a noncanonical dictionary with children stored before their
parent and repeated keyed real references. A relation-slot swap changes the
stored full edge tags, while ranks, parent slots and real references remain
the same. Stale numeric relation identities can stay in bounds yet start at
the wrong root. The empty-reference state still retains its mapped root.

## Verification and limits

The [source](../../../../GRWTSK/Combinatorics/DirectedGraph/PrefixTableReindex.lean),
[positive controls](../../../../GRWTSK/Combinatorics/DirectedGraph/Checks/Positive/PrefixTableReindex.lean),
native receipt (artifact:gitblob:2b249d2aaef8a9b744379a0df99abaa79a36ad54)
and integration record (artifact:gitblob:58ad264a66762c6870f2a36716e1619ce91cdbdb)
bind fresh selected local sources and actual controls. Pinned Lean 4.33.0
checks trust zero, fatal warnings and every owned declaration and transitive
axiom, allowing only `propext`, `Classical.choice` and `Quot.sound`.
Clean pinned dependency objects are reused and fingerprinted; their sources
and the whole umbrella are not rebuilt.

Relation identities and parent storage slots are distinct indices. The result
requires its structural invariant and actual preservation witnesses. It gives
no parser, hash, JSON, compression or filesystem refinement, automatic new
criterion, mathematical-source acceptance or permission authority. Taxonomy
similarity is not proof. Local code is MIT; imported Lean/Mathlib retain their
individual credits and Apache-2.0 terms. Human direction: grwtsk contributors;
formalization/checking: OpenAI Codex. Correlated review is not independent validation.

**Current source scope.** Source links identify the existing mathematical modules. Earlier proposed bindings and verification receipts retain their recorded paths and hashes; this pointer repair records current bytes and does not claim fresh proof replay.

<!-- BEGIN GENERATED MATHEMATICS TOTALS -->

## Totals

Scope: this object guide and the current bytes of its registered primary source [`GRWTSK/Combinatorics/DirectedGraph/PrefixTableReindex.lean`](../../../../GRWTSK/Combinatorics/DirectedGraph/PrefixTableReindex.lean).

| Inventory | Total |
|---|---:|
| Object guide | 1 |
| Linked primary source file | 1 |
| Source declaration commands | 28 |
| Theorem/lemma commands | 21 |

Theorem/lemma commands are included in declaration commands. These are source syntax counts; compiler-generated declarations and proof acceptance are outside their scope.

[Count definitions](../../../reference/library-pages.md#count-definitions) · [Structured inventory](../../../reference/library-summary.json).

<!-- END GENERATED MATHEMATICS TOTALS -->
