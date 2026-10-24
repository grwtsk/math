# Transport of original references through finite prefix-table schedules

Start with the existing stored prefix state, its retained root and structural
`WellFormed` invariant. Actions are the actual chronological batches and
compactions from the [finite schedule result](prefix-compaction-schedule.md).
Full typed edge tags have decidable equality; no equality on keys or finite
vertex set is required.

## Actual state-dependent transport

`actionSlot` keeps a numeric slot at a batch action and applies the actual
compactor's partial `remap` at a compact action. `trackedStep` pairs that slot
with the actual evolving state, and `transportSlotAt` executes their chronological
`List.foldl`. Forgetting the slot yields the existing schedule execution.
The next remap is evaluated in its actual intermediate state. Once the tracked
slot is `none`, it remains `none` through every later action.

For `(key, slot)` in the ORIGINAL real-reference list, structural validity and
that membership derive an actual `some target`. The pair `(key, target)` belongs
to the final real-reference list, and the final dictionary lookup at `target`
equals the original lookup at `slot`, including the full ordered typed history.
Membership and the retained final invariant also give a valid final bound.
These premises concern actual references; a `some` result alone does not validate
an arbitrary starting slot, since the batch branch is numeric identity.

`transportReferences` performs an actual ordered `List.mapM` over the original
reference list. Its success theorem gives an output of the same length and a
positional `List.Forall₂` relation retaining keys, final membership and exact
full-history lookup. It preserves each repeated original row. This statement
does not assert that the transported list is a prefix or subsequence of all
final references, nor that any arbitrary old dictionary slot survives.

The [direct-lookup consumer](prefix-table-direct-lookup.md) uses this support
theorem and the final dictionary's duplicate-free invariant to identify the
transported slot with an actual final search for the complete original word.
Its separately checked counterexample shows why original reference membership
cannot be replaced by bounds, even when the endpoint dictionaries are equal.

## Actual retained and dropped slots

The positive fixture uses an actual well-formed dictionary `[[F], [], [P]]`
with original real references `[(11, 0), (11, 0)]`. Actual actions compact,
append the parallel `P` history, then compact again. The original referenced
`F` follows slots `0 → 1 → 1 → 0`, retaining its full payload and final membership.
The real `mapM` returns `some [(11, 0), (11, 0)]`.

The original slot `2` is in bounds but is not an original real reference.
Its first compact remap is `none`, and actual cumulative transport stays `none`,
even though a final full-payload search returns `some 2` after `P` is reintroduced.
A proved counterexample rejects total transport from bounds alone before the
intended negative tries to supply a bound as real-reference membership.
Empty schedules, empty batch actions and repeated compactions have controls.
A second actual well-formed state uses original references
`[(31, 0), (17, 0), (31, 0), (19, 0)]`. Its invariant is derived from the original
state fields and actual reference bounds. `actual_distinct_key_order` consumes
the support theorem to produce an actual bounded target and the exact ordered
output `[(31, target), (17, target), (31, target), (19, target)]`. The different
keys make permutation observable while the repeated `31` occurrence is retained.

## Verification, credit and limits

The [library source](../../../../GRWTSK/CombinatoricsAndDiscreteMathematics/DirectedGraph/PrefixTableReferenceTransport.lean),
[positive controls](../../../../GRWTSK/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PrefixTableReferenceTransport.lean)
and [intended negative](../../../../GRWTSK/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Negative/PrefixReferenceMissingSupport.lean)
are bound by the
selected native receipt (artifact:gitblob:8e51a42c9017a8a4e0d0516611efbdf01ea2c402).
The recorded pinned Lean 4.33.0 replay uses trust zero, fatal warnings and the
complete owned-declaration/transitive-axiom audit with no runtime-helper
exemptions. It contains 958 owned declarations: 14 in the new library, 19 in
its accepted positive module and 925 in the freshly included prior closure,
including the prior schedule positive fixture dependency. These are declaration
counts, not theorem totals. The sole intended negative rejects dictionary bounds
as evidence of original real-reference membership. Only `propext`,
`Classical.choice` and `Quot.sound` are allowed. That selected replay reused and fingerprinted clean pinned dependency objects;
it rebuilt neither those dependency sources nor the public umbrella. Selected verification applies to the exact recorded sources and verifier
context. This page records installed selected-source integration. The selected receipt covers its recorded closure; any public-umbrella acceptance requires separately bound checkpoint evidence.

Human direction: grwtsk contributors; formalization assistance: OpenAI Codex.
Local sources are MIT. Imported Lean/Mathlib source retains Apache-2.0 and the
named individual credits, including Leonardo de Moura, Jeremy Avigad, Mario
Carneiro, Parikshit Khanna and Floris van Doorn; existing state, path, compaction
and schedule sources retain their original credits.

This is no totality result for all old slots, no revival of a lost identity,
no automatic appended-row criterion and no runtime parser/JSON/hash/compression/
filesystem/transaction refinement. Mathematical placement and documentation
registration do not establish proof acceptance. Correlated source/model review
is not independent validation.

<!-- BEGIN GENERATED MATHEMATICS TOTALS -->

## Totals

Scope: this object guide and the current bytes of its registered primary source [`GRWTSK/Combinatorics/DirectedGraph/PrefixTableReferenceTransport.lean`](../../../../GRWTSK/CombinatoricsAndDiscreteMathematics/DirectedGraph/PrefixTableReferenceTransport.lean).

| Inventory | Total |
|---|---:|
| Object guide | 1 |
| Linked primary source file | 1 |
| Source declaration commands | 12 |
| Theorem/lemma commands | 8 |

Theorem/lemma commands are included in declaration commands. These are source syntax counts; compiler-generated declarations and proof acceptance are outside their scope.

[Count definitions](../../../reference/library-pages.md#count-definitions) · [Structured inventory](../../../reference/library-summary.json).

<!-- END GENERATED MATHEMATICS TOTALS -->
