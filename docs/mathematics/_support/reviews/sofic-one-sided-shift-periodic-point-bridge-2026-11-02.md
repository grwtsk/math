# Exact one-sided shift periodic-point bridge for finite sofic factor languages

Local mathematical attribution: grwtsk contributors.
Review date: 2026-11-02.
Classification: source-level mathematical proof candidates and independent finite
reference checks; not a Lean compiler, kernel or analytic novelty certificate.

## Abstract

For the original Nat-indexed alphabet streams, the literal one-sided shift
\(\sigma x(k)=x(k+1)\) has \(\sigma^n x(k)=x(k+n)\).
The repository's coordinate-wise period-dividing-n condition is therefore
exactly the pinned Mathlib `Function.IsPeriodicPt` predicate.
The complete finite-factor-language condition is shift invariant; its
inclusion in all infinite alphabet streams semiconjugates the two shifts
and reflects every period. Thus their minimal periods agree.
The previously published original `PeriodicLabelPoint` is now explicitly
equivalent to actual Mathlib periodic points of the admissible shift,
preserving the entire label sequence.

For an exact whole-language presentation by the original finite labeled
graph, each of those shift points has an actual infinite graph-state run
with period \(mn\), \(1\le m\le |V|\), emitting the SAME label at EVERY
natural coordinate. Its minimal graph-state shift period divides \(mn\)
and is at most \(|V|n\). A finite cardinal on these shift-periodic
points, transported through their real equivalence to the original
finite `Fin n` label-point data, equals the previously published
finite support-cycle count. The exact original adjacency-matrix trace
still requires BOTH the missing-lift and surplus-lift corrections.

This is a source-preserving dynamical interpretation, not a topological
conjugacy, analytic spectral cover or finite-state model of an
arbitrary Möbius/NS observation.

## 1. Source and the exact original objects

The complete Lean source candidate is
[SoficShiftPeriodicPointBridge.lean](https://github.com/grwtsk/math/blob/5ebc2ed0e17cd2cc2c3dc028fc3fb736c3005e59/GRWTSK/DynamicalSystemsAndErgodicTheory/SoficShiftPeriodicPointBridge.lean)
at pinned math commit `5ebc2ed0e17cd2cc2c3dc028fc3fb736c3005e59`, Git blob
`cdf129caaa474c65f9245f142d35fde2611117e2`
(374 lines). Its only project imports are the original
`SoficPeriodicStreamBridge` and `SoficFiniteSupportAutomaton`,
and its direct Mathlib periodic-point source import is
`Mathlib.Dynamics.PeriodicPts.Defs`.

Actual mathematical source objects retained unchanged:

- [ExactSoficLanguageCover.lean](https://github.com/grwtsk/math/blob/5ebc2ed0e17cd2cc2c3dc028fc3fb736c3005e59/GRWTSK/DynamicalSystemsAndErgodicTheory/ExactSoficLanguageCover.lean):
  `LabeledGraph`, `GraphLanguage`, `RunsOnGraph`, `HasFiniteBlock`,
  original proof-valued `WordPath`.
- [SoficPeriodicMatrixTrace.lean](https://github.com/grwtsk/math/blob/5ebc2ed0e17cd2cc2c3dc028fc3fb736c3005e59/GRWTSK/DynamicalSystemsAndErgodicTheory/SoficPeriodicMatrixTrace.lean):
  `LabeledWalkData`, `BasedCycleData`, `basedCycleWord`, `repeatBlock`,
  `PeriodicLabelPoint`, actual source `labeledAdjacency`.
- [SoficPeriodicStreamBridge.lean](https://github.com/grwtsk/math/blob/5ebc2ed0e17cd2cc2c3dc028fc3fb736c3005e59/GRWTSK/DynamicalSystemsAndErgodicTheory/SoficPeriodicStreamBridge.lean):
  `PeriodicAdmissibleStream`, original finite-point/infinite-stream
  equivalence, actual modular state/label streams and bounded
  period-multiple source-graph run.
- [SoficFiniteSupportAutomaton.lean](https://github.com/grwtsk/math/blob/5ebc2ed0e17cd2cc2c3dc028fc3fb736c3005e59/GRWTSK/DynamicalSystemsAndErgodicTheory/SoficFiniteSupportAutomaton.lean):
  original exact finite support cycle count and
  `trace(A^n)+U_n=P_n+S_n` source-ledger identity.

The *pinned upstream* Mathlib supplier at revision
`d13f23b723b8a846827a245b89c10fc7d3f11612`
is [Mathlib/Dynamics/PeriodicPts/Defs.lean](https://github.com/leanprover-community/mathlib4/blob/d13f23b723b8a846827a245b89c10fc7d3f11612/Mathlib/Dynamics/PeriodicPts/Defs.lean),
blob `b13c026e181e32b56f3830e702caf85c1548fa82`.
Its actual `Function.IsPeriodicPt f n x` is
`Function.IsFixedPt (f^[n]) x`.
The mathematical period results
`Function.IsPeriodicPt.minimalPeriod_dvd` and
`Function.minimalPeriod_eq_minimalPeriod_iff` are reused directly,
without a reproof of their number-theoretic content. The original
historical copied `PeriodicPts.lean` in the project is NOT
added to the importing module to avoid conflating versions.
Upstream `Function.Semiconj` is from pinned
`Mathlib/Logic/Function/Conjugate.lean` (blob
`14029c1b2b1306188249c505626930a6e79baef1`), and its
iterate-right result is imported from pinned
`Mathlib/Logic/Function/Iterate.lean` (blob
`48324196626b2d62726e7e89fad332133c62e604`).

Toolchain selected at the mathematical source revision:
Lean `leanprover/lean4:v4.34.1`; Mathlib revision above.
No root imports, original graph predicates, original word matrices
or toolchain lock were changed.

## 2. Exact iteration, forward invariance and full-shift semiconjugacy

Define `oneSidedShift x k := x (k+1)` on EXACT original streams
`x : Nat -> Alphabet`. A direct induction on n, using only
the pinned function-iteration recursion, proves

```text
((oneSidedShift)^[n] x)(k) = x(k+n)   for all n,k.
```

This is `oneSidedShift_iterate_apply`.
Functional extensionality and the exact Mathlib definition now prove

```text
Function.IsPeriodicPt oneSidedShift n x
  iff forall k, x(k+n) = x(k).
```

This is `oneSidedShift_isPeriodicPt_iff`. It works even
for n=0, when both sides are tautological; positive n is
required only when a finite `Fin n` block is later used
to encode the infinite stream.

The original `AdmissibleInfiniteStream language` demands
that EVERY `HasFiniteBlock x word` belongs to language, including
blocks at arbitrary offsets. `admissibleShift` preserves this
subtype: if a word occurs in the shifted sequence at offset k,
it occurred in the unchanged source sequence at offset k+1.
This uses only the exact original `HasFiniteBlock`, not a
new acceptance convention.

The projection `Subtype.val` is a genuine
`Function.Semiconj` between `admissibleShift` and
`oneSidedShift`, with no label or time reparameterization.
Because the projection is injective, its iterate semiconjugacy
preserves AND REFLECTS every `Function.IsPeriodicPt` condition.
The proof is `admissibleShift_isPeriodicPt_iff`, using the
pinned Mathlib `IsPeriodicPt.map` for one direction and
subtype extensionality for the converse.

The pinned Mathlib
`minimalPeriod_eq_minimalPeriod_iff` characterizes equality of
minimal periods by equality of the set of all periodicity
statements. Hence `admissibleShift_minimalPeriod_eq_fullShift`
shows that restricting the shift to the original
factor-language subtype changes NO minimal period.

## 3. Original finite label points and the actual dynamical shift

The prior `PeriodicAdmissibleStream language n` is exactly a
full trace together with (a) the literal coordinate n-periodicity
and (b) the original full factor condition. Using the equivalence
in section 2, the new source proves
`periodicAdmissibleStream_equiv_shiftPeriodic`, preserving
the full underlying trace as its equality witness.

Compose this with the ORIGINAL
`periodicLabelPoint_equiv_admissibleStream language n hn`,
the existing finite/infinite equivalence, to obtain

```text
PeriodicLabelPoint language n hn
  ≃ { x : AdmissibleInfiniteStream language //
      Function.IsPeriodicPt (admissibleShift language) n x }.
```

This is `periodicLabelPoint_equiv_shiftPeriodic`.
The full-label sequence is preserved, including all k>=n.
It does not identify a label period with the minimal graph-state
period, and does not assert topological equivalence.

Two further consumers use the actual pinned Mathlib minimal-period
library: the minimal label-shift period divides every specified
n, and it is positive for a true positive n-periodic point.
These are `labelShift_minimalPeriod_dvd` and
`labelShift_minimalPeriod_pos`.

## 4. Exact original graph-state realization and least-period bound

Assume `[Fintype State]`, `[DecidableEq State]`,
`[Fintype Alphabet]`, `hn : 0 < n`, and the ORIGINAL
exact WHOLE-language equality

```lean
hExact : ∀ w, language w ↔ GraphLanguage G w
```

for the same finite label-indexed graph `G`.
Do not replace this with one path or a rooted prefix fact.

Starting with an actual Mathlib shift-periodic point in the
admissible source language, the new equivalence returns the
prior original `PeriodicAdmissibleStream language n`.
The established source-level bounded graph-run construction
returns `1≤m≤Fintype.card State`, a state stream and every
literal original edge

```lean
G.edge (states k) (x.val.val k) (states (k+1)).
```

Its state-coordinate equation
`states(k+m*n)=states(k)` becomes the Mathlib predicate
`Function.IsPeriodicPt oneSidedShift (m*n) states`
using the same exact iterate lemma. This is
`shiftPeriodicPoint_has_bounded_graphShift_lift`.
No new graph, transformed observation or quotient of the
original intermediate states is introduced.

The pinned Mathlib minimal-period divisibility theorem now gives

```text
minimalPeriod(oneSidedShift,states) divides m*n,
minimalPeriod(oneSidedShift,states) <= m*n <= card(State)*n.
```

The exact positive graph-state period is a MULTIPLE of n,
but its **least** graph-state period need only divide that
multiple. The source theorem is
`shiftPeriodicPoint_has_bounded_minimal_state_period`.
This strengthens the usable dynamical conclusion without
asserting the generally false same-period graph-state lift.

## 5. Finite cardinal and signed source return

The set of ALL infinite alphabet streams is generally infinite.
A `Fintype` of the periodic admissible subtype therefore must
NOT be postulated from finiteness of State alone.
The source defines `shiftPeriodicPointCount` by transporting
the original finite `PeriodicLabelPoint language n hn`
`Fintype` along the explicitly built `Equiv`.
It then proves

```text
shiftPeriodicPointCount language n hn
  = Fintype.card (PeriodicLabelPoint language n hn)
  = sourceSupportPeriodicWordCount G n.
```

The first equality is purely the explicit type equivalence;
the second uses the original exact finite support-cycle theorem
with all its graph, language and positive-n hypotheses intact.

The source returns this to the SAME original signed ledger:

```text
trace(labeledAdjacency G ^ n) + unliftedLabelCount(canonicalCycleMap)
  = shiftPeriodicPointCount language n hn
      + surplusLabelLiftCount(canonicalCycleMap).
```

The original based n-cycles remain counted with multiplicity.
Neither the true dynamical periodic-point interpretation nor
the finite-support count implies those two residuals are zero.
The source theorem is
`adjacency_trace_add_unlifted_eq_shiftPeriodicCount_add_surplus`.

## 6. Hostile cases and independent finite tests

The ORIGINAL two-state alternating Unit graph presents the
complete one-letter factor language and has a genuine label
period-one point but no based one-edge closed lift.
A full graph-state lift exists at m=2; its least state-shift
period is two, whereas the label-shift period is one.
The duplicate-loop Unit graph has two based one-edge lifts
with the same label point; the associated surplus defect
must still be kept. These source-hostile controls show why
a finite graph-state shift is NOT claimed conjugate to the
label shift merely from exact whole-language equality.

A separate independent Python test evaluated all binary
finite blocks of lengths 1..9, 1022 blocks total, checking
their true periodic infinite repetition and 378,950
coordinate comparisons across m=1..5 and extended
time indices. The minimal period of each block divided
its supplied n. There were no mismatches.

A second independent exact integer reference enumerated
all finite Bool-labeled edge graphs of q=0,1,2 states and
n=1..4 (261 graph choices; 7,830 graph/periodic-word cases).
To decide the WHOLE infinite factor-language condition,
it used phase and reachable-state-subset cycle detection,
not an arbitrary finite factor-length cutoff. It then
constructed explicit original closed state/label paths,
checked each source edge, each period, and 62,428 repeated
coordinates. The split was 5,312 admitted, 2,518
inadmissible, and 96 admitted cases needing multiplier m>1.
No disagreement arose between true admissibility and bounded
period-multiple graph-state closing. These are FINITE Python
reference controls, not Lean, not a universal proof, and not
a native executable performance measure.

## 7. Related concurrently published source families and missing returns

This source is a real bridge to the pinned Mathlib dynamical
periodic-point concept. Other nearby sources at the same
math commit have different precise mathematical roles:

- `GRWTSK/DynamicalSystemsAndErgodicTheory/PeriodicPts.lean`
  is a historical copied periodic-point source. The upstream
  pinned Mathlib definition, NOT this historical duplicate, is
  imported for the actual new theorem.
- `SymbolicDynamicsBasicPublic.lean` contains general
  topological subshift structures and `languageOn`.
  The new source does not prove a product-topology homeomorphism,
  closure of a chosen topological carrier, continuity of the
  conjugate shift, or a two-sided symbolic-dynamics equivalence.
- `DefectEnrichedSoficLanguage.lean` has certified finite
  graph words with separately retained signed scalar defects
  and allowances; candidate/admissible edges are not
  automatically certified.
- `CheckedApplicationSoficBridge.lean` demands genuine
  instantiated theorem-application terms for certified edges,
  not a source-reference title or lexical similarity.
- `ProbeSoficYoneda.lean` supplies a family of typed
  probes and endpoint separation ONLY under an actual
  separating-probes premise. It does not assert the full
  categorical Yoneda lemma.
- `SourceOccurrenceSoficBridge.lean` uses original
  edge-occurrence labels, preserving parallel occurrences
  that the ordinary Prop-indexed `LabeledGraph.edge` cannot
  distinguish at a fixed (state,label,state) triple.
  Its actual runtime-to-occurrence refinement is explicit,
  not supplied for an arbitrary index.
- `MoebiusSoficDefectLanguage.lean` transports original
  physical-bit streams under certified chart shifts and
  retains a signed source readout defect. It does NOT
  supply an arithmetic cancellation bound or finite
  exact-language graph presentation of the RH consumer.
- `PeriodicNavierStokesSoficPort.lean` connects complete
  fluid/port observations under genuine spatial translations
  but explicitly has an infinite state/alphabet domain;
  the finite-state period-multiple theorem cannot be applied
  without a separately proved finite exact restriction.

These related artifacts are source-proof candidates. Their
presence is evidence of mathematical interfaces, not proof that
the analytic source is equivalent to this finite label shift.
Finite-dimensional spectral, PDE-energy and zeta-zero
identifications and all associated quantitative estimates
remain separately open.

## 8. Verification, independent review and revision

Source bytes and one-file diff were inspected. The exact Lean
module was published by routine non-force expected-head update
and read back at the immutable source commit and Git blob.
The managed follow-up target/profile, adjacent to this review,
pins the 34 selected GRWTSK project modules and the 18 new
declarations (90 names across 17 source contracts total).
The explicit Mathlib periodic-point suppliers and version are
also pinned, but the full upstream dependency closure has NOT
been rebuilt.

The source includes no authored `sorry` or `axiom`
declarations by static scan; this does not establish absence
of imported axioms. No Lean/Lake/elan binary or verified local
Noe math checkout was available in this container. At the
source commit no successful CI checks or combined status
records were found. Consequently:

- Lean compilation: NOT_RUN
- Exact expected-type/universe consumer checks: NOT_RUN
- Fresh trust-zero kernel replay: NOT_RUN
- Transitive declaration-scoped axiom audit: NOT_RUN
- Noe managed v3 source/owner/host replay: NOT_RUN
- Topological conjugacy or infinite analytic source transfer: OPEN
- Independent source-novelty review: NOT_ASSESSED

No new mathematical axiom, root import, dependency upgrade,
runtime job or external publication authority was introduced.
The historical source review and acceptance records remain
independent of the new candidate.

Mathematical source pin:
`5ebc2ed0e17cd2cc2c3dc028fc3fb736c3005e59`, Git blob `cdf129caaa474c65f9245f142d35fde2611117e2`.
Canonical Noe proof skill inspected on
`grwtsk/noeaaeue/main` snapshot
`bbd7892e193d018c1d2a71880b183a965bac07f0`,
blob `5292446e4ef1398ba928d8ad339b662415166f19`.
Tracking issue:
https://github.com/grwtsk/math/issues/1576

The next ACCEPTANCE task is an authorized exact-source managed
Lean 4.34.1 compilation of the 34-module project-side closure
and its actual transitive pinned Mathlib closure, followed
separately by expected-interface checks, fresh kernel replay,
axiom audit, resource-host restoration and review of any real
elaboration failures. A future topological or arithmetic
return requires its own proof and source hypotheses.
