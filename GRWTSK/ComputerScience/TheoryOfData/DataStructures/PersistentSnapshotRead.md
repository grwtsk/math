# Persistent snapshot read: mathematical source record

Attribution: grwtsk contributors.

## Identity and consumer

- Repository: `grwtsk/math`.
- Path: `GRWTSK/ComputerScience/TheoryOfData/DataStructures/PersistentSnapshotRead.lean`.
- Namespace: `GRWTSK.ComputerScience.PersistentSnapshot`.
- Source SHA-256: `d0d1f3e0271fad20d2ef018e7c3de7f087950d2aeab93f34abd54d27d55d071a`.
- Consumer: PGATN AT-004; the exact historical-observation theorem for a source-frozen snapshot root, to be connected to the actual journal codec and authenticated index.

## Statements and hypotheses

For arbitrary event/value types, `Root` contains a natural cutoff and one fixed function `List Event → Option Value`. This function is the mathematical interpretation parameter; a runtime representation must identify a fixed, valid decoder version rather than attempting to store every mathematical function as finite metadata. `read journal root` applies the fixed decoder to `journal.take root.cutoff`.

For every pair of lists journal,suffix and every root whose cutoff is at most the original journal length, `read_append` proves equal observations before and after append. `read_prefix_extension` states the same result for Lean's actual `List.IsPrefix` relation. If the original read succeeds with `some value`, `successful_read_preserved` retains that exact value. Decoder failure is also preserved by the unconditional equality.

## Complete analytical argument and comparison

The root's entire input prefix lies before the end of the original journal. Taking that prefix from the old list or from that list concatenated with any suffix returns the same finite sequence. Applying the same decoder to equal sequences gives equal observations. The prefix relation is exactly existence of an appended suffix, so it reduces to this argument. Successful observation preservation is transitivity with the existing read result.

For a decoder that instead resolves a finite immutable dependency DAG, the corresponding analytical argument would be induction on dependency height: leaves retain their payloads and each internal operation receives the same child values. That is a distinct sufficient design whose actual implementation refinement remains to be supplied; it is not assumed by this snapshot theorem.

Append-only storage alone does not preserve a query defined as the sum of all current successor payloads: appending one successor changes that query. Nor does it protect mutable decoder versions or relocated dictionary slots. This source's frozen cutoff and fixed decoder are therefore necessary parts of its stated contract, not incidental implementation details. Authentication, concurrency liveness, atomic publication and crash recovery are separate obligations.

## Canonical sources and comparison

Lean 4.34.1's `List.take_append_of_le_length`, accessed through the pinned Mathlib list API, and the canonical `List.prefix_iff_exists_eq_append`. The earlier GRWTSK source `FiniteSequencesAppendOnlyHistory` was inspected at historical commit `caa487cd6e9e01e39a846058a417e39abc7f9300`; its `accepted_position` and stale dictionary-slot counterexample concern the same source-preservation boundary. This module adds a direct frozen-root observer consumer and does not replace the existing prefix relation or claim a new generic prefix theorem.

## Observed verification

On 2026-11-28, the exact source compiled under the canonical module identity in Lean 4.34.1, binary commit `5045d0056413266e57c625dcd7c365b10e377c52`, with Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`. Its named read declarations' transitive axiom sets are empty or subsets of `propext`, `Quot.sound`; no placeholder axiom occurs. The combined PGATN bundle passed fresh Lean kernel replay, exit 0.

Package verification manifest SHA-256: `8c47a3c1016ccd44d83cf53a881788f03141de41e731f31d913c89a876967b5f`. This establishes the stated mathematical observer model. It does not establish a Rust filesystem, codec, index, cryptographic or recovery refinement. Independent external mathematical review is not claimed.
