# `fourthTailBudget_antitone`

Local attribution: grwtsk contributors. Date: 2026-11-11.
Declaration: `GRWTSK.NumberTheory.WeilQuadraticForm.ConductorProfiles.fourthTailBudget_antitone`.
Canonical source: [../DirichletConductorTailBudgets.lean](../DirichletConductorTailBudgets.lean).
Source SHA-256: `39f8fdc31698c7dbdd239fd0455404c6f2983c167cebe2ee3110525f8771fc0b`.

## Statement and primary argument

For every natural 0<H<=K, fourthTailBudget K <= fourthTailBudget H, in the rationals.

Nonnegative natural casts satisfy H^2<=K^2. Multiply by nine and apply reciprocal order reversal to the positive denominator 9*H^2, with the same positive numerator ten.

## Source comparison, consumer and limits

Local standard consequence, not an assertion of novelty or a theorem attributed to the motivating monograph. Exact dependencies, dated source comparison, proof-status boundaries and reproduction commands are in [README.md](README.md). The consumer is the original finite interval checker and conductor-filtered source return, not an auxiliary positive Weil form.

H=0 is excluded: Lean fields totalize division by zero, so the zero-height value cannot serve as a tail bound.

## Evidence

`SOURCE_PROOF_CANDIDATE`. Lean elaboration/build, fresh kernel replay, transitive axiom audit and independent analytical review: `NOT_RUN`. The written argument and Lean script express the same reasoning, not independent proofs. No previous source status is promoted.
