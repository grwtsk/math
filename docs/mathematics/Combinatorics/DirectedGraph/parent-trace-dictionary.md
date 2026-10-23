# Parent dictionaries for complete rooted path traces


Fix a quiver, a root and a finite ordered list of keyed actual path
occurrences. Let $D$ be the proved [complete prefix inventory](prefix-inventory.md).
The parent representation stores the root, original ordered references,
and a finite table of cells. An empty trace has an empty marker of rank
zero. A nonempty trace has its length as rank, an in-bounds reference to
its immediate prefix, and its actual final full source/target/arrow tag.

The mathematical decoder expands this representation to the exact
original dictionary $D$. The existing checked indexed decoder then
reconstructs the complete ordered keyed traces; the existing valid-trace
decoder recovers the actual original occurrences, including repeated
keys and rows. No projected endpoint substitutes for full history identity.

## Actual decoding and termination

A parent reference is obtained by looking up the actual trace without its
last edge in $D$. Prefix closure proves membership and an in-bounds index.
Its trace length decreases by one, and the last full edge joins the
parent's endpoint. The finite expansion uses natural rank fuel and checks
the actual table lookups and decreasing stored ranks. It receives no
original source trace as a decoding oracle.

Termination relies on a proved length decrease. It does not rely on the
parent's numeric index being smaller than the child's. The existing
inventory retains rightmost duplicate copies and can place a parent after
its child. Original key references keep their order and multiplicity
separately from sharing these prefix cells.

For arbitrary tables, numeric expansion checks its lookup/rank conditions;
it does not itself certify that arbitrary full edge tags join at a chosen
root. Those semantic obligations are proved for the actual encoded
inventory. Successful decoding of that representation supplies the
validity used by the existing proof-indexed occurrence decoder.

## Boundary controls

Controls retain empty rows, the singleton empty history, full parallel-edge
identity, repeated rows and loop histories. Actual child-before-parent
positions prevent an assumed decreasing-index invariant. Malformed parent
references and cyclic or nondecreasing ranks exercise the numeric checks.

The root is a separate stored parameter. Distinct roots can have identical
empty trace words, so the empty word alone cannot recover the original
empty occurrence's endpoint. That actual root-loss counterexample is
proved before the intended negative consumer attempts to omit the root.

This is a finite mathematical representation and reconstruction theorem.
It supplies no byte compression bound, optimality, incremental slot
stability, executable cache implementation, or proof/permission authority.

The [rooted revision consumer](rooted-trace-revision.md) now binds the
outer root and actual old referenced premises across expanded parent
dictionaries. It derives successful decoding from exact lookup agreement
before reusing an existing decision certificate. Valid ranks and in-bounds
indices alone do not establish that agreement.

## Source, verification and credit

The [source](../../../../GRWTSK/Combinatorics/DirectedGraph/ParentTraceDictionary.lean),
[positive controls](../../../../GRWTSK/Combinatorics/DirectedGraph/Checks/Positive/ParentTraceDictionary.lean),
native receipt (artifact:gitblob:72185414743f064fac5f410d797c0cfda5baadca)
and integration record (artifact:gitblob:5d27d9ef0197d6db0f81538466148f4b3b584dd0)
bind the exact selected closure. Lean 4.33.0 checks fresh local sources at
trust zero with fatal warnings and a complete owned-declaration/transitive-
axiom census permitting only `propext`, `Classical.choice` and `Quot.sound`.
Clean pinned dependency objects are reused and fingerprinted; their sources
are not rebuilt. Correlated model/source review is not independent validation.

Local source is MIT. Imported Lean and Mathlib definitions and proofs
retain their named authors and Apache-2.0 terms, including Mario Carneiro's
list APIs. Human direction: grwtsk contributors; formalization/checking:
OpenAI Codex. No mathematical novelty, Python/JSON/hash/zlib/IO refinement,
whole-library admission or RH result is claimed.

**Current source scope.** Source links identify the existing mathematical modules. Earlier proposed bindings and verification receipts retain their recorded paths and hashes; this pointer repair records current bytes and does not claim fresh proof replay.

<!-- BEGIN GENERATED MATHEMATICS TOTALS -->

## Totals

Scope: this object guide and the current bytes of its registered primary source [`GRWTSK/Combinatorics/DirectedGraph/ParentTraceDictionary.lean`](../../../../GRWTSK/Combinatorics/DirectedGraph/ParentTraceDictionary.lean).

| Inventory | Total |
|---|---:|
| Object guide | 1 |
| Linked primary source file | 1 |
| Source declaration commands | 30 |
| Theorem/lemma commands | 18 |

Theorem/lemma commands are included in declaration commands. These are source syntax counts; compiler-generated declarations and proof acceptance are outside their scope.

[Count definitions](../../../reference/library-pages.md#count-definitions) · [Structured inventory](../../../reference/library-summary.json).

<!-- END GENERATED MATHEMATICS TOTALS -->
