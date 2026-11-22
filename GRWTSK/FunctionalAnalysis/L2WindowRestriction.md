# Measurable L2 restriction

Owner: [L2WindowRestriction.lean](L2WindowRestriction.lean).
Namespace: `GRWTSK.FunctionalAnalysis.L2WindowRestriction`.
Primary subject: MSC 46E30.

## Argument and declarations

For a measurable set s and the actual space Lp F 2 mu, `value` represents
1_s f using `MemLp.toLp`. `value_ae` is its exact equivalence-class formula.
`linear` proves linearity using the a.e. addition/scalar identities; `restrict`
uses the proved norm bound to construct a continuous linear map.
`norm_restrict_le` is the operator norm bound 1.

`restrict_eq_self_iff` proves that the fixed points are precisely the
functions vanishing a.e. off s. `supported_isClosed` then identifies this
set with the equalizer of the bounded map and the identity. No finite
measure of s is required. This is the actual physical support projection
and the actual energy restriction consumed in `WeilTranslationCutoffs` and
`WeilTranslationEnergyDomain`.

## Provenance and adversarial boundary

Local elementary argument over pinned mathlib's `Lp.memLp`, `MemLp.indicator`,
`MemLp.toLp`, `Lp.ext`, `Lp.coeFn_add`, `Lp.coeFn_smul`, and
`Lp.norm_le_norm_of_ae_le`. Inspected source: `MeasureTheory/Function/LpSpace/Basic.lean`
(blob `49ca798a7ffe3002a1d2ce7ae7ba6d06291406b6`) and the indicator API.
This is not a new formalization of the external PDE cutoff paper/implementation.

Sharp indicators are not smooth scalar functions. Their action on L2 is
bounded, but differentiation with respect to the cutoff coordinate is
neither asserted nor used. Individual functions are a.e. classes; pointwise
representative choices do not enter the mathematical contract.

## Source pins, evidence, and scope

Local mathematical attribution: grwtsk contributors.
Base: `grwtsk/math@771e0b7e232ec7527fd11fb4f9275009cec06717`. Lean: `leanprover/lean4:v4.34.1`.
Mathlib: `d13f23b723b8a846827a245b89c10fc7d3f11612`. No root imports or pins are changed.

Status: **SOURCE_PROOF_CANDIDATE**. Lean elaboration, exact expected
signatures, fresh kernel replay, transitive axiom audit, clean dependency
replay, and independent mathematical review: **NOT_RUN**. Static inspection
is not a replacement for any of these checks. No earlier acceptance or
failure record is changed. Novelty is not claimed; prior-art completeness
is **UNASSESSED**.

The source is ordinary authorized mathematical authoring, not execution of
a proof runner or import of an unproved paper theorem as an axiom.
Coordinating issues: [#1837](https://github.com/grwtsk/math/issues/1837),
[#1258](https://github.com/grwtsk/math/issues/1258).
