# Stable updates of stored rooted prefix tables


A stored state retains a root, a finite dictionary $D$ of complete typed
edge traces, a parent table $N$, and ordered keyed real-row references.
Its structural invariant requires duplicate freedom, prefix closure and
validity from the retained root for $D$; the actual cell equation
$N=D.\operatorname{map}(\operatorname{cell}_D)$; and in-bounds real references.
The invariant supplies structure, rather than assuming successful decoding.

The source derives actual rank-fuel parent expansion and checked real-row
decoding from this structure. An update copies the complete old dictionary,
parent cells and real references literally, appends only missing prefixes
needed by new rooted occurrences, and adds one real reference per new row.
The produced state satisfies the invariant, so it can serve as the input
of another update without recanonicalization.

## Actual reconstruction and update closure

Prefix closure supplies each nonempty trace's actual parent. The parent
index selects its full trace and its length rank strictly decreases.
The existing parent decoder therefore expands the stored table to the
actual dictionary. The checked indexed decoder then follows valid ordered
references; typed trace validity permits recovery of actual rooted
occurrences. The full old/new occurrence recovery theorem retains an
explicit premise binding supplied old occurrences to the actual old
successful decoding. Full edge tags distinguish parallel edges, while
row keys, order and multiplicity remain intact.

The old parent cells are copied, not recomputed. Prefix preservation of
actual dictionary lookups proves that their indices still have their
original meaning after extension. Auxiliary prefixes supply parent cells;
they do not become additional communication rows. The root remains explicit
for empty data. The construction requires decidable equality of full typed
edge tags; key equality is unnecessary. Classical noncomputable comparisons
may supply that equality.

Actual two-step decoding agrees with appending the two lists of new
occurrence rows in order. This is a semantic composition statement;
rightmost deduplication can give different dictionaries and reference
positions under different groupings. Exact grouped representations need
not agree.

The [compaction and remapping result](prefix-table-compaction.md) now
rebuilds a state from its actually decoded real histories. It proves the
reverse occurrence/trace roundtrip and actual decoded equality, with a
partial old-slot map and explicit retained-parent and real-reference
remapping. Unused branches may disappear; needed parent prefixes remain.
This is a different operation from copying old slots during stable updates.

## Boundaries and verification

For two updates appending false/true loops and then another false loop,
the sequential dictionary is `[[falseTag], [], [trueTag]]`; a combined
update gives `[[trueTag], [], [falseTag]]`. Both actually decode the same
three ordered keyed histories, and the stored states differ.

A deliberately incomplete dictionary `[[falseTag, trueTag]]` has valid
full payloads, exact cells and a bounded real reference. Its raw unpack
succeeds, while the actual parent decoder returns `none` because the
required singleton parent is missing. Missing parent-prefix closure can
therefore leave raw references in bounds while actual parent decoding fails. The positive controls prove the concrete
obstruction before the negative consumer attempts to omit the invariant.
Successful old-row decoding supports only the old certificate's supplied
criterion; a criterion on all appended rows needs separate evidence.

The [source](../../../../GRWTSK/CombinatoricsAndDiscreteMathematics/DirectedGraph/PrefixTableState.lean),
[positive controls](../../../../GRWTSK/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PrefixTableState.lean),
native receipt (artifact:gitblob:6b37d38866bf46351ded481c955e49d04764439e)
and integration record (artifact:gitblob:55a43dde3ab11ca03bb9ff45a05053f2748cc016)
bind the actual selected local import closure and controls. Fresh sources
are checked with pinned Lean 4.33.0, trust zero, fatal warnings and a full
owned-declaration/transitive-axiom census permitting only `propext`,
`Classical.choice` and `Quot.sound`. Clean pinned dependency objects are
reused and fingerprinted, without rebuilding their sources. The whole
umbrella is not replayed by this selection.

This is a finite noncomputable mathematical representation. It establishes
no Python/JSON/hash/zlib/IO refinement, byte-optimality, permission authority
or automatic inherited criterion. Correlated source/model review is not
independent validation; no novelty, whole-library or RH claim is made.
Local source is MIT; imported Lean and Mathlib retain their individual
credits and Apache-2.0 terms. Human direction: grwtsk contributors;
formalization/checking: OpenAI Codex.

**Current source scope.** Source links identify the existing mathematical modules. Earlier proposed bindings and verification receipts retain their recorded paths and hashes; this pointer repair records current bytes and does not claim fresh proof replay.

<!-- BEGIN GENERATED MATHEMATICS TOTALS -->

## Totals

Scope: this object guide and the current bytes of its registered primary source [`GRWTSK/Combinatorics/DirectedGraph/PrefixTableState.lean`](../../../../GRWTSK/CombinatoricsAndDiscreteMathematics/DirectedGraph/PrefixTableState.lean).

| Inventory | Total |
|---|---:|
| Object guide | 1 |
| Linked primary source file | 1 |
| Source declaration commands | 40 |
| Theorem/lemma commands | 28 |

Theorem/lemma commands are included in declaration commands. These are source syntax counts; compiler-generated declarations and proof acceptance are outside their scope.

[Count definitions](../../../reference/library-pages.md#count-definitions) · [Structured inventory](../../../reference/library-summary.json).

<!-- END GENERATED MATHEMATICS TOTALS -->
