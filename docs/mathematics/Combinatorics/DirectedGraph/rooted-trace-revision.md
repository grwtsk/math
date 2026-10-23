# Certified revision of rooted trace dictionaries


Fix actual before and after [parent dictionaries](parent-trace-dictionary.md),
retaining the complete ordered references from before. Exact agreement of
their expanded optional lookups at every old reference preserves the
actual decoded old premises. Their retained outer roots must agree even
when there are no references. Rooted payloads retain both the root and
the complete typed edge trace.

The source derives successful decoding from the actual parent expansion
and the existing finite-dictionary revision theorem. It then reuses an
existing [decision certificate](../../Logic/FiniteSequences/decision-certificate.md)
against the certificate's own actual packing roundtrip. The certificate
supplies its explicit predicate and proof for the complete old premise
list. Full keyed occurrence recovery uses the existing valid-trace decoder.
Keys, reference order and repeated occurrences remain distinct.

Full-tag equality is supplied for the prefix dictionaries; certificate
packing additionally uses decidable equality of vertices. Classical
noncomputable instances may supply these comparisons. No equality of keys
is required.

## Actual agreement and certificate reuse

A full-prefix dictionary and the certificate's deduplicated-entry dictionary
can have different numeric positions. The proof therefore derives equality
of their actual decoded lists before applying the existing same-decoding
certificate theorem. It does not silently apply referenced-slot agreement
to these different representations.

Exact lookup agreement records complete optional values, including absence.
In the admitted consumer, the original encoding supplies successful decoding;
comparison of two failed decoders is not a substitute. Outer root agreement
binds the context even for an empty list, where per-row root tags provide
no evidence about the retained root.

The [stable incremental prefix table](incremental-prefix-table.md) now
constructs one actual extension that satisfies the old-reference decoding
requirement. It copies the old dictionary and parent cells literally,
adds only missing prefixes, and recovers all original old and new rows.
This one-step construction starts from the canonical old encoding; its
noncanonical output needs an additional state-invariant proof for iteration.

## Concrete revision controls

For a singleton false loop, the dictionary is `[[], [falseTag]]`. Appending
a true loop produces `[[falseTag], [], [trueTag]]`. The old slot one remains
in bounds and now selects the empty history. The revised parent table has
valid ranks, the root and projected endpoint agree, and the actual false-loop
criterion still fails under the stale references.

The preserving fixture repeats the sole false history: `[falseLoop]` becomes
`[falseLoop, falseLoop]`, with the old references retained. Its actual dictionary
agreement and certified old criterion are proved. This is a concrete fixture;
arbitrary repeated histories can reorder a rightmost-deduplicated dictionary.

Distinct roots can also have equal empty words and equal empty table contents.
The controls keep this root-context failure separate from stale indices and
prove the actual obstruction before the intended negative reuse attempt.

## Limits and verification

The certificate's predicate and proof are mathematical inputs. Counts,
hashes, bounds, source labels and numeric rank validity supply no semantic
criterion. Preserving the old referenced list does not prove an arbitrary
predicate of all appended rows. This is an actual consumer of existing
revision and certificate laws, with no runtime/JSON/hash/IO refinement,
slot-stability, byte-compression or permission-authority claim.

The [source](../../../../GRWTSK/Combinatorics/DirectedGraph/RootedTraceRevision.lean),
[positive controls](../../../../GRWTSK/Combinatorics/DirectedGraph/Checks/Positive/RootedTraceRevision.lean),
native receipt (artifact:gitblob:7a06810662f143c7434105fa5c49f73a0e98c280)
and integration record (artifact:gitblob:a25095decb66149c7efccec4b6e20d5cac8e96b4)
bind the exact selected closure. Lean 4.33.0 checks fresh local sources at
trust zero with fatal warnings and a complete owned-declaration/transitive-
axiom census permitting only `propext`, `Classical.choice` and `Quot.sound`.
Clean pinned dependency objects are reused and fingerprinted; their sources
are not rebuilt. Correlated source/model review is not independent validation.

Local source is MIT; imported Lean and Mathlib retain their named authors
and Apache-2.0 terms. Human direction: grwtsk contributors; local
formalization/checking: OpenAI Codex. No mathematical novelty,
whole-library admission or RH result is claimed.

**Current source scope.** Source links identify the existing mathematical modules. Earlier proposed bindings and verification receipts retain their recorded paths and hashes; this pointer repair records current bytes and does not claim fresh proof replay.

<!-- BEGIN GENERATED MATHEMATICS TOTALS -->

## Totals

Scope: this object guide and the current bytes of its registered primary source [`GRWTSK/Combinatorics/DirectedGraph/RootedTraceRevision.lean`](../../../../GRWTSK/Combinatorics/DirectedGraph/RootedTraceRevision.lean).

| Inventory | Total |
|---|---:|
| Object guide | 1 |
| Linked primary source file | 1 |
| Source declaration commands | 16 |
| Theorem/lemma commands | 9 |

Theorem/lemma commands are included in declaration commands. These are source syntax counts; compiler-generated declarations and proof acceptance are outside their scope.

[Count definitions](../../../reference/library-pages.md#count-definitions) · [Structured inventory](../../../reference/library-summary.json).

<!-- END GENERATED MATHEMATICS TOTALS -->
