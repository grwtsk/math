# Exact sofic word-matrix dynamic program and bounded cyclic trace scan

Local mathematical attribution: grwtsk contributors.
Research and source review: 2026-11-02.
Status: **mathematical source-proof candidates, independent finite integer controls;
native Lean compilation, fresh kernel replay and axiom audit NOT_RUN**.

## 1. Abstract

The original finite labeled-graph word matrix was defined as the cardinality
of a Type of actual snoc-inductive LabeledWalkData witnesses that emit a chosen
word. Direct enumeration of this witness Type is not needed to compute its
cardinality: the exact same integer matrix is the left-to-right product of
letter-specific original edge-indicator matrices. A proof of the last-edge
dependent-sum equivalence preserves all original source states and label choices.
For a finite graph with q states, the sharp periodic-word criterion is the
existence of a positive trace of some word-matrix power k in [1,q]. A second
source proof reduces the existential to one positive natural-number scalar
obtained by a shared recurrence (B^k, sum_{j=1}^k trace B^j). The resulting
count of DISTINCT periodic label words agrees with the prior original
source count and satisfies the full missing-lift/surplus-lift corrected trace
ledger. This is a finite combinatorial algebraic optimization, not a
certified Lean executable algorithm or a new arithmetic/zeta theorem.

## 2. Source, parameters, original observations

The two new pure mathematical files are:

1. [SoficWordMatrixDynamicProgram.lean](https://github.com/grwtsk/math/blob/697face2b38918d5ad8f83fa854a02eb742ef37d/GRWTSK/DynamicalSystemsAndErgodicTheory/SoficWordMatrixDynamicProgram.lean)
   at exact source commit 697face2b38918d5ad8f83fa854a02eb742ef37d, corrected Git blob
   b2073a018d157f16ede91be900be94d2fecd6788. Its original
   first publication was commit a061429d3e7ac21f2671a877d44922e000c5d0e4;
   the subsequent exact appended-list length transport was added at
   commit 697face2b38918d5ad8f83fa854a02eb742ef37d.
2. [SoficWordPowerClosureScan.lean](https://github.com/grwtsk/math/blob/697face2b38918d5ad8f83fa854a02eb742ef37d/GRWTSK/DynamicalSystemsAndErgodicTheory/SoficWordPowerClosureScan.lean)
   at the same source revision, blob
   b1abfe560eed36ddeee1717d8fb4d8094bb7fc5e,
   originally published at commit 8c805c16b6f29d7d4a9ff60cf04f5eb3f51e159b.

Both are additive to the original
[SoficPeriodicWordMatrix.lean](https://github.com/grwtsk/math/blob/697face2b38918d5ad8f83fa854a02eb742ef37d/GRWTSK/DynamicalSystemsAndErgodicTheory/SoficPeriodicWordMatrix.lean)
(blob d8f0423d8b872e5045c779544bd39eb1bad7adfe),
[SoficBasedCycleCard.lean](https://github.com/grwtsk/math/blob/697face2b38918d5ad8f83fa854a02eb742ef37d/GRWTSK/DynamicalSystemsAndErgodicTheory/SoficBasedCycleCard.lean)
(blob d7fd2f5aad643d4350e4b5bfd7128dd979717a74),
[SoficPeriodicMatrixTrace.lean](https://github.com/grwtsk/math/blob/697face2b38918d5ad8f83fa854a02eb742ef37d/GRWTSK/DynamicalSystemsAndErgodicTheory/SoficPeriodicMatrixTrace.lean)
(current blob 044644b345b46c90d82dffde6c7485d617b4fbd9),
[SoficBoundedWordMatrixCriterion.lean](https://github.com/grwtsk/math/blob/697face2b38918d5ad8f83fa854a02eb742ef37d/GRWTSK/DynamicalSystemsAndErgodicTheory/SoficBoundedWordMatrixCriterion.lean)
(blob 3be4fc0e7b953c22e14749b8ad933b0ab851de1b),
[SoficPeriodicSourceIntegration.lean](https://github.com/grwtsk/math/blob/697face2b38918d5ad8f83fa854a02eb742ef37d/GRWTSK/DynamicalSystemsAndErgodicTheory/SoficPeriodicSourceIntegration.lean)
(blob 21c602ba8f6b8f1611e2c90d45d9aed3e70f7454),
and all of their direct and transitive original imports.

The hypotheses for the core source matrix identity are: original
G : LabeledGraph State Alphabet, Fintype State, DecidableEq State and
Fintype Alphabet. The original G.edge s a t is a PROP, with exactly
one truth value at each (state,label,state) address. Original paths may
differ by intermediate states or emitted labels; proof-irrelevant
multiple witnesses of the SAME predicate are NOT extra parallel edges.
The separate [DirectedGraphPathOccurrences.lean](https://github.com/grwtsk/math/blob/697face2b38918d5ad8f83fa854a02eb742ef37d/GRWTSK/Combinatorics/GraphTheory/DirectedGraphPathOccurrences.lean)
(blob 65da6d5cbe73bb1e5263f5bb7c4e001c0d5d1ad3) uses actual typed
Quiver.Path arrows, which CAN distinguish multiple same-endpoint arrow
occurrences. No comparison theorem from that edge type into the
original LabeledGraph is inferred; the optimization exactly preserves
only the graph's original edge semantics.

The periodic LABEL-point consumer additionally requires positive n
and complete source language equivalence:
for EVERY finite word z, language z ↔ GraphLanguage G z. No isolated
accepted word is treated as a whole-language equality.

Environment selected at the source revision: Lean v4.34.1
(lean-toolchain Git blob ba8ebf2dbaf6a668cd2a0e086186d6d569b69ff5),
Mathlib d13f23b723b8a846827a245b89c10fc7d3f11612
(lake-manifest blob c8044c56be77c58e6f41cca024b25237c59e8c79).
No root import, toolchain migration or upstream adaptation was performed.

## 3. Mathematical proof: original witness cardinality equals letter product

For every label a and states s,t define its EXACT original edge step

    E_a(s,t) = if G.edge s a t then 1 else 0       (Nat).

The original all-letter matrix is A_G(s,t)=sum_a E_a(s,t).
For any word w, define B_w(s,t) to be the ORIGINAL
wordLiftMatrix G w s t, whose value is the cardinal of the original
LabeledWalkData G (length w) s t filtered by full emitted-word equality.
The empty word has exactly the zero-step identity witnesses:

    B_[] = I.

For w followed by a single a, every original snoc walk emitting w++[a]
is uniquely specified by:

* its original penultimate state u;
* an original snoc-inductive prefix witness p from s to u, emitting
  exactly w and retaining the complete list of intermediate states;
* a proof of the original G.edge u a t predicate.

The source constructs the Type-level finite equivalence
exactSnocWordEquiv, with the edge proof in PLift. Proof irrelevance
ensures there are zero or one proof-valued choices per original
(state,label,state) address, not invented parallel edges. The Type-level
Fintype.card_sigma/card_prod identities then give

    B_(w++[a])(s,t) = sum_u B_w(s,u) * E_a(u,t).

This is wordLiftMatrix_snoc_apply, with a direct matrix equality
wordLiftMatrix_snoc. Induction over the source word by reverseRecOn gives

    B_(a_1...a_n) = E_(a_1) * ... * E_(a_n),

which is wordLiftMatrix_eq_wordMatrixProduct. The proof covers the
empty word and empty State/Alphabet types without a nonempty
graph or a deterministic transition hypothesis. No label or
intermediate state is identified with another.

The new wordMatrixProduct definition is a left fold with one
matrix multiplication for every original emitted letter. Its
word_matrix_trace_eq_dynamic_product theorem transports the original
trace to the same finite product.

## 4. Mathematical proof: one shared bounded trace test

Fix B=B_w and q=Fintype.card State. Define

    P_0 = I, S_0 = 0,
    P_(k+1) = P_k * B,
    S_(k+1) = S_k + trace(P_(k+1)).

matrixPowerTraceScan encodes exactly this pair of Nat-matrix/Nat
recurrences, while matrixPowerTraceScan_power and
matrixPowerTraceScan_trace_sum prove by induction that

    P_k = B^k,
    S_k = sum_{j=1}^k trace(B^j).

Since each original coefficient and its trace is a Nat,
all summands are NONNEGATIVE. There is no cancellation:
S_q>0 iff trace(B^k)>0 for at least one 1<=k<=q.
The declaration boundedWordCycleTrace_pos_iff proves this sharp
finite-state detection criterion, and
boundedWordCycleTrace_eq_original_power_sum shows the source
matrix has not been swapped for an unrelated object.

The preexisting exact-language theorem
boundedPeriodicWordMatrixCriterion_proof then establishes

    every finite factor of w^∞ is in language
      iff S_q(wordMatrixProduct G w)>0.

In the new code this is periodic_word_iff_bounded_cycle_trace_pos.
The count optimizedPeriodicWordCount assigns one to each *distinct*
length-n word whose single scalar cycle-observer is positive, and
zero otherwise. No based-graph-cycle multiplicity is mistaken for
a distinct periodic label point.

The two exact returns are:

    optimizedPeriodicWordCount G n
      = boundedPeriodicWordCount G n              (all n);
    card (PeriodicLabelPoint language n hn)
      = optimizedPeriodicWordCount G n            (positive n and exact language).

These are source-level theorem candidates
optimizedPeriodicWordCount_eq_boundedPeriodicWordCount and
periodicLabelPoint_card_eq_optimizedCount, respectively.

## 5. Original trace, signed defects, certified matrix return

The original all-label graph adjacency trace
tr(A_G^n) counts based original n-cycles WITH multiplicity.
It does NOT generally count distinct period-n emitted words.
The previously published canonicalCycleMap G language hExact n hn
maps each actual based n-cycle to its genuine period-n label point,
without requiring an injective or surjective lift.

Let U_n be the number of genuine label points without an n-lift,
and S_n be the total graph n-lifts above the first over each
label point. The exact source ledger remains

    tr(A_G^n) + U_n =
        optimizedPeriodicWordCount G n + S_n.

This is adjacency_trace_with_defects_eq_optimizedCount.
The certified matrix consumer
certified_matrix_trace_with_defects_eq_optimizedCount
reuses the exact GraphMatrixRelation G M hypothesis; an arbitrary
matrix is not silently promoted to a symbolic-dynamics presentation.
A numerical balance U_n=S_n still does not mean the graph-to-label
cycle map is bijective.

Two hostile full-one-letter-language presentations make the boundary
concrete. The original two duplicate self-loops have tr(B_Unit)=2
and a single periodic label; the two-state alternating graph has
tr(B_Unit)=0 but tr(B_Unit^2)=2, also with one periodic label.
Both pass the optimized bounded cycle positivity check while the
first has surplus n=1 lifts and the second has missing n=1 lifts.
A two-state two-label graph with 0 preserving state and 1 toggling
state has balanced nonzero defects at n=1, so raw numerical trace
equality still fails to certify unique period-compatible lifts.

## 6. What is optimized, and what is not

The source-level mathematical computational model, for a fixed n-word
and q-state graph, is:

* wordMatrixProduct: n matrix products E_a, one per emitted label;
* matrixPowerTraceScan: q additional products by the same exact
  word matrix while accumulating nonnegative scalar traces;
* one scalar positivity comparison, rather than an existential
  evaluation using independently recomputed powers;
* no enumeration of all original witness walks is required in the
  dynamic-product ARITHMETIC MODEL, although original witness types
  remain the canonical source of its proof.

For dense q×q natural-number matrix multiplication using elementary
triple loops, this represents O((n+q) q^3) scalar additions and
multiplications per candidate word, excluding the bit complexity of
growing Nat coefficients, graph-edge predicate decisions, and the
cost of enumerating all |Alphabet|^n candidate words.
The mathematical definitions use noncomputable/classical choices;
no verified extraction to a fast Lean executable has run.
This operation count is not a measured runtime guarantee.

An independent Python source-reference check enumerated ALL 261
graphs with 0,1 or 2 states over two labels and each original
length-1-through-4 word (7,830 graph-word cases), and then
84 deterministic sampled graphs with 3 or 4 states and shorter
word lengths (4,440 further cases). It independently counted
source walk witnesses and compared the letter product for each
of 75,840 original (start,end) entries; all matched.
It also checked the bounded cycle-trace positivity against true
periodic graph-language admission by finite phase/state-subset
iteration, with zero discrepancies (9,498 admitted and 2,772
inadmissible candidate words). A separate exhaustive check of
1,044 graph-period pairs verified the original signed ledger:
unlifted, surplus and optimized distinct count reconciled with
the original adjacency trace in every case. Fourteen period
pairs had balanced nonzero defects and a nonbijective map.

One illustrative Python q=4, length-8 ALL-EDGES fixture
enumerated 611,664 direct transition trials; four repeated
Python timings of full witness enumeration were approximately
0.072–0.086 seconds each, versus 0.000090–0.000101 seconds
for the dynamic letter-product arithmetic. The large ratio in
this small fixture is NOT a Lean benchmark, measured end-to-end
application speedup, or complexity lower bound.

## 7. Source boundaries and acceptance

The source cardinality proof uses the existing actual
LabeledWalkData data, not Quiver.Path with additional parallel
arrows, a path language with one Boolean witness, or a
probabilistic/energy observation. No Schur, Fredholm or zeta
determinant identity, Möbius cancellation, RH/GRH conclusion,
quantitative spectral energy or analytic limit follows from
the nonnegative finite matrix identity.

The new source modules contain no authored sorry/axiom declarations
by a static text scan. The updated factorization has a targeted
explicit appended-list-length rewrite to avoid silently asserting
definitional equality of (w++[a]).length with w.length+1.
This is a proposed elaboration repair, not evidence that
the source has passed a Lean compiler.

A new static verification profile/target pins the exact
source commit, 23 selected project-side module inputs,
and 35 declaration names across 13 source contracts.
The full upstream Mathlib and source/compiler provenance
must be resolved afresh by Noe managed registry v3.

**Actual validation:** Git source publication and immutable blob
readback CONFIRMED. Lean compilation NOT_RUN; expected interfaces
NOT_RUN; fresh trust=0 kernel replay NOT_RUN; complete transitive
axiom audit NOT_RUN; managed producer/owner restoration NOT_RUN;
independent analytic novelty review NOT_CLAIMED.
The Noe proof skill was read at the maintained current Noe main
snapshot, but no runtime execution authority or resource admission
is inferred from a skill or published profile.

The next distinct algorithmic improvement would be a verified
Boolean/support-matrix cycle or strongly-connected-component
algorithm, avoiding the bit growth of full Nat path counts for
admission-only questions. Such a support abstraction must prove
that positivity of the original exact word-matrix powers is
preserved, and must keep separate the original multiplicities
needed for the trace/fiber ledger.

## 8. Revision

This source review is bound to exact math commit
697face2b38918d5ad8f83fa854a02eb742ef37d.
Pure source blobs:
SoficWordMatrixDynamicProgram = b2073a018d157f16ede91be900be94d2fecd6788;
SoficWordPowerClosureScan = b1abfe560eed36ddeee1717d8fb4d8094bb7fc5e.
Selected original math issue:
https://github.com/grwtsk/math/issues/1576.
Historical source and verification records are not retroactively
promoted by this publication.
