# `normalizedTailCeiling_four_le_rational`

Local attribution: grwtsk contributors. Date: 2026-11-11.
Declaration: `GRWTSK.NumberTheory.WeilQuadraticForm.ConductorProfiles.normalizedTailCeiling_four_le_rational`.
Canonical source: [../DirichletConductorTailBudgets.lean](../DirichletConductorTailBudgets.lean).
Source SHA-256: `39f8fdc31698c7dbdd239fd0455404c6f2983c167cebe2ee3110525f8771fc0b`.

## Statement and primary argument

For every real T >= 4, normalizedTailCeiling 4 T <= 10/(9*T^2).

Put L=log(4). Exp(1)<3<4 gives L>=1. The inequality log(x)<=x-1 at x=(T+2)/2 gives log((T+2)/2)<=T/2. Hence the defining bracket is at most (1+T/2)/3+1/9. Multiplication by 4/T^3 gives (2/3+16/(9*T))/T^2, which is at most (10/9)/T^2 since T>=4.

## Source comparison, consumer and limits

Local standard consequence, not an assertion of novelty or a theorem attributed to the motivating monograph. Exact dependencies, dated source comparison, proof-status boundaries and reproduction commands are in [README.md](README.md). The consumer is the original finite interval checker and conductor-filtered source return, not an auxiliary positive Weil form.

The radius must be positive and at least four; the totalized real-power expression at zero is not an admissible zero-tail estimate. This is a coarse majorant, not the sharp logarithmic/cubic decay rate.

## Evidence

`SOURCE_PROOF_CANDIDATE`. Lean elaboration/build, fresh kernel replay, transitive axiom audit and independent analytical review: `NOT_RUN`. The written argument and Lean script express the same reasoning, not independent proofs. No previous source status is promoted.
