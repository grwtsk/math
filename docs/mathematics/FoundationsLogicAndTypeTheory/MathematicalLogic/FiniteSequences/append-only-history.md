# Exact ordered history extensions


For lists `oldRows` and `newRows` with decidable row equality, the executable
`checkPrefix` accepts exactly when there is a suffix `tail` satisfying
`newRows = oldRows ++ tail`. Every old row remains at its original position.
The mapped key list also remains a prefix; neither row nor key uniqueness is
required. Accepted extensions compose.

## The actual decoded history

`checkDecodedExtension oldRows packed` first calls the existing checked
indexed-dictionary decoder. It rejects `none`. Its reflection theorem states
exactly

```lean
checkDecodedExtension oldRows packed = true ↔
  ∃ tail, unpack packed = some (oldRows ++ tail)
```

This requires decidable equality on keys and payloads. A successful accepted
decoding contains the complete old sequence as an ordered prefix. Freshly
packing `oldRows ++ tail` passes this checker through the existing proved
`unpack_pack` equation. No serializer law is assumed. The formalization reuses
Lean's established `List.IsPrefix`, `List.isPrefixOf`, reflection, positional
and mapping lemmas; it adds the actual decoder application.

## Two checked obstructions

The lists `[1,2]` and `[2,1]` contain the same rows with the same multiplicities,
but the second does not extend the first as an ordered prefix. The actual
Boolean checker returns false, and a negative consumer rejects an attempted
proof that it returns true.

A separate counterexample starts with entries `[(11,7),(12,8)]` and appends
`[(13,7)]`. The source history is an exact prefix of the result. Nevertheless,
the codec's rightmost-occurrence deduplication changes its dictionary from
`[7,8]` to `[8,7]`. Replacing only the old dictionary while retaining its old
references remains in bounds and decodes `[(11,8),(12,7)]`. Thus exact extension
of the source history does not justify reusing old dictionary slot references.
Fresh reconstruction and
[agreement at every old referenced lookup](dictionary-revision.md) are distinct
contracts.

## Sources, checks and application boundary

The [source](../../../../../GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/FiniteSequences/AppendOnlyHistory.lean),
[positive consumers](../../../../../GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/FiniteSequences/Checks/Positive/AppendOnlyHistory.lean)
and selected native receipt (artifact:gitblob:a64bdd38160ab122f68109b7fc3151683061f6d0)
bind the actual source, complete local dictionary closure, controls and owned
axiom census. Replay uses pinned Lean 4.33.0, trust zero and fatal warnings,
allowing only `propext`, `Classical.choice` and `Quot.sound`. Pinned dependency
objects are reused and fingerprinted; this is not a cold Mathlib rebuild,
whole-repository acceptance or independent review.

The Python taxonomy transition guard now separately requires literal ordered
prefixes for decisions, contributions and aliases. Its hostile tests reject
reordering and insertion into old history. The Lean theorem concerns exact
finite lists. A refinement from Python's schema-checked JSON rows and equality
to Lean rows, and proofs of file persistence, hash commitments and transaction
authenticity, remain open. The
integration record (artifact:gitblob:bdf2e109fd13fbcae4b769cf048b2ac723d5d42b)
keeps those proof and operational scopes distinct. Authenticated-history
literature is recorded in a
bounded primary-source review (artifact:gitblob:59f2af2ec61e3550e377b4e14be96ab40197f62d);
no cryptographic security or mathematical novelty is claimed.

Human mathematical direction: grwtsk contributors. Formalization assistance:
OpenAI Codex. Local source is MIT; Lean and Mathlib retain upstream credit and
licensing. The incoming classification provenance module remains a separate
candidate with its original verification status.

**Current source scope.** Source links identify the existing mathematical modules. Earlier proposed bindings and verification receipts retain their recorded paths and hashes; this pointer repair records current bytes and does not claim fresh proof replay.

<!-- BEGIN GENERATED MATHEMATICS TOTALS -->

## Totals

Scope: this object guide and the current bytes of its registered primary source [`GRWTSK/Logic/FiniteSequences/AppendOnlyHistory.lean`](../../../../../GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/FiniteSequences/AppendOnlyHistory.lean).

| Inventory | Total |
|---|---:|
| Object guide | 1 |
| Linked primary source file | 1 |
| Source declaration commands | 13 |
| Theorem/lemma commands | 11 |

Theorem/lemma commands are included in declaration commands. These are source syntax counts; compiler-generated declarations and proof acceptance are outside their scope.

[Count definitions](../../../../reference/library-pages.md#count-definitions) · [Structured inventory](../../../../reference/library-summary.json).

<!-- END GENERATED MATHEMATICS TOTALS -->
