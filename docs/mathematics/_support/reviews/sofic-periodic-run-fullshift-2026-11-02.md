# Source-bound review: periodic graph runs and full-shift trace

Local mathematical attribution: grwtsk contributors.

## Sources and mathematical scope

New source: [SoficPeriodicRunFullShift.lean](https://github.com/grwtsk/math/blob/74804b8df4e1d6ac15d7d04c0f1a7c59398c23d6/GRWTSK/DynamicalSystemsAndErgodicTheory/SoficPeriodicRunFullShift.lean), commit 74804b8df4e1d6ac15d7d04c0f1a7c59398c23d6, blob 265aa4180f4135e76cb0000166d253be4d96b9dc. Original definitions and namespaces of LabeledWalkData, BasedCycleData, basedCycleWord, GraphLanguage, RunsOnGraph, HasFiniteBlock, PeriodicLabelPoint and labeledAdjacency are unchanged. Prerequisites include SoficPeriodicMatrixTrace.lean (blob 70e416083e8fd1238ffdd8896f984e0a5382c139), SoficBasedCycleCard.lean (blob d7fd2f5aad643d4350e4b5bfd7128dd979717a74), SoficCycleLabelBijection.lean (blob bd1ba53939ed6f5a4e00d76be9d6d433d09f3d0b), and ExactSoficLanguageCover.lean.

Toolchain selected by the repository: Lean 4.34.1 and Mathlib d13f23b723b8a846827a245b89c10fc7d3f11612. No root imports or pinned dependencies were modified.

## Mathematical argument

An actual infinite labeled graph run gives a state function s(k) and edge certificates E(s(k),x(k),s(k+1)). Given a finite observed block w at offset j, induction over the length of w yields an original WordPath from s(j) to s(j+|w|), with exactly the observed edge labels. Therefore a real graph run implies membership of every finite observed block in GraphLanguage. The new Lean source contains the proof candidate graphLanguage_of_run_block.

For a positive n, CycleRepetitionsRun requires that the repeated labels of each *actual* original based n-cycle have an infinite source graph-state run. Exact language equality then transfers the previous run-to-finite-block result to CycleWordsAdmissible, through cycleWordsAdmissible_of_exact_run. The consumer periodic_point_trace_of_exact_cycle_runs retains faithful cycle labels and period-matched complete lifts as independent hypotheses. These are logically conjunctive conditions, not automatic consequences of accepting all finite factors.

A nonvacuous complete example uses the original one-state fullShiftGraph on an arbitrary finite alphabet Sigma. Every finite word belongs to its graph language. Consequently its period-dividing-n point type is equivalent to the function type Fin n → Sigma, of cardinality |Sigma|^n. Independently, the original labeled-walk last-edge recurrence has |Sigma| choices at every step, giving matrix trace |Sigma|^n. This is fullShift_periodic_point_card_eq_trace.

The original inductive LabeledWalkData.snoc representation has no middle-state ambiguity in this graph. Induction shows that identical emitted lists force identical walks; List.ext_get shows that equality of the original basedCycleWord functions forces equality of the emitted lists. This proves faithful cycle labels for every n. The separately calculated equality of finite source and target cardinalities and injection of the canonical label map give surjection, constructing the actual label-preserving bijection fullShift_hasCycleLabelEquivalence. Finally fullShift_trace_of_exact_cycle_lifts recovers the graph-to-matrix trace theorem using that equivalence. The two numerical paths share the existing matrix-cardinality result and are not independent proofs of that prior lemma.

The resulting *source proof candidate* for all positive n is

\[
\#P_n(X_G)=\#\operatorname{BasedCycleData}(G,n)
          =\operatorname{tr}(A_G^n)=|\Sigma|^n.
\]

## Hostile cases and finite reference checks

The existing doubleLoopUnitGraph has two distinct based period-one cycles but one periodic label point; its canonical cycle word map is not injective. The existing alternatingUnitGraph has zero period-one cycles but one periodic label point; it has no same-period lift. Both present the same entire finite-word language, so the counterexamples prohibit extending the result to arbitrary exact presentations.

A separate finite Python reference check enumerated binary full-shift blocks at periods n=1,...,7. Source cycles, distinct periodic label blocks and the matrix-count recurrence all gave 2, 4, 8, 16, 32, 64, 128. The hostile period-one counts were 2 versus 1 and 0 versus 1. These are *finite reference observations*, not a proof of all n and not Lean evidence.

## Status and exact next obligation

- Source publication, changed-file inspection, immutable blob readback: CONFIRMED for commit 74804b8df4e1d6ac15d7d04c0f1a7c59398c23d6.
- Mathematical source review: proof candidate with stated source comparison; no external priority or novelty claim.
- Finite combinatorial Python checks: RUN at the bounded scope stated above.
- Lean compilation, fresh kernel replay, expected-type checks, transitive axiom audit: NOT_RUN. Proof acceptance: NOT_CLAIMED.
- The available local container has neither Lean/Lake nor a verified authorized Noe checkout. The Noe proof-automation guidance was read at grwtsk/noeaaeue main snapshot 750ce416070f51dca6cdb819e277d2593dccb5ba. No native host or queue operation was dispatched.

**Next theorem:** Construct CycleRepetitionsRun G n hn directly from the original closed LabeledWalkData G n s s for every finite G and n>0. Preserve every original state edge, label and the modular-index equality with repeatBlock; then the generic admissibility premise disappears for exact language presentations. This does not discharge the still-independent faithfulness and complete-periodic-lift hypotheses.

There is no claimed zeta-function identification, Fredholm determinant identity or arithmetic-energy bound.