# Role-qualified finite relation tables and typed histories


Fix a finite table with source and target vertices and a role for each
index, and fix a selected role. A qualified ID is an actual table index
whose role equals that selection. The table and selected role parameterize
the vertices and quiver instance. Arrows retain the index together with
its actual source, target and role witnesses.

There is an equivalence between complete typed edge tags and qualified IDs.
The two inverse laws retain parallel indices, even when their endpoints
and roles coincide. This uses the actual fixed finite table; equal endpoint
pairs alone do not identify IDs.

## Actual ordered rooted path codec

The existing fixed-root path/trace equivalence composes with that edge
codec to give an equivalence between actual typed paths and qualified-ID
lists with valid initial source and successive joins. Encoding and decoding
are actual constructions with inverse laws. The decoded endpoint follows
the actual targets. Concatenation preserves chronological order and every
occurrence, including repeated indices.

Natural-number lookup uses decidable role equality and checks the finite bound
and selected role. A proof
of bounds alone cannot qualify an index of a different role. The finite
fixture has parallel role-R IDs zero and one from A to B, role-R ID two
from B to A, and role-S ID three from B to A. The histories `[0]` and `[1]`
have identical endpoints and length but remain distinct. `[0,2,1]` is a
valid revisiting history; `[0,1]` has a broken join. Wrong roles, invalid
bounds and the wrong outer root are rejected. Empty words retain the root.

## Stored histories and compaction

Actual prefix-state compaction preserves the complete typed trace rows.
Projecting those rows through the proved edge-ID codec therefore preserves
all qualified IDs, keys, order and multiplicity. The prefix-table structural
invariant supplies successful actual stored decoding; compaction preserves
the projection of those derived decoded rows.
Numeric references may change during compaction. This consumer additionally
uses decidable equality of complete typed edge tags; classical noncomputable
comparison may supply it. The path/ID equivalence itself requires neither
decidable vertex equality nor a finite vertex type.

The [relation-table reindexing result](role-relation-reindex.md) now proves
actual source/target/role-preserving translation of these typed histories.
Injectivity preserves distinctions; a bijection supplies an inverse into
common old rooted payloads for explicit certificate reuse. This is separate
from parent-dictionary storage-slot remapping, and numeric relation indices
are not stable across revisions without that translation.

## Verification and boundaries

The [source](../../../../GRWTSK/Combinatorics/DirectedGraph/RoleRelationTable.lean),
[positive controls](../../../../GRWTSK/Combinatorics/DirectedGraph/Checks/Positive/RoleRelationTable.lean),
native receipt (artifact:gitblob:c7da1cb26350505a4c3a90e2b262b0cf3fa54e7d)
and integration record (artifact:gitblob:71cc12c86ac74d82561d697b5d5a5eb97f16640a)
bind the exact fresh selected local source closure and controls. Pinned
Lean 4.33.0 checks trust zero, fatal warnings and the full owned-declaration
and transitive-axiom census, allowing only `propext`, `Classical.choice` and
`Quot.sound`. Clean pinned dependency objects are reused and fingerprinted;
their sources and the whole umbrella are not rebuilt by this selection.

The finite mathematical parallel-edge fixture does not change the existing
operational taxonomy duplicate-edge guard. This result proves no external
ID parser, Python/JSON/hash/zlib/IO refinement, cross-revision index stability,
byte optimality or permission/proof authority. Exact table content and the
selected role are part of the mathematical context. Correlated source/model
review is not independent validation. Local source is MIT; imported Lean
and Mathlib retain individual credits and Apache-2.0 terms. Human direction:
grwtsk contributors; formalization/checking: OpenAI Codex.

**Current source scope.** Source links identify the existing mathematical modules. Earlier proposed bindings and verification receipts retain their recorded paths and hashes; this pointer repair records current bytes and does not claim fresh proof replay.

<!-- BEGIN GENERATED MATHEMATICS TOTALS -->

## Totals

Scope: this object guide and the current bytes of its registered primary source [`GRWTSK/Combinatorics/DirectedGraph/RoleRelationTable.lean`](../../../../GRWTSK/Combinatorics/DirectedGraph/RoleRelationTable.lean).

| Inventory | Total |
|---|---:|
| Object guide | 1 |
| Linked primary source file | 1 |
| Source declaration commands | 39 |
| Theorem/lemma commands | 21 |

Theorem/lemma commands are included in declaration commands. These are source syntax counts; compiler-generated declarations and proof acceptance are outside their scope.

[Count definitions](../../../reference/library-pages.md#count-definitions) · [Structured inventory](../../../reference/library-summary.json).

<!-- END GENERATED MATHEMATICS TOTALS -->
