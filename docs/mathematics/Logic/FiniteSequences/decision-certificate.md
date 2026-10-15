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

The [source](../../../../GRWTSK/Logic/FiniteSequences/DecisionCertificate.lean),
[positive consumers](../../../../GRWTSK/Logic/FiniteSequences/Checks/Positive/DecisionCertificate.lean)
and [selected native receipt](../../../../evidence/Logic/FiniteSequences/decision-certificate-checks-2026-10-15.json)
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
refinement obligations in the [cache reference](../../../reference/content-cache.md).

Human mathematical direction: R.A. Jacob Martone. Formalization assistance:
OpenAI Codex. Local source is MIT; Mathlib retains upstream credit and licensing.
