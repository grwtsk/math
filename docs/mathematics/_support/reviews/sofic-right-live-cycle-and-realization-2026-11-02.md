# Finite-state compactness, right-live graph pruning and bounded cycle realization

Local attribution: grwtsk contributors. Mathematical source review: 2026-11-02.
Classification: mathematical proof and source-preserving Lean **SOURCE PROOF CANDIDATES**,
not a verified Lean compilation/kernel replay or novel analytic result.

## 1. Main result and original mathematical sources

Fix the ORIGINAL finite State and Alphabet and the unchanged
\`G : LabeledGraph State Alphabet\`. The original \`WordPath G s w t\` is
the true cons-inductive labeled path, and \`GraphLanguage G w\` admits
any path from any source. The actual \`RunsOnGraph G trace\` uses one
infinite graph-state trajectory with precisely the given Nat-indexed
label stream, not a family of unrelated finite path witnesses.

The previously published \`SoficTopologicalFactorSpace.completeFactorSubshift\`
constructs a true closed additive one-sided subshift whose carrier consists
of **all** infinite traces with every finite factor in the named language.
The previously published
\`SoficTopologicalLanguageBoundary.realizedTopologicalFactorLanguage\`
requires an actual infinite point of that space containing a specified
original word. Merely possessing a finite original \`WordPath\` does not
in general supply such an infinite point (see the two-state terminal-edge
hostile fixture).

The new mathematical source closure is pinned to commit
\`31ee5857fefeaf12170dd44d98740e53def87aed\` on \`grwtsk/math/main\`:

- [SoficFiniteTraceCompactness.lean](https://github.com/grwtsk/math/blob/31ee5857fefeaf12170dd44d98740e53def87aed/GRWTSK/DynamicalSystemsAndErgodicTheory/SoficFiniteTraceCompactness.lean),
  blob \`325cc0ae7185215e0d95285c97f4455a698e0f19\`: finite-state
  compactness of original graph paths and a real infinite source run.
- [SoficRightLiveSubgraph.lean](https://github.com/grwtsk/math/blob/31ee5857fefeaf12170dd44d98740e53def87aed/GRWTSK/DynamicalSystemsAndErgodicTheory/SoficRightLiveSubgraph.lean),
  blob \`df67b6f25982219c21f17baca6d93459da9edc14\`: original
  right-live vertices, exact live-restricted graph and realized language.
- [SoficBoundedLiveCycle.lean](https://github.com/grwtsk/math/blob/31ee5857fefeaf12170dd44d98740e53def87aed/GRWTSK/DynamicalSystemsAndErgodicTheory/SoficBoundedLiveCycle.lean),
  blob \`ce777811509746bd9011c930f222a9122ddd739d\`: genuine
  original finite path-to-cycle certificate bounded by card(State).

Two existing source APIs were narrowly exposed to avoid proof duplication:
\`SoficPeriodicRunFullShift.wordPath_of_run_block\` (new blob
\`15dc50117f65d986436e54665d1edc8b8643f702\`) and
\`SoficPeriodicMultipleLift.actual_walk_of_wordPath\` (new blob
\`d256c78caf1b45d8eb4aff4cf7cbccea42f9ff6b\`). Only the
\`private\` visibility keyword changed for these exact original theorem
statements and proof bodies. No original graph, finite word, matrix,
factor-language, base cycle, edge predicate, toolchain or root import
was changed.

The intended complete source meaning is

\[
\begin{aligned}
\mathcal L_{\mathrm{realized}}(X_G)
 &= \{w:\ \exists s,t,\ \operatorname{WordPath}(G,s,w,t)
                    \text{ and }t\text{ is right-live}\}\\
 &=\mathcal L(G_{\mathrm{live}})\\
 &=\{w:\ \exists s,t,\ \operatorname{WordPath}(G,s,w,t),\
       t\text{ reaches a nonempty labeled cycle in at most }q\text{ steps}\},
\end{aligned}
\]
where \(q=\#\operatorname{State}\) and \(G_{\mathrm{live}}\) retains
exactly those source states admitting an infinite continuation.

This is NOT the false universal equality
\(\mathcal L_{\mathrm{realized}}(X_G)=\mathcal L(G)\) when terminal paths
are present. The exact equality condition is that for every word admitted
by the original finite graph, *at least one* original accepting path
terminates at a state that can reach a bounded nonempty cycle.
Every path need NOT itself be extendable.

## 2. Primary proof A: one state supports all finite prefixes

The first source proof is a finite-state version of the compactness/König
argument, fully preserving original graph labels. The proposition
\`FiniteTraceLift G trace s n\` means there is a true state trajectory
starting at s with the ORIGINAL edge relation and the ACTUAL trace
letters at times \(0,\ldots,n-1\). Its later state values do not matter.

The original \`WordPath.nil/cons\` induction constructs such a
finite state trajectory from any genuine original path spelling a
specified prefix. No arbitrary path is substituted for the original
witness. \`finiteTraceLift_of_graph_prefix\` returns
\`∃s, FiniteTraceLift G trace s n\` when the original graph admits
the literal \`List.ofFn\` first n letters of a fixed trace.

The finite descending candidate theorem \`finite_nested_state\`
is the key to COMPATIBILITY rather than cofinal finite paths.
For any \(P(s,n)\) monotone downward in n, if some original state
satisfies P at every n separately, then one state satisfies P
at every n simultaneously. If not, choose for each finitely many
states a failure depth n_s. Their finite maximum N is an impossible
common depth, contradicting the supplied n=N witness. The same
argument also covers the empty State carrier: the assumption
that a path exists at n=0 cannot be satisfied there.

Apply this once to choose one starting state viable for EVERY prefix
of the fixed trace. Then \`viableTraceLift_successor\` applies the
same finite nesting argument to ORIGINAL labeled successors at the
first letter. Every depth n+1 has an actual edge and a viable
n-step suffix. Because only finitely many successors exist,
one original successor supports ALL suffix depths. Dependent Nat
recursion now selects successive compatible viable states at
each shifted original time k; the source proof
\`runsOnGraph_of_all_graph_prefixes\` returns a SINGLE
\`RunsOnGraph G trace\`, with every edge and original letter at
every k, not a limit of changing source streams.

Finally, since the original \`HasFiniteBlock\` includes a block
at offset zero for every literal prefix, acceptance of ALL
finite factors implies prefix acceptance. The source theorem
\`runsOnGraph_of_all_factors\` gives the desired exact trace run.

There is no assumed finite-state determinism, new research axiom,
symbol replacement, unexplained compactness oracle, or changed
observation window.

## 3. Primary proof B: the right-live original graph

\`RightLive G s\` is the concrete source proposition that there
exist ORIGINAL infinite label and vertex functions, beginning at s,
and satisfying every literal \`G.edge\` proposition.
It is preserved by tail shifts and propagates backward along any
ORIGINAL \`WordPath\`: prepending a real finite path to a live
continuation yields an actual infinite original path.

The helper \`run_with_original_prefix\` performs this original
\`WordPath.cons\` induction without changing its finite labels.
It retains the full finite prefix via
\`∀ i : Fin word.length,\ trace(i)=word.get(i)\`.
The new whole infinite stream therefore realizes that original
word at offset zero, and the existing
\`graphLanguage_of_run_block\` ensures all its other finite
factors belong to the original graph language. Thus each
accepted path ending live gives a genuine topological realization.

Conversely, take any actual topological trace containing the word.
The existing
\`mem_completeFactorSubshift_iff\` gives whole-language
acceptance of every factor. Primary proof A provides ONE
compatible source-state run for the ENTIRE trace. The now-public
original \`wordPath_of_run_block\` extracts the actual finite word
between its specific state endpoints, and the suffix of that SAME
run proves its terminal vertex is right-live. This establishes
\`realized_iff_path_to_rightLive\` without a freestanding
realization assumption.

The \`rightLiveSubgraph G\` has the subtype of original
right-live states and edge predicate
\`G.edge s.val a t.val\`. The proof converts the original
cons-inductive WordPath into and out of this subtype, using
backward propagation of liveness for every intermediate state.
The exact result is

\`\`\`lean
realizedTopologicalFactorLanguage (GraphLanguage G) word ↔
  GraphLanguage (rightLiveSubgraph G) word
\`\`\`

with NO extra realization premise. The new live graph is right-total
because the very first edge of any witness infinite run has a
right-live successor.

The separate source condition
\`RightTotal G := ∀s,∃a t,G.edge s a t\` is sufficient to
make every original state right-live. A classical dependent
recursion selects one original outgoing labeled edge per vertex.
Therefore \`realized_eq_GraphLanguage_of_rightTotal\`
gives full original finite-language equality under the explicit
right-totality condition. This condition is stronger than
necessary, and the exact condition is supplied below.

## 4. Primary proof C: an entirely finite bounded cycle certificate

For a graph with q states define
\`HasBoundedReachableCycle G s\` to mean there are an ORIGINAL
labeled prefix and a NONEMPTY closed original labeled cycle
\`s --prefix--> t --cycle--> t\` with
\`0 < cycle.length\` and
\`prefix.length+cycle.length ≤ q\`.

If s is right-live, its actual infinite state sequence visits q+1
original states during times 0,...,q. Finite pigeonhole gives
0≤i<j≤q with state(i)=state(j). The original run-block
WordPath theorem constructs a prefix of length i and a
nonempty original closed segment of length j-i. Their combined
length j is at most q. This retains exactly the observed
original ordered labels from the same run.

Conversely, convert the original nonempty closed \`WordPath\`
into an actual original snoc-inductive \`LabeledWalkData\`
using the previously published witness equivalence.
The prior \`basedCycleStateStream\` and its exact source
edge/period theorem repeat that original closed walk into
a true infinite graph-state run beginning at t. Prepend
the original path from s to t; s is right-live.
This is the iff \`rightLive_iff_boundedReachableCycle\`.

Composing it with Primary proof B gives the completely
FINITE original criterion

\`\`\`lean
realizedTopologicalFactorLanguage (GraphLanguage G) word ↔
  ∃ s t, WordPath G s word t ∧ HasBoundedReachableCycle G t.
\`\`\`

And it characterizes exact language equality by the condition
that *each original accepted word* has at least one such
bounded cycle-reaching path witness. This is
\`realizedLanguage_eq_graphLanguage_iff_everyWordCycleExtendable\`.
These are finite graph certificates for the true infinite
source language, not finite graph trace multiplicity counts.

## 5. Hostile and positive controls

The preexisting two-vertex \`terminalEdgeGraph\` has only
\`false --Unit--> true\`. The finite original graph language
accepts the one-letter word but no two-letter word.
No state can reach a positive original labeled cycle,
so the original accepted word has NO true infinite
topological realization. The new bounded-cycle criterion
correctly excludes it without assuming a false right-totality.

A one-state self-loop accepts every repetition of its label
and satisfies right-live with prefix length zero and cycle
length one. A graph consisting of a path to a nonempty
closed cycle realizes the original path word, whether or not
its initial vertex itself belongs to that cycle.

An INDEPENDENT exact finite reference enumerator tested ALL
original two-label edge subsets on 0,1,2 states (261 graphs),
plus 100 seeded three-state graph samples. For each q-state
graph it computed right-live vertices by iterative dead-end
pruning, then independently enumerated ORIGINAL labeled
prefix+closed-cycle witnesses with their total length ≤q.
The two sets agreed for every vertex. It enumerated every
binary word of lengths 0..4, compared original finite-path
acceptance, terminal right-live acceptance and its bounded
path+cycle certificate. Of 361 graphs and 11,191 words,
8,924 were accepted as finite original paths, 8,872 had
right-live continuations and 52 were finite-only; there
were ZERO discrepancies between the independent liveness
algorithms or their realized-language tests.
This is bounded finite Python REFERENCE evidence only.
It is NOT a proof for all finite graphs and not Lean
compilation or a native kernel receipt.

## 6. Comparison with related mathematics and exact return

Finite graph dead-end pruning and path-to-cycle reachability
are standard finite automata/graph theory principles.
The new mathematical contribution in this local source
closure is the exact transport through the already published
\`LabeledGraph\`, \`WordPath\`, \`RunsOnGraph\`, whole factor
predicate, real product-topological \`Subshift.ofForbidden\`,
and original \`BasedCycleData\` cycle streams. This does
not claim a new general mathematical theorem or a
topological graph-state conjugacy.

The original canonical graph-to-label map can still have
multiple same-period cycle lifts or missing same-period
cycle lifts even after trimming dead ends; trimming proves
language realization, not automatic faithful cycle labeling.
The existing signed ledger

\`\`\`text
trace(labeledAdjacency G ^ n) + unlifted
  = card(PeriodicLabelPoint language n hn) + surplus
\`\`\`

must retain its two defects for the ORIGINAL graph. Removing
dead states can change its adjacency matrix and graph-cycle
multiplicities; no unconditional original-matrix identity is
imported from the live-restricted graph without an explicit
matrix/count comparison. No RH, Möbius signed cancellation,
zeta-zero divisor/Fredholm return, or PDE-energy estimate
is supplied by finite-state compactness.

## 7. Exact source and verification status

Math source revision \`31ee5857fefeaf12170dd44d98740e53def87aed\` is pinned to the immutable
three new module blobs listed in section 1, the two
narrow existing-source API visibility changes, and all
transitively required existing source declarations.
The original Lean selected toolchain is
\`leanprover/lean4:v4.34.1\`, Mathlib
\`d13f23b723b8a846827a245b89c10fc7d3f11612\`.
No root imports, dependency migration, new mathematical
axiom, signed defect normalization or repository workflows
were added in this mathematical source work.

The adjacent static target and managed Noe v3 profile
pin 41 selected project source modules, 24 source contracts
and 154 exact public declaration names. This is an
INSPECTED SELECTED PROJECT-SIDE inventory, not yet the
source-bound native upstream Mathlib closure or an
accepted proof capsule.

- Source publication/diff and exact immutable Git blob readback:
  CONFIRMED for the three new modules and two API exposures.
- Local authored source scan found no explicit new \`sorry\`
  or research \`axiom\` declarations. This does NOT prove an
  empty transitive axiom set.
- Native Lean/Lake availability in this ChatGPT container:
  NOT_AVAILABLE (checked).
- Compilation of this revision and all imported source:
  NOT_RUN.
- Fresh trust-zero kernel replay: NOT_RUN.
- Expected types/universes: NOT_RUN.
- Complete transitive axiom audit: NOT_RUN.
- Noe managed owner resource admission/restoration: NOT_RUN.
- Independent full mathematical prior-art review: NOT_ASSESSED.

The canonical Noe proof skill was inspected from maintained
\`grwtsk/noeaaeue/main\`, snapshot
\`695d63e0b4f291e03f3189cad4e8050daa1ef690\`,
skill blob \`5292446e4ef1398ba928d8ad339b662415166f19\`.
This source does not confer native execution authority.
The source proof candidates must be compiled in the
authorized managed owner and any elaboration failures
must be retained and repaired against a new exact source
pin before kernel/axiom evidence can be claimed.

## 8. Next precise tasks

1. Execute source-closed Lean 4.34.1 compilation with the new
   exact project import boundary and pinned Mathlib through
   the authorized Noe owner, including the public run-block
   and original WordPath-to-LabeledWalkData exposed theorem
   interfaces; collect actual failure logs/receipts.
2. Obtain declaration-scoped expected interfaces, a fresh
   kernel replay, complete transitive allowed-axiom
   inspection and host restoration independently.
3. If a certified execution algorithm is requested, give
   the ORIGINAL edge predicate a proved decidable supplier
   and show its finite pruning and bounded cycle search
   refine \`RightLive\` exactly. The present existential
   source theorems are not claimed runtime-executable.
4. For external arithmetic and analytic applications,
   separately prove exact source-language equality and
   all needed quantitative/cancellation/energy estimates.
   Finiteness of a geometric or symbolic observer alone
   does not supply those returns.

Tracking issue: https://github.com/grwtsk/math/issues/1576.
Local mathematical attribution remains grwtsk contributors.
