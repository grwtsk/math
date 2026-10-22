# Sharp Liouville sample-floor verification gate

Date: 2026-10-22
Inspected PR #638 head: b82220de1174dc459f80a01dd2d5df83dd4cb45e
Status: SOURCE_DRAFT / NOT_COMPILED / NOT_KERNEL_AUDITED

## Exact source inventory

- GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FinitePatternCountBalancing.lean
  blob 3e2a2c01fd728d97a54447c3ba07e99792214dbf; 286 lines.
- GRWTSK/NumberTheory/ArithmeticFunctions/LiouvilleSharpSampleFloor.lean
  blob c8434c50b055b755af1c33760842eb76635a32b7; 42 lines.

Neither selected file has an explicit line-leading sorry, admit or axiom.
This textual observation does NOT establish elaboration or kernel trust.

## Exact target

For N>0, q=2^|H|, r=N mod q:

    r*(q-r)/N² <= liouvilleAllOrderEnergy N H.

The mathematical proof depends on balanced integer pattern counts,
their sum being N, rational normalization, full Walsh Parseval and
the actual positive-index Liouville source equivalence.

## Acceptance sequence

1. Clean checkout of exact commit and pinned Lean 4.33.0 / Mathlib.
2. Elaborate FinitePatternCountBalancing.lean first. Check the exact
   types of fullPatternNatCount_total, patternCountOn_eq_natCount,
   finite_count_square_parseval_floor,
   nonemptyCorrelationEnergy_eq_natCount_defect and
   nonemptyCorrelationEnergy_sharp_sample_floor.
3. Inspect potential simp/rewrite API mismatches in
   Finset.card_filter, Finset.prod_ite, Finset.sum_div,
   and exact_mod_cast of sum-of-squares.
4. Elaborate LiouvilleSharpSampleFloor.lean. Verify that
   Fintype.card_coe and the finite subtype cardinality simp
   produce precisely 2^H.card; no assumed type equivalence.
5. Print exact theorem types and transitive axioms; reject sorryAx
   and unapproved axioms.
6. Independently replay the exact source tree and preserve logs.

## Execution environment

The available local runtime has neither lean nor lake on PATH.
No local compilation or kernel inspection was performed.
No GitHub Actions run is claimed here.

Keep PR #638 draft/unmerged. This sharp lower bound is not a
Liouville cancellation upper bound and does not prove Chowla,
GUE, Montgomery or RH.
