# The exact topological subshift of a finite-factor language

Local mathematical attribution: grwtsk contributors.
Date: 2026-11-02. Mathematical proof discussion and source comparison.
Status: PUBLISHED SOURCE PROOF CANDIDATES. Native Lean compilation, fresh
kernel replay, expected-type audit and transitive axiom checks NOT_RUN.

## Abstract

The original sofic formalization already defines a complete finite-factor
language using `HasFiniteBlock`, a finite labeled graph using original
`WordPath`, actual `PeriodicLabelPoint` data, a bounded period-multiple
graph lift, and a signed adjacency trace ledger. The project also contains
an upstream-authored `SymbolicDynamics.FullShift.Subshift` carrying a
genuine product topology, additive shifts, finite patterns, forbidden
patterns and `LanguageOn`.

This increment proves a source-level candidate that those two streams
describe the SAME carrier when the topological subshift forbids precisely
the finite original words not in `language`. The product-topological
space is truly closed and shift-invariant by the existing forbidden
pattern construction. Its points are equivalent, WITHOUT replacing
letters or time coordinates, to the previous `AdmissibleInfiniteStream`.
Their one-sided shift periodicity corresponds to the original finite
`PeriodicLabelPoint` for every positive n, returning the original
bounded graph-state period and missing/surplus lift compensation.

An important issue is resolved rather than suppressed: the complete
finite-path language of an arbitrary finite labeled graph can contain
words with NO infinite continuation. The language realized by the
topological subshift is automatically a SUBSET of the supplied finite
language, but the converse requires a realization/extendibility premise.
The new source includes an actual two-state dead-end graph witnessing
strict loss. Consequently the construction does NOT automatically
identify `GraphLanguage G` with `LanguageOn` of its topological
subshift, or manufacture a topological conjugacy with a space of
graph-state histories.

## 1. Exact subject sources and upstream distinction

The three additive Lean modules were published to the existing
`grwtsk/math/main` branch via guarded non-force expected-head commits
and immutable Git blob readbacks. Combined mathematical source revision:
`992fefb3d2f32b48d286e8f3f205faf065234a4c`.

- [SoficTopologicalFactorSpace.lean](https://github.com/grwtsk/math/blob/992fefb3d2f32b48d286e8f3f205faf065234a4c/GRWTSK/DynamicalSystemsAndErgodicTheory/SoficTopologicalFactorSpace.lean):
  blob `9e88f37655093ececbb9956dbd39ab8fe7db2878`, 219 lines.
  Supplies real forbidden patterns, `Subshift`, exact carrier
  comparison, closedness, actual one-step shift, point equivalence,
  shift semiconjugacy and periodicity reflection.
- [SoficTopologicalPeriodicReturn.lean](https://github.com/grwtsk/math/blob/992fefb3d2f32b48d286e8f3f205faf065234a4c/GRWTSK/DynamicalSystemsAndErgodicTheory/SoficTopologicalPeriodicReturn.lean):
  blob `dc1c7915c91e89afa4e9f5e1287f2e0cdb5a0153`, 246 lines.
  Supplies genuine topological periodic point equivalence to original
  `PeriodicLabelPoint`, minimal-period agreement, bounded original
  graph-state lifts and the original corrected adjacency trace ledger.
- [SoficTopologicalLanguageBoundary.lean](https://github.com/grwtsk/math/blob/992fefb3d2f32b48d286e8f3f205faf065234a4c/GRWTSK/DynamicalSystemsAndErgodicTheory/SoficTopologicalLanguageBoundary.lean):
  blob `516f991a66ff7f5f0599261b14f78fecf769e21a`, 176 lines.
  Proves that realized infinite-stream factors lie in the original
  source language, connects the existing `FullShift.LanguageOn`
  initial-word patterns one way, and supplies the finite dead-end
  strict non-realization counterexample.

The topological supplier is the EXISTING
[SymbolicDynamicsBasicPublic.lean](https://github.com/grwtsk/math/blob/992fefb3d2f32b48d286e8f3f205faf065234a4c/GRWTSK/DynamicalSystemsAndErgodicTheory/SymbolicDynamicsBasicPublic.lean),
blob `a5cecafff31a4cb24b5c9f20a3f2e91100e5d125`.
Preserve its original upstream author and Apache-2.0 attribution
(Silvère Gangloff, 2025); it is not a mathematical development newly
authored by this integration. The new source specifically consumes
the additive `SymbolicDynamics.FullShift.Subshift.ofForbidden`,
`Pattern` and `Pattern.occursInAt`, and the original `LanguageOn`,
rather than asserting that a merely named set is topologically closed.

The direct original sources include
[ExactSoficLanguageCover.lean](https://github.com/grwtsk/math/blob/992fefb3d2f32b48d286e8f3f205faf065234a4c/GRWTSK/DynamicalSystemsAndErgodicTheory/ExactSoficLanguageCover.lean),
[SoficPeriodicMatrixTrace.lean](https://github.com/grwtsk/math/blob/992fefb3d2f32b48d286e8f3f205faf065234a4c/GRWTSK/DynamicalSystemsAndErgodicTheory/SoficPeriodicMatrixTrace.lean),
[SoficPeriodicStreamBridge.lean](https://github.com/grwtsk/math/blob/992fefb3d2f32b48d286e8f3f205faf065234a4c/GRWTSK/DynamicalSystemsAndErgodicTheory/SoficPeriodicStreamBridge.lean),
[SoficShiftPeriodicPointBridge.lean](https://github.com/grwtsk/math/blob/992fefb3d2f32b48d286e8f3f205faf065234a4c/GRWTSK/DynamicalSystemsAndErgodicTheory/SoficShiftPeriodicPointBridge.lean),
[SoficFiniteSupportAutomaton.lean](https://github.com/grwtsk/math/blob/992fefb3d2f32b48d286e8f3f205faf065234a4c/GRWTSK/DynamicalSystemsAndErgodicTheory/SoficFiniteSupportAutomaton.lean)
and [SoficExactPeriodicTraceLedger.lean](https://github.com/grwtsk/math/blob/992fefb3d2f32b48d286e8f3f205faf065234a4c/GRWTSK/DynamicalSystemsAndErgodicTheory/SoficExactPeriodicTraceLedger.lean).
They retain the original `LabeledGraph`, `GraphLanguage`,
`HasFiniteBlock`, `BasedCycleData`, `wordLiftMatrix`,
`canonicalCycleMap`, `unliftedLabelCount` and
`surplusLabelLiftCount`, not renamed surrogates.

## 2. Primary proof A: forbidden-word cylinders are EXACT original factors

Fix a source language `language : List Alphabet → Prop`, with
`[TopologicalSpace Alphabet]`, `[DiscreteTopology Alphabet]`,
and `[Inhabited Alphabet]`. These are the existing source pattern
API's discrete-alphabet conditions, not concealed finite graph
assumptions. The underlying time monoid is ADDITIVE Nat, so the
topological configuration carrier has type `Nat → Alphabet`.

For each literal original word `w`, define `sourceWordPattern w`
with support `Finset.range w.length`. Its configuration at a
supported coordinate `i` is `w.get i`, and it is padded with
`default` ONLY OUTSIDE the original word. The source proves

    (sourceWordPattern w).occursInAt trace offset
       ↔ forall i : Fin w.length,
           trace (offset + i.val) = w.get i.

No length truncation, source alphabet re-encoding or coordinate
convention is hidden. Taking existence over offset is EXACTLY
the existing `HasFiniteBlock trace w`.

Define `forbiddenSourceWordPatterns language` as all and only
`sourceWordPattern w` for which `¬language w`.
The preexisting `Subshift.ofForbidden` constructs an ACTUAL
closed, shift-invariant topological object
`completeFactorSubshift language`. Unfolding its forbidden-pattern
carrier and the exact word-pattern occurrence comparison gives

    trace ∈ (completeFactorSubshift language).carrier
       ↔ forall w, HasFiniteBlock trace w → language w.

This is `mem_completeFactorSubshift_iff`. Both implications are
explicit: a forbidden observed word contradicts avoidance; conversely
any forbidden pattern occurrence contradicts all-factor admission.
Because the carrier is constructed by the preexisting subshift API,
`completeFactorSubshift_isClosed` is its actual `isClosed`
field, NOT a new unproved closedness axiom.

The older original `oneSidedShift trace k = trace(k+1)` agrees
at EVERY index with upstream additive `FullShift.shift 1`:
the only coordinate rewrite is `k+1=1+k`.
Thus `completeFactorSubshift_shift_mem` obtains actual invariance
from the source `Subshift.mapsTo`.

## 3. Primary proof B: actual carrier and dynamical period return

Define `TopologicalAdmissibleStream language` to be the subtype
of TRUE topological carrier members. The source constructs
`topologicalStream_equiv_admissibleStream` with both directions
using the same complete `Nat→Alphabet` stream, and property
transport only through `mem_completeFactorSubshift_iff`.

The source's `topologicalShift` is the actual one-sided shift
restricted by `completeFactorSubshift_shift_mem`.
The topological carrier equivalence has a real
`Function.Semiconj` equation with the already published
`admissibleShift`. Since this equivalence is injective,
the actual Mathlib `IsPeriodicPt` predicate is not only
preserved but REFLECTED at every n, including n=0.

`topologicalPeriodic_equiv_shiftPeriodic` now identifies the
true topological period-n subtype with the existing
`AdmissibleInfiniteStream` shift-periodic subtype, and its
composition with the prior exact finite-to-infinite equiv gives

    {p : TopologicalAdmissibleStream language //
        Function.IsPeriodicPt (topologicalShift language) n p}
        ≃ PeriodicLabelPoint language n hn

for positive n. No artificial Fintype on the entire infinite
shift space is assumed. The source obtains finiteness of the
period-n subtype ONLY by the existing explicit finite
`Fin n` label block equivalence.

The topological restricted shift's minimal period agrees with
the full one-sided label-shift period, by the source's equality
of every Mathlib period predicate. For any actual graph
`G : LabeledGraph State Alphabet` with finite original State
and Alphabet and the SAME exact WHOLE finite-word language

    hExact : forall w, language w ↔ GraphLanguage G w,

the previously published original period-multiple lift
gives an actual graph-state stream with period m*n,
`1≤m≤card(State)`, and exactly the topological label
sequence at EVERY natural coordinate. The least graph-state
shift period divides m*n and is at most card(State)*n.
This DOES NOT assert that the same-period graph lift exists.

The final consumer returns the exact original signed ledger:

    trace(labeledAdjacency G ^ n)
       + unliftedLabelCount (canonicalCycleMap G language ...)
       = topologicalPeriodicPointCount language n hn
           + surplusLabelLiftCount (canonicalCycleMap G language ...).

All n-cycle graph-path multiplicities and both defect signs
remain unchanged. In particular equality of raw trace and
topological periodic-point count does NOT imply that the
canonical cycle map is bijective.

## 4. Primary proof C: the actual realized finite language can be smaller

Define `realizedTopologicalFactorLanguage language w` to mean
there exists an infinite stream in the TRUE topological
subshift whose actual `HasFiniteBlock` contains w.
The carrier equivalence immediately proves

    realizedTopologicalFactorLanguage language w → language w.

This is the correct universally available direction.
A further source theorem assumes an explicit realization
hypothesis `forall w, language w → realized... w` and then
obtains equality of the two languages. This extra source
premise has NOT been proved for arbitrary finite labeled
graphs, and must not be deleted or hidden.

The upstream `SymbolicDynamics.FullShift.LanguageOn` is a
FINITE-PATTERN language on a selected support set, NOT
definitionally the same `List Alphabet → Prop` type.
The source returns `sourceWordPattern w` in
`LanguageOn carrier (Finset.range w.length)` to the
exact original condition `language w`. This keeps its
pattern-support equality and source word order explicit.
The reverse language-on-pattern assertion is not simply
asserted for all admitted finite words.

The HOSTILE original finite graph `terminalEdgeGraph`
has State=Bool, Alphabet=Unit and exactly one edge
`false --()--> true`. The original finite
`GraphLanguage terminalEdgeGraph [()]` is TRUE.
But a two-letter path is impossible because any middle
state would need to be both `true` and `false`.
Every infinite Unit-valued stream contains a two-letter
block `[(),()]`, so there is NO infinite admissible
stream for that graph; its accepted word `[()]` is
not a factor of any point of the derived topological subshift.

The source theorem `terminalEdgeGraph_strict_language_loss`
records both facts with the SAME actual original graph
edge predicate. It is a true logical obstruction to
promoting finite-path whole-language equality to equality
with infinite realizable factors without a continuation
condition.

A complementary positive source control is the original
one-state full shift: `fullShiftGraph_completeFactorSubshift_all`
shows EVERY infinite stream is admitted by its derived
complete-factor topological subshift.

## 5. Independent finite controls and comparison

A separate finite reference enumeration inspected ALL 261
Boolean-labeled finite graphs with zero, one or two original
states and every binary word of lengths 0..4: 8,091
graph-word cases total. Direct original labeled-path
endpoint reachability accepted 5,960 words.
An independent finite graph-cycle continuation test found
5,912 words with a genuine infinite continuation.
There were 48 strict finite-path-only words among 16 graphs.
No infinite-realizable word lacked a finite original path.
The explicit terminal-edge Unit fixture accepted a one-step
word, rejected the two-step word, and had no infinite
extension. This is finite integer regression evidence,
NOT native Lean execution, a kernel proof, or an all-graph
classification certificate.

The new work is distinct from merely rewriting the previous
`PeriodicLabelPoint`: it supplies a REAL closed product-
topological object and an explicit forbidden finite-pattern
comparison, plus a true failure example for the stronger
language identification. Its method is the standard
symbolic-dynamics forbidden-cylinder construction.
No independent novelty claim relative to the mathematical
literature is made. Upstream source bylines are retained.

Related but NOT implied claims:
- topological HOMEOMORPHISM of two separately topologized
  subshift carriers, or a two-sided shift conjugacy, is not
  established merely by this stream-preserving Equiv;
- all finite graph paths extend to right-infinite paths,
  graph essentialization, pruning and preservation of
  the entire original finite-word language are not proved;
- a finite graph with the same factor language need not
  have a faithful same-period based-cycle labeling;
- the separate Möbius, zeta-zero, PDE, Hodge and RH source
  interfaces require specific source maps and analytic
  estimates before any return.

## 6. Exact verification boundary

Source publication was to existing `grwtsk/math/main`
with expected-head non-force updates, one-file diffs and
exact Git blob readback for all three new Lean source files.
The static verification target pins their source blobs,
the existing SymbolicDynamicsBasicPublic supplier and the
original source dependency tree. No root import or package
version is changed.

The selected environment is Lean
`leanprover/lean4:v4.34.1` and Mathlib
`d13f23b723b8a846827a245b89c10fc7d3f11612`.
The new managed v3 source-profile handoff includes
38 selected project modules and 125 exact declaration
names across 20 source contracts. This is only a
selected static project-side inventory. The complete
transitive Mathlib/Batteries upstream closure must be
reconstructed by the authorized Noe owner.

Actual statuses:
- New source publication and Git blob readback: CONFIRMED.
- Static authored-source sorry/axiom scan: NO NEW DECLARATION FOUND.
- Native Lean compilation: NOT_RUN.
- Expected interfaces/universes: NOT_RUN.
- Fresh trust-zero kernel replay: NOT_RUN.
- Complete transitive axiom audit: NOT_RUN.
- Noe managed registry-v3 preparation and host restoration: NOT_RUN.
- Topological homeomorphism or external analytic source transfer:
  NOT_CLAIMED.
- Independent mathematical novelty/literature disposition:
  NOT_ASSESSED.

The canonical proof-automation skill was read from
`grwtsk/noeaaeue/main` (the current session's pinned
Noe revision), but supplied no authority to activate a
separate native host, clear a hold, dispatch an unrelated
worker or declare a candidate theorem accepted.
The actual next step is managed source-closed Lean
compilation of this exact mathematical revision, retaining
all parsing/elaboration failures and checking each
requested evidence facet independently.

## Revision

Local mathematical attribution: grwtsk contributors.
Pinned math source commit `992fefb3d2f32b48d286e8f3f205faf065234a4c`.
New module blobs:
`9e88f37655093ececbb9956dbd39ab8fe7db2878`,
`dc1c7915c91e89afa4e9f5e1287f2e0cdb5a0153`,
`516f991a66ff7f5f0599261b14f78fecf769e21a`.
Issue: https://github.com/grwtsk/math/issues/1576.
Historical source reviews and their old acceptance facets
remain separate.
