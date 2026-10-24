# Finite schedules of batches and compaction

Start from an actual stored prefix state with its structural `WellFormed`
invariant and retained root. Each action is either an actual finite batch of
rooted keyed occurrences or an actual compaction. The schedule executes the
existing batch step or compactor through a chronological `List.foldl` on the
existing state fiber carrying these proofs. It introduces no replacement
state, path or desired decoding axiom.

Erasing compaction actions gives a chronological list of batches. The actual
checked decoder of the schedule equals that of the existing batch runner on
this projected list. Root, complete typed histories, keys, order and
multiplicity are retained. Decidable equality of full typed edge tags is
explicit; criteria for new rows remain separate evidence obligations.

## Partial retention and reintroduced payloads

The checked fixture starts with dictionary `[[F], [], [P]]` and two real
references to slot `0`. The first actual compaction produces `[[], [F]]`,
remapping `F: 0 → 1` and dropping the unused `P` at old slot `2`. A genuine
batch then appends a parallel `P` history. A second actual compaction produces
`[[F], [], [P]]` with real references `[(11, 0), (11, 0), (12, 2)]` and full
histories `F, F, P`.

The original and final dictionaries coincide, and direct lookup of the old
`P` payload in the final dictionary returns `some 2`. Composition of the actual
partial retention maps remains `none`: the first compaction dropped it.
The positive module proves these actual producer and lookup equations before
the negative control rejects direct lookup as composed-remap evidence.
Empty schedules, repeated compactions, internal empty batches, repeated keys,
chronological histories and distinct retained roots have positive controls.
The [original-reference transport result](prefix-reference-transport.md) now
derives successful cumulative partial transport only on actual original
real-reference support, retaining key and full payload. No total map on
unused slots or revival after dropping is inferred.

## Verification and limits

The [source](../../../../GRWTSK/CombinatoricsAndDiscreteMathematics/DirectedGraph/PrefixTableSchedule.lean),
[positive controls](../../../../GRWTSK/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PrefixTableSchedule.lean),
native receipt (artifact:gitblob:f9122c3f64f7e8449134ce5d5c4bf807e03bcb12)
and historical integration record (artifact:gitblob:7462f6d40b697f197d312480eaf52360cb47483c)
record the selected source and control checks; the integration record retains the earlier context. The relocated-context native receipt audits 925 owned declarations in its exact recorded source and verifier context. This is not a theorem count or a claim that later shared verifier edits were replayed. Pinned Lean 4.33.0 checks trust
zero, fatal warnings and every owned declaration and transitive axiom,
allowing only `propext`, `Classical.choice` and `Quot.sound`. Clean pinned
dependency objects are reused and fingerprinted; their sources and the whole
umbrella are not rebuilt.

The durable decision (artifact:gitblob:fb505d31f051d8de07876ac8d1504a04e3b0dc0b)
separates semantic history preservation, slot retention and payload lookup.
This does not supply raw array stability, automatic criteria or an operational
parser/JSON/hash/compression/filesystem/transaction refinement. Local source
is MIT; named imported Lean/Mathlib contributors retain their individual
credits and terms. Human direction: grwtsk contributors; formalization/checking:
OpenAI Codex. Correlated model/source review is not independent validation.

<!-- BEGIN GENERATED MATHEMATICS TOTALS -->

## Totals

Scope: this object guide and the current bytes of its registered primary source [`GRWTSK/Combinatorics/DirectedGraph/PrefixTableSchedule.lean`](../../../../GRWTSK/CombinatoricsAndDiscreteMathematics/DirectedGraph/PrefixTableSchedule.lean).

| Inventory | Total |
|---|---:|
| Object guide | 1 |
| Linked primary source file | 1 |
| Source declaration commands | 12 |
| Theorem/lemma commands | 6 |

Theorem/lemma commands are included in declaration commands. These are source syntax counts; compiler-generated declarations and proof acceptance are outside their scope.

[Count definitions](../../../reference/library-pages.md#count-definitions) · [Structured inventory](../../../reference/library-summary.json).

<!-- END GENERATED MATHEMATICS TOTALS -->
