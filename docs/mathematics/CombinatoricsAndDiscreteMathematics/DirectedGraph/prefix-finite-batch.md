# Finite chronological batches of stored prefix states


Start with the existing stored `PrefixTableState.State`, and a finite
chronological list of batches of actual rooted keyed occurrences. The runner
uses `List.foldl` and the existing `State.update`. Its fixed-root subtype only
records equality of the actual retained root; it introduces no replacement
state or assumed decoder equation. Decidable equality of full typed edge tags
is explicit; no equality on keys or vertices is needed.

Under the initial structural `WellFormed` invariant, the final state is
well formed and its actual decoder returns the initial decoded rows followed
by the chronological `flatMap` of the actual batch trace rows. Keys, repeated
rows and complete typed histories retain their order. Empty batches and the
empty batch list retain the actual root.

## Stored fields and relation transport

Each update retains the previous dictionary, parent-node array and real
reference list literally as prefixes. The finite runner derives these
properties for the initial arrays, including bounded old node lookups. Stored rank is trace length; numeric parent slots are storage positions.
Neither is a relation ID.
Auxiliary prefix rows do not become real references.

For an injective relation-index map preserving source, target and role, actual
run and actual state transport commute, with decidable equality of both old
and new full typed edge tags. The raw equation does not need the
initial structural invariant. Semantic decoding adds that invariant. Criteria
for appended rows remain separate evidence obligations.

The [actual compaction checkpoint](prefix-compaction-checkpoint.md) now inserts
the existing compactor between two finite batch segments. It preserves the
retained root and decoded chronological histories. Compaction remaps parent
and reference slots; old numeric references cannot be carried across as if
they were stable history identities.

## Checked boundaries

An actual noncanonical state has children before their parent, repeated real
references and parallel branches. Three chronological batches append repeated
return histories, a parallel history and a singleton history. Actual six-row
decodes in forward and reverse batch order are proved different in their full
histories. Literal old arrays and a bounded old node lookup survive the run;
empty internal batches preserve the decoded history. An actual relation swap
checks the complete mapped run and its decoded histories.

The checked failure starts with empty dictionary and nodes but a real reference
to missing slot zero. Its actual decoder returns `none`. A singleton edge
batch inserts the empty prefix at that old slot, repairing the old reference:
the final decoder returns `some [(11, []), (12, [edge])]`. The state becomes
well formed, so the proposed old-`none` accumulation equation is false without
the initial invariant. This counterproof precedes the sole intended negative,
which supplies the invariant of a different empty state where this hostile
state's invariant is required.

## Verification and limits

The [source](../../../../GRWTSK/CombinatoricsAndDiscreteMathematics/DirectedGraph/PrefixTableBatch.lean),
[positive controls](../../../../GRWTSK/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PrefixTableBatch.lean),
native receipt (artifact:gitblob:05ca8ce8a81a6085db200f4962912f993caa257a)
and integration record (artifact:gitblob:ff520a9aee86e5fc81f65280671baf33c68d59fa)
bind fresh selected local sources and controls. Pinned Lean 4.33.0 checks trust
zero, fatal warnings and every owned declaration and transitive axiom,
allowing only `propext`, `Classical.choice` and `Quot.sound`. Clean pinned
dependency objects are reused and fingerprinted; their sources and the whole
umbrella are not rebuilt.

The durable decision (artifact:gitblob:34ba04ffa74a8484e4851ba53d67fedf5d52544b)
records the mathematical choice and its boundaries. This result does not
supply operational JSON, parser, hash, compression or filesystem refinement,
automatic row criteria, or permission authority. Local source is MIT; named
Lean/Mathlib contributors retain their terms and individual credit. Human
direction: grwtsk contributors; formalization/checking: OpenAI Codex. Correlated
model/source review is not independent validation.

**Current source scope.** Source links identify the existing mathematical modules. Earlier proposed bindings and verification receipts retain their recorded paths and hashes; this pointer repair records current bytes and does not claim fresh proof replay.

<!-- BEGIN GENERATED MATHEMATICS TOTALS -->

## Totals

Scope: this object guide and the current bytes of its registered primary source [`GRWTSK/Combinatorics/DirectedGraph/PrefixTableBatch.lean`](../../../../GRWTSK/CombinatoricsAndDiscreteMathematics/DirectedGraph/PrefixTableBatch.lean).

| Inventory | Total |
|---|---:|
| Object guide | 1 |
| Linked primary source file | 1 |
| Source declaration commands | 22 |
| Theorem/lemma commands | 17 |

Theorem/lemma commands are included in declaration commands. These are source syntax counts; compiler-generated declarations and proof acceptance are outside their scope.

[Count definitions](../../../reference/library-pages.md#count-definitions) · [Structured inventory](../../../reference/library-summary.json).

<!-- END GENERATED MATHEMATICS TOTALS -->
