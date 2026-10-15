# Stable incremental dictionary encoding

Let `original : Packed Key Payload` and `entries : List (Key × Payload)`, with
decidable payload equality. Assume `Valid original`: every old referenced slot
lies in the old dictionary. The actual incremental encoder satisfies

```lean
unpack (appendEntries original entries) =
  (unpack original).map (fun rows => rows ++ entries)
```

In particular, starting with `pack oldRows` yields precisely
`some (oldRows ++ entries)`. This specialization uses the existing proved
`pack_valid` and `unpack_pack`; it assumes no serializer law.

## Construction and invariants

`missingPayloads` filters the appended payloads to those absent from the old
dictionary, then deduplicates that new suffix. `expandedDictionary` appends this
suffix to the complete old dictionary. `appendEntries` preserves all old
key–index references and appends one checked dictionary index per new row.
Only payload storage is shared; repeated keys and input occurrences survive.

The original dictionary and references remain literal ordered prefixes.
Every appended payload has a slot, all references remain in bounds for valid
input, and the key sequence is the old key sequence followed by the new keys.
Appending an empty row list leaves the exact packed representation unchanged.
If the original dictionary is duplicate-free, the expanded dictionary is also
duplicate-free; this separate hypothesis is not required for decoder equality.

Valid old references give actual optional-lookup agreement under expansion.
The [revision preservation theorem](dictionary-revision.md) then preserves the
decoding of exactly those old references. This repairs the specific failure of
[repacking an appended history](append-only-history.md): deduplication within
the new suffix cannot renumber an old slot.

## Why input validity is necessary

Take an empty dictionary with old reference `(11,0)`. It decodes to `none`.
Appending row `(12,7)` adds payload seven at slot zero; the old reference now
decodes to `(11,7)`, and the combined references decode to
`[(11,7),(12,7)]`. Thus expansion can repair an invalid old slot while changing
its meaning. `missing_validity_counterexample` checks these exact expressions.
The negative consumer rejects the append-decoding theorem when its `Valid`
premise is omitted. Positive consumers cover repeated keys and payloads,
empty appends, preserved old references and actual fresh-pack reconstruction.

## Sources, evidence and limits

The [source](../../../../GRWTSK/Logic/FiniteSequences/IncrementalDictionary.lean),
[positive consumers](../../../../GRWTSK/Logic/FiniteSequences/Checks/Positive/IncrementalDictionary.lean)
and [selected native receipt](../../../../evidence/Logic/FiniteSequences/incremental-dictionary-checks-2026-10-15.json)
bind the complete local dictionary closure and intended controls. Pinned Lean
4.33.0 checks use trust zero, fatal warnings and the complete owned-declaration
and transitive-axiom audit. Only `propext`, `Classical.choice` and `Quot.sound`
are permitted. Pinned dependency objects are reused and fingerprinted.

These are actual finite-list algorithms and theorems. A refinement to the
repository Python cache, JSON equality, byte serialization, compression,
cryptographic hashes or filesystem transactions remains open. No complexity
bound, whole-repository acceptance or independent review is claimed. The
[integration evidence](../../../../evidence/Logic/FiniteSequences/incremental-dictionary-integration-2026-10-15.json)
and [bounded source review](../../../../evidence/Logic/FiniteSequences/incremental-dictionary-source-review-2026-10-15.json)
retain contribution roles, antecedents and remaining premises.

Human mathematical direction: R.A. Jacob Martone. Formalization assistance:
OpenAI Codex. Local source is MIT; Lean and Mathlib retain upstream authorship
and licensing. No mathematical novelty is claimed.

<!-- BEGIN GENERATED MATHEMATICS TOTALS -->

## Totals

Scope: this object guide and the current bytes of its registered primary source [`GRWTSK/Logic/FiniteSequences/IncrementalDictionary.lean`](../../../../GRWTSK/Logic/FiniteSequences/IncrementalDictionary.lean).

| Inventory | Total |
|---|---:|
| Object guide | 1 |
| Linked primary source file | 1 |
| Source declaration commands | 17 |
| Theorem/lemma commands | 14 |

Theorem/lemma commands are included in declaration commands. These are source syntax counts; compiler-generated declarations and proof acceptance are outside their scope.

[Count definitions](../../../reference/library-pages.md#count-definitions) · [Structured inventory](../../../reference/library-summary.json).

<!-- END GENERATED MATHEMATICS TOTALS -->
