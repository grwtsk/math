# Semantic certificates for finite premises


Let `entries : List (Key × Payload)` and let `predicate` be a proposition about
that exact list. A `Certificate` stores `entries`, `predicate`, and an actual
proof `predicate entries`. With decidable payload equality, its packed form
is the existing indexed-dictionary `pack entries`, whose successful decoding
is proved to equal precisely `some entries`.

## Reuse under exact decoding

`Certificate.decodesSatisfying` proves that this actual decoder succeeds with
a list satisfying the predicate. `predicate_of_successful_equal_decoding`
transports that semantic proof to any successful decoding equal to the original
decoding. `reuse_of_same_decoding` additionally derives successful decoding
from equality with the certified original.

For a replacement dictionary, `reuse_of_agreement` requires equality of every
optional lookup at every referenced slot, using the complete reference list.
It concludes that the revised decoder succeeds and its decoded premises satisfy
the original predicate. `predicate_after_agreement` applies this to any named
successful revised result. The proof uses the actual
[codec reconstruction theorem](indexed-dictionary.md) and
[revision preservation theorem](dictionary-revision.md); no serializer law is
assumed.

## A stale arithmetic premise

The checked counterexample starts with the single premise `(11,7)` and the
predicate that all payloads are at most seven. Replacing the only dictionary
payload by eight preserves reference keys, reference order, dictionary length,
occurrence count and valid bounds. It invalidates the semantic predicate.
The negative consumer rejects direct reuse of the old semantic certificate.
The positive consumer appends an unused slot while preserving the referenced
seven and reuses the proof under actual lookup agreement.

## Sources, verification and limits

The [source](../../../../../GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/FiniteSequences/DecisionCertificate.lean),
[positive consumers](../../../../../GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/FiniteSequences/Checks/Positive/DecisionCertificate.lean)
and selected native receipt (artifact:gitblob:188505cee1abba936f29f140c02e4e4b20f1789f)
bind the complete local three-module closure. The pinned Lean 4.33.0 replay
uses trust zero, fatal warnings and the complete owned-declaration/transitive-axiom
audit. Only `propext`, `Classical.choice` and `Quot.sound` are allowed. Pinned
dependency objects are reused and fingerprinted; this is not a cold Mathlib
rebuild, whole-repository acceptance or independent review.

A predicate and its proof must be supplied. A stored reason, source digest,
identity, count, taxonomy relation or agent communication cannot fill that
proof field. The theorem establishes conditional finite-list reasoning; it
does not verify the repository JSON decision schema, Python adapter, byte
serialization, compression, filesystem persistence or arbitrary decision policy.
Those operational records remain separate, source-bound evidence with explicit
refinement obligations in the cache reference (artifact:gitblob:2304c61045278f7e7ef9b09be4a2ba4367c2b984).

Human mathematical direction: grwtsk contributors. Formalization assistance:
OpenAI Codex. Local source is MIT; Mathlib retains upstream credit and licensing.

**Current source scope.** Source links identify the existing mathematical modules. Earlier proposed bindings and verification receipts retain their recorded paths and hashes; this pointer repair records current bytes and does not claim fresh proof replay.

<!-- BEGIN GENERATED MATHEMATICS TOTALS -->

## Totals

Scope: this object guide and the current bytes of its registered primary source [`GRWTSK/Logic/FiniteSequences/DecisionCertificate.lean`](../../../../../GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/FiniteSequences/DecisionCertificate.lean).

| Inventory | Total |
|---|---:|
| Object guide | 1 |
| Linked primary source file | 1 |
| Source declaration commands | 10 |
| Theorem/lemma commands | 7 |

Theorem/lemma commands are included in declaration commands. These are source syntax counts; compiler-generated declarations and proof acceptance are outside their scope.

[Count definitions](../../../../reference/library-pages.md#count-definitions) · [Structured inventory](../../../../reference/library-summary.json).

<!-- END GENERATED MATHEMATICS TOTALS -->
