# Composition of incremental dictionary decoding


Let `original : Packed Key Payload` have valid references and let `a` and `b`
be finite lists of key–payload occurrences, with decidable payload equality.
Applying the actual incremental encoder twice has the same decoded result as
applying it once to the concatenated batch:

```lean
unpack (appendEntries (appendEntries original a) b) =
  unpack (appendEntries original (a ++ b))
```

The validity premise supplies both the first append-decoding theorem and the
validity needed for the second append. List append associativity then compares
the actual decoder results. Starting from `pack oldRows` reconstructs precisely
`some (oldRows ++ a ++ b)` through the established codec theorem.

## Equal decoded history does not identify representations

Start with an empty packed dictionary. Append `[(11,7),(12,8)]`, then
`[(13,7)]`. The sequential dictionary is `[7,8]`: its original slots remain
unchanged. Encoding the combined batch at once gives dictionary `[8,7]`, since
deduplication inside a newly created suffix keeps rightmost occurrences.
Both representations decode to `[(11,7),(12,8),(13,7)]`, and their numeric
references differ. A checked counterexample retains both exact representations.

Decoded equality therefore permits reuse of predicates on decoded rows. It
does not permit substitution of packed values, byte identities or numeric
references. The negative consumer attempts precisely this invalid inference
and must fail with one intended type mismatch.

[Batch certificates](batch-certificate.md) reuse a supplied semantic proof
across these representations when it covers the complete appended history.
An old history's certificate alone does not establish a predicate after append.

## Sources, verification and limits

The [source](../../../../GRWTSK/Logic/FiniteSequences/IncrementalComposition.lean)
uses the accepted [incremental encoder](incremental-dictionary.md), rather than
an assumed serializer law. The
[positive consumers](../../../../GRWTSK/Logic/FiniteSequences/Checks/Positive/IncrementalComposition.lean)
and native receipt (artifact:gitblob:c96d1a93023e466a8dc02eab6e6eeded76d59b8c)
bind exact source bytes and the complete local import closure. Replay uses
pinned Lean 4.33.0, trust zero, fatal warnings and a complete owned-declaration
and transitive-axiom audit. Only `propext`, `Classical.choice` and `Quot.sound`
are permitted; pinned dependency objects are reused and fingerprinted.

The integration record (artifact:gitblob:6d6eded028ce41192bd925d58d11056b2bb4d4ec)
records contribution roles and the
source review (artifact:gitblob:f7f98ce02f26f4d27b71939aa64dbd4b0894e25f)
records bounded antecedents. These finite-list results do not establish a
Python or JSON refinement, cryptographic authentication, byte serialization,
compression, filesystem transactions, complexity bounds, whole-repository
acceptance or independent review.

Human mathematical direction: grwtsk contributors. Formalization and checking
assistance: OpenAI Codex. Local source is MIT; Lean and Mathlib retain upstream
authors and licenses. No mathematical novelty is claimed.

**Current source scope.** Source links identify the existing mathematical modules. Earlier proposed bindings and verification receipts retain their recorded paths and hashes; this pointer repair records current bytes and does not claim fresh proof replay.

<!-- BEGIN GENERATED MATHEMATICS TOTALS -->

## Totals

Scope: this object guide and the current bytes of its registered primary source [`GRWTSK/Logic/FiniteSequences/IncrementalComposition.lean`](../../../../GRWTSK/Logic/FiniteSequences/IncrementalComposition.lean).

| Inventory | Total |
|---|---:|
| Object guide | 1 |
| Linked primary source file | 1 |
| Source declaration commands | 3 |
| Theorem/lemma commands | 3 |

Theorem/lemma commands are included in declaration commands. These are source syntax counts; compiler-generated declarations and proof acceptance are outside their scope.

[Count definitions](../../../reference/library-pages.md#count-definitions) · [Structured inventory](../../../reference/library-summary.json).

<!-- END GENERATED MATHEMATICS TOTALS -->
