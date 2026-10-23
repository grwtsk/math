# Compaction and remapping of rooted prefix tables


Start with an actual stored rooted prefix-table state satisfying its
[structural invariant](prefix-table-state.md). Compaction derives successful
real-row decoding and rooted validity, recovers the actual keyed rooted
occurrences, and rebuilds their canonical complete-prefix parent table.
The rebuilt state retains the root and decodes the same complete ordered
histories, including repeated keys and repeated occurrences.

The reconstruction uses the existing actual codecs. It proves the reverse
roundtrip from valid decoded trace rows through recovered occurrences back
to exactly those trace rows. The previously proved opposite roundtrip alone
would not establish this equality.

## Actual retained-prefix and reference mapping

The rebuilt dictionary is a subset of the old dictionary; no new full
prefix is invented. The old dictionary may contain unused branches. The old-slot map is therefore
partial: an old full prefix receives a new index only when that prefix is
retained in the rebuilt dictionary. Every retained nonempty prefix has its
required parent retained and its actual parent reference remapped. Every
real row receives the new index of its complete trace, preserving its key,
order and multiplicity. The old numeric references are not copied blindly.

A concrete old dictionary `[[falseTag], [], [trueTag]]` with two real
references to false-history slot zero rebuilds as `[[], [falseTag]]`.
The unused true branch disappears. The false cell's parent moves from
slot one to zero, while each real false-history reference moves from zero
to one. Retaining the old real references instead would decode two empty
histories, even though the root and endpoints agree.

Actual successful decoding equality also permits reuse of an explicitly
supplied old certificate through that certificate's own actual packing
roundtrip. Its entries must equal the complete actual root-lifted decoded
row list, retaining order and repetitions. Its criterion and evidence are
also premises. No criterion on new
or different rows follows merely from compaction.

The [finite role-qualified relation codec](role-relation-table.md) now
connects actual finite table IDs to the complete typed edges used here.
Its inverse laws and actual rooted path construction preserve parallel ID
identity, joins, order and repetitions. The actual compaction consumer
projects the same complete decoded rows through that codec. The table and
selected role remain explicit; operational JSON refinement is still open.

## Premises and verification

The construction requires decidable equality of full typed edge tags;
classical noncomputable comparisons may provide it. Certificate packing
also requires decidable vertex equality. The outer root remains explicit for empty
input; equal raw trace words do not identify different root contexts.

The [source](../../../../GRWTSK/Combinatorics/DirectedGraph/PrefixTableCompaction.lean),
[positive controls](../../../../GRWTSK/Combinatorics/DirectedGraph/Checks/Positive/PrefixTableCompaction.lean),
native receipt (artifact:gitblob:72a53263dc77918b21a813bdc58b3a83a065d6d3)
and integration record (artifact:gitblob:64acfb30f8cd0701dfa5c588f6140e13f7dc4a6d)
bind exact fresh selected local sources and controls. Pinned Lean 4.33.0
checks trust zero, fatal warnings and the complete owned-declaration/
transitive-axiom census, allowing only `propext`, `Classical.choice` and
`Quot.sound`. Clean pinned dependency objects are reused and fingerprinted;
their sources and the whole umbrella are not rebuilt by this selection.

This finite noncomputable mathematical compaction proves no byte-optimality,
operational JSON/hash/zlib/IO correspondence or permission authority.
Correlated source/model review is not independent validation; no novelty,
whole-library or RH claim is made. Local source is MIT; imported Lean and
Mathlib retain their individual credits and Apache-2.0 terms. Human direction:
grwtsk contributors; formalization/checking: OpenAI Codex.

**Current source scope.** Source links identify the existing mathematical modules. Earlier proposed bindings and verification receipts retain their recorded paths and hashes; this pointer repair records current bytes and does not claim fresh proof replay.

<!-- BEGIN GENERATED MATHEMATICS TOTALS -->

## Totals

Scope: this object guide and the current bytes of its registered primary source [`GRWTSK/Combinatorics/DirectedGraph/PrefixTableCompaction.lean`](../../../../GRWTSK/Combinatorics/DirectedGraph/PrefixTableCompaction.lean).

| Inventory | Total |
|---|---:|
| Object guide | 1 |
| Linked primary source file | 1 |
| Source declaration commands | 27 |
| Theorem/lemma commands | 22 |

Theorem/lemma commands are included in declaration commands. These are source syntax counts; compiler-generated declarations and proof acceptance are outside their scope.

[Count definitions](../../../reference/library-pages.md#count-definitions) · [Structured inventory](../../../reference/library-summary.json).

<!-- END GENERATED MATHEMATICS TOTALS -->
