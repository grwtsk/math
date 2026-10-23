# Incremental prefix-state updates and relation reindexing


Fix actual finite old and new relation tables, and an injective index map
preserving source, target and role. Map actual rooted occurrences through its
quiver prefunctor, retaining keys, order and repetitions. For an arbitrary
stored prefix state, updating and then transporting equals transporting and
then updating with those actual mapped occurrences, field by field.

The raw state equation requires decidable equality of both old and new full
typed edge tags. It does not require structural well-formedness. Its proof
constructs the mapped histories and derives the actual inventories, missing
prefix payloads, dictionary order, cell searches and appended real references.
No desired serializer, decoder or index identity is assumed.

## Actual stored fields and consumers

Root wrappers have different table-indexed types. Transport retains the
underlying vertex value and translates full relation tags. Stored rank and
parent-slot numbers and ordered real references obey the actual update laws;
they are not relation identities. Actual one- and two-update decoder consumers
add the old well-formedness hypothesis, which supplies rooted validity.

Criteria for appended rows remain explicit evidence obligations. Existing
certificate reuse still requires its own exact old rooted entries and the
proved inverse transport; it does not certify newly added rows automatically.

The [finite-batch runner](prefix-finite-batch.md) consumes this actual update
law for an arbitrary finite chronological list of batches. It derives exact
ordered-row accumulation from the initial structural invariant and retains
the literal old storage prefixes. Empty batches retain their actual root.

## Checked boundaries

The controls update an actual noncanonical state with children before their
parent, repeated real references and parallel branches. They compare both
sides under an actual swap of relation IDs, including successive updates.
A source/target/role-preserving collapse of parallel relations identifies
stored histories. The transported dictionary can then retain duplicate mapped
traces while an update from mapped rows deduplicates them, so the raw update
law fails without injectivity. The positive counterexample precedes the sole
intended negative use. Empty rows still retain their mapped root.

## Verification and limits

The [source](../../../../GRWTSK/Combinatorics/DirectedGraph/PrefixTableUpdateReindex.lean),
[positive controls](../../../../GRWTSK/Combinatorics/DirectedGraph/Checks/Positive/PrefixTableUpdateReindex.lean),
native receipt (artifact:gitblob:3ac8e0f5e725302acaec9c2257a596ea49381307)
and integration record (artifact:gitblob:fe22139bedb29e00c219fcfa596c35844b6daa6d)
bind fresh selected local sources and controls. Pinned Lean 4.33.0 checks trust
zero, fatal warnings and every owned declaration and transitive axiom,
allowing only `propext`, `Classical.choice` and `Quot.sound`. Clean pinned
dependency objects are reused and fingerprinted; their sources and the whole
umbrella are not rebuilt.

This result does not prove raw grouped-update or compaction equality, an
arbitrary finite-fold implementation, automatic criteria, parser/JSON/hash/IO
refinement, source acceptance or permission authority. Local source is MIT;
imported Lean/Mathlib retain their individual author credits and Apache-2.0
terms. Human direction: grwtsk contributors; formalization/checking: OpenAI Codex.
Correlated model/source review is not independent validation.

**Current source scope.** Source links identify the existing mathematical modules. Earlier proposed bindings and verification receipts retain their recorded paths and hashes; this pointer repair records current bytes and does not claim fresh proof replay.

<!-- BEGIN GENERATED MATHEMATICS TOTALS -->

## Totals

Scope: this object guide and the current bytes of its registered primary source [`GRWTSK/Combinatorics/DirectedGraph/PrefixTableUpdateReindex.lean`](../../../../GRWTSK/Combinatorics/DirectedGraph/PrefixTableUpdateReindex.lean).

| Inventory | Total |
|---|---:|
| Object guide | 1 |
| Linked primary source file | 1 |
| Source declaration commands | 18 |
| Theorem/lemma commands | 16 |

Theorem/lemma commands are included in declaration commands. These are source syntax counts; compiler-generated declarations and proof acceptance are outside their scope.

[Count definitions](../../../reference/library-pages.md#count-definitions) · [Structured inventory](../../../reference/library-summary.json).

<!-- END GENERATED MATHEMATICS TOTALS -->
