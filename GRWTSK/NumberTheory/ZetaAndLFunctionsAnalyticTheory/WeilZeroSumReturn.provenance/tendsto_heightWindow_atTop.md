# tendsto_heightWindow_atTop

Author: grwtsk contributors. Version 1, 2026-11-12 America/Los_Angeles.
Statement ID: WZSR-v1-01. Source status: SOURCE_PROOF_CANDIDATE.
Declaration: `GRWTSK.NumberTheory.WeilNegativeWitness.tendsto_heightWindow_atTop`.
Source: [WeilZeroSumReturn.lean](../WeilZeroSumReturn.lean).
Analytical argument: [WeilZeroSumReturn.md](../WeilZeroSumReturn.md).
Coordination: grwtsk/math#1801, scope comment 6829493093.

## Literal statement

Notation, imports, namespaces and the ambient positive level are those of the
maintained Lean file. The source index, multiplicities and test predicate are
canonical, not new definitions.

```lean
theorem tendsto_heightWindow_atTop
    (chi : DirichletCharacter ℂ N) (hprim : chi.IsPrimitive) :
    Tendsto (heightWindow chi hprim) (atTop : Filter ℝ) atTop
```

## Argument, consumer and hostile check

Finite-set induction supplies eventual containment, using the exact strict-height membership theorem at every insertion. No monotonicity or zero enumeration is assumed.

Consumer/source return: The source-selected T_n tends to infinity. Composing with this theorem supplies the Finset-cofinality premise of hasSum_of_subseq_of_summable.

Hostile check: A family that occasionally includes every zero but does not eventually contain each finite subset is not sufficient. This theorem proves the stronger property.

## Individual provenance and evidence boundary

Inspected math revision `6f7d2e3b6d15f0d2c49aaba984af27c48786943c`.
Local dependencies: DirichletZeroMultiplicity.lean: heightWindow and mem_heightWindow; blob ef9d9f861731f11e446dd59bd60c8896b1e5462d.

Primary summation API: Sebastien Gouezel, Heather Macbeth, Johannes Hoelzl and
Yury Kudryashov, [Mathlib/Analysis/Normed/Group/InfiniteSum.lean](https://github.com/leanprover-community/mathlib4/blob/d13f23b723b8a846827a245b89c10fc7d3f11612/Mathlib/Analysis/Normed/Group/InfiniteSum.lean),
`hasSum_of_subseq_of_summable`, revision
`d13f23b723b8a846827a245b89c10fc7d3f11612`, blob
`8d025095fe1651bee64c5e50b94011c5640e4139`. Its source license is Apache-2.0;
this file preserves upstream attribution and makes no claim to have invented
that theorem. The literal local proof determines which API it consumes directly.

This is a local consequence/source adapter, NOT a direct new paper formalization.
The written count supplier is WMED-v1-5 in the preceding WeilMellinEnergyDecay
companion, followed by WZSR-v1-07's finite covering: D=324, L=log(3q). The four
count-dependent declarations retain hcount explicitly; neither counting result
has been added as a Lean theorem here. No seven-eighths input is used. Originality
UNASSESSED; prior-art comparison is scoped, not corpus-wide. No independent
analytical review is claimed.

Lean `leanprover/lean4:v4.34.1`; Mathlib
`d13f23b723b8a846827a245b89c10fc7d3f11612`. Elaboration, dependency build,
fresh kernel replay, transitive axiom audit, independent review and numerical
functional certification are NOT_RUN, including imported candidates. Text and
hash checks are not proof acceptance. No RH/GRH or all-test sign is concluded.

Proposed axiom query, NOT executed:
`#print axioms GRWTSK.NumberTheory.WeilNegativeWitness.tendsto_heightWindow_atTop`.
