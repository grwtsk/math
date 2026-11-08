# Source-preserving sofic support, graph-representation and rooted-prefix connections

Local attribution: grwtsk contributors. Mathematical source review: 2026-11-02.
Classification: mathematical proof arguments and published Lean **SOURCE PROOF CANDIDATES**;
no native Lean compilation, fresh kernel replay, expected-type consumer or
transitive axiom audit was performed.

## 1. Abstract

The exact finite-word matrix and its original labeled-walk witness count have
an independent finite-set support representation. The preexisting
`ExactSoficLanguageCover.reachableEndStates` is the set reached by scanning
the original word from every source vertex. Starting from a singleton yields
the actual original `WordPath` relation, which is equivalent to positivity
of the ORIGINAL `wordLiftMatrix` entry, and to positivity of the previously
proved per-letter matrix product. Iterating the finite-set operator by whole
words yields a bounded source-state return iff the original positive
word-matrix cycle test succeeds. Hence, under exact WHOLE factor-language
equality, the same support criterion counts DISTINCT positive-period label
points and satisfies the original signed missing/surplus fiber ledger.
Separately, typed adapters connect this graph to SearchSoficLanguage's actual
labeled-edge sandwiches and to the dynamic spectral-sofic graph's actual
state/label runs. Rooted exact-prefix acceptance maps soundly to unrooted
graph words, but the converse fails in a concrete disconnected two-state
graph. The new source maps do not prove an analytic spectral identification,
quantitative arithmetic cancellation, finite-to-Fredholm limit, or RH.

## 2. Pinned source identities and actual mathematical objects

The new source commit is `d8cc568574e2251525aec82faff023eb7b8c8be2`.
Three additive files, all in the existing mathematical subject tree, were
published to `grwtsk/math/main` by non-force expected-head updates with
one-file diffs and exact immutable Git blob readback.

1. [SoficFiniteSupportAutomaton.lean](https://github.com/grwtsk/math/blob/d8cc568574e2251525aec82faff023eb7b8c8be2/GRWTSK/DynamicalSystemsAndErgodicTheory/SoficFiniteSupportAutomaton.lean)
   — blob `22a4aacc0399bdea7e3086951f3c6a2fc2692f04` (425 lines).
2. [SoficGraphRepresentationBridges.lean](https://github.com/grwtsk/math/blob/d8cc568574e2251525aec82faff023eb7b8c8be2/GRWTSK/DynamicalSystemsAndErgodicTheory/SoficGraphRepresentationBridges.lean)
   — blob `dea290aac1ac6f5473c670f8b9c379d997cea6e0` (293 lines).
3. [SoficRootedPrefixBoundary.lean](https://github.com/grwtsk/math/blob/d8cc568574e2251525aec82faff023eb7b8c8be2/GRWTSK/DynamicalSystemsAndErgodicTheory/SoficRootedPrefixBoundary.lean)
   — blob `930c9d7dc0db96e5ace4a35489cec9db97e146b5` (142 lines).

The mathematical sources reused without redefining their primitives include:

- [ExactSoficLanguageCover.lean](https://github.com/grwtsk/math/blob/d8cc568574e2251525aec82faff023eb7b8c8be2/GRWTSK/DynamicalSystemsAndErgodicTheory/ExactSoficLanguageCover.lean)
  (blob `f50489eaf6c7277993a08925a58b7765f9e10ec9`):
  `LabeledGraph`, `WordPath`, `GraphLanguage`, `RunsOnGraph`,
  `reachableEndStates`, and actual path append/splitting proofs.
- [SoficPeriodicWordMatrix.lean](https://github.com/grwtsk/math/blob/d8cc568574e2251525aec82faff023eb7b8c8be2/GRWTSK/DynamicalSystemsAndErgodicTheory/SoficPeriodicWordMatrix.lean)
  (blob `d8f0423d8b872e5045c779544bd39eb1bad7adfe`):
  exact original `wordLiftMatrix` and the bounded-periodic-word target.
- [SoficWordPowerClosedPath.lean](https://github.com/grwtsk/math/blob/d8cc568574e2251525aec82faff023eb7b8c8be2/GRWTSK/DynamicalSystemsAndErgodicTheory/SoficWordPowerClosedPath.lean)
  (blob `fc3842103f18ecd42aa1587d8bc9556d6144a3c2`):
  positive source word matrix powers iff original true finite `WordPath`.
- [SoficWordMatrixDynamicProgram.lean](https://github.com/grwtsk/math/blob/d8cc568574e2251525aec82faff023eb7b8c8be2/GRWTSK/DynamicalSystemsAndErgodicTheory/SoficWordMatrixDynamicProgram.lean)
  (blob `b2073a018d157f16ede91be900be94d2fecd6788`):
  exact word matrix equals the left-to-right product of original per-letter
  Nat-valued edge matrices. No original path multiplicity is discarded.
- [SoficWordPowerClosureScan.lean](https://github.com/grwtsk/math/blob/d8cc568574e2251525aec82faff023eb7b8c8be2/GRWTSK/DynamicalSystemsAndErgodicTheory/SoficWordPowerClosureScan.lean)
  (blob `b1abfe560eed36ddeee1717d8fb4d8094bb7fc5e`):
  one shared Nat power/trace scan, optimized distinct word count, original
  source's signed missing/surplus lift ledger.
- [SearchSoficLanguage.lean](https://github.com/grwtsk/math/blob/d8cc568574e2251525aec82faff023eb7b8c8be2/GRWTSK/Combinatorics/GraphTheory/SearchSoficLanguage.lean)
  (blob `0408948886533c87debacc0e537c3234469ae702`):
  the actual `LabeledEdgeRelation`, `LabeledSubrelation`,
  `LabeledSandwich` and its separate proof-valued `WordPath`.
- [DynamicSoficSpectralCover.lean](https://github.com/grwtsk/math/blob/d8cc568574e2251525aec82faff023eb7b8c8be2/GRWTSK/NumberTheory/DynamicSoficSpectralCover.lean)
  (blob `8a145154af4cf6497a49720b1657078fbdcc3679`):
  `SoficGraph` edge field and `DynamicSoficPresentation` with
  actual `vertex`, `label`, and `follows` data.
- [DynamicSoficExactLanguageBoundary.lean](https://github.com/grwtsk/math/blob/d8cc568574e2251525aec82faff023eb7b8c8be2/GRWTSK/NumberTheory/DynamicSoficExactLanguageBoundary.lean)
  (blob `79680df7f55b03f16d765ae3bf1a1c2d3e15187c`):
  rooted `LabeledPath`, `Accepts`, prefix and rooted stream interfaces.

The original `LabeledGraph.edge : State → Alphabet → State → Prop` is
exactly the indexed edge relation being transported. With the same triple
`(s,a,t)`, proof-irrelevant multiple proofs are not multiple source edges.
Typed parallel-edge occurrences in a separate Quiver.Path model are
NOT already this source object's multiplicity. The new finite-set abstraction
intentionally forgets counts only for the SUPPORT predicate; it does not
change `wordLiftMatrix`, based-cycle cardinalities, or the canonical
trace/fiber ledger.

## 3. Primary proof A: original support signature and word-matrix positivity

Define the source finite-state edge step by

```text
Step_G(S,a) = { t in State | exists s in S, G.edge s a t }.
Support_G(S,word) = foldl Step_G S word.
```

The original `WordPath.cons`, `wordPath_append`, and
`wordPath_split_append` prove, using literal original labels,

```text
t in Support_G(S,w) iff exists s in S, WordPath G s w t.
```

The source declaration is `sourceSupportAfter_mem_iff`.
With `S=univ`, this is exactly the ORIGINAL
`reachableEndStates G w` (`sourceSupportAfter_univ_eq_reachableEndStates`).
In particular the original `GraphLanguage G w` holds iff
`Support_G(univ,w)` is nonempty, at every word length including zero.
With `S={s}`, support is equivalent to an original
`WordPath G s w t`.

The original word-matrix path-count source has already established
`(wordLiftMatrix G w)^k(s,t)>0` iff an actual original path spells
the literal word k times. Specializing k=1 and using the original
`finiteCopies w 1=w` proves

```text
t in Support_G({s},w)
  iff WordPath G s w t
  iff 0 < wordLiftMatrix G w s t
  iff 0 < wordMatrixProduct G w s t.
```

These are the new `sourceSupportAfter_iff_wordLiftMatrix_pos`
and `sourceSupportAfter_iff_wordMatrixProduct_pos` declarations.
This is a genuine theorem-level source comparison: NO original
intermediate state, letter, or true edge is manufactured, although
two or more paths with the same endpoints and word have the same
Boolean support bit.

## 4. Primary proof B: bounded periodic source-cycle recognition

Repeat the SAME word-level support operator k times starting from
`{s}`. `sourceRepeatedSupport_eq_finiteCopies` proves this is
exactly the support scan over `finiteCopies word k`, including k=0.
The exact original-path bridge and exact word-matrix-power theorem give

```text
s in RepeatedSupport_G({s},word,k)
  iff WordPath G s (finiteCopies word k) s
  iff 0 < ((wordLiftMatrix G word)^k)(s,s).
```

Define `HasBoundedSourceSupportCycle G word` to mean there exist
`1<=k<=q=card(State)` and a source state `s` returning to itself
after k word copies. Because the preexisting
`wordPowerClosedPathBridge_proof` precisely relates existence
of such a closed path to positivity of the source word-matrix trace,
and because the earlier optimized Nat scan tests a disjunction of
these positive traces, the new theorem

`boundedSourceSupportCycle_iff_boundedWordCycleTrace_pos`

identifies the Boolean SUPPORT cycle condition with the earlier
Nat-valued positive scalar. It does NOT identify the two numeric
values or their path multiplicities.

The existing sharp finite-state periodic-word criterion then proves

```text
all finite factors of the infinite periodic word w^infinity
    belong to language
  iff HasBoundedSourceSupportCycle G w,
```

provided `forall word, language word ↔ GraphLanguage G word`
and the original positive period length are given. This is
`periodic_word_iff_bounded_source_support_cycle`.

Summing one over each DISTINCT admitted `Fin n → Alphabet` word,
the source yields

```text
sourceSupportPeriodicWordCount G n
    = optimizedPeriodicWordCount G n,
```

and for exact complete factor-language presentations,

```text
card(PeriodicLabelPoint language n hn)
    = sourceSupportPeriodicWordCount G n.
```

The original based-graph-cycle trace remains separately corrected:

```text
trace(labeledAdjacency G ^ n) + unliftedLabelCount(canonicalCycleMap)
  = sourceSupportPeriodicWordCount G n + surplusLabelLiftCount(canonicalCycleMap).
```

The identical corrected result transports to any matrix satisfying
the existing `GraphMatrixRelation G M`. The proof DOES NOT claim
that original adjacency traces equal DISTINCT label point counts
without the two defects.

## 5. Primary proof C: typed search graph, dynamic-sofic and rooted interfaces

The search layer's original `LabeledEdgeRelation State Alphabet`
is an edge predicate of the same type as `LabeledGraph.edge`.
The explicit adapter `originalGraphOfSearchRelation` retains
exactly those bytes/values at every indexed (source,label,target).

`originalWordPath_iff_searchWordPath` is an induction in BOTH
directions on the real repository inductive path constructors.
It preserves actual word order and original endpoints. Under
`LabeledSubrelation lower upper`, the original paths and whole
unrooted graph language are included in the same direction.
The finite support after any selected source-state set is also
included. Hence the positive SUPPORT of the original word matrix
is monotone; the source does NOT claim equality of numeric path
counts under a proper inclusion.

Crucially, the induced label-preserving map of genuine
`PeriodicLabelPoint` subtypes is injective. Therefore their
FINITE CARDINALITIES are monotone for every positive n.
The actual `SearchSoficLanguage.LabeledSandwich`
supplies the joint lower-to-middle and middle-to-upper
cardinality inequalities through its original certified inclusions.
These are `periodicLabelPoint_card_le_of_labeledSubrelation`
and `sandwich_periodic_label_card_bounds`, NOT a general
graph-to-matrix trace equality.

The source also defines `originalGraphOfSpectralSoficGraph`.
The actual `DynamicSoficPresentation.vertex`, `.label` and
`.follows` data construct `RunsOnGraph` for EVERY source
input, with all its true edge witnesses. The preexisting
`graphLanguage_of_run_block` then proves ANY finite
observed block of that specific dynamic label trajectory is
an original finite graph word. Returning that fact to an
EXTERNAL source language requires the separately stated
`hExact : forall word, language word ↔ GraphLanguage graph word`.
This is precisely the guard in
`dynamicSoficPresentation_block_in_exactLanguage`.
Neither the dynamic trace itself nor a spectral-zero identification
is inferred from one accepted source run.

The rooted-source path uses the same edge predicate but fixes
a distinguished `G.start`. The new
`rootedPath_iff_originalWordPath` proves the actual path
correspondence for any explicitly supplied start, and
`rootedAccepts_implies_graphLanguage` transports genuine rooted
accepted words into the unrooted whole graph language. Every
rooted-admitted finite PREFIX therefore produces a matching
unrooted finite graph word, and the existing finite support
automaton reports a nonempty endpoint set.

**The converse is false:** `disconnectedRootedBool` has root
`false`, a `false`-labeled loop at that root, and a separate
`true`-labeled loop at vertex `true`. The complete unrooted
graph language admits the word `[true]` starting from the
disconnected true vertex. The rooted automaton cannot accept it
from `false`. The explicit
`unrooted_true_word_not_rooted` source proof candidate records
both facts. This is a meaningful boundary between unrooted finite
FACTOR words and a singleton rooted PREFIX language, not a
counterexample to the original path transport.

## 6. Independent finite controls

Two independent reference checks were executed using ordinary
Python exact finite objects, NOT Lean or its kernel.

1. Every 0-, 1- or 2-state original graph over two labels
   (261 possible edge-subsets), for word lengths 1 through 4:
   7,830 graph-word cases. Original direct path enumeration,
   exact Nat matrix entry positivity, singleton and univ
   finite-set source support, and bounded word-block support
   cycles agreed. There were 30,840 exact matrix endpoint
   comparisons, 30,840 matched support endpoint decisions,
   and 7,830 univ-reachable-end signature comparisons.
   Of these periodic-word cases, 5,312 were admitted and
   2,518 rejected by exact finite phase/subset automaton
   detection; both matched the bounded support cycle test.
2. ALL three-way edge-inclusion statuses for 0-, 1- or 2-state,
   two-label relation pairs (`lower subset upper`), with periods
   1 through 4: 26,284 graph-pair/period comparisons.
   Distinct periodic label counts never decreased under
   inclusion; 16,982 cases increased strictly. The explicit
   two-state disconnected-root language counterexample passed.

These exact FINITE calculations are useful hostile/regression
evidence; they neither typecheck the Lean proof scripts nor
constitute a universal mathematical acceptance certificate.

## 7. Verification and source boundaries

The direct Git publications were:

- finite support: commit `76e962dbfbdcb43c1b64f6fec1aea5061fb00b24`;
- search/spectral interface: commit
  `55886d570130e91441d9acc981cc5783a527105a`;
- rooted-prefix boundary: commit `d8cc568574e2251525aec82faff023eb7b8c8be2`.

Each new source file was published on existing main after one-file
diff review and expected-head non-force update. Immutable Git
readbacks matched the created source bytes exactly. Selected
environment: Lean `leanprover/lean4:v4.34.1`, Mathlib
`d13f23b723b8a846827a245b89c10fc7d3f11612`.
The maintained Noe proof skill was inspected at Noe commit
`218dfa95de54165b44e244f9e1a18fa409b09d6b`
(skill blob `5292446e4ef1398ba928d8ad339b662415166f19`).

An adjacent static mathematical target pins 32 selected project
imports and the actual source revisions of all three new
modules; the managed v3 profile selects 72 declaration names
across 16 source contracts. This selected project-side
inventory is NOT a native-resolved dependency graph of all
upstream Mathlib/Batteries/ImportGraph modules, and no
system-generated registry/source capture has run.

Native Lean compilation: **NOT_RUN**.
Expected types/universes: **NOT_RUN**.
Fresh trust-zero kernel replay: **NOT_RUN**.
Full transitive axiom audit: **NOT_RUN**.
Host owner resource admission/restoration: **NOT_RUN**.
Independent mathematical novelty/literature review: **NOT_ASSESSED**.
No new root imports, pinned toolchain changes or math repository
runtime effects were introduced.

The optimized Finset definitions remain `noncomputable` under
arbitrary proof-valued `G.edge`, unless an actual edge decision
supplier and certified executable refinement are provided. The
source results preserve original mathematical semantics, not
runtime speed measurements, and carry no guarantee of
compilation until a genuine Lean check runs.

## 8. Remaining source-specific mathematical fronts

The following source families were discovered, but there is NO
authorized mathematical implication simply from sharing the
word graph, shift or sofic:

- general `PeriodicPts` and topological `MulSubshift`: still
  require an actual shift/iterate and language-on-configurations
  equivalence or conjugacy before transferring minimal periods
  and topological properties;
- `ChowlaSoficObservations` and related arithmetic finite
  relations: require a real source-number/label map plus
  asymptotic correlation/cancellation inputs;
- `SoficDivisorPrimeCountingBridge` and finite divisor
  transforms: require proof that the selected indexed records
  represent the complete original analytic zero divisor and
  control all omitted/complementary terms;
- `FiniteWeightedGraphEnergy`, harmonic/Hodge and the
  proposed RH trace/Fredholm branches: require separate
  operator/metric/limit identification and quantitative
  energy/analytic estimates.

The immediate acceptance task is exact-source managed Lean 4.34.1
compilation with the new project and upstream import closure,
then separate expected-interface, kernel and transitive axiom
evidence. Any actual elaboration failures must be retained
and repaired under a new source revision; they cannot be
silently resolved by weakening original hypotheses.

## 9. Revision

Authored mathematical review: grwtsk contributors.
Pinned core math source commit: `d8cc568574e2251525aec82faff023eb7b8c8be2`.
Tracking: https://github.com/grwtsk/math/issues/1576.
New source Git blobs:
`22a4aacc0399bdea7e3086951f3c6a2fc2692f04`,
`dea290aac1ac6f5473c670f8b9c379d997cea6e0`,
`930c9d7dc0db96e5ace4a35489cec9db97e146b5`.
Historical reviews and accepted-scoped source identities
are unchanged.
