# Compaction checkpoints between finite prefix batches


Let the initial actual stored prefix state satisfy `WellFormed`, and give two
finite chronological lists of batches of rooted keyed occurrences. The
checkpoint producer runs the first segment, applies the existing actual
compactor, then runs the second segment after transport along the proved root
equality. It returns the existing `State`, with the original retained root
and structural invariant.

The actual checked decoder equals that of running the combined chronological
segments without a checkpoint. Equivalently, it returns the initial decoded
rows followed by the actual `flatMap traceRows` of the first and second
segments in that order. Full typed histories, keys and repetitions remain
intact. Decidable equality of full typed edge tags is explicit; the result
introduces no replacement state or assumed serializer law.

## Actual compaction and storage positions

The proof consumes actual `List.foldl_append`, batch root/invariant/decoder
laws and the existing actual compactor's decoder law. The positive controls
separately derive exact partial slot-remapping equations.
Root transport uses the actual retained-root equality. Array positions may
change across compaction. Stored rank is trace length; numeric parent and
reference slots are storage positions rather than relation identities.

Let `F` and `P` denote distinct parallel one-edge histories. The actual state
has dictionary `[F, [], P]` and real references `[(11, 0), (11, 0)]`; `P` is
unused. Actual compaction gives `[[], F]`, references `[(11, 1), (11, 1)]`,
and partial slot maps `0 ↦ some 1`, `1 ↦ some 0`, `2 ↦ none`.
Appending the actual `P` batch gives `[[], F, P]` with references
`[(11, 1), (11, 1), (12, 2)]`. Its histories agree with the direct run, whose
old dictionary and references use different slots. The arrays are proved
unequal.

The stale-reference counter copies the old references to slot zero into the
compacted dictionary and appends the same batch. Its references remain bounded
and the full state remains `WellFormed`, but the first two decoded histories
are empty in place of `F`. The actual decoder inequality is proved before
the sole intended negative use, which supplies numeric bounds in place of
history equality. Empty segments, both nonempty segments, repeated rows,
internal empty batches and distinct retained roots are checked consumers.

## Verification and limits

The [source](../../../../GRWTSK/CombinatoricsAndDiscreteMathematics/DirectedGraph/PrefixTableCheckpoint.lean),
[positive controls](../../../../GRWTSK/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PrefixTableCheckpoint.lean),
native receipt (artifact:gitblob:9b6f7abca32e0cc151859cb2081056d9fd710cc0)
and integration record (artifact:gitblob:fd32195a386ab6cac83dc4a3e29722dbae8bca2d)
bind fresh selected local sources and controls. Pinned Lean 4.33.0 checks trust
zero, fatal warnings and every owned declaration and transitive axiom,
allowing only `propext`, `Classical.choice` and `Quot.sound`. Clean pinned
dependency objects are reused and fingerprinted; their sources and the whole
umbrella are not rebuilt.

The durable decision (artifact:gitblob:d707cbe338edb4ce306fd9d9d3c4f05706422b63)
records this semantic checkpoint and its storage boundaries. No raw array
or old-slot stability across compaction is claimed. Criteria and evidence
for appended rows remain explicit obligations. Runtime parser/JSON/zlib/hash,
filesystem and transaction refinement remain open. Local source is MIT;
named imported Lean/Mathlib contributors retain their individual credit and
terms. Human direction: grwtsk contributors; formalization/checking: OpenAI
Codex. Correlated model/source review is not independent validation.

**Current source scope.** Source links identify the existing mathematical modules. Earlier proposed bindings and verification receipts retain their recorded paths and hashes; this pointer repair records current bytes and does not claim fresh proof replay.

The [finite schedule result](prefix-compaction-schedule.md) extends the actual checkpoint construction to chronological batch and compaction actions. It preserves checked histories after erasing compaction actions, while keeping dropped-and-reintroduced payload lookup separate from composed partial retention.

<!-- BEGIN GENERATED MATHEMATICS TOTALS -->

## Totals

Scope: this object guide and the current bytes of its registered primary source [`GRWTSK/Combinatorics/DirectedGraph/PrefixTableCheckpoint.lean`](../../../../GRWTSK/CombinatoricsAndDiscreteMathematics/DirectedGraph/PrefixTableCheckpoint.lean).

| Inventory | Total |
|---|---:|
| Object guide | 1 |
| Linked primary source file | 1 |
| Source declaration commands | 12 |
| Theorem/lemma commands | 9 |

Theorem/lemma commands are included in declaration commands. These are source syntax counts; compiler-generated declarations and proof acceptance are outside their scope.

[Count definitions](../../../reference/library-pages.md#count-definitions) · [Structured inventory](../../../reference/library-summary.json).

<!-- END GENERATED MATHEMATICS TOTALS -->
