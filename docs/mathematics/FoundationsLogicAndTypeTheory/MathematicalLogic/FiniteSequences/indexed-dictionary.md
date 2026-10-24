# Exact indexed dictionaries


For any finite list of key–payload pairs and decidable equality on payloads,
`unpack_pack` proves the exact equation
\[
\operatorname{unpack}(\operatorname{pack}(\mathrm{entries}))
 = \operatorname{some}(\mathrm{entries}).
\]
There is no uniqueness hypothesis on keys or input payloads. Equal payloads
share one dictionary slot, but every occurrence retains its own key and index.
Order, multiplicity, repeated keys, empty inputs and optional positions are
preserved.

## Construction and invariants

`Packed Key Payload` consists of `dictionary : List Payload` and
`references : List (Key × Nat)`. Packing deduplicates the payload sequence and
records an index for each original occurrence. Decoding checks each lookup
with `getElem?`; a missing slot makes the whole decoder return `none`.

The source proves that the packed dictionary is duplicate-free, every packed
reference is in bounds, the reference key sequence equals the original key
sequence, the occurrence count is unchanged, and packing is injective.
These are consequences of actual finite-list definitions, with no custom axiom,
hash-injectivity hypothesis or assumed serializer law.

## Checked evidence and application boundary

The [source](../../../../../GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/FiniteSequences/IndexedDictionary.lean),
[consumer controls](../../../../../GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/FiniteSequences/Checks/Positive/IndexedDictionary.lean),
and selected native receipt (artifact:gitblob:b5a95d344f418e620982093ac8e0e27661cd22ea)
bind the exact definitions and theorem types. The missing-reference negative
control is rejected at its intended type. Replay uses pinned Lean 4.33.0,
trust zero, fatal warnings and the complete owned-declaration/transitive-axiom
audit of the two selected dictionary modules. Only `propext`, `Classical.choice`
and `Quot.sound` are allowed. Pinned dependency objects are fingerprinted and
reused, without whole-repository or independent-review acceptance.

The [revision theorems](dictionary-revision.md) state the premises needed when
the dictionary changes. The repository cache (artifact:gitblob:2304c61045278f7e7ef9b09be4a2ba4367c2b984)
uses content-addressed compressed byte objects and separately tested adapters;
the list codec does not prove SHA-256 injectivity, zlib correctness, filesystem
transactions, semantic equivalence of different theorem statements, or the
correctness of that Python implementation.

Human mathematical direction: grwtsk contributors. Formalization assistance:
OpenAI Codex. Local source is MIT. Mathlib retains its authorship and license.
The result formalizes a finite representation technique; no mathematical
novelty, independent validation or RH consequence is claimed.

**Current source scope.** Source links identify the existing mathematical modules. Earlier proposed bindings and verification receipts retain their recorded paths and hashes; this pointer repair records current bytes and does not claim fresh proof replay.

<!-- BEGIN GENERATED MATHEMATICS TOTALS -->

## Totals

Scope: this object guide and the current bytes of its registered primary source [`GRWTSK/Logic/FiniteSequences/IndexedDictionary.lean`](../../../../../GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/FiniteSequences/IndexedDictionary.lean).

| Inventory | Total |
|---|---:|
| Object guide | 1 |
| Linked primary source file | 1 |
| Source declaration commands | 16 |
| Theorem/lemma commands | 11 |

Theorem/lemma commands are included in declaration commands. These are source syntax counts; compiler-generated declarations and proof acceptance are outside their scope.

[Count definitions](../../../../reference/library-pages.md#count-definitions) · [Structured inventory](../../../../reference/library-summary.json).

<!-- END GENERATED MATHEMATICS TOTALS -->
