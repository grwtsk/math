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
