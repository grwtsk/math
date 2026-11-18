# Pole-corrected popcorn reference and exact Weil remainder

Local attribution: grwtsk contributors.
Owner: [WeilPopcornReference.lean](WeilPopcornReference.lean).
Namespace: `GRWTSK.NumberTheory.WeilQuadraticForm.PopcornReference`.

## Source identity and argument

The original `OddSchurAccounting.sinhMomentRow`,
`borderedSourceMatrix`, `poleShiftMetric`, and `zetaSineMatrix` are reused.
The source base for `WeilOddSchurAccounting.lean` is blob
`c0ad7d8dbb4640e06224ec4e04762ec9cb1d2ca2`. The source is the
pole-inclusive odd Weil projection; its primary arithmetic reference is
Connes--Consani--Moscovici, arXiv:2511.22755v1, (3.19)--(3.20), through
those canonical declarations. No fresh explicit-formula proof is claimed.

`reference` is the actual block matrix
`[[alpha K+2bb^t,b],[b^t,1/2]]`. `reference_poleColumn`,
`reference_poleCorner`, and `reference_isHermitian` preserve both mixed
orientations and the scalar corner. `reference_quadratic` is exactly
`alpha q_K(u)+(a+2<b,u>)^2/2`, giving `reference_nonnegative` and
`reference_posSemidef` for alpha>=0.

`source_sub_reference` proves equality of COMPLETE matrices with the
block containing `signedRemainder = zetaSineMatrix-beta I-alpha K`.
`source_quadratic_eq_reference_add_remainder` and
`source_dominates_reference_iff` identify the exact remaining arithmetic
comparison. `radiusTwo_reference_return` specializes T=2, N=64, beta=-1/2
without claiming the original trace has period 64.

`unmatched_border_negative_value` supplies a negative-vector control for
a missing nonzero pole coupling. Ninety-six synthetic exact rational block
cases and 272 border controls were tested; they do not evaluate the actual
gamma or prime integrals and do not verify Lean.

## Actual consumer and remaining premises

`stageLower_of_paid_popcorn_comparison` uses the existing
`CofinalFlexibleHead.stageLower_of_positiveLower`, the full source packet,
and its independent high floor. The comparison is to the FULL residual-paid
rational lower matrix, not merely a positive raw head. Its source identity,
trial errors, intermediate rows, infinite allowance and shifts are unchanged.
The paid comparison and a cofinal family are not constructed here. No
reference positivity is promoted to the source sign, and no result-280
VOA field construction or self-adjoint spectral identification is asserted.

## Evidence and limits

Source base: `grwtsk/math@c93bb944b56366ad636ddec0eadc0fadd0d6fe57`.
Lean `leanprover/lean4:v4.34.1`; mathlib
`d13f23b723b8a846827a245b89c10fc7d3f11612`; pins and root imports unchanged.
This is a **SOURCE_PROOF_CANDIDATE**. Elaboration, exact expected signatures,
fresh kernel replay, transitive axiom audit, and independent mathematical
review: **NOT_RUN**. No earlier source-bound acceptance is overwritten.
No theorem-level novelty is claimed; prior-art completeness is UNASSESSED.
Publication and finite diagnostics are not proof acceptance. Coordination:
[math#1837](https://github.com/grwtsk/math/issues/1837).
