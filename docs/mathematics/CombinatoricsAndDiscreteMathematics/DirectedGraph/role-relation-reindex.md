# Reindexing finite relation tables and rooted histories


Fix old and new finite relation tables over the same vertex and role types,
and an actual index map $\rho:\operatorname{Fin}(n)\to\operatorname{Fin}(m)$.
Suppose every mapped row preserves its actual source, target and role.
The map induces a qualified-ID map and an actual quiver prefunctor.
Its vertex map retains the underlying vertex while changing the table-bound
wrapper. Chronological qualified-ID encoding and actual typed path mapping
commute with this translation.

These naturality laws require the row preservation witnesses. Injectivity
is additionally required to distinguish original IDs and histories after
translation. A bijection provides a global inverse. An injection alone
does not supply preimages for newly added relations.

## Actual paths, inverse transport and certificates

The construction uses existing typed paths and their actual qualified-ID
codec. Valid initial source and successive joins, final vertex, order and
repetitions are preserved under the actual prefunctor. Decoder commutation
is proved from the codec inverse laws. The root is transported explicitly,
including for empty words.

For actual old rows `rows : List (Key × PathStar root)`, `mappedPacked`
first maps those actual paths, encodes them with the new-table codec and
packs the resulting ID rows. The certificate consumer requires the exact
binding `certificate.entries = rootedRows role root.value (pathRows role root rows)`,
including all keys, order and repetitions. For a bijective reindexing,
the actual inverse restores that constructed mapped packet to the common
old rooted payload. The certificate's own actual packing roundtrip then
supplies its original criterion. Its criterion and evidence remain explicit
premises; the result applies to this constructed mapped packet.

Restoration takes the retained underlying root as a separate argument; the
new packed ID rows do not store that root. This context must be retained
even for empty rows. The actual zero-row packets at two distinct roots are
equal, while their retained external root values differ; the controls prove
this collision. Repacking the common old rooted payload additionally
requires decidable vertex equality; the core path naturality and inverse
require neither a finite nor a decidable vertex type.

The [stored-state transport result](prefix-table-reindex.md) now applies this
actual full-tag map to arbitrary well-formed prefix states. It preserves ranks,
parent slots and keyed real references while mapping root, dictionary and final
tags, and derives actual decoding commutation. This is a stronger producer than
mapping a newly constructed row packet.

## Checked boundaries

A concrete swap of relation slots zero and two sends the old valid word
`[0,2,1]` to `[2,0,1]` in the table with pulled-back contents. The translated
word has the correct source and joins. Retaining the stale numeric word
instead starts at the wrong vertex. Bounds and role equality alone do not
justify skipping the translation.

Collapsing two parallel relation IDs preserves their endpoints and role
but identifies distinct histories. The positive controls prove this failure
of injectivity before the intended negative use. Relation-table reindexing
is a different map from reindexing parent-dictionary storage slots.

## Verification and limits

The [source](../../../../GRWTSK/CombinatoricsAndDiscreteMathematics/DirectedGraph/RoleRelationReindex.lean),
[positive controls](../../../../GRWTSK/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/RoleRelationReindex.lean),
native receipt (artifact:gitblob:67183f2894df2b92740b5e1de1b91b1b738165b5)
and integration record (artifact:gitblob:b10bb065d9a020d529de0afe1f9b7e5f4a2f4019)
bind exact fresh selected local sources and controls. Pinned Lean 4.33.0
checks trust zero, fatal warnings and the complete owned-declaration and
transitive-axiom census, allowing only `propext`, `Classical.choice` and
`Quot.sound`. Clean pinned dependency objects are reused and fingerprinted;
their sources and the whole umbrella are not rebuilt.

The actual row contents and preservation witnesses remain part of the
context. No unchanged numeric IDs across revisions, external parser,
Python/JSON/hash/zlib/IO refinement, automatic new criterion, source
acceptance or permission authority is inferred. The mathematical parallel-ID
fixture leaves the operational taxonomy duplicate-edge guard unchanged.
Correlated review is not independent validation. Local source is MIT;
imported Lean and Mathlib retain individual credits and Apache-2.0 terms.
Human direction: grwtsk contributors; formalization/checking: OpenAI Codex.

**Current source scope.** Source links identify the existing mathematical modules. Earlier proposed bindings and verification receipts retain their recorded paths and hashes; this pointer repair records current bytes and does not claim fresh proof replay.

<!-- BEGIN GENERATED MATHEMATICS TOTALS -->

## Totals

Scope: this object guide and the current bytes of its registered primary source [`GRWTSK/Combinatorics/DirectedGraph/RoleRelationReindex.lean`](../../../../GRWTSK/CombinatoricsAndDiscreteMathematics/DirectedGraph/RoleRelationReindex.lean).

| Inventory | Total |
|---|---:|
| Object guide | 1 |
| Linked primary source file | 1 |
| Source declaration commands | 30 |
| Theorem/lemma commands | 16 |

Theorem/lemma commands are included in declaration commands. These are source syntax counts; compiler-generated declarations and proof acceptance are outside their scope.

[Count definitions](../../../reference/library-pages.md#count-definitions) · [Structured inventory](../../../reference/library-summary.json).

<!-- END GENERATED MATHEMATICS TOTALS -->
