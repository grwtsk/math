# Stable incremental tables of rooted history prefixes


Fix a quiver, a root, and finite old and new lists of keyed actual rooted
occurrences. The stable extension retains the complete old prefix dictionary,
old parent cells and old real-row references as literal ordered prefixes.
It appends only missing full prefixes needed by the new histories, then
one real reference for each original new row.

The base in this theorem is the canonical inventory and encoded table of
the old rows. The produced stable dictionary is generally noncanonical.
The [stored prefix-table invariant](prefix-table-state.md) supplies the
additional structural closure and actual two-step decoding proof for
updates on arbitrary valid stored tables. That result retains the
noncanonical stored state rather than re-encoding the old rows.

Actual parent-table expansion reconstructs the extended dictionary. The
existing checked indexed decoder and valid-trace decoder recover exactly
the old occurrence rows followed by the new rows, with their original
keys, order and repetitions. Auxiliary prefix entries are construction
inputs, not additional semantic output rows.

## Actual stable construction and decoder bridge

The source uses the existing
[incremental dictionary](../../FoundationsLogicAndTypeTheory/MathematicalLogic/FiniteSequences/incremental-dictionary.md)
on the actual new prefix payloads. Its dictionary is

\[
D_{\rm ext}=D_{\rm old}\mathbin{++}\operatorname{missingPrefixes}.
\]

It proves complete prefix-union membership, prefix closure, rooted validity
and duplicate freedom. Old parent cells are copied literally. Only missing
prefix cells are constructed with their actual final full edge, length rank
and parent index in $D_{\rm ext}$. Old parents already belong to the old
prefix-closed dictionary, so their original indices still select the same
complete traces. Numeric parent indices need not decrease; trace ranks do.

The proof supplies an actual bridge to the existing rank-fuel parent decoder
for this stable, generally noncanonical dictionary. It does not substitute
$D_{\rm ext}$ into a theorem that requires a canonical rightmost-deduplicated
inventory. Real new references are constructed after all needed prefixes
are present, so this final reference step adds no extra dictionary payloads.

The retained root remains explicit, including for empty input. Full typed
edge equality is supplied for dictionary construction. Actual certificate
packing additionally requires vertex equality; classical noncomputable
instances may provide these comparisons.

## Old evidence and boundary controls

Actual old-reference decoding remains unchanged. Reusing an old certificate
uses that successful decoding and the certificate's own actual packing
roundtrip. Its criterion and proof concern the complete old referenced
list. A predicate of the complete appended history needs its own evidence.

For an old false loop and a new true loop, the stable dictionary is
`[[], [falseTag], [trueTag]]`. The old false-loop index and old parent cells
remain unchanged. The canonical repack instead yields
`[[falseTag], [], [trueTag]]`, whose stale old index selects the empty history.
Controls also distinguish auxiliary prefixes from real output rows and
retain empty, shared-prefix, parallel-edge and repeated-row cases.

This is a finite noncomputable mathematical representation theorem. It
proves no byte or optimal compression bound, executable cache refinement,
permission authority, or unconditional inherited predicate.

## Source, verification and credit

The [source](../../../../GRWTSK/CombinatoricsAndDiscreteMathematics/DirectedGraph/IncrementalPrefixTable.lean),
[positive controls](../../../../GRWTSK/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/IncrementalPrefixTable.lean),
native receipt (artifact:gitblob:c5a3134a1eaa3dbbf3e864f9366dfc39b6362053)
and integration record (artifact:gitblob:24ddd3fba6d29b5081f1c41b2c008f79de82d459)
bind the exact selected closure. Pinned Lean 4.33.0 checks fresh local
sources at trust zero with fatal warnings and a complete owned-declaration/
transitive-axiom census allowing only `propext`, `Classical.choice` and
`Quot.sound`. Clean pinned dependency objects are reused and fingerprinted;
their sources are not rebuilt. Correlated review is not independent validation.

Local source is MIT; Lean and Mathlib retain their named authors and
Apache-2.0 terms, including the list and actual indexed-lookup APIs.
Human direction: grwtsk contributors; formalization/checking: OpenAI Codex.
No novelty, whole-library or RH admission, or Python/JSON/hash/zlib/IO
refinement is claimed.

**Current source scope.** Source links identify the existing mathematical modules. Earlier proposed bindings and verification receipts retain their recorded paths and hashes; this pointer repair records current bytes and does not claim fresh proof replay.

<!-- BEGIN GENERATED MATHEMATICS TOTALS -->

## Totals

Scope: this object guide and the current bytes of its registered primary source [`GRWTSK/Combinatorics/DirectedGraph/IncrementalPrefixTable.lean`](../../../../GRWTSK/CombinatoricsAndDiscreteMathematics/DirectedGraph/IncrementalPrefixTable.lean).

| Inventory | Total |
|---|---:|
| Object guide | 1 |
| Linked primary source file | 1 |
| Source declaration commands | 36 |
| Theorem/lemma commands | 29 |

Theorem/lemma commands are included in declaration commands. These are source syntax counts; compiler-generated declarations and proof acceptance are outside their scope.

[Count definitions](../../../reference/library-pages.md#count-definitions) · [Structured inventory](../../../reference/library-summary.json).

<!-- END GENERATED MATHEMATICS TOTALS -->
