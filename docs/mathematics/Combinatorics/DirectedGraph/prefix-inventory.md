# A finite inventory of complete history prefixes


Fix a quiver and root $r$. Let `rows` be a finite list of keys paired with
actual rooted path occurrences. Write $t(p)$ for the complete typed edge
trace of an occurrence and form

\[
D=\operatorname{dedup}
  \left(\operatorname{flatMap}_{(k,p)\in rows}\operatorname{inits}(t(p))\right).
\]

Each dictionary entry is a complete prefix trace, including its actual
source, target and arrow tags. Membership has an exact characterization:
$d\in D$ if and only if some input occurrence has $d$ as a trace prefix.
The inventory is prefix closed. Every entry is valid from the fixed root
and decodes to an actual occurrence with that exact trace.

## Exact references and recovery

The [indexed dictionary](../../Logic/FiniteSequences/indexed-dictionary.md)
stores the dictionary $D$ and one ordered key-index reference for every
original row. Its existing checked `unpack_map_indices` theorem recovers
the original keys and complete traces, including duplicate rows, in order.
Actual occurrence recovery uses the existing valid-trace decoder and trace
injectivity. It does not infer history identity from projected endpoints.

The dictionary is finite, with

\[
|D|\le\sum_{(k,p)\in rows}(|t(p)|+1).
\]

Equality compares the full typed traces. A decidable equality instance or
classical noncomputable mathematical construction supplies that comparison.
This is a finite mathematical inventory and reconstruction contract. It
does not establish executable compression, byte savings, an optimal
dictionary, parent-pointer reconstruction or stable indices under revision.

`List.dedup` retains rightmost copies. A root prefix need not occupy the
first slot or precede its children. Original keys and references retain
their order and multiplicity separately from dictionary payload sharing.

## Boundary controls

Empty rows produce an empty inventory. A singleton empty-path occurrence
produces the one-entry dictionary `[[]]`, with its root retained externally.
Actual parallel Bool loops have equal endpoints but different edge traces;
their shared prefix is empty. Repeated rows retain separate references.
The accepted positive control proves the history-identity distinction
before the negative consumer attempts to substitute endpoint equality.

This inventory contains prefixes of the selected finite rows. It is not
the infinite all-occurrence unfolding of a cyclic base graph, nor a claim
of permission or proof implication from graph reachability.

The [parent dictionary](parent-trace-dictionary.md) now represents each
complete prefix by an empty marker or a checked parent reference and its
actual last full edge, with the root retained separately. Its actual
rank-fuel expansion reconstructs this exact dictionary before indexed
unpacking and occurrence recovery. Trace length supplies the decreasing
rank; rightmost numeric positions need not decrease.

## Source, verification and credit

The [source](../../../../GRWTSK/Combinatorics/DirectedGraph/PrefixInventory.lean),
[positive controls](../../../../GRWTSK/Combinatorics/DirectedGraph/Checks/Positive/PrefixInventory.lean),
native receipt (artifact:gitblob:b56342f4504dcf94d8cb0b6598ba16d6356d120c)
and integration record (artifact:gitblob:00575432d4c81fafd0f5f3d683fd47a73640095e)
bind the exact selected closure. Pinned Lean 4.33.0 checks fresh selected
local objects at trust zero with fatal warnings and a complete
owned-declaration/transitive-axiom census permitting only `propext`,
`Classical.choice` and `Quot.sound`. Pinned dependency objects are reused
and fingerprinted; their sources are not rebuilt. Correlated source/model
review is not independent validation.

Local source is MIT. Lean and Mathlib retain named author credit and
Apache-2.0 terms, including Mario Carneiro's list-prefix APIs. Human
direction: grwtsk contributors; formalization/checking: OpenAI Codex.
No Python/JSON/hash/zlib/IO refinement or mathematical novelty is claimed.

**Current source scope.** Source links identify the existing mathematical modules. Earlier proposed bindings and verification receipts retain their recorded paths and hashes; this pointer repair records current bytes and does not claim fresh proof replay.

<!-- BEGIN GENERATED MATHEMATICS TOTALS -->

## Totals

Scope: this object guide and the current bytes of its registered primary source [`GRWTSK/Combinatorics/DirectedGraph/PrefixInventory.lean`](../../../../GRWTSK/Combinatorics/DirectedGraph/PrefixInventory.lean).

| Inventory | Total |
|---|---:|
| Object guide | 1 |
| Linked primary source file | 1 |
| Source declaration commands | 23 |
| Theorem/lemma commands | 18 |

Theorem/lemma commands are included in declaration commands. These are source syntax counts; compiler-generated declarations and proof acceptance are outside their scope.

[Count definitions](../../../reference/library-pages.md#count-definitions) · [Structured inventory](../../../reference/library-summary.json).

<!-- END GENERATED MATHEMATICS TOTALS -->
