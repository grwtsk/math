# Direct lookup after a finite rooted prefix schedule

Fix a quiver, decidable equality of its total edges, a root, a valid rooted prefix-table state and a finite list of actual schedule actions. The initial and final dictionaries contain complete rooted histories. An original reference is a pair of a key and a dictionary slot occurring in the initial state's reference list.

For a slot, `directLookupAt` first reads its complete initial dictionary word. It searches for that same word in the actual final dictionary and returns its unique index when present. On every original real reference, `transportSlotAt_eq_directLookup_of_reference` identifies this direct search with `transportSlotAt`, the cumulative option-valued retention map built by executing the schedule's actual compaction and append maps.

## Proof and exact support

The [original-reference transport theorem](prefix-reference-transport.md) supplies a surviving final slot and equality of its complete dictionary payload with the original payload. Initial reference membership supplies the original bounds. The actual final state's dictionary is duplicate-free, so `List.Nodup.idxOf_getElem` identifies the direct search index with that surviving slot.

The conclusion is restricted to actual initial reference membership. An in-bounds dictionary slot can be unused, dropped by compaction, and later have an equal payload reintroduced. Cumulative transport remains `none` after the drop; direct lookup can then find the reintroduced payload. Bounds alone do not establish equality of these maps.

## Consumers and boundary controls

The concrete schedule retains the original referenced slot along the changes $0\mapsto1\mapsto1\mapsto0$. Initially unused slot two is dropped and its payload is subsequently reintroduced at final slot two. Even the endpoint dictionaries are equal, while cumulative transport of that slot is `none` and direct lookup returns `some 2`. This distinguishes retention of an original occurrence from equality of payload values.

Positive controls check equality on supported references and refute the generalization to all bounded slots. Actual searches preserve repeated-key multiplicity and the distinct-key occurrence order $31,17,31$. Empty-action and empty-support cases retain the explicit root and support restriction. The sole negative tries to supply `unused_slot_bound` in place of membership of $(11,2)$ in the original reference list; it fails at that exact type mismatch.

## Sources and verification scope

The [library source](../../../../GRWTSK/CombinatoricsAndDiscreteMathematics/DirectedGraph/PrefixTableDirectLookup.lean), [positive controls](../../../../GRWTSK/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PrefixTableDirectLookup.lean), [negative control](../../../../GRWTSK/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Negative/PrefixDirectLookupMissingReference.lean) and selected receipt (artifact:gitblob:4a46b8653f8d6a531fe8f927f11399f6b9c912f8) bind the exact checked bytes. Earlier failed attempts and source variants remain preserved.

The selected Lean 4.33.0 replay used trust zero, fatal warnings and the complete owned-declaration/transitive-axiom audit. Its 928 owned declarations comprise 853 from the prior library closure, three owned by the new library module and 72 by the self-contained positive module. These are declaration counts, not theorem totals. All are mathematical; only `propext`, `Classical.choice` and `Quot.sound` are used, with no unsafe or partial declarations and no runtime-helper exemptions. The actual intended negative is rejected separately.

The recorded replay used explicit `--cold`: the complete local library and positive import closures were freshly elaborated from immutable copies. Clean pinned dependency objects are reused and fingerprinted; Mathlib source rebuilding, whole-public-umbrella acceptance and independent validation remain outside this selected receipt. Whole-public and application validation retain their own separately bound receipts; neither documentation checks nor byte custody supplies those proofs.

The source develops the repository's existing state, dictionary, compaction, schedule and [reference-transport](prefix-reference-transport.md) mathematics. The retained uncompiled proposal is a research artifact, not an additional premise. The proof uses the pinned Lean/Mathlib list-index API and preserves the imported source authors and Apache-2.0 notices. Local formalization is MIT under grwtsk contributors's mathematical direction, with OpenAI Codex assistance.

This result concerns mathematical finite dictionaries and complete rooted histories. It supplies no general inverse for dropped occurrences, no prefix-order property for the final reference list, and no operational implementation, compression, hash or filesystem refinement. Those require their own exact contracts and bounded controls. RH, ABC and unrelated arithmetic suppliers remain open.

<!-- BEGIN GENERATED MATHEMATICS TOTALS -->

## Totals

Scope: this object guide and the current bytes of its registered primary source [`GRWTSK/Combinatorics/DirectedGraph/PrefixTableDirectLookup.lean`](../../../../GRWTSK/CombinatoricsAndDiscreteMathematics/DirectedGraph/PrefixTableDirectLookup.lean).

| Inventory | Total |
|---|---:|
| Object guide | 1 |
| Linked primary source file | 1 |
| Source declaration commands | 2 |
| Theorem/lemma commands | 1 |

Theorem/lemma commands are included in declaration commands. These are source syntax counts; compiler-generated declarations and proof acceptance are outside their scope.

[Count definitions](../../../reference/library-pages.md#count-definitions) · [Structured inventory](../../../reference/library-summary.json).

<!-- END GENERATED MATHEMATICS TOTALS -->
