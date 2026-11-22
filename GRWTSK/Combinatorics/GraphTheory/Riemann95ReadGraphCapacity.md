# Capacity of the native Riemann95 read graph

Local source attribution is grwtsk contributors.

`rooted_graph_capacity` in
[Riemann95ReadGraphCapacity.lean](Riemann95ReadGraphCapacity.lean) applies
to any finite labeled graph, any chosen root, and arbitrary edge relations.
If the words admitted from that root are exactly the successful native
read prefixes from the blank start, its vertex count is at least 4,097.
The theorem uses a graph with one scanned bit per native instruction.

The native observation checks the first 4,118 successful transitions.
The 22-bit window at position 4,096 differs from every earlier window
of that length. If two cut positions among 0 through 4,096 share a
vertex on a graph path for the native word, the graph admits the
shorter word formed by splicing the prefix at the earlier cut to the
suffix at the later cut. The marker determines a position where that
word differs from the unique native prefix of the same length. This
contradicts exactness. The native `observe_iff_path` induction verifies
both directions without discarding either half-tape.

This obstruction applies to proposed static finite presentations of
blank-rooted successful reads, including those with nondeterministic
edges. It permits a larger graph. Complete source-state lifting and
the terminal acceptance test remain separate obligations. The
[generic capacity theorem](../../DynamicalSystemsAndErgodicTheory/SoficSingletonPrefixCapacity.lean)
also treats all infinite singleton prefix languages by equality of
tails. A repeated read tail by itself gives no full-tape return.

## Provenance

The maintained namespace is
`GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.Riemann95ReadGraphCapacity`.
Lean consumes the literal Google DeepMind Cryptids `Riemann95.machine`,
its `Cfg`, `step`, and blank `init` at revision
`3647718b5df22e1a61462dec0376bd204526285a`.
The transition table has Git blob
`d6f841a883bcf826d1fbdbd1c66497e072231c55` and SHA-256
`7e9731ed1b7c63d4e67c0f8d646f8498d9645f26e237a8604d4b7f91a6ab398d`.
The source retains the upstream licensing and attribution. These
declarations are local consequences of the exact table and tape
semantics. [Machine definition](https://github.com/google-deepmind/cryptids/blob/3647718b5df22e1a61462dec0376bd204526285a/Cryptids/Riemann95Definition.lean) ·
[Transition table](https://github.com/google-deepmind/cryptids/blob/3647718b5df22e1a61462dec0376bd204526285a/artifacts/riemann_95/machine.txt) ·
[License](https://github.com/google-deepmind/cryptids/blob/3647718b5df22e1a61462dec0376bd204526285a/LICENSE)

The isolated build uses Lean 4.35.0-rc4 and Mathlib
`1f414401f69059aa7eead47b53ee40bd38455eeb`.
Exact build and verification evidence is recorded with
[issue #1821](https://github.com/grwtsk/math/issues/1821).

## Exact finite graphs force halting

`physical_root_reads_pad` reads `0^(n+2)1` from the native
`Physical.rootCfg (n+2) [] bank` for every bank and natural number
`n`. The two initial zero reads enter state 31. That state consumes
each remaining zero moving right and then consumes the delimiter one.
This uses the exact native transition table.

`halts_of_finite_exact_rooted_read_graph` upgrades the finite lower
bound. For any finite vertex type, graph and root, equality between the
rooted word language and all successful blank-start native read
prefixes implies `BundledMachine.Halts Riemann95.candidate`.
Under nonhalting, the certified bootstrap and the safe case of
`physical_stage_outcomes` reach physical roots with pad at least
`stage + 21` for every stage. Fix such a pad larger than the vertex
count. On a graph path for the native prefix through the delimiter,
choose a cut after each of 0 through pad zeros after entering the
physical root. If the cuts at indices `i < j` share a vertex, their
splice admits `i + pad - j` zeros followed by a one after the common
entry word. That one occurs at a position where the native path still
reads zero. Native determinism fixes the entry configuration and forces
the discrepancy. Thus the cuts inject into the graph vertices, a
contradiction. For example, splicing adjacent cuts in the 22-zero pad
admits 21 zeros followed by a one, whereas the next native bit there
is still zero.

The upstream source consumer is the pinned equivalence
`Riemann95.Semantics.halts_candidate_iff_not_riemannHypothesis`.
Its application is
`not_riemannHypothesis_of_finite_exact_rooted_read_graph`. Any proposed
finite graph must establish equality of the two rooted languages
before this corollary applies. Both physical reachability and the RH
transfer use the same pinned Cryptids revision.
[Physical root](https://github.com/google-deepmind/cryptids/blob/3647718b5df22e1a61462dec0376bd204526285a/Cryptids/ReductionSupport/Riemann95/Physical95.lean) ·
[Stage theorem](https://github.com/google-deepmind/cryptids/blob/3647718b5df22e1a61462dec0376bd204526285a/Cryptids/ReductionSupport/Riemann95/Stage95.lean) ·
[RH equivalence](https://github.com/google-deepmind/cryptids/blob/3647718b5df22e1a61462dec0376bd204526285a/Cryptids/Semantics/Riemann95.lean)

## Converse and exact terminal capacity

Given a terminal replay after `n` successful native instructions,
`exists_exact_read_graph_of_terminal_trace` constructs an exact rooted
read graph on the finite range of the native configurations at times
0 through n. Each graph edge is a native edge between members of this
range. Every graph path therefore lifts by matching the stored source
configuration at its join. Conversely every native path reached from
blank stays within the stored range. A longer successful replay would
have to extend through the absent terminal instruction. Thus the graph
has at most n+1 vertices and realizes exactly the successful prefixes.

`exact_read_graph_capacity_at_terminal` applies the existing lower
bound to the same replay. Precisely n+1 vertices suffice, and even a
nondeterministic exact graph needs at least that many. The unconditional
4097-vertex marker bound then checks that any terminal trace used in
this construction has at least 4096 successful instructions.
The proof of finite existence under a halt extracts the finite replay
from the native partial evaluation. Together with the previous growing
pad obstruction in the nonhalting case, this yields
`finite_exact_rooted_read_graph_iff_not_riemannHypothesis` for the
pinned blank-start read language.

A specified physical graph still needs both directions of exact
language lifting relative to the original machine. The construction is
conditional on a native terminal trace, and carries no such receipt
for the physical system.

The four local imports were rebuilt from pinned main. Strict target
compilation, target kernel replay, the 4097-vertex boundary control and
all four transitive audits passed on the pins above. Only `propext`,
`Classical.choice` and `Quot.sound` were reported. Checked Lean SHA-256
`ad61b3d55c62e6439808aa17920b0ea2a4c67d1544b704c79711e3ec39802223`.
Full fresh dependency replay, independent review and HS graph lifting
remain `NOT_RUN`.

## Bounded deletion witness under native nonhalting

`spurious_padded_prefix_of_nonhalt_of_cover` uses the same pinned
blank run and read labels. Write a genuine prefix as (u 0^p 1),
where (u) reaches the physical padded root and (p) exceeds the
vertex count (b) of the covering graph. On one covered path, the
first (b+1) cuts of the zero block have a repeated vertex at
positions (i<j). Joining the path up to (i) to the suffix from
(j) deletes (j-i) zeros. The graph accepts this splice. The
native machine reaches the same configuration after (u), and at
the shortened marker position its deterministic read is still
zero. The positive deletion bound (j-i\le b) lets a candidate
graph's soundness test reject exactness using a word with unchanged
entry and final marker. The existing exact presentation implication
now takes this witness as its contradiction.

The earlier finite marker check applies without nonhalting and only
rules out graphs below its finite capacity bound. The bounded
deletion argument uses the separate premise of native nonhalting
to reach a pad for an arbitrary finite vertex count. It preserves
the unresolved physical graph lifting obligation.

Strict target elaboration, target kernel replay with compiled imports
and the transitive axiom audit passed on the pins above. The audit
reported only `propext`, `Classical.choice` and `Quot.sound`.
Checked Lean SHA-256 `2246b4a2ba13f6c9358e367743222b9eb115766e6b603e9a3b176363120b13e8`. Fresh full dependency replay,
independent review and physical graph lifting remain `NOT_RUN`.
