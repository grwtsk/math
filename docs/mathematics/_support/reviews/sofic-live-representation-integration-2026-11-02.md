# Exact right-live source unification, executable pruning and the whole one-sided shift

Local mathematical attribution: grwtsk contributors.
Review date: 2026-11-02.
Status: published Lean SOURCE PROOF CANDIDATES, finite independent reference checks
and explicit unresolved acceptance/analytic premises. No native Lean verification.

## 1. Original objects and the mathematical improvement

The original indexed finite graph is
`G : LabeledGraph State Alphabet`, with its unchanged
`G.edge : State → Alphabet → State → Prop`, actual
`WordPath` and `RunsOnGraph` constructors, and
`GraphLanguage G : List Alphabet → Prop`.
A finite accepted word can die at a terminal vertex; an
infinite stream whose EVERY finite factor is accepted
requires one compatible entire state run, as supplied
by the published finite-state compactness source.

The earlier repository research has two source-level
right-live representations that were published independently:

* [SoficRightInfiniteContinuation.lean](https://github.com/grwtsk/math/blob/f53cac157641c04c9fe095dcf0a7bfb0e479d4b0/GRWTSK/DynamicalSystemsAndErgodicTheory/SoficRightInfiniteContinuation.lean)
  — `GraphRunFrom G s` is the existence of a real
  infinite original state-and-label path starting at s
  (blob `81deeb4768d43e13654b2aabb004c31478d2c9d5`).
* [SoficRightLiveSubgraph.lean](https://github.com/grwtsk/math/blob/f53cac157641c04c9fe095dcf0a7bfb0e479d4b0/GRWTSK/DynamicalSystemsAndErgodicTheory/SoficRightLiveSubgraph.lean)
  — `RightLive G s` is the SAME original
  source proposition, and its graph `rightLiveSubgraph G`
  retains only such true source vertices
  (blob `df67b6f25982219c21f17baca6d93459da9edc14`).
* [SoficRightLivePruning.lean](https://github.com/grwtsk/math/blob/f53cac157641c04c9fe095dcf0a7bfb0e479d4b0/GRWTSK/DynamicalSystemsAndErgodicTheory/SoficRightLivePruning.lean)
  — `RightLiveState G` and `rightLiveGraph G`
  are a parallel explicitly typed live-graph construction
  (blob `cb51c846c361986a123171a851e8b82155d901d5`).
* [SoficRightLivePeriodicInvariant.lean](https://github.com/grwtsk/math/blob/f53cac157641c04c9fe095dcf0a7bfb0e479d4b0/GRWTSK/DynamicalSystemsAndErgodicTheory/SoficRightLivePeriodicInvariant.lean)
  — the periodic-label-point spaces of the ORIGINAL graph
  and the earlier right-live graph were already shown
  equivalent via their unchanged `Fin n` word coordinates
  (blob `c5472ba92348a988e1dc12b870ca8973cfa20bf7`).
* [SoficDeadEndPruning.lean](https://github.com/grwtsk/math/blob/f53cac157641c04c9fe095dcf0a7bfb0e479d4b0/GRWTSK/DynamicalSystemsAndErgodicTheory/SoficDeadEndPruning.lean)
  — the finite q-round pruning procedure with explicit
  `SourceEdgeDecider G`, and Boolean query
  `isRealizedFactor` (blob
  `7cd2b48cf6f29b8ea779666bd57cbc4ea887b1f5`).

The NEW integrator is
[SoficLiveRepresentationIntegration.lean](https://github.com/grwtsk/math/blob/f53cac157641c04c9fe095dcf0a7bfb0e479d4b0/GRWTSK/DynamicalSystemsAndErgodicTheory/SoficLiveRepresentationIntegration.lean),
source commit `f53cac157641c04c9fe095dcf0a7bfb0e479d4b0`, Git blob
`18e08be9ad44069a9da2b53a9114824565780624`.
Its single source file (449 lines, 22 public definitions/theorems)
was published with an expected-head non-force branch update,
reviewed one-file diff, and exact byte-for-byte Git blob readback.
The first candidate was published at commit
`096ae5aa79f1a4fa5d7ded49fb621dc6a52fbd1d`,
and source-only fixed-point/idempotence and Boolean consistency
theorems were added at `f53cac157641c04c9fe095dcf0a7bfb0e479d4b0`.
All previously published mathematical graph definitions,
original cycle-cardinality and matrix definitions,
root imports and toolchain pins remain unchanged.

The mathematical gain is not another theorem naming
similar graphs. It proves their literal original-object
correspondence, preserves the COMPLETE source infinite
language (not only positive-period points), and exhibits
an exact finite-state source graph and executable queries.

## 2. Primary proof A: same infinite paths, same original live graph

Both `RightLive G s` and `GraphRunFrom G s`
unfold to precisely

```text
exists trace : Nat -> Alphabet, exists states : Nat -> State,
  states 0 = s and
  forall k, G.edge (states k) (trace k) (states (k+1)).
```

Their equivalence is definitional: the new
`rightLive_iff_graphRunFrom` uses `Iff.rfl`.
Their two subtype graph constructions use the
same original live vertices and literal source
edge predicate `G.edge s.val a t.val`.
`rightLiveGraph_eq_rightLiveSubgraph`
makes this equality explicit. This is an
**identity of mathematical source representations**,
not an assumed equivalence of different graph observers.

`SoficDeadEndPruning.retainedAfter G decEdge q`,
where q=card State, is already source-proved
(to be kernel checked) to characterize exactly
`RightLive G s`. The new
`prunedState_equiv_rightLiveState` constructs
an Equiv between the ACTUAL q-round surviving-state
subtype and `RightLiveState G`. Both the map
and inverse return the SAME underlying original
state, transporting only proof fields. The
`finitePrunedGraph G decEdge` uses this actual
finite survivor carrier and the unchanged original
alphabet and edge predicate.

For every source word and pair of original surviving
vertices, the two inductive `WordPath` constructors
transport in both directions under this equivalence.
The new
`finitePrunedGraph_language_iff_rightLive`
therefore proves equality of the complete
FINITE word languages of these two genuinely live
representations, including the empty-word case.

Combining the original source theorem
`SoficRightLivePruning.rightLiveGraph_language_iff_rightExtendable`
with the true q-round realization query gives

```text
isRealizedFactor G decEdge w = true
  ↔ GraphLanguage (finitePrunedGraph G decEdge) w.
```

This is `isRealizedFactor_iff_finitePrunedGraph`.
It is a Boolean support claim, NOT an equality
of natural-number path multiplicities or the
original adjacency-matrix traces.

## 3. Primary proof B: the WHOLE topological subshift survives pruning

The earlier right-live periodic-invariant source
already gave an identity-on-labels equivalence
between period-n label points. The stronger question
is whether the TWO **entire infinite label spaces**
coincide, including aperiodic streams.

Any genuine original infinite graph run
`RunsOnGraph G trace` already has an actual
right-live proof for each state occurrence:
take the suffix of THAT SAME run. Replacing
each original state by its subtype carrying
this proof yields an actual run on
`rightLiveGraph G`, without any new letters,
state sequence or time reparameterization.
Conversely, projecting the right-live
states back to their original values returns
an actual run on G. The previously published
`runsOnGraph_original_iff_rightLive`
supplies this result. The new
`originalRuns_iff_finitePrunedRuns`
also transports it through the concrete
q-round finite survivor graph.

For arbitrary finite State/Alphabet, an
infinite trace whose EVERY finite factor lies in
`GraphLanguage G` has a compatible original
graph-state run. This is the already published
`SoficFiniteTraceCompactness.runsOnGraph_of_all_factors`,
using a finite nested-candidate argument rather than
choosing incompatible paths independently.
Therefore every complete all-factor source stream
on G has a true right-live graph run spelling the
SAME entire source trace. Its finite factors
are thus admitted by the live graph. Conversely
any finite path on the right-live graph projects
to an original path. The new theorem

```text
allFiniteFactors_original_iff_rightLive G trace
```

states the equivalence for every infinite trace,
periodic or not. By the exact finite q-round graph
correspondence, the same holds for
`finitePrunedGraph G decEdge`.

The existing
`SoficTopologicalFactorSpace.completeFactorSubshift`
is an ACTUAL closed, shift-invariant product-topological
subshift from forbidden patterns, and its source theorem
`mem_completeFactorSubshift_iff` identifies
carrier membership with admission of EVERY finite
factor. Consequently the new integrator establishes
literal Set equality

```text
(completeFactorSubshift (GraphLanguage G)).carrier
  = (completeFactorSubshift
      (GraphLanguage (finitePrunedGraph G decEdge))).carrier.
```

This is
`completeFactorSubshift_carrier_eq_finitePruned`.
There is an analogous
`completeFactorSubshift_carrier_eq_rightLive`
for the earlier right-live representation.
Both sets live in the SAME original
`Nat → Alphabet` product space. The source
also proves equality of the associated
`realizedTopologicalFactorLanguage` predicates
on all finite words. No new topology or
unverified homeomorphism was introduced.

An important distinction is retained:
`GraphLanguage G` may contain terminal-only
finite words which disappear under pruning;
the WHOLE **infinite realized shift** remains
the same. For the original source's genuine
period-dividing-n label words, the new
`periodicLabelPoint_equiv_finitePruned`
maps each `Fin n` word to the SAME `Fin n`
word with transported all-factor proof.
`periodicLabelPoint_card_eq_finitePruned`
uses its exact Equiv to preserve distinct
periodic-label cardinality. The prior
right-live periodic-invariant module already
proved this with its live graph; this is the
explicit q-round algorithmic connection.

## 4. Primary proof C: source pruning is right-total and idempotent

The actual `SourceEdgeDecider G` must decide the
ORIGINAL `G.edge s a t`, not a search candidate
or postulated graph oracle. It supplies
`finitePrunedGraph_decider G decEdge` by
applying the same decision procedure to the
original underlying vertices.

Every state of `rightLiveGraph G` admits
a genuine outgoing original edge to another
right-live vertex: take the first edge of
one of its actual infinite witness runs.
Via the exact state equivalence, the
`finitePrunedGraph_has_outgoing` theorem
returns `AllVerticesHaveOutgoing` for the
concrete q-round survivor graph. This does
not assume every original vertex was live.

The existing genuine outgoing-edge theorem
`graphRunFrom_of_allOutgoing` supplies a
real infinite run from EVERY retained state
of that pruned graph. Hence all its states
satisfy `RightLive` relative to that same
pruned graph. Composing with the already
published finite pruning correctness theorem
yields

```text
retainedAfter (finitePrunedGraph G decEdge)
  (finitePrunedGraph_decider G decEdge)
  (card of the pruned state carrier)
    = Finset.univ.
```

This is `finitePrunedGraph_pruning_fixed`;
it uses the correct NEW carrier cardinal,
not the unpruned state's q by accident.
The corresponding `isRightLive` Boolean
query returns true for every surviving state.

Finally, the actual `isRealizedFactor`
queries before and after pruning return the
same truth value for every original finite
word, by the already proved whole-carrier
equality. This is
`isRealizedFactor_true_iff_pruned_true`.
It does NOT equate counts of original
graph paths, sum signed defects away, or
assume uncorrected graph adjacency traces.

## 5. Independent finite control and counterexamples

A separately executed deterministic Python reference
implemented q-round pruning and an independently
enumerated q-edge original path-to-cycle certificate,
with all original labels and states.
For every tested original vertex, the two
right-live predicates coincided. It then
constructed the TRUE pruned graph with original
edges, proved computationally that pruning
it again changed nothing, compared its finite
word-path language with accepted original words
ending live, and checked periodic infinite
label-block admission by independently tracking
finite state/phase subsets in each graph.

The tested family includes all 261 directed edge
subsets on 0/1/2 states with two labels, plus
110 seeded three-state and 25 seeded four-state
graphs: **396 graphs** and **946 original
vertices**. Of these 903 vertices were right-live.
For 24,948 graph/finite-word comparisons
(length 0..5), there were 19,553 accepted
original finite words, 19,490 truly realizable
words, and **63 strict terminal-only losses**.
The pruned and original infinite periodic
admission predicates agreed in **all 11,880**
tested periodic word cases (9,134 admitted);
there were no mismatches or pruning-idempotence
failures. The reference script is
`sofic_live_representation_reference.py`,
SHA-256
`a2b48f4d36d0ce9c2810f1d8e59c5c1c1a8089628fd3905084f6bda044217243`.
It is an independent finite Python check,
NOT a Lean compilation or kernel certificate.

The terminal-edge Bool/Unit graph accepting a
one-letter path but no infinite continuation
is a negative control: finite original
`GraphLanguage` shrinks after pruning,
while the (empty) original infinite
admissible subshift is unchanged.
The two-state alternating Unit graph has
a real period-one label point but its original
graph-state lift closes only at period two;
trimming it preserves that period-multiple
distinction. Duplicate-loop presentations
retain multiple based graph-cycle lifts
over one periodic label point.

## 6. Relation to the other mathematical source families

The full finite source chain includes the
original exact `LabeledGraph` and `WordPath`,
`SoficFiniteTraceCompactness`,
`SoficFiniteSupportAutomaton`,
`SoficTopologicalFactorSpace`,
`SoficTopologicalPeriodicReturn`,
`SoficRightLiveSubgraph`,
`SoficBoundedLiveCycle`,
`SoficDeadEndPruning`,
`SoficRightInfiniteContinuation`,
`SoficRightLivePruning`,
`SoficRightLivePeriodicInvariant`, and
this final exact representation integrator.
Earlier source branches include the genuine
period-multiple original graph-cycle lift,
its Nat-valued exact word matrix and the
SIGNED missing/surplus lift-fiber ledger.

The mathematical source comparison does not
automatically prove that q-round trimming
preserves the original adjacency matrix
trace or every individual based-cycle
multiplicity, although an original closed
walk certainly has an infinite continuation.
That requires a separate exact original
based-cycle/matrix source correspondence,
not the weaker fact that periodic label
point counts are equal. Both signed
lift-defect terms remain distinct.

The related rooted-prefix `DynamicSoficExactLanguageBoundary`
has a SELECTED source root, not a
whole unrooted factor language; the
source formalization already includes
a disconnected-state counterexample to
the reverse rooted/unrooted implication.
`SearchSoficLanguage` uses an actual
labeled subrelation/sandwich and requires
separate edge inclusion hypotheses.
`SourceOccurrenceSoficBridge` retains
parallel edge occurrences which ordinary
Prop-valued `LabeledGraph.edge` does not
represent separately at a fixed triple.

The contemporary `MoebiusSoficDefectLanguage`,
finite zeta divisor sources, and
`PeriodicNavierStokesSoficPort` have their
own source observation, arithmetic,
metric and analytic premises. A
finite-state pruning equivalence cannot
prove a missing Möbius cancellation
estimate, Fredholm determinant,
zeta-zero divisor completeness, PDE
regularity or RH/GRH. Keyword overlap is
not a source-preserving transport theorem.

## 7. Verification and scholarly status

Selected Lean environment:
`leanprover/lean4:v4.34.1`, Mathlib revision
`d13f23b723b8a846827a245b89c10fc7d3f11612`.
The new integration was published by non-force
expected-head commits, with one-file diff checks
and exact Git blob readback. There are no
authored `sorry` or newly declared research
`axiom` constructs in its text. This static
inspection does not verify elaboration,
trust-zero derivability or transitive axioms.

A new source-bound managed Noe registry-v3
profile selects **46 project modules,
29 source contracts and 224 public declaration
names**. All prior 42 selected module
identities were compared to the new
immutable source revision and matched.
The three newly discovered right-live
branch sources and the new integrator
are pinned separately. That selected
project-side inventory is not a
complete native-generated Mathlib import
closure and supplies no independent
acceptance evidence.

Actual verification:
- Source publication and exact blob readback: CONFIRMED.
- Independent finite reference calculation: PASS within its stated domain.
- Native Lean compilation: NOT_RUN.
- Fresh kernel replay: NOT_RUN.
- Expected-type/universe consumer checks: NOT_RUN.
- Full transitive axiom audit: NOT_RUN.
- Managed native owner/host resource replay: NOT_RUN.
- Graph based-cycle/adjacency trace invariance: OPEN as a separately typed bridge.
- Independent novelty/prior-art comparison: NOT_ASSESSED; trimming, coaccessibility
  and finite-state language essentialization are standard automata/graph ideas.

The Noe proof-automation skill was read
from `grwtsk/noeaaeue/main`, revision
`bcf55a2b88381c5c6d3081e95d7dc66f5d0519b0`,
canonical skill blob
`5292446e4ef1398ba928d8ad339b662415166f19`.
No local verified Noe/math checkout or
`lean`/`lake` runtime was available.
Source/profile preparation did not dispatch
a native worker or bypass host resource holds.

## 8. Exact next acceptance frontier

1. Use the current authorized Noe owner to
   prepare registry-v3 against math commit
   `f53cac157641c04c9fe095dcf0a7bfb0e479d4b0` and its precise source/toolchain
   closure; retain the actual compilation
   and expected-type diagnostics.
2. Repair any genuine elaboration errors at
   new source pins, without weakening source
   labels, topological carrier equality,
   finite-graph semantics, or missing/surplus
   corrections. Only then collect fresh
   kernel and transitive axiom receipts.
3. Formalize any desired original
   `BasedCycleData` bijection and trace
   invariance from actual cycle-state
   witnesses, not from periodic-label-point
   count equality alone.
4. Keep rooted, arithmetic, zeta, harmonic
   and PDE source transports as independently
   stated mathematical obligations.

Tracking: https://github.com/grwtsk/math/issues/1576.
Local attribution: grwtsk contributors.
